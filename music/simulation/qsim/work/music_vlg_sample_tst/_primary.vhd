library verilog;
use verilog.vl_types.all;
entity music_vlg_sample_tst is
    port(
        btn             : in     vl_logic;
        clk_20mhz       : in     vl_logic;
        rst_n           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end music_vlg_sample_tst;
