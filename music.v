module music(
    input clk_20mhz,
    input rst_n,
    input btn, 
    output been,
    output [6:0] seg,
    output led_flash  // 新增：音符切换时闪烁的LED
);

// 时钟分频
reg [4:0] clk_div;    // 减小位宽（原为[5:0]）
reg clk_1mhz;

// 分频逻辑：20MHz -> 1MHz
always @(posedge clk_20mhz or negedge rst_n) begin
    if (!rst_n) begin
        clk_div <= 0;
        clk_1mhz <= 0;
    end else begin
        if (clk_div == 9) begin          // 计数到9（半周期）
            clk_1mhz <= 1;
            clk_div <= clk_div + 1;
        end else if (clk_div == 19) begin // 计数到19（完整周期）
            clk_1mhz <= 0;
            clk_div <= 0;
        end else
            clk_div <= clk_div + 1;
    end
end

// 按键消抖
wire btn_pressed;
debounce u_debounce(
    .clk(clk_1mhz),
    .rst_n(rst_n),
    .btn_in(btn),
    .btn_pressed(btn_pressed)
);

// 状态机
reg [1:0] state, next_state;
parameter IDLE = 2'b00, PLAY1 = 2'b01, PLAY2 = 2'b10;

// 状态寄存器
always @(posedge clk_1mhz or negedge rst_n) begin
    if (!rst_n) begin
        state <= IDLE;
    end else begin
        state <= next_state;
    end
end

// 状态转移逻辑
always @(*) begin
    next_state = state; // 默认保持当前状态
    case (state)
        IDLE: 
            if (rst_n) // 复位释放后进入PLAY1
                next_state = PLAY1;
        
        PLAY1: begin
            if (btn_pressed) 
                next_state = PLAY2;
            else 
                next_state = PLAY1;
        end
        
        PLAY2: begin
            if (btn_pressed) 
                next_state = PLAY1;
            else 
                next_state = PLAY2;
        end
        
        default: next_state = IDLE;
    endcase
end

// 歌曲地址偏移控制
reg [9:0] song_offset;
always @(posedge clk_1mhz or negedge rst_n) begin
    if (!rst_n) begin
        song_offset <= 10'd0;
    end else begin
        case(next_state)  // 使用next_state确保切换时立即更新
            PLAY1: song_offset <= 10'd0;   // 第一首歌起始地址
            PLAY2: song_offset <= 10'd512; // 第二首歌起始地址
            default: song_offset <= 10'd0;
        endcase
    end
end

// 速度控制 - 产生音符切换信号
wire [9:0] note_cnt;
reg rst_cnt;  // 音符计数器复位信号

// 状态切换时复位计数器
always @(posedge clk_1mhz or negedge rst_n) begin
    if (!rst_n) begin
        rst_cnt <= 1'b1;
    end else begin
        // 状态变化时产生复位脉冲
        rst_cnt <= (state != next_state);
    end
end

speed_ctrl #(.T_250ms(250_000)) u_speed_ctrl(
    .clk(clk_1mhz),
    .rst_n(rst_n),
    .rst_cnt(rst_cnt),  // 添加计数器复位
    .cnt(note_cnt)
);

// 当前音符地址 = 歌曲偏移 + 音符计数
wire [9:0] current_addr = song_offset + note_cnt;

// 音乐存储器
wire [4:0] music_raw;
music_mem u_music_mem(
    .clk(clk_1mhz),
    .rst_n(rst_n),
    .cnt(current_addr),
    .music(music_raw)
);

// IDLE状态时强制静音
parameter SIL = 5'd0;
wire [4:0] music_final = (state == IDLE) ? SIL : music_raw;

// 音符切换检测
reg [4:0] prev_music;
reg note_changed;

always @(posedge clk_1mhz or negedge rst_n) begin
    if (!rst_n) begin
        prev_music <= SIL;
        note_changed <= 1'b0;
    end else begin
        // 检测音符变化
        note_changed <= (prev_music != music_final) && (music_final != SIL);
        prev_music <= music_final;
    end
end

// LED闪烁逻辑
reg [15:0] flash_counter;
reg led_flash_reg;

always @(posedge clk_1mhz or negedge rst_n) begin
    if (!rst_n) begin
        flash_counter <= 16'd0;
        led_flash_reg <= 1'b0;
    end else if (note_changed) begin
        // 音符变化时触发LED闪烁
        flash_counter <= 16'd50_000;  // 50ms @1MHz (50,000 cycles)
        led_flash_reg <= 1'b1;
    end else if (flash_counter > 0) begin
        flash_counter <= flash_counter - 1;
        led_flash_reg <= 1'b1;  // 计数器未归零期间保持LED亮
    end else begin
        led_flash_reg <= 1'b0;
    end
end

assign led_flash = led_flash_reg;

// 音符到分频系数的转换
wire [10:0] div_max;
lev_ctl u_lev_ctl(
    .clk_1mhz(clk_1mhz),
    .rst_n(rst_n),
    .data(music_final),  // 使用静音控制
    .div_max(div_max)
);

// 波形生成器
wave_gen u_wave_gen(
    .clk_1mhz(clk_1mhz),
    .rst_n(rst_n),
    .div_max(div_max),
    .been(been)
);

// 数码管显示
shuma u_shuma(
    .state(state),
    .seg(seg)
);

endmodule