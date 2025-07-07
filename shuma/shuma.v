module shuma(
    input [1:0] state,  // 输入状态
    output reg [6:0] seg // 数码管输出
);

parameter IDLE = 2'b00, PLAY1 = 2'b01, PLAY2 = 2'b10;

always @(*) begin
    case (state)
        IDLE:  seg = 7'b1111110; // 显示"0"
        PLAY1: seg = 7'b0110000; // 显示"1"
        PLAY2: seg = 7'b1101101; // 显示"2"
        default: seg = 7'b0000001;
    endcase
end

endmodule