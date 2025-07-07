library verilog;
use verilog.vl_types.all;
entity lev_ctl_vlg_sample_tst is
    port(
        clk_1mhz        : in     vl_logic;
        data            : in     vl_logic_vector(4 downto 0);
        rst_n           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end lev_ctl_vlg_sample_tst;
