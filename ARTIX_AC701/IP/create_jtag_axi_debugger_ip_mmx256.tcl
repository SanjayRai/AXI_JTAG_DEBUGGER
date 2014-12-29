set DEVICE_TYPE xc7a200tfbg676-2
create_project project_X project_X -part $DEVICE_TYPE
set_property ip_repo_paths  ../axi_jtag_debugger_IP_gen/vivado_project [current_fileset]
update_ip_catalog
create_ip -name jtag_axi_debugger_ip -vendor sanjayr -library user -version 1.0 -module_name jtag_axi_debugger_ip_mmx256 -dir ./
set_property -dict [list CONFIG.AXI4_LITE_DATA_WIDTH {32} CONFIG.AXI4_MM_DATA_WIDTH {256}] [get_ips jtag_axi_debugger_ip_mmx256]
set_property generate_synth_checkpoint false [get_files jtag_axi_debugger_ip_mmx256.xci]
generate_target all [get_files jtag_axi_debugger_ip_mmx256.xci]
