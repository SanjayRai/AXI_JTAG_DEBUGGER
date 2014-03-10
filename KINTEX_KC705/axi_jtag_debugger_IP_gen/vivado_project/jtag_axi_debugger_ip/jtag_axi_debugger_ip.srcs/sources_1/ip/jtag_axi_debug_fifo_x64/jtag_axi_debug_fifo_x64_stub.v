// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.3 (lin64) Build 329390 Wed Oct 16 18:26:55 MDT 2013
// Date        : Wed Nov 13 22:06:37 2013
// Host        : centosMC running 64-bit CentOS release 6.4 (Final)
// Command     : write_verilog -force -mode synth_stub
//               /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/IP/jtag_axi_debug_fifo_x64/jtag_axi_debug_fifo_x64_stub.v
// Design      : jtag_axi_debug_fifo_x64
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module jtag_axi_debug_fifo_x64(s_aclk, s_aresetn, s_axis_tvalid, s_axis_tready, s_axis_tdata, m_axis_tvalid, m_axis_tready, m_axis_tdata, axis_data_count)
/* synthesis syn_black_box black_box_pad_pin="s_aclk,s_aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[63:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[63:0],axis_data_count[8:0]" */;
  input s_aclk;
  input s_aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [63:0]s_axis_tdata;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [8:0]axis_data_count;
endmodule
