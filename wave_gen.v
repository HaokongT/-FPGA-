module wave_gen
(
    input clk_1mhz,
    input rst_n,
	 
	 
    input [10:0] div_max,
	 
	 
    output reg been
);

reg [10:0] div_cnt;

always @(posedge clk_1mhz or negedge rst_n)
    if(~rst_n)
        div_cnt <=11'd0;
    else if(div_cnt == div_max )
        div_cnt <=11'd0;
    else
        div_cnt <=div_cnt+1'b1;

always @(posedge clk_1mhz or negedge rst_n)
    if(~rst_n)
        been <=1'b0;
    else if(div_max == 11'd0)
        been <=1'b0;
    else if(div_cnt == div_max )
        been<=~been;

endmodule