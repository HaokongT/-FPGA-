library verilog;
use verilog.vl_types.all;
entity shuma_vlg_check_tst is
    port(
        seg             : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end shuma_vlg_check_tst;
