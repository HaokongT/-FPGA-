library verilog;
use verilog.vl_types.all;
entity music is
    port(
        clk_20mhz       : in     vl_logic;
        rst_n           : in     vl_logic;
        btn             : in     vl_logic;
        been            : out    vl_logic;
        seg             : out    vl_logic_vector(6 downto 0);
        led_flash       : out    vl_logic
    );
end music;
