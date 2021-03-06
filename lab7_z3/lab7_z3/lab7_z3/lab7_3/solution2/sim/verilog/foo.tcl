
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set out_data_group [add_wave_group out_data(wire) -into $coutputgroup]
add_wave /apatb_foo_top/AESL_inst_foo/out_data_ap_vld -into $out_data_group -color #ffff00 -radix hex
add_wave /apatb_foo_top/AESL_inst_foo/out_data -into $out_data_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set in2_group [add_wave_group in2(wire) -into $cinputgroup]
add_wave /apatb_foo_top/AESL_inst_foo/in2 -into $in2_group -radix hex
set in1_group [add_wave_group in1(wire) -into $cinputgroup]
add_wave /apatb_foo_top/AESL_inst_foo/in1 -into $in1_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_foo_top/AESL_inst_foo/ap_start -into $blocksiggroup
add_wave /apatb_foo_top/AESL_inst_foo/ap_done -into $blocksiggroup
add_wave /apatb_foo_top/AESL_inst_foo/ap_idle -into $blocksiggroup
add_wave /apatb_foo_top/AESL_inst_foo/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_foo_top/AESL_inst_foo/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_foo_top/AESL_inst_foo/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_foo_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_foo_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_foo_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_foo_top/LENGTH_in1 -into $tb_portdepth_group -radix hex
add_wave /apatb_foo_top/LENGTH_in2 -into $tb_portdepth_group -radix hex
add_wave /apatb_foo_top/LENGTH_out_data -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_out_data_group [add_wave_group out_data(wire) -into $tbcoutputgroup]
add_wave /apatb_foo_top/out_data_ap_vld -into $tb_out_data_group -color #ffff00 -radix hex
add_wave /apatb_foo_top/out_data -into $tb_out_data_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_in2_group [add_wave_group in2(wire) -into $tbcinputgroup]
add_wave /apatb_foo_top/in2 -into $tb_in2_group -radix hex
set tb_in1_group [add_wave_group in1(wire) -into $tbcinputgroup]
add_wave /apatb_foo_top/in1 -into $tb_in1_group -radix hex
save_wave_config foo.wcfg
run all
quit

