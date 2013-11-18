create_project project_X project_X -part xc7k325tffg900-2
set_property board xilinx.com:kintex7:kc705:1.1 [current_project]
set_property ip_repo_paths  ../../axi_jtag_debugger_IP_gen/vivado_project [current_fileset]
update_ip_catalog

