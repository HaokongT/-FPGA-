library verilog;
use verilog.vl_types.all;
entity debounce_vlg_sample_tst is
    port(
        btn_in          : in     vl_logic;
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end debounce_vlg_sample_tst;
