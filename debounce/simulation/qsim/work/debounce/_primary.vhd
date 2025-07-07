library verilog;
use verilog.vl_types.all;
entity debounce is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        btn_in          : in     vl_logic;
        btn_pressed     : out    vl_logic
    );
end debounce;
