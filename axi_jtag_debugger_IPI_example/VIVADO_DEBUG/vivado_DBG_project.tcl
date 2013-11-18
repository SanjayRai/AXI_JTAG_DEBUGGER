open_hw
connect_hw_server -host MCmicro -port 60001
current_hw_target [get_hw_targets */xilinx_tcf/Digilent/210203300172A]
open_hw_target
set_property PROGRAM.FILE {../vivado_prj/project_X/project_X.runs/impl_1/jtag_dbg_block_wrapper.bit} [lindex [get_hw_devices] 0]
set_property PROBES.FILE {../vivado_prj/project_X/project_X.runs/impl_1/debug_nets.ltx} [lindex [get_hw_devices] 0]
program_hw_devices [lindex [get_hw_devices] 0]
refresh_hw_device [lindex [get_hw_devices] 0]
source ../src/peek_poke.tcl
vio_init
