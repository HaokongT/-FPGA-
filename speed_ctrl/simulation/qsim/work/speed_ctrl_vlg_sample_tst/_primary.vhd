library verilog;
use verilog.vl_types.all;
entity speed_ctrl_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        rst_cnt         : in     vl_logic;
        rst_n           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end speed_ctrl_vlg_sample_tst;
