module debounce(
    input clk,          // 1MHz时钟
    input rst_n,
    input btn_in,       // 原始按键输入
    output btn_pressed  // 消抖后的脉冲信号
);

reg [19:0] debounce_cnt;
reg btn_ff1, btn_ff2;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        btn_ff1 <= 1;
        btn_ff2 <= 1;
        debounce_cnt <= 0;
    end else begin
        btn_ff1 <= btn_in;
        btn_ff2 <= btn_ff1;
        // 检测下降沿（按钮按下）
        if (btn_ff2 && !btn_ff1) begin
            debounce_cnt <= 20000; // 20ms@1MHz
        end else if (debounce_cnt != 0) begin
            debounce_cnt <= debounce_cnt - 1;
        end
    end
end

assign btn_pressed = (debounce_cnt == 1);

endmodule