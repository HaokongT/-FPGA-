onerror {exit -code 1}
vlib work
vlog -work work wave_gen.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.wave_gen_vlg_vec_tst -voptargs="+acc"
vcd file -direction wave_gen.msim.vcd
vcd add -internal wave_gen_vlg_vec_tst/*
vcd add -internal wave_gen_vlg_vec_tst/i1/*
run -all
quit -f
