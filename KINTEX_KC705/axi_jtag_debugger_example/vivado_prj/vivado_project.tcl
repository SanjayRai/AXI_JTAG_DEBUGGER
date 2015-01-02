create_project project_X project_X -part xc7k325tffg900-2
set_property ip_repo_paths  ../../axi_jtag_debugger_IP_gen/vivado_project [current_fileset]
update_ip_catalog

add_files -fileset sources_1 -norecurse {
    ../../IP/RAMB_AXI_256x256/RAMB_AXI_256x256.xci
    ../../IP/axi_crossbar/axi_crossbar.xci
    ../../IP/ddr3_kc705/ddr3_kc705.xci
    ../../IP/axi_cdma_0/axi_cdma_0.xci
    ../../src/axi_infrastructure_test.v
}

add_files -fileset constrs_1 -norecurse ../../src/axi_infrastructure_test.xdc

create_ip -name jtag_axi_debugger_ip -vendor sanjayr -library user -version 1.0 -module_name jtag_axi_debugger_ip_mmx256
set_property -dict [list CONFIG.AXI4_LITE_DATA_WIDTH {32} CONFIG.AXI4_MM_DATA_WIDTH {256}] [get_ips jtag_axi_debugger_ip_mmx256]
generate_target {instantiation_template} [get_files ./project_X/project_X.srcs/sources_1/ip/jtag_axi_debugger_ip_mmx256/jtag_axi_debugger_ip_mmx256.xci]
update_compile_order -fileset sources_1
set_property generate_synth_checkpoint false [get_files ./project_X/project_X.srcs/sources_1/ip/jtag_axi_debugger_ip_mmx256/jtag_axi_debugger_ip_mmx256.xci]
generate_target all [get_files ./project_X/project_X.srcs/sources_1/ip/jtag_axi_debugger_ip_mmx256/jtag_axi_debugger_ip_mmx256.xci]


set_property top axi_infrastructure_test [get_filesets sources_1]

update_compile_order -fileset sources_1

if (1) {
    launch_runs synth_1
    wait_on_run synth_1
    open_run synth_1 -name synth_netlist_1
    implement_debug_core
    launch_runs impl_1
    wait_on_run impl_1
    open_run impl_1
    launch_runs impl_1 -to_step write_bitstream
    wait_on_run impl_1
}
