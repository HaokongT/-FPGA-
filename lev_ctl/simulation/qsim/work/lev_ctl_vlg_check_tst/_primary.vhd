library verilog;
use verilog.vl_types.all;
entity lev_ctl_vlg_check_tst is
    port(
        div_max         : in     vl_logic_vector(10 downto 0);
        sampler_rx      : in     vl_logic
    );
end lev_ctl_vlg_check_tst;
