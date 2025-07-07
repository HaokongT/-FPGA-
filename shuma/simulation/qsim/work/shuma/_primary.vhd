library verilog;
use verilog.vl_types.all;
entity shuma is
    port(
        state           : in     vl_logic_vector(1 downto 0);
        seg             : out    vl_logic_vector(6 downto 0)
    );
end shuma;
