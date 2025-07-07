library verilog;
use verilog.vl_types.all;
entity wave_gen_vlg_sample_tst is
    port(
        clk_1mhz        : in     vl_logic;
        div_max         : in     vl_logic_vector(10 downto 0);
        rst_n           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end wave_gen_vlg_sample_tst;
