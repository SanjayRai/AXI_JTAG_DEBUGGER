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

// IP VLNV: xilinx.com:ip:axi_protocol_converter:2.1
// IP Revision: 0

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
axi_mm32_to_axi_lite32 your_instance_name (
  .aclk(aclk),                      // input aclk
  .aresetn(aresetn),                // input aresetn
  .s_axi_awid(s_axi_awid),          // input [3 : 0] s_axi_awid
  .s_axi_awaddr(s_axi_awaddr),      // input [31 : 0] s_axi_awaddr
  .s_axi_awlen(s_axi_awlen),        // input [7 : 0] s_axi_awlen
  .s_axi_awsize(s_axi_awsize),      // input [2 : 0] s_axi_awsize
  .s_axi_awburst(s_axi_awburst),    // input [1 : 0] s_axi_awburst
  .s_axi_awlock(s_axi_awlock),      // input [0 : 0] s_axi_awlock
  .s_axi_awcache(s_axi_awcache),    // input [3 : 0] s_axi_awcache
  .s_axi_awprot(s_axi_awprot),      // input [2 : 0] s_axi_awprot
  .s_axi_awregion(s_axi_awregion),  // input [3 : 0] s_axi_awregion
  .s_axi_awqos(s_axi_awqos),        // input [3 : 0] s_axi_awqos
  .s_axi_awvalid(s_axi_awvalid),    // input s_axi_awvalid
  .s_axi_awready(s_axi_awready),    // output s_axi_awready
  .s_axi_wdata(s_axi_wdata),        // input [31 : 0] s_axi_wdata
  .s_axi_wstrb(s_axi_wstrb),        // input [3 : 0] s_axi_wstrb
  .s_axi_wlast(s_axi_wlast),        // input s_axi_wlast
  .s_axi_wvalid(s_axi_wvalid),      // input s_axi_wvalid
  .s_axi_wready(s_axi_wready),      // output s_axi_wready
  .s_axi_bid(s_axi_bid),            // output [3 : 0] s_axi_bid
  .s_axi_bresp(s_axi_bresp),        // output [1 : 0] s_axi_bresp
  .s_axi_bvalid(s_axi_bvalid),      // output s_axi_bvalid
  .s_axi_bready(s_axi_bready),      // input s_axi_bready
  .s_axi_arid(s_axi_arid),          // input [3 : 0] s_axi_arid
  .s_axi_araddr(s_axi_araddr),      // input [31 : 0] s_axi_araddr
  .s_axi_arlen(s_axi_arlen),        // input [7 : 0] s_axi_arlen
  .s_axi_arsize(s_axi_arsize),      // input [2 : 0] s_axi_arsize
  .s_axi_arburst(s_axi_arburst),    // input [1 : 0] s_axi_arburst
  .s_axi_arlock(s_axi_arlock),      // input [0 : 0] s_axi_arlock
  .s_axi_arcache(s_axi_arcache),    // input [3 : 0] s_axi_arcache
  .s_axi_arprot(s_axi_arprot),      // input [2 : 0] s_axi_arprot
  .s_axi_arregion(s_axi_arregion),  // input [3 : 0] s_axi_arregion
  .s_axi_arqos(s_axi_arqos),        // input [3 : 0] s_axi_arqos
  .s_axi_arvalid(s_axi_arvalid),    // input s_axi_arvalid
  .s_axi_arready(s_axi_arready),    // output s_axi_arready
  .s_axi_rid(s_axi_rid),            // output [3 : 0] s_axi_rid
  .s_axi_rdata(s_axi_rdata),        // output [31 : 0] s_axi_rdata
  .s_axi_rresp(s_axi_rresp),        // output [1 : 0] s_axi_rresp
  .s_axi_rlast(s_axi_rlast),        // output s_axi_rlast
  .s_axi_rvalid(s_axi_rvalid),      // output s_axi_rvalid
  .s_axi_rready(s_axi_rready),      // input s_axi_rready
  .m_axi_awaddr(m_axi_awaddr),      // output [31 : 0] m_axi_awaddr
  .m_axi_awprot(m_axi_awprot),      // output [2 : 0] m_axi_awprot
  .m_axi_awvalid(m_axi_awvalid),    // output m_axi_awvalid
  .m_axi_awready(m_axi_awready),    // input m_axi_awready
  .m_axi_wdata(m_axi_wdata),        // output [31 : 0] m_axi_wdata
  .m_axi_wstrb(m_axi_wstrb),        // output [3 : 0] m_axi_wstrb
  .m_axi_wvalid(m_axi_wvalid),      // output m_axi_wvalid
  .m_axi_wready(m_axi_wready),      // input m_axi_wready
  .m_axi_bresp(m_axi_bresp),        // input [1 : 0] m_axi_bresp
  .m_axi_bvalid(m_axi_bvalid),      // input m_axi_bvalid
  .m_axi_bready(m_axi_bready),      // output m_axi_bready
  .m_axi_araddr(m_axi_araddr),      // output [31 : 0] m_axi_araddr
  .m_axi_arprot(m_axi_arprot),      // output [2 : 0] m_axi_arprot
  .m_axi_arvalid(m_axi_arvalid),    // output m_axi_arvalid
  .m_axi_arready(m_axi_arready),    // input m_axi_arready
  .m_axi_rdata(m_axi_rdata),        // input [31 : 0] m_axi_rdata
  .m_axi_rresp(m_axi_rresp),        // input [1 : 0] m_axi_rresp
  .m_axi_rvalid(m_axi_rvalid),      // input m_axi_rvalid
  .m_axi_rready(m_axi_rready)      // output m_axi_rready
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file axi_mm32_to_axi_lite32.v when simulating
// the core, axi_mm32_to_axi_lite32. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

