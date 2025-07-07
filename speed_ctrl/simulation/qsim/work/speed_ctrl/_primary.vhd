library verilog;
use verilog.vl_types.all;
entity speed_ctrl is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        rst_cnt         : in     vl_logic;
        cnt             : out    vl_logic_vector(9 downto 0)
    );
end speed_ctrl;
