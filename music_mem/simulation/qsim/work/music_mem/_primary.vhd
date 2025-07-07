library verilog;
use verilog.vl_types.all;
entity music_mem is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        cnt             : in     vl_logic_vector(9 downto 0);
        music           : out    vl_logic_vector(4 downto 0)
    );
end music_mem;
