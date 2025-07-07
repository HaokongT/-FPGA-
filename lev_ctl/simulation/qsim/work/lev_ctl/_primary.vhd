library verilog;
use verilog.vl_types.all;
entity lev_ctl is
    port(
        clk_1mhz        : in     vl_logic;
        rst_n           : in     vl_logic;
        data            : in     vl_logic_vector(4 downto 0);
        div_max         : out    vl_logic_vector(10 downto 0)
    );
end lev_ctl;
