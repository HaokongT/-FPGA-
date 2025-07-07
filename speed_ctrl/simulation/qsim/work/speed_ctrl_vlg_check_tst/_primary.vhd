library verilog;
use verilog.vl_types.all;
entity speed_ctrl_vlg_check_tst is
    port(
        cnt             : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end speed_ctrl_vlg_check_tst;
