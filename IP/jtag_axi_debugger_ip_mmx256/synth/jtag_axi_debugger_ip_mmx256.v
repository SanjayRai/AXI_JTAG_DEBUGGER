// (c) Copyright 1995-2013 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: sanjayr:user:jtag_axi_debugger_ip:1.0
// IP Revision: 1

(* X_CORE_INFO = "jtag_axi_debugger_ip,Vivado 2013.3" *)
(* CHECK_LICENSE_TYPE = "jtag_axi_debugger_ip_mmx256,jtag_axi_debugger_ip,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module jtag_axi_debugger_ip_mmx256 (
  sys_clk,
  jtag_axi_debugger_ip_ERROR,
  GP_OUT_32_A,
  GP_OUT_32_B,
  GP_IN_32_A,
  GP_IN_32_B,
  m_axi4_lite_awaddr,
  m_axi4_lite_awprot,
  m_axi4_lite_awvalid,
  m_axi4_lite_awready,
  m_axi4_lite_wdata,
  m_axi4_lite_wstrb,
  m_axi4_lite_wlast,
  m_axi4_lite_wvalid,
  m_axi4_lite_wready,
  m_axi4_lite_bready,
  m_axi4_lite_bresp,
  m_axi4_lite_bvalid,
  m_axi4_lite_araddr,
  m_axi4_lite_arprot,
  m_axi4_lite_arvalid,
  m_axi4_lite_arready,
  m_axi4_lite_rready,
  m_axi4_lite_rdata,
  m_axi4_lite_rresp,
  m_axi4_lite_rlast,
  m_axi4_lite_rvalid,
  m_axi4_mm_awid,
  m_axi4_mm_awaddr,
  m_axi4_mm_awlen,
  m_axi4_mm_awsize,
  m_axi4_mm_awburst,
  m_axi4_mm_awcache,
  m_axi4_mm_awprot,
  m_axi4_mm_awvalid,
  m_axi4_mm_awready,
  m_axi4_mm_wdata,
  m_axi4_mm_wstrb,
  m_axi4_mm_wlast,
  m_axi4_mm_wvalid,
  m_axi4_mm_wready,
  m_axi4_mm_bready,
  m_axi4_mm_bresp,
  m_axi4_mm_bvalid,
  m_axi4_mm_arid,
  m_axi4_mm_araddr,
  m_axi4_mm_arlen,
  m_axi4_mm_arsize,
  m_axi4_mm_arburst,
  m_axi4_mm_arcache,
  m_axi4_mm_arprot,
  m_axi4_mm_arvalid,
  m_axi4_mm_arready,
  m_axi4_mm_rready,
  m_axi4_mm_rdata,
  m_axi4_mm_rresp,
  m_axi4_mm_rlast,
  m_axi4_mm_rvalid
);

input sys_clk;
output jtag_axi_debugger_ip_ERROR;
output [31 : 0] GP_OUT_32_A;
output [31 : 0] GP_OUT_32_B;
input [31 : 0] GP_IN_32_A;
input [31 : 0] GP_IN_32_B;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_lite AWADDR" *)
output [31 : 0] m_axi4_lite_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_lite AWPROT" *)
output [2 : 0] m_axi4_lite_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_lite AWVALID" *)
output m_axi4_lite_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_lite AWREADY" *)
input m_axi4_lite_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_lite WDATA" *)
output [31 : 0] m_axi4_lite_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_lite WSTRB" *)
output [3 : 0] m_axi4_lite_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_lite WLAST" *)
output m_axi4_lite_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_lite WVALID" *)
output m_axi4_lite_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_lite WREADY" *)
input m_axi4_lite_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_lite BREADY" *)
output m_axi4_lite_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_lite BRESP" *)
input [1 : 0] m_axi4_lite_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_lite BVALID" *)
input m_axi4_lite_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_lite ARADDR" *)
output [31 : 0] m_axi4_lite_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_lite ARPROT" *)
output [2 : 0] m_axi4_lite_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_lite ARVALID" *)
output m_axi4_lite_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_lite ARREADY" *)
input m_axi4_lite_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_lite RREADY" *)
output m_axi4_lite_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_lite RDATA" *)
input [31 : 0] m_axi4_lite_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_lite RRESP" *)
input [1 : 0] m_axi4_lite_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_lite RLAST" *)
input m_axi4_lite_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_lite RVALID" *)
input m_axi4_lite_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm AWID" *)
output [3 : 0] m_axi4_mm_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm AWADDR" *)
output [31 : 0] m_axi4_mm_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm AWLEN" *)
output [7 : 0] m_axi4_mm_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm AWSIZE" *)
output [2 : 0] m_axi4_mm_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm AWBURST" *)
output [1 : 0] m_axi4_mm_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm AWCACHE" *)
output [3 : 0] m_axi4_mm_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm AWPROT" *)
output [2 : 0] m_axi4_mm_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm AWVALID" *)
output m_axi4_mm_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm AWREADY" *)
input m_axi4_mm_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm WDATA" *)
output [255 : 0] m_axi4_mm_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm WSTRB" *)
output [31 : 0] m_axi4_mm_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm WLAST" *)
output m_axi4_mm_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm WVALID" *)
output m_axi4_mm_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm WREADY" *)
input m_axi4_mm_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm BREADY" *)
output m_axi4_mm_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm BRESP" *)
input [1 : 0] m_axi4_mm_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm BVALID" *)
input m_axi4_mm_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm ARID" *)
output [3 : 0] m_axi4_mm_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm ARADDR" *)
output [31 : 0] m_axi4_mm_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm ARLEN" *)
output [7 : 0] m_axi4_mm_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm ARSIZE" *)
output [2 : 0] m_axi4_mm_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm ARBURST" *)
output [1 : 0] m_axi4_mm_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm ARCACHE" *)
output [3 : 0] m_axi4_mm_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm ARPROT" *)
output [2 : 0] m_axi4_mm_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm ARVALID" *)
output m_axi4_mm_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm ARREADY" *)
input m_axi4_mm_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm RREADY" *)
output m_axi4_mm_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm RDATA" *)
input [255 : 0] m_axi4_mm_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm RRESP" *)
input [1 : 0] m_axi4_mm_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm RLAST" *)
input m_axi4_mm_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi4_mm RVALID" *)
input m_axi4_mm_rvalid;

  jtag_axi_debugger_ip #(
    .AXI4_LITE_DATA_WIDTH(32),
    .AXI4_MM_DATA_WIDTH(256)
  ) inst (
    .sys_clk(sys_clk),
    .jtag_axi_debugger_ip_ERROR(jtag_axi_debugger_ip_ERROR),
    .GP_OUT_32_A(GP_OUT_32_A),
    .GP_OUT_32_B(GP_OUT_32_B),
    .GP_IN_32_A(GP_IN_32_A),
    .GP_IN_32_B(GP_IN_32_B),
    .m_axi4_lite_awaddr(m_axi4_lite_awaddr),
    .m_axi4_lite_awprot(m_axi4_lite_awprot),
    .m_axi4_lite_awvalid(m_axi4_lite_awvalid),
    .m_axi4_lite_awready(m_axi4_lite_awready),
    .m_axi4_lite_wdata(m_axi4_lite_wdata),
    .m_axi4_lite_wstrb(m_axi4_lite_wstrb),
    .m_axi4_lite_wlast(m_axi4_lite_wlast),
    .m_axi4_lite_wvalid(m_axi4_lite_wvalid),
    .m_axi4_lite_wready(m_axi4_lite_wready),
    .m_axi4_lite_bready(m_axi4_lite_bready),
    .m_axi4_lite_bresp(m_axi4_lite_bresp),
    .m_axi4_lite_bvalid(m_axi4_lite_bvalid),
    .m_axi4_lite_araddr(m_axi4_lite_araddr),
    .m_axi4_lite_arprot(m_axi4_lite_arprot),
    .m_axi4_lite_arvalid(m_axi4_lite_arvalid),
    .m_axi4_lite_arready(m_axi4_lite_arready),
    .m_axi4_lite_rready(m_axi4_lite_rready),
    .m_axi4_lite_rdata(m_axi4_lite_rdata),
    .m_axi4_lite_rresp(m_axi4_lite_rresp),
    .m_axi4_lite_rlast(m_axi4_lite_rlast),
    .m_axi4_lite_rvalid(m_axi4_lite_rvalid),
    .m_axi4_mm_awid(m_axi4_mm_awid),
    .m_axi4_mm_awaddr(m_axi4_mm_awaddr),
    .m_axi4_mm_awlen(m_axi4_mm_awlen),
    .m_axi4_mm_awsize(m_axi4_mm_awsize),
    .m_axi4_mm_awburst(m_axi4_mm_awburst),
    .m_axi4_mm_awcache(m_axi4_mm_awcache),
    .m_axi4_mm_awprot(m_axi4_mm_awprot),
    .m_axi4_mm_awvalid(m_axi4_mm_awvalid),
    .m_axi4_mm_awready(m_axi4_mm_awready),
    .m_axi4_mm_wdata(m_axi4_mm_wdata),
    .m_axi4_mm_wstrb(m_axi4_mm_wstrb),
    .m_axi4_mm_wlast(m_axi4_mm_wlast),
    .m_axi4_mm_wvalid(m_axi4_mm_wvalid),
    .m_axi4_mm_wready(m_axi4_mm_wready),
    .m_axi4_mm_bready(m_axi4_mm_bready),
    .m_axi4_mm_bresp(m_axi4_mm_bresp),
    .m_axi4_mm_bvalid(m_axi4_mm_bvalid),
    .m_axi4_mm_arid(m_axi4_mm_arid),
    .m_axi4_mm_araddr(m_axi4_mm_araddr),
    .m_axi4_mm_arlen(m_axi4_mm_arlen),
    .m_axi4_mm_arsize(m_axi4_mm_arsize),
    .m_axi4_mm_arburst(m_axi4_mm_arburst),
    .m_axi4_mm_arcache(m_axi4_mm_arcache),
    .m_axi4_mm_arprot(m_axi4_mm_arprot),
    .m_axi4_mm_arvalid(m_axi4_mm_arvalid),
    .m_axi4_mm_arready(m_axi4_mm_arready),
    .m_axi4_mm_rready(m_axi4_mm_rready),
    .m_axi4_mm_rdata(m_axi4_mm_rdata),
    .m_axi4_mm_rresp(m_axi4_mm_rresp),
    .m_axi4_mm_rlast(m_axi4_mm_rlast),
    .m_axi4_mm_rvalid(m_axi4_mm_rvalid)
  );
endmodule
