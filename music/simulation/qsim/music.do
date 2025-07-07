onerror {exit -code 1}
vlib work
vlog -work work music.vo
vlog -work work Waveform8.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.music_vlg_vec_tst -voptargs="+acc"
vcd file -direction music.msim.vcd
vcd add -internal music_vlg_vec_tst/*
vcd add -internal music_vlg_vec_tst/i1/*
run -all
quit -f
