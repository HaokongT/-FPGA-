library verilog;
use verilog.vl_types.all;
entity music_vlg_check_tst is
    port(
        been            : in     vl_logic;
        led_flash       : in     vl_logic;
        seg             : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end music_vlg_check_tst;
