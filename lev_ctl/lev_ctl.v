module lev_ctl
(
    input clk_1mhz,
    input rst_n,

    input [4:0] data,
    output [10:0] div_max
	 
	 
	 
);

reg [10:0]wave_cnt_max;
assign div_max = wave_cnt_max;
always @(posedge clk_1mhz or negedge rst_n)
    if (~rst_n)
        wave_cnt_max <= 11'd0;
    else case(data[4:0])
        5'b01_001:wave_cnt_max<=11'd1911;
        5'b01_010:wave_cnt_max<=11'd1702;
        5'b01_011:wave_cnt_max<=11'd1517; 
        5'b01_100:wave_cnt_max<=11'd1431;
        5'b01_101:wave_cnt_max<=11'd1276;
        5'b01_110:wave_cnt_max<=11'd1136;
        5'b01_111:wave_cnt_max<=11'd1012;
           

        5'b10_001:wave_cnt_max<=11'd939;
        5'b10_010:wave_cnt_max<=11'd851;
        5'b10_011:wave_cnt_max<=11'd758;
        5'b10_100:wave_cnt_max<=11'd716;
        5'b10_101:wave_cnt_max<=11'd638;
        5'b10_110:wave_cnt_max<=11'd568;
        5'b10_111:wave_cnt_max<=11'd506;			  
			  
			  
        5'b11_001:wave_cnt_max<=11'd478;
        5'b11_010:wave_cnt_max<=11'd425;
        5'b11_011:wave_cnt_max<=11'd379;
        5'b11_100:wave_cnt_max<=11'd358;
        5'b11_101:wave_cnt_max<=11'd319;
        5'b11_110:wave_cnt_max<=11'd284;
        5'b11_111:wave_cnt_max<=11'd253;			  
			  
			  
        default:wave_cnt_max <=11'd0;
		  
		  
	endcase		  
					 
endmodule