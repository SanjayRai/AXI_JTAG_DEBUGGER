// (c) Copyright 1995-2014 Xilinx, Inc. All rights reserved.
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

(* X_CORE_INFO = "jtag_axi_debugger_ip,Vivado 2013.4" *)
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

input wire sys_clk;
output wire jtag_axi_debugger_ip_ERROR;
output wire [31 : 0] GP_OUT_32_A;
output wire [31 : 0] GP_OUT_32_B;
input wire [31 : 0] GP_IN_32_A;
input wire [31 : 0] GP_IN_32_B;
output wire [31 : 0] m_axi4_lite_awaddr;
output wire [2 : 0] m_axi4_lite_awprot;
output wire m_axi4_lite_awvalid;
input wire m_axi4_lite_awready;
output wire [31 : 0] m_axi4_lite_wdata;
output wire [3 : 0] m_axi4_lite_wstrb;
output wire m_axi4_lite_wlast;
output wire m_axi4_lite_wvalid;
input wire m_axi4_lite_wready;
output wire m_axi4_lite_bready;
input wire [1 : 0] m_axi4_lite_bresp;
input wire m_axi4_lite_bvalid;
output wire [31 : 0] m_axi4_lite_araddr;
output wire [2 : 0] m_axi4_lite_arprot;
output wire m_axi4_lite_arvalid;
input wire m_axi4_lite_arready;
output wire m_axi4_lite_rready;
input wire [31 : 0] m_axi4_lite_rdata;
input wire [1 : 0] m_axi4_lite_rresp;
input wire m_axi4_lite_rlast;
input wire m_axi4_lite_rvalid;
output wire [3 : 0] m_axi4_mm_awid;
output wire [31 : 0] m_axi4_mm_awaddr;
output wire [7 : 0] m_axi4_mm_awlen;
output wire [2 : 0] m_axi4_mm_awsize;
output wire [1 : 0] m_axi4_mm_awburst;
output wire [3 : 0] m_axi4_mm_awcache;
output wire [2 : 0] m_axi4_mm_awprot;
output wire m_axi4_mm_awvalid;
input wire m_axi4_mm_awready;
output wire [255 : 0] m_axi4_mm_wdata;
output wire [31 : 0] m_axi4_mm_wstrb;
output wire m_axi4_mm_wlast;
output wire m_axi4_mm_wvalid;
input wire m_axi4_mm_wready;
output wire m_axi4_mm_bready;
input wire [1 : 0] m_axi4_mm_bresp;
input wire m_axi4_mm_bvalid;
output wire [3 : 0] m_axi4_mm_arid;
output wire [31 : 0] m_axi4_mm_araddr;
output wire [7 : 0] m_axi4_mm_arlen;
output wire [2 : 0] m_axi4_mm_arsize;
output wire [1 : 0] m_axi4_mm_arburst;
output wire [3 : 0] m_axi4_mm_arcache;
output wire [2 : 0] m_axi4_mm_arprot;
output wire m_axi4_mm_arvalid;
input wire m_axi4_mm_arready;
output wire m_axi4_mm_rready;
input wire [255 : 0] m_axi4_mm_rdata;
input wire [1 : 0] m_axi4_mm_rresp;
input wire m_axi4_mm_rlast;
input wire m_axi4_mm_rvalid;

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
