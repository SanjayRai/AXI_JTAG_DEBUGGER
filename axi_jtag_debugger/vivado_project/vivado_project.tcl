create_project project_X project_X -part xc7k325tffg900-2
add_files -fileset sources_1 -norecurse {
    ../../src/jtag_axi_debugger.v
    ../../src/jtag_axi_debugger_ip.v
    ../../src/s2mm_data_gen.v
    ../../src/mm2s_data_consume.v
    ../../src/stream_data.v
    ../../IP/axi_datamover_1024MM_32STR/axi_datamover_1024MM_32STR.xci
    ../../IP/axi_datamover_512MM_32STR/axi_datamover_512MM_32STR.xci
    ../../IP/axi_datamover_256MM_32STR/axi_datamover_256MM_32STR.xci
    ../../IP/axi_datamover_128MM_32STR/axi_datamover_128MM_32STR.xci
    ../../IP/axi_datamover_64MM_32STR/axi_datamover_64MM_32STR.xci
    ../../IP/axi_datamover_32MM_32STR/axi_datamover_32MM_32STR.xci
    ../../IP/axi_mm64_to_axi_lite64/axi_mm64_to_axi_lite64.xci
    ../../IP/axi_mm32_to_axi_lite32/axi_mm32_to_axi_lite32.xci
    ../../IP/mig_7series_64bit_800Mhz/mig_7series_64bit_800Mhz.xci
    ../../IP/jtag_axi_debug_fifo_x64/jtag_axi_debug_fifo_x64.xci
    ../../IP/vio_axi_jtag_dbg/vio_axi_jtag_dbg.xci
}


add_files -fileset constrs_1 -norecurse ../../src/jtag_axi_debugger.xdc

set_property top jtag_axi_debugger [get_filesets sources_1]

update_compile_order -fileset sources_1

if (1) {
    generate_target -force all [get_ips]
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
