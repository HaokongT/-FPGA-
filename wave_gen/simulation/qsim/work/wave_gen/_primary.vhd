library verilog;
use verilog.vl_types.all;
entity wave_gen is
    port(
        clk_1mhz        : in     vl_logic;
        rst_n           : in     vl_logic;
        div_max         : in     vl_logic_vector(10 downto 0);
        been            : out    vl_logic
    );
end wave_gen;
