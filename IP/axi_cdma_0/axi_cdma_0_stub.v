// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.3 (lin64) Build 329390 Wed Oct 16 18:26:55 MDT 2013
// Date        : Thu Nov 14 09:23:20 2013
// Host        : centosMC running 64-bit CentOS release 6.4 (Final)
// Command     : write_verilog -force -mode synth_stub
//               /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/IP/axi_cdma_0/axi_cdma_0_stub.v
// Design      : axi_cdma_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module axi_cdma_0(m_axi_aclk, s_axi_lite_aclk, s_axi_lite_aresetn, cdma_introut, s_axi_lite_awready, s_axi_lite_awvalid, s_axi_lite_awaddr, s_axi_lite_wready, s_axi_lite_wvalid, s_axi_lite_wdata, s_axi_lite_bready, s_axi_lite_bvalid, s_axi_lite_bresp, s_axi_lite_arready, s_axi_lite_arvalid, s_axi_lite_araddr, s_axi_lite_rready, s_axi_lite_rvalid, s_axi_lite_rdata, s_axi_lite_rresp, m_axi_arready, m_axi_arvalid, m_axi_araddr, m_axi_arlen, m_axi_arsize, m_axi_arburst, m_axi_arprot, m_axi_arcache, m_axi_rready, m_axi_rvalid, m_axi_rdata, m_axi_rresp, m_axi_rlast, m_axi_awready, m_axi_awvalid, m_axi_awaddr, m_axi_awlen, m_axi_awsize, m_axi_awburst, m_axi_awprot, m_axi_awcache, m_axi_wready, m_axi_wvalid, m_axi_wdata, m_axi_wstrb, m_axi_wlast, m_axi_bready, m_axi_bvalid, m_axi_bresp, cdma_tvect_out)
/* synthesis syn_black_box black_box_pad_pin="m_axi_aclk,s_axi_lite_aclk,s_axi_lite_aresetn,cdma_introut,s_axi_lite_awready,s_axi_lite_awvalid,s_axi_lite_awaddr[5:0],s_axi_lite_wready,s_axi_lite_wvalid,s_axi_lite_wdata[31:0],s_axi_lite_bready,s_axi_lite_bvalid,s_axi_lite_bresp[1:0],s_axi_lite_arready,s_axi_lite_arvalid,s_axi_lite_araddr[5:0],s_axi_lite_rready,s_axi_lite_rvalid,s_axi_lite_rdata[31:0],s_axi_lite_rresp[1:0],m_axi_arready,m_axi_arvalid,m_axi_araddr[31:0],m_axi_arlen[7:0],m_axi_arsize[2:0],m_axi_arburst[1:0],m_axi_arprot[2:0],m_axi_arcache[3:0],m_axi_rready,m_axi_rvalid,m_axi_rdata[255:0],m_axi_rresp[1:0],m_axi_rlast,m_axi_awready,m_axi_awvalid,m_axi_awaddr[31:0],m_axi_awlen[7:0],m_axi_awsize[2:0],m_axi_awburst[1:0],m_axi_awprot[2:0],m_axi_awcache[3:0],m_axi_wready,m_axi_wvalid,m_axi_wdata[255:0],m_axi_wstrb[31:0],m_axi_wlast,m_axi_bready,m_axi_bvalid,m_axi_bresp[1:0],cdma_tvect_out[31:0]" */;
  input m_axi_aclk;
  input s_axi_lite_aclk;
  input s_axi_lite_aresetn;
  output cdma_introut;
  output s_axi_lite_awready;
  input s_axi_lite_awvalid;
  input [5:0]s_axi_lite_awaddr;
  output s_axi_lite_wready;
  input s_axi_lite_wvalid;
  input [31:0]s_axi_lite_wdata;
  input s_axi_lite_bready;
  output s_axi_lite_bvalid;
  output [1:0]s_axi_lite_bresp;
  output s_axi_lite_arready;
  input s_axi_lite_arvalid;
  input [5:0]s_axi_lite_araddr;
  input s_axi_lite_rready;
  output s_axi_lite_rvalid;
  output [31:0]s_axi_lite_rdata;
  output [1:0]s_axi_lite_rresp;
  input m_axi_arready;
  output m_axi_arvalid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arcache;
  output m_axi_rready;
  input m_axi_rvalid;
  input [255:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_awready;
  output m_axi_awvalid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awcache;
  input m_axi_wready;
  output m_axi_wvalid;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_bready;
  input m_axi_bvalid;
  input [1:0]m_axi_bresp;
  output [31:0]cdma_tvect_out;
endmodule
