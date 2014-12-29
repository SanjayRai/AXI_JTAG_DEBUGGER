set DEVICE_TYPE xc7k325tffg900-2
create_project jtag_axi_debugger_ip jtag_axi_debugger_ip -part $DEVICE_TYPE

import_files -force -norecurse {
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
    ../../IP/jtag_axi_debug_fifo_x64/jtag_axi_debug_fifo_x64.xci
    ../../IP/vio_axi_jtag_dbg/vio_axi_jtag_dbg.xci
}

set_property top jtag_axi_debugger_ip [get_filesets sources_1]

update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

proc run_rest {} {
set ROOT_DIR [pwd]
ipx::package_project -root_dir $ROOT_DIR
set_property vendor {sanjayr} [ipx::current_core]
set_property vendor_display_name {sanjayr} [ipx::current_core]
set_property taxonomy {{/AXI_Infrastructure}} [ipx::current_core]
ipx::infer_bus_interfaces {{xilinx.com:interface:aximm:1.0}} [ipx::current_core]
set_property value_validation_list {{1024} {512} {256} {128} {64} {32}} [ipx::get_user_parameter AXI4_MM_DATA_WIDTH [ipx::current_core]]
set_property value_validation_list {{64} {32}} [ipx::get_user_parameter AXI4_LITE_DATA_WIDTH [ipx::current_core]]
set_property display_name {AXI4 MM Data Width} [ipx::get_user_parameter AXI4_MM_DATA_WIDTH [ipx::current_core]]
set_property display_name {AXI4 LITE Data Width} [ipx::get_user_parameter AXI4_LITE_DATA_WIDTH [ipx::current_core]]
set_property display_name {M_AXI4_LITE} [ipx::get_address_space m_axi4_lite [ipx::current_core]]
set_property display_name {M_AXI4_MM} [ipx::get_address_space m_axi4_mm [ipx::current_core]]
set_property supported_families {{virtex7} {Pre-Production} {qvirtex7} {Pre-Production} {kintex7} {Pre-Production} {kintex7l} {Pre-Production} {qkintex7} {Pre-Production} {qkintex7l} {Pre-Production} {artix7} {Pre-Production} {artix7l} {Pre-Production} {artix7} {Pre-Production} {qartix7} {Pre-Production} {zynq} {Pre-Production} {qzynq} {Pre-Production} {azynq} {Pre-Production}} [ipx::current_core]
set_property company_url {www.xilinx.com} [ipx::current_core]

ipx::add_bus_interface {AXI_CLK} [ipx::current_core]
set_property abstraction_type_vlnv {xilinx.com:signal:clock_rtl:1.0} [ipx::get_bus_interface AXI_CLK [ipx::current_core]]
set_property bus_type_vlnv {xilinx.com:signal:clock:1.0} [ipx::get_bus_interface AXI_CLK [ipx::current_core]]
set_property display_name {AXI_CLK} [ipx::get_bus_interface AXI_CLK [ipx::current_core]]
ipx::add_port_map {CLK} [ipx::get_bus_interface AXI_CLK [ipx::current_core]]
set_property physical_name {sys_clk} [ipx::get_port_map CLK [ipx::get_bus_interface AXI_CLK [ipx::current_core]]]
ipx::add_bus_parameter {ASSOCIATED_BUSIF} [ipx::get_bus_interface AXI_CLK [ipx::current_core]]
set_property value {m_axi4_lite:m_axi4_mm} [ipx::get_bus_parameter ASSOCIATED_BUSIF [ipx::get_bus_interface AXI_CLK [ipx::current_core]]]


update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
ipx::save_core [ipx::current_core]
ipx::check_integrity -quiet [ipx::current_core]
ipx::archive_core {./jtag_axi_debugger_ip.zip} [ipx::current_core]
}
