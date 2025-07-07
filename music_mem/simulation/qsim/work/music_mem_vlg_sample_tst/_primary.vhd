library verilog;
use verilog.vl_types.all;
entity music_mem_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        cnt             : in     vl_logic_vector(9 downto 0);
        rst_n           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end music_mem_vlg_sample_tst;
