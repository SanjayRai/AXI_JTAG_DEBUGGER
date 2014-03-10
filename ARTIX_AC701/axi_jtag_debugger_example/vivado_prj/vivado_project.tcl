set DEVICE_TYPE xc7a200tfbg676-2
create_project project_X project_X -part $DEVICE_TYPE
update_ip_catalog

add_files -fileset sources_1 -norecurse {
    ../../IP/RAMB_AXI_256x256/RAMB_AXI_256x256.xci
    ../../IP/axi_crossbar/axi_crossbar.xci
    ../../IP/ddr3_ac701/ddr3_ac701.xci
    ../../IP/axi_cdma_0/axi_cdma_0.xci
    ../../src/axi_infrastructure_test.v
    ../../IP/jtag_axi_debugger_ip_mmx256/jtag_axi_debugger_ip_mmx256.xci
}

add_files -fileset constrs_1 -norecurse ../../src/xdc/axi_infrastructure_test.xdc


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
