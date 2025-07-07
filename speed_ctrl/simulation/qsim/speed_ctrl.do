onerror {exit -code 1}
vlib work
vlog -work work speed_ctrl.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.speed_ctrl_vlg_vec_tst -voptargs="+acc"
vcd file -direction speed_ctrl.msim.vcd
vcd add -internal speed_ctrl_vlg_vec_tst/*
vcd add -internal speed_ctrl_vlg_vec_tst/i1/*
run -all
quit -f
