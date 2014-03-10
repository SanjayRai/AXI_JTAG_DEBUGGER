proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param gui.test TreeTableDev
  create_project -in_memory -part xc7k325tffg900-2
  set_property board xilinx.com:kintex7:kc705:1.1 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.data/wt [current_project]
  set_property parent.project_dir /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X [current_project]
  add_files /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.runs/synth_1/jtag_dbg_block_wrapper.dcp
  read_xdc -ref axi_datamover_1024MM_32STR -cells U0 /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_jtag_axi_debugger_ip_0_0/work/jtag_axi_debugger_ip/jtag_axi_debugger_ip.srcs/sources_1/ip/axi_datamover_1024MM_32STR/axi_datamover_1024MM_32STR.xdc
  read_xdc -ref axi_datamover_128MM_32STR -cells U0 /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_jtag_axi_debugger_ip_0_0/work/jtag_axi_debugger_ip/jtag_axi_debugger_ip.srcs/sources_1/ip/axi_datamover_128MM_32STR/axi_datamover_128MM_32STR.xdc
  read_xdc -ref axi_datamover_256MM_32STR -cells U0 /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_jtag_axi_debugger_ip_0_0/work/jtag_axi_debugger_ip/jtag_axi_debugger_ip.srcs/sources_1/ip/axi_datamover_256MM_32STR/axi_datamover_256MM_32STR.xdc
  read_xdc -ref axi_datamover_32MM_32STR -cells U0 /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_jtag_axi_debugger_ip_0_0/work/jtag_axi_debugger_ip/jtag_axi_debugger_ip.srcs/sources_1/ip/axi_datamover_32MM_32STR/axi_datamover_32MM_32STR.xdc
  read_xdc -ref axi_datamover_512MM_32STR -cells U0 /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_jtag_axi_debugger_ip_0_0/work/jtag_axi_debugger_ip/jtag_axi_debugger_ip.srcs/sources_1/ip/axi_datamover_512MM_32STR/axi_datamover_512MM_32STR.xdc
  read_xdc -ref axi_datamover_64MM_32STR -cells U0 /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_jtag_axi_debugger_ip_0_0/work/jtag_axi_debugger_ip/jtag_axi_debugger_ip.srcs/sources_1/ip/axi_datamover_64MM_32STR/axi_datamover_64MM_32STR.xdc
  read_xdc -ref vio_axi_jtag_dbg -cells inst /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_jtag_axi_debugger_ip_0_0/work/jtag_axi_debugger_ip/jtag_axi_debugger_ip.srcs/sources_1/ip/vio_axi_jtag_dbg/vio_axi_jtag_dbg.xdc
  read_xdc -ref jtag_axi_debug_fifo_x64 -cells U0 /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_jtag_axi_debugger_ip_0_0/work/jtag_axi_debugger_ip/jtag_axi_debugger_ip.srcs/sources_1/ip/jtag_axi_debug_fifo_x64/jtag_axi_debug_fifo_x64/jtag_axi_debug_fifo_x64.xdc
  read_xdc -ref jtag_dbg_block_mig_7series_0_0 /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_mig_7series_0_0/jtag_dbg_block_mig_7series_0_0/user_design/constraints/jtag_dbg_block_mig_7series_0_0.xdc
  read_xdc -prop_thru_buffers -ref jtag_dbg_block_mig_7series_0_0 /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_mig_7series_0_0/jtag_dbg_block_mig_7series_0_0_board.xdc
  read_xdc -prop_thru_buffers -ref jtag_dbg_block_proc_sys_reset_0 -cells U0 /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_proc_sys_reset_0/jtag_dbg_block_proc_sys_reset_0_board.xdc
  read_xdc -ref jtag_dbg_block_proc_sys_reset_0 -cells U0 /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_proc_sys_reset_0/jtag_dbg_block_proc_sys_reset_0.xdc
  read_xdc -ref axi_datamover_1024MM_32STR -cells U0 /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_jtag_axi_debugger_ip_0_0/work/jtag_axi_debugger_ip/jtag_axi_debugger_ip.srcs/sources_1/ip/axi_datamover_1024MM_32STR/axi_datamover_1024MM_32STR_clocks.xdc
  read_xdc -ref axi_datamover_128MM_32STR -cells U0 /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_jtag_axi_debugger_ip_0_0/work/jtag_axi_debugger_ip/jtag_axi_debugger_ip.srcs/sources_1/ip/axi_datamover_128MM_32STR/axi_datamover_128MM_32STR_clocks.xdc
  read_xdc -ref axi_datamover_256MM_32STR -cells U0 /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_jtag_axi_debugger_ip_0_0/work/jtag_axi_debugger_ip/jtag_axi_debugger_ip.srcs/sources_1/ip/axi_datamover_256MM_32STR/axi_datamover_256MM_32STR_clocks.xdc
  read_xdc -ref axi_datamover_32MM_32STR -cells U0 /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_jtag_axi_debugger_ip_0_0/work/jtag_axi_debugger_ip/jtag_axi_debugger_ip.srcs/sources_1/ip/axi_datamover_32MM_32STR/axi_datamover_32MM_32STR_clocks.xdc
  read_xdc -ref axi_datamover_512MM_32STR -cells U0 /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_jtag_axi_debugger_ip_0_0/work/jtag_axi_debugger_ip/jtag_axi_debugger_ip.srcs/sources_1/ip/axi_datamover_512MM_32STR/axi_datamover_512MM_32STR_clocks.xdc
  read_xdc -ref axi_datamover_64MM_32STR -cells U0 /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_jtag_axi_debugger_ip_0_0/work/jtag_axi_debugger_ip/jtag_axi_debugger_ip.srcs/sources_1/ip/axi_datamover_64MM_32STR/axi_datamover_64MM_32STR_clocks.xdc
  link_design -top jtag_dbg_block_wrapper -part xc7k325tffg900-2
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force jtag_dbg_block_wrapper_opt.dcp
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  place_design 
  catch { report_io -file jtag_dbg_block_wrapper_io_placed.rpt }
  catch { report_clock_utilization -file jtag_dbg_block_wrapper_clock_utilization_placed.rpt }
  catch { report_utilization -file jtag_dbg_block_wrapper_utilization_placed.rpt -pb jtag_dbg_block_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file jtag_dbg_block_wrapper_control_sets_placed.rpt }
  write_checkpoint -force jtag_dbg_block_wrapper_placed.dcp
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  catch { report_drc -file jtag_dbg_block_wrapper_drc_routed.rpt -pb jtag_dbg_block_wrapper_drc_routed.pb }
  catch { report_power -file jtag_dbg_block_wrapper_power_routed.rpt -pb jtag_dbg_block_wrapper_power_summary_routed.pb }
  catch { report_route_status -file jtag_dbg_block_wrapper_route_status.rpt -pb jtag_dbg_block_wrapper_route_status.pb }
  catch { report_timing_summary -file jtag_dbg_block_wrapper_timing_summary_routed.rpt -pb jtag_dbg_block_wrapper_timing_summary_routed.pb }
  write_checkpoint -force jtag_dbg_block_wrapper_routed.dcp
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  write_bitstream -force jtag_dbg_block_wrapper.bit 
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

