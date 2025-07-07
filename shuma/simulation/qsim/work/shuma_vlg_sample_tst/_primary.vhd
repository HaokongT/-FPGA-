library verilog;
use verilog.vl_types.all;
entity shuma_vlg_sample_tst is
    port(
        state           : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end shuma_vlg_sample_tst;
