create_project project_X project_X -part xc7k325tffg900-2
set_property board xilinx.com:kintex7:kc705:1.1 [current_project]
set_property ip_repo_paths  ../../axi_jtag_debugger_IP_gen/vivado_project [current_fileset]
update_ip_catalog
source ./srai_bd_gen.tcl
generate_target all [get_files  ./project_X/project_X.srcs/sources_1/bd/jtag_dbg_bd/jtag_dbg_bd.bd]
regenerate_bd_layout
make_wrapper -files [get_files ./project_X/project_X.srcs/sources_1/bd/jtag_dbg_bd/jtag_dbg_bd.bd] -top
add_files -norecurse ./project_X/project_X.srcs/sources_1/bd/jtag_dbg_bd/hdl/jtag_dbg_bd_wrapper.v
update_compile_order -fileset sources_1
save_bd_design
launch_runs synth_1
wait_on_run synth_1
open_run synth_1 -name netlist_1
launch_runs impl_1
wait_on_run impl_1
open_run impl_1
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1
