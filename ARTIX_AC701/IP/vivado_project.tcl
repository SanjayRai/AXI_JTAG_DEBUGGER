set DEVICE_TYPE xc7a200tfbg676-2
create_project project_X project_X -part $DEVICE_TYPE
set_property ip_repo_paths  ../axi_jtag_debugger_IP_gen/vivado_project [current_fileset]
update_ip_catalog
add_files -fileset sources_1 -norecurse {
    ./axi_mm32_to_axi_lite32/axi_mm32_to_axi_lite32.xci
    ./jtag_axi_debug_fifo_x64/jtag_axi_debug_fifo_x64.xci
    ./RAMB_AXI_256x256/RAMB_AXI_256x256.xci
    ./mig_7series_ddr3_ac701/mig_7series_ddr3_ac701.xci
    ./ddr3_ac701/ddr3_ac701.xci
    ./axi_datamover_32MM_32STR/axi_datamover_32MM_32STR.xci
    ./axi_datamover_64MM_32STR/axi_datamover_64MM_32STR.xci
    ./axi_datamover_128MM_32STR/axi_datamover_128MM_32STR.xci
    ./axi_datamover_256MM_32STR/axi_datamover_256MM_32STR.xci
    ./axi_datamover_512MM_32STR/axi_datamover_512MM_32STR.xci
    ./axi_datamover_1024MM_32STR/axi_datamover_1024MM_32STR.xci
    ./vio_axi_jtag_dbg/vio_axi_jtag_dbg.xci
    ./axi_crossbar/axi_crossbar.xci
    ./axi_cdma_0/axi_cdma_0.xci
    ./axi_mm64_to_axi_lite64/axi_mm64_to_axi_lite64.xci
}

report_ip_status -name ip_status -file ip_status.txt
