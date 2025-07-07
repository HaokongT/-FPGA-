onerror {exit -code 1}
vlib work
vlog -work work music_mem.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.music_mem_vlg_vec_tst -voptargs="+acc"
vcd file -direction music_mem.msim.vcd
vcd add -internal music_mem_vlg_vec_tst/*
vcd add -internal music_mem_vlg_vec_tst/i1/*
run -all
quit -f
