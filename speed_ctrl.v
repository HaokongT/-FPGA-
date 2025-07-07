module speed_ctrl (
  input   wire            clk,
  input   wire            rst_n,
  input   wire            rst_cnt, // 新增计数器复位信号
  output  reg   [9:0]     cnt    // 10位计数器 (0-1023)
);

  parameter T_250ms = 10_000;  // 1MHz时钟下250ms计数值
  
  reg           [25:0]    count;
  wire                    flag_250ms;
  
  always @ (posedge clk, negedge rst_n) begin
    if (rst_n == 1'b0)
      count <= 26'd0;
    else
      if (count < T_250ms - 1'b1)
        count <= count + 1'b1;
      else
        count <= 26'd0;
  end

  assign flag_250ms = (count == T_250ms - 1'b1) ? 1'b1 : 1'b0;
    
  always @ (posedge clk, negedge rst_n) begin
    if (rst_n == 1'b0)
      cnt <= 10'd0;  // 10位计数器
    else if (rst_cnt)  // 新增复位条件
      cnt <= 10'd0;
    else if (flag_250ms == 1'b1) begin
      if (cnt == 10'd1023)  // 0-1023共1024个位置
        cnt <= 10'd0;
      else
        cnt <= cnt + 1'b1;
    end
  end

endmodule