create_project project_X project_X -part xc7k325tffg900-2
set_property ip_repo_paths  ../axi_jtag_debugger_IP_gen/vivado_project [current_fileset]
add_files -fileset sources_1 -norecurse {
    ./axi_mm32_to_axi_lite32/axi_mm32_to_axi_lite32.xci
    ./jtag_axi_debug_fifo_x64/jtag_axi_debug_fifo_x64.xci
    ./RAMB_AXI_256x256/RAMB_AXI_256x256.xci
    ./ddr3_kc705/ddr3_kc705.xci
    ./axi_datamover_32MM_32STR/axi_datamover_32MM_32STR.xci
    ./axi_datamover_64MM_32STR/axi_datamover_64MM_32STR.xci
    ./axi_datamover_128MM_32STR/axi_datamover_128MM_32STR.xci
    ./axi_datamover_256MM_32STR/axi_datamover_256MM_32STR.xci
    ./axi_datamover_512MM_32STR/axi_datamover_512MM_32STR.xci
    ./axi_datamover_1024MM_32STR/axi_datamover_1024MM_32STR.xci
    ./vio_axi_jtag_dbg/vio_axi_jtag_dbg.xci
    ./axi_crossbar/axi_crossbar.xci
    ./mig_7series_64bit_800Mhz/mig_7series_64bit_800Mhz.xci
    ./axi_cdma_0/axi_cdma_0.xci
    ./axi_mm64_to_axi_lite64/axi_mm64_to_axi_lite64.xci
}

