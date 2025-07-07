library verilog;
use verilog.vl_types.all;
entity music_mem_vlg_check_tst is
    port(
        music           : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end music_mem_vlg_check_tst;
