// Created : 10:53:39, Mon May 4, 2013 : Sanjay Rai

`timescale 1ns/100fs
module jtag_axi_debugger_ip # (
    parameter AXI4_LITE_DATA_WIDTH = 64,
    parameter AXI4_MM_DATA_WIDTH = 512
)(
input                  sys_clk,

output                  jtag_axi_debugger_ip_ERROR,

output [31:0]          GP_OUT_32_A,
output [31:0]          GP_OUT_32_B,
input  [31:0]          GP_IN_32_A,
input  [31:0]          GP_IN_32_B,

//AXI4_LITE
output  [3:0]          m_axi4_lite_awid,
output  [31:0]         m_axi4_lite_awaddr,
output  [2:0]          m_axi4_lite_awprot,
output                 m_axi4_lite_awvalid,
input                  m_axi4_lite_awready,
// Master Interface Write Data Ports
output  [(AXI4_LITE_DATA_WIDTH-1):0]        m_axi4_lite_wdata,
output  [((AXI4_LITE_DATA_WIDTH/8)-1):0]    m_axi4_lite_wstrb,
output                 m_axi4_lite_wlast,
output                 m_axi4_lite_wvalid,
input                  m_axi4_lite_wready,
// Master Interface Write Response Ports
output                 m_axi4_lite_bready,
input [1:0]            m_axi4_lite_bresp,
input                  m_axi4_lite_bvalid,
// Master Interface Read Address Ports
output  [3:0]          m_axi4_lite_arid,
output  [31:0]         m_axi4_lite_araddr,
output  [2:0]          m_axi4_lite_arprot,
output                 m_axi4_lite_arvalid,
input                  m_axi4_lite_arready,
// Master Interface Read Data Ports
output                 m_axi4_lite_rready,
input [(AXI4_LITE_DATA_WIDTH-1):0]          m_axi4_lite_rdata,
input [1:0]            m_axi4_lite_rresp,
input                  m_axi4_lite_rlast,
input                  m_axi4_lite_rvalid,

//AXI4_MM

output  [3:0]          m_axi4_mm_awid,
output  [31:0]         m_axi4_mm_awaddr,
output  [7:0]          m_axi4_mm_awlen,
output  [2:0]          m_axi4_mm_awsize,
output  [1:0]          m_axi4_mm_awburst,
output  [3:0]          m_axi4_mm_awcache,
output  [2:0]          m_axi4_mm_awprot,
output                 m_axi4_mm_awvalid,
input                  m_axi4_mm_awready,
// Master Interface Write Data Ports
output  [(AXI4_MM_DATA_WIDTH-1):0]        m_axi4_mm_wdata,
output  [((AXI4_MM_DATA_WIDTH/8)-1):0]    m_axi4_mm_wstrb,
output                 m_axi4_mm_wlast,
output                 m_axi4_mm_wvalid,
input                  m_axi4_mm_wready,
// Master Interface Write Response Ports
output                 m_axi4_mm_bready,
input [1:0]            m_axi4_mm_bresp,
input                  m_axi4_mm_bvalid,
// Master Interface Read Address Ports
output  [3:0]          m_axi4_mm_arid,
output  [31:0]         m_axi4_mm_araddr,
output  [7:0]          m_axi4_mm_arlen,
output  [2:0]          m_axi4_mm_arsize,
output  [1:0]          m_axi4_mm_arburst,
output  [3:0]          m_axi4_mm_arcache,
output  [2:0]          m_axi4_mm_arprot,
output                 m_axi4_mm_arvalid,
input                  m_axi4_mm_arready,
// Master Interface Read Data Ports
output                 m_axi4_mm_rready,
input [(AXI4_MM_DATA_WIDTH-1):0]          m_axi4_mm_rdata,
input [1:0]            m_axi4_mm_rresp,
input                  m_axi4_mm_rlast,
input                  m_axi4_mm_rvalid

);

wire [71 : 0] s_axis_mm2s_cmd_tdata_axi4_lite;
wire [71 : 0] s_axis_s2mm_cmd_tdata_axi4_lite;
wire          s_axis_s2mm_cmd_tvalid_axi4_lite;
wire          s_axis_s2mm_cmd_tready_axi4_lite;
wire [31 : 0] s_axis_s2mm_tdata_axi4_lite;
wire [3 : 0]  s_axis_s2mm_tkeep_axi4_lite;
wire          s_axis_s2mm_tlast_axi4_lite;
wire          s_axis_s2mm_tvalid_axi4_lite;
wire          s_axis_s2mm_tready_axi4_lite;
wire          s_axis_mm2s_cmd_tvalid_axi4_lite;
wire          s_axis_mm2s_cmd_tready_axi4_lite;
wire [31 : 0] m_axis_mm2s_tdata_axi4_lite;
wire [3 : 0]  m_axis_mm2s_tkeep_axi4_lite;
wire          m_axis_mm2s_tvalid_axi4_lite;
wire          m_axis_mm2s_tready_axi4_lite;

wire [71 : 0] s_axis_mm2s_cmd_tdata_axi4_mm;
wire [71 : 0] s_axis_s2mm_cmd_tdata_axi4_mm;
wire          s_axis_s2mm_cmd_tvalid_axi4_mm;
wire          s_axis_s2mm_cmd_tready_axi4_mm;
wire [31 : 0] s_axis_s2mm_tdata_axi4_mm;
wire [3 : 0]  s_axis_s2mm_tkeep_axi4_mm;
wire          s_axis_s2mm_tlast_axi4_mm;
wire          s_axis_s2mm_tvalid_axi4_mm;
wire          s_axis_s2mm_tready_axi4_mm;
wire          s_axis_mm2s_cmd_tvalid_axi4_mm;
wire          s_axis_mm2s_cmd_tready_axi4_mm;
wire [31 : 0] m_axis_mm2s_tdata_axi4_mm;
wire [3 : 0]  m_axis_mm2s_tkeep_axi4_mm;
wire          m_axis_mm2s_tvalid_axi4_mm;
wire          m_axis_mm2s_tready_axi4_mm;


wire  s2mm_err_mm;
wire  s2mm_err_lite;
wire  mm2s_err_mm;
wire  mm2s_err_lite;

wire data_mover_aresetn;

wire [3 : 0] im_axi_awid; // input [3 : 0] s_axi_awid
wire [31 : 0] im_axi_awaddr; // input [31 : 0] s_axi_awaddr
wire [2 : 0] im_axi_awlen; // input [7 : 0] s_axi_awlen
wire [1 : 0] im_axi_awsize; // input [2 : 0] s_axi_awsize
wire [1 : 0] im_axi_awburst; // input [1 : 0] s_axi_awburst
wire [3 : 0] im_axi_awcache; // input [3 : 0] s_axi_awcache
wire [2 : 0] im_axi_awprot; // input [2 : 0] s_axi_awprot
wire im_axi_awvalid; // input s_axi_awvalid
wire im_axi_awready; // output s_axi_awready
wire [(AXI4_MM_DATA_WIDTH-1) : 0] im_axi_wdata; // input [(AXI4_MM_DATA_WIDTH-1) : 0] s_axi_wdata
wire [((AXI4_MM_DATA_WIDTH/8)-1) : 0] im_axi_wstrb; // input [((AXI4_MM_DATA_WIDTH/8)-1) : 0] s_axi_wstrb
wire im_axi_wlast; // input s_axi_wlast
wire im_axi_wvalid; // input s_axi_wvalid
wire im_axi_wready; // output s_axi_wready
wire [3 : 0] im_axi_bid; // output [3 : 0] s_axi_bid
wire [1 : 0] im_axi_bresp; // output [1 : 0] s_axi_bresp
wire im_axi_bvalid; // output s_axi_bvalid
wire im_axi_bready; // input s_axi_bready
wire [3 : 0] im_axi_arid; // input [3 : 0] s_axi_arid
wire [31 : 0] im_axi_araddr; // input [31 : 0] s_axi_araddr
wire [7 : 0] im_axi_arlen; // input [7 : 0] s_axi_arlen
wire [2 : 0] im_axi_arsize; // input [2 : 0] s_axi_arsize
wire [1 : 0] im_axi_arburst; // input [1 : 0] s_axi_arburst
wire [3 : 0] im_axi_arcache; // input [3 : 0] s_axi_arcache
wire [2 : 0] im_axi_arprot; // input [2 : 0] s_axi_arprot
wire im_axi_arvalid; // input s_axi_arvalid
wire im_axi_arready; // output s_axi_arready
wire [3 : 0] im_axi_rid; // output [3 : 0] s_axi_rid
wire [(AXI4_MM_DATA_WIDTH-1) : 0] im_axi_rdata; // output [63 : 0] s_axi_rdata
wire [1 : 0] im_axi_rresp; // output [1 : 0] s_axi_rresp
wire im_axi_rlast; // output s_axi_rlast
wire im_axi_rvalid; // output s_axi_rvalid
wire im_axi_rready; // input s_axi_rready

assign jtag_axi_debugger_ip_ERROR = (s2mm_err_mm | mm2s_err_mm | s2mm_err_lite | mm2s_err_lite);

stream_data u_jtag_axi_debugger_stream_data_if (
                                .clk(sys_clk),
                                .data_mover_aresetn(data_mover_aresetn),
                                .GP_OUT_32_A(GP_OUT_32_A),
                                .GP_OUT_32_B(GP_OUT_32_B),
                                .GP_IN_32_A(GP_IN_32_A),
                                .GP_IN_32_B(GP_IN_32_B),
                                .axi4_lite_s_axis_s2mm_cmd_tvalid(s_axis_s2mm_cmd_tvalid_axi4_lite),
                                .axi4_lite_s_axis_s2mm_cmd_tready(s_axis_s2mm_cmd_tready_axi4_lite),
                                .axi4_lite_s_axis_s2mm_cmd_tdata(s_axis_s2mm_cmd_tdata_axi4_lite),
                                .axi4_lite_s_axis_s2mm_tdata(s_axis_s2mm_tdata_axi4_lite),
                                .axi4_lite_s_axis_s2mm_tkeep(s_axis_s2mm_tkeep_axi4_lite),
                                .axi4_lite_s_axis_s2mm_tlast(s_axis_s2mm_tlast_axi4_lite),
                                .axi4_lite_s_axis_s2mm_tvalid(s_axis_s2mm_tvalid_axi4_lite),
                                .axi4_lite_s_axis_s2mm_tready(s_axis_s2mm_tready_axi4_lite),
                                .axi4_lite_s_axis_mm2s_cmd_tvalid(s_axis_mm2s_cmd_tvalid_axi4_lite),
                                .axi4_lite_s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready_axi4_lite),
                                .axi4_lite_s_axis_mm2s_cmd_tdata(s_axis_mm2s_cmd_tdata_axi4_lite),
                                .axi4_lite_m_axis_mm2s_tdata(m_axis_mm2s_tdata_axi4_lite),
                                .axi4_lite_m_axis_mm2s_tkeep(m_axis_mm2s_tkeep_axi4_lite),
                                .axi4_lite_m_axis_mm2s_tvalid(m_axis_mm2s_tvalid_axi4_lite),
                                .axi4_lite_m_axis_mm2s_tready(m_axis_mm2s_tready_axi4_lite),

                                .axi4_s_axis_s2mm_cmd_tvalid(s_axis_s2mm_cmd_tvalid_axi4_mm),
                                .axi4_s_axis_s2mm_cmd_tready(s_axis_s2mm_cmd_tready_axi4_mm),
                                .axi4_s_axis_s2mm_cmd_tdata(s_axis_s2mm_cmd_tdata_axi4_mm),
                                .axi4_s_axis_s2mm_tdata(s_axis_s2mm_tdata_axi4_mm),
                                .axi4_s_axis_s2mm_tkeep(s_axis_s2mm_tkeep_axi4_mm),
                                .axi4_s_axis_s2mm_tlast(s_axis_s2mm_tlast_axi4_mm),
                                .axi4_s_axis_s2mm_tvalid(s_axis_s2mm_tvalid_axi4_mm),
                                .axi4_s_axis_s2mm_tready(s_axis_s2mm_tready_axi4_mm),
                                .axi4_s_axis_mm2s_cmd_tvalid(s_axis_mm2s_cmd_tvalid_axi4_mm),
                                .axi4_s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready_axi4_mm),
                                .axi4_s_axis_mm2s_cmd_tdata(s_axis_mm2s_cmd_tdata_axi4_mm),
                                .axi4_m_axis_mm2s_tdata(m_axis_mm2s_tdata_axi4_mm),
                                .axi4_m_axis_mm2s_tkeep(m_axis_mm2s_tkeep_axi4_mm),
                                .axi4_m_axis_mm2s_tvalid(m_axis_mm2s_tvalid_axi4_mm),
                                .axi4_m_axis_mm2s_tready(m_axis_mm2s_tready_axi4_mm));

generate

case (AXI4_MM_DATA_WIDTH)
    1024 :
        axi_datamover_1024MM_32STR axi_data_mover_inst (
          .m_axi_mm2s_aclk(sys_clk), // input m_axi_mm2s_aclk
          .m_axi_mm2s_aresetn(data_mover_aresetn), // input m_axi_mm2s_aresetn
          .mm2s_err(mm2s_err_mm), // output mm2s_err
          .m_axis_mm2s_cmdsts_aclk(sys_clk), // input m_axis_mm2s_cmdsts_aclk
          .m_axis_mm2s_cmdsts_aresetn(data_mover_aresetn), // input m_axis_mm2s_cmdsts_aresetn

          .s_axis_mm2s_cmd_tvalid(s_axis_mm2s_cmd_tvalid_axi4_mm), // input s_axis_mm2s_cmd_tvalid
          .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready_axi4_mm), // output s_axis_mm2s_cmd_tready
          .s_axis_mm2s_cmd_tdata(s_axis_mm2s_cmd_tdata_axi4_mm), // input [71 : 0] s_axis_mm2s_cmd_tdata

          .m_axis_mm2s_sts_tvalid(), // output m_axis_mm2s_sts_tvalid
          .m_axis_mm2s_sts_tready(1'b1), // input m_axis_mm2s_sts_tready
          .m_axis_mm2s_sts_tdata(), // output [7 : 0] m_axis_mm2s_sts_tdata
          .m_axis_mm2s_sts_tkeep(), // output [0 : 0] m_axis_mm2s_sts_tkeep
          .m_axis_mm2s_sts_tlast(), // output m_axis_mm2s_sts_tlast

          .m_axi_mm2s_arid(m_axi4_mm_arid), // output [3 : 0] m_axi_mm2s_arid
          .m_axi_mm2s_araddr(m_axi4_mm_araddr), // output [31 : 0] m_axi_mm2s_araddr
          .m_axi_mm2s_arlen(m_axi4_mm_arlen), // output [7 : 0] m_axi_mm2s_arlen
          .m_axi_mm2s_arsize(m_axi4_mm_arsize), // output [2 : 0] m_axi_mm2s_arsize
          .m_axi_mm2s_arburst(m_axi4_mm_arburst), // output [1 : 0] m_axi_mm2s_arburst
          .m_axi_mm2s_arprot(m_axi4_mm_arprot), // output [2 : 0] m_axi_mm2s_arprot
          .m_axi_mm2s_arcache(m_axi4_mm_arcache), // output [3 : 0] m_axi_mm2s_arcache
          .m_axi_mm2s_aruser(), // output [3 : 0] m_axi_mm2s_aruser
          .m_axi_mm2s_arvalid(m_axi4_mm_arvalid), // output m_axi_mm2s_arvalid
          .m_axi_mm2s_arready(m_axi4_mm_arready), // input m_axi_mm2s_arready
          .m_axi_mm2s_rdata(m_axi4_mm_rdata), // input [(AXI4_MM_DATA_WIDTH-1) : 0] m_axi_mm2s_rdata
          .m_axi_mm2s_rresp(m_axi4_mm_rresp), // input [1 : 0] m_axi_mm2s_rresp
          .m_axi_mm2s_rlast(m_axi4_mm_rlast), // input m_axi_mm2s_rlast
          .m_axi_mm2s_rvalid(m_axi4_mm_rvalid), // input m_axi_mm2s_rvalid
          .m_axi_mm2s_rready(m_axi4_mm_rready), // output m_axi_mm2s_rready

          .m_axis_mm2s_tdata(m_axis_mm2s_tdata_axi4_mm), // output [31 : 0] m_axis_mm2s_tdata
          .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep_axi4_mm), // output [3 : 0] m_axis_mm2s_tkeep
          .m_axis_mm2s_tlast(), // output m_axis_mm2s_tlast
          .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid_axi4_mm), // output m_axis_mm2s_tvalid
          .m_axis_mm2s_tready(m_axis_mm2s_tready_axi4_mm), // input m_axis_mm2s_tready

          .m_axi_s2mm_aclk(sys_clk), // input m_axi_s2mm_aclk
          .m_axi_s2mm_aresetn(data_mover_aresetn), // input m_axi_s2mm_aresetn
          .s2mm_err(s2mm_err_mm), // output s2mm_err
          .m_axis_s2mm_cmdsts_awclk(sys_clk), // input m_axis_s2mm_cmdsts_awclk
          .m_axis_s2mm_cmdsts_aresetn(data_mover_aresetn), // input m_axis_s2mm_cmdsts_aresetn

          .s_axis_s2mm_cmd_tvalid(s_axis_s2mm_cmd_tvalid_axi4_mm), // input s_axis_s2mm_cmd_tvalid
          .s_axis_s2mm_cmd_tready(s_axis_s2mm_cmd_tready_axi4_mm), // output s_axis_s2mm_cmd_tready
          .s_axis_s2mm_cmd_tdata(s_axis_s2mm_cmd_tdata_axi4_mm), // input [71 : 0] s_axis_s2mm_cmd_tdata

          .m_axis_s2mm_sts_tvalid(), // output m_axis_s2mm_sts_tvalid
          .m_axis_s2mm_sts_tready(1'b1), // input m_axis_s2mm_sts_tready
          .m_axis_s2mm_sts_tdata(), // output [7 : 0] m_axis_s2mm_sts_tdata
          .m_axis_s2mm_sts_tkeep(), // output [0 : 0] m_axis_s2mm_sts_tkeep
          .m_axis_s2mm_sts_tlast(), // output m_axis_s2mm_sts_tlast

          .m_axi_s2mm_awid(m_axi4_mm_awid), // output [3 : 0] m_axi_s2mm_awid
          .m_axi_s2mm_awaddr(m_axi4_mm_awaddr), // output [31 : 0] m_axi_s2mm_awaddr
          .m_axi_s2mm_awlen(m_axi4_mm_awlen), // output [7 : 0] m_axi_s2mm_awlen
          .m_axi_s2mm_awsize(m_axi4_mm_awsize), // output [2 : 0] m_axi_s2mm_awsize
          .m_axi_s2mm_awburst(m_axi4_mm_awburst), // output [1 : 0] m_axi_s2mm_awburst
          .m_axi_s2mm_awprot(m_axi4_mm_awprot), // output [2 : 0] m_axi_s2mm_awprot
          .m_axi_s2mm_awcache(m_axi4_mm_awcache), // output [3 : 0] m_axi_s2mm_awcache
          .m_axi_s2mm_awuser(), // output [3 : 0] m_axi_s2mm_awuser
          .m_axi_s2mm_awvalid(m_axi4_mm_awvalid), // output m_axi_s2mm_awvalid
          .m_axi_s2mm_awready(m_axi4_mm_awready), // input m_axi_s2mm_awready
          .m_axi_s2mm_wdata(m_axi4_mm_wdata), // output [(AXI4_MM_DATA_WIDTH-1) : 0] m_axi_s2mm_wdata
          .m_axi_s2mm_wstrb(m_axi4_mm_wstrb), // output [((AXI4_MM_DATA_WIDTH/8)-1) : 0] m_axi_s2mm_wstrb
          .m_axi_s2mm_wlast(m_axi4_mm_wlast), // output m_axi_s2mm_wlast
          .m_axi_s2mm_wvalid(m_axi4_mm_wvalid), // output m_axi_s2mm_wvalid
          .m_axi_s2mm_wready(m_axi4_mm_wready), // input m_axi_s2mm_wready
          .m_axi_s2mm_bresp(m_axi4_mm_bresp), // input [1 : 0] m_axi_s2mm_bresp
          .m_axi_s2mm_bvalid(m_axi4_mm_bvalid), // input m_axi_s2mm_bvalid
          .m_axi_s2mm_bready(m_axi4_mm_bready), // output m_axi_s2mm_bready

          .s_axis_s2mm_tdata(s_axis_s2mm_tdata_axi4_mm), // input [31 : 0] s_axis_s2mm_tdata
          .s_axis_s2mm_tkeep(s_axis_s2mm_tkeep_axi4_mm), // input [3 : 0] s_axis_s2mm_tkeep
          .s_axis_s2mm_tlast(s_axis_s2mm_tlast_axi4_mm), // input s_axis_s2mm_tlast
          .s_axis_s2mm_tvalid(s_axis_s2mm_tvalid_axi4_mm), // input s_axis_s2mm_tvalid
          .s_axis_s2mm_tready(s_axis_s2mm_tready_axi4_mm) // output s_axis_s2mm_tready
        );
    512 :
        axi_datamover_512MM_32STR axi_data_mover_inst (
          .m_axi_mm2s_aclk(sys_clk), // input m_axi_mm2s_aclk
          .m_axi_mm2s_aresetn(data_mover_aresetn), // input m_axi_mm2s_aresetn
          .mm2s_err(mm2s_err_mm), // output mm2s_err
          .m_axis_mm2s_cmdsts_aclk(sys_clk), // input m_axis_mm2s_cmdsts_aclk
          .m_axis_mm2s_cmdsts_aresetn(data_mover_aresetn), // input m_axis_mm2s_cmdsts_aresetn

          .s_axis_mm2s_cmd_tvalid(s_axis_mm2s_cmd_tvalid_axi4_mm), // input s_axis_mm2s_cmd_tvalid
          .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready_axi4_mm), // output s_axis_mm2s_cmd_tready
          .s_axis_mm2s_cmd_tdata(s_axis_mm2s_cmd_tdata_axi4_mm), // input [71 : 0] s_axis_mm2s_cmd_tdata

          .m_axis_mm2s_sts_tvalid(), // output m_axis_mm2s_sts_tvalid
          .m_axis_mm2s_sts_tready(1'b1), // input m_axis_mm2s_sts_tready
          .m_axis_mm2s_sts_tdata(), // output [7 : 0] m_axis_mm2s_sts_tdata
          .m_axis_mm2s_sts_tkeep(), // output [0 : 0] m_axis_mm2s_sts_tkeep
          .m_axis_mm2s_sts_tlast(), // output m_axis_mm2s_sts_tlast

          .m_axi_mm2s_arid(m_axi4_mm_arid), // output [3 : 0] m_axi_mm2s_arid
          .m_axi_mm2s_araddr(m_axi4_mm_araddr), // output [31 : 0] m_axi_mm2s_araddr
          .m_axi_mm2s_arlen(m_axi4_mm_arlen), // output [7 : 0] m_axi_mm2s_arlen
          .m_axi_mm2s_arsize(m_axi4_mm_arsize), // output [2 : 0] m_axi_mm2s_arsize
          .m_axi_mm2s_arburst(m_axi4_mm_arburst), // output [1 : 0] m_axi_mm2s_arburst
          .m_axi_mm2s_arprot(m_axi4_mm_arprot), // output [2 : 0] m_axi_mm2s_arprot
          .m_axi_mm2s_arcache(m_axi4_mm_arcache), // output [3 : 0] m_axi_mm2s_arcache
          .m_axi_mm2s_aruser(), // output [3 : 0] m_axi_mm2s_aruser
          .m_axi_mm2s_arvalid(m_axi4_mm_arvalid), // output m_axi_mm2s_arvalid
          .m_axi_mm2s_arready(m_axi4_mm_arready), // input m_axi_mm2s_arready
          .m_axi_mm2s_rdata(m_axi4_mm_rdata), // input [(AXI4_MM_DATA_WIDTH-1) : 0] m_axi_mm2s_rdata
          .m_axi_mm2s_rresp(m_axi4_mm_rresp), // input [1 : 0] m_axi_mm2s_rresp
          .m_axi_mm2s_rlast(m_axi4_mm_rlast), // input m_axi_mm2s_rlast
          .m_axi_mm2s_rvalid(m_axi4_mm_rvalid), // input m_axi_mm2s_rvalid
          .m_axi_mm2s_rready(m_axi4_mm_rready), // output m_axi_mm2s_rready

          .m_axis_mm2s_tdata(m_axis_mm2s_tdata_axi4_mm), // output [31 : 0] m_axis_mm2s_tdata
          .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep_axi4_mm), // output [3 : 0] m_axis_mm2s_tkeep
          .m_axis_mm2s_tlast(), // output m_axis_mm2s_tlast
          .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid_axi4_mm), // output m_axis_mm2s_tvalid
          .m_axis_mm2s_tready(m_axis_mm2s_tready_axi4_mm), // input m_axis_mm2s_tready

          .m_axi_s2mm_aclk(sys_clk), // input m_axi_s2mm_aclk
          .m_axi_s2mm_aresetn(data_mover_aresetn), // input m_axi_s2mm_aresetn
          .s2mm_err(s2mm_err_mm), // output s2mm_err
          .m_axis_s2mm_cmdsts_awclk(sys_clk), // input m_axis_s2mm_cmdsts_awclk
          .m_axis_s2mm_cmdsts_aresetn(data_mover_aresetn), // input m_axis_s2mm_cmdsts_aresetn

          .s_axis_s2mm_cmd_tvalid(s_axis_s2mm_cmd_tvalid_axi4_mm), // input s_axis_s2mm_cmd_tvalid
          .s_axis_s2mm_cmd_tready(s_axis_s2mm_cmd_tready_axi4_mm), // output s_axis_s2mm_cmd_tready
          .s_axis_s2mm_cmd_tdata(s_axis_s2mm_cmd_tdata_axi4_mm), // input [71 : 0] s_axis_s2mm_cmd_tdata

          .m_axis_s2mm_sts_tvalid(), // output m_axis_s2mm_sts_tvalid
          .m_axis_s2mm_sts_tready(1'b1), // input m_axis_s2mm_sts_tready
          .m_axis_s2mm_sts_tdata(), // output [7 : 0] m_axis_s2mm_sts_tdata
          .m_axis_s2mm_sts_tkeep(), // output [0 : 0] m_axis_s2mm_sts_tkeep
          .m_axis_s2mm_sts_tlast(), // output m_axis_s2mm_sts_tlast

          .m_axi_s2mm_awid(m_axi4_mm_awid), // output [3 : 0] m_axi_s2mm_awid
          .m_axi_s2mm_awaddr(m_axi4_mm_awaddr), // output [31 : 0] m_axi_s2mm_awaddr
          .m_axi_s2mm_awlen(m_axi4_mm_awlen), // output [7 : 0] m_axi_s2mm_awlen
          .m_axi_s2mm_awsize(m_axi4_mm_awsize), // output [2 : 0] m_axi_s2mm_awsize
          .m_axi_s2mm_awburst(m_axi4_mm_awburst), // output [1 : 0] m_axi_s2mm_awburst
          .m_axi_s2mm_awprot(m_axi4_mm_awprot), // output [2 : 0] m_axi_s2mm_awprot
          .m_axi_s2mm_awcache(m_axi4_mm_awcache), // output [3 : 0] m_axi_s2mm_awcache
          .m_axi_s2mm_awuser(), // output [3 : 0] m_axi_s2mm_awuser
          .m_axi_s2mm_awvalid(m_axi4_mm_awvalid), // output m_axi_s2mm_awvalid
          .m_axi_s2mm_awready(m_axi4_mm_awready), // input m_axi_s2mm_awready
          .m_axi_s2mm_wdata(m_axi4_mm_wdata), // output [(AXI4_MM_DATA_WIDTH-1) : 0] m_axi_s2mm_wdata
          .m_axi_s2mm_wstrb(m_axi4_mm_wstrb), // output [((AXI4_MM_DATA_WIDTH/8)-1) : 0] m_axi_s2mm_wstrb
          .m_axi_s2mm_wlast(m_axi4_mm_wlast), // output m_axi_s2mm_wlast
          .m_axi_s2mm_wvalid(m_axi4_mm_wvalid), // output m_axi_s2mm_wvalid
          .m_axi_s2mm_wready(m_axi4_mm_wready), // input m_axi_s2mm_wready
          .m_axi_s2mm_bresp(m_axi4_mm_bresp), // input [1 : 0] m_axi_s2mm_bresp
          .m_axi_s2mm_bvalid(m_axi4_mm_bvalid), // input m_axi_s2mm_bvalid
          .m_axi_s2mm_bready(m_axi4_mm_bready), // output m_axi_s2mm_bready

          .s_axis_s2mm_tdata(s_axis_s2mm_tdata_axi4_mm), // input [31 : 0] s_axis_s2mm_tdata
          .s_axis_s2mm_tkeep(s_axis_s2mm_tkeep_axi4_mm), // input [3 : 0] s_axis_s2mm_tkeep
          .s_axis_s2mm_tlast(s_axis_s2mm_tlast_axi4_mm), // input s_axis_s2mm_tlast
          .s_axis_s2mm_tvalid(s_axis_s2mm_tvalid_axi4_mm), // input s_axis_s2mm_tvalid
          .s_axis_s2mm_tready(s_axis_s2mm_tready_axi4_mm) // output s_axis_s2mm_tready
        );
    256 :
        axi_datamover_256MM_32STR axi_data_mover_inst (
          .m_axi_mm2s_aclk(sys_clk), // input m_axi_mm2s_aclk
          .m_axi_mm2s_aresetn(data_mover_aresetn), // input m_axi_mm2s_aresetn
          .mm2s_err(mm2s_err_mm), // output mm2s_err
          .m_axis_mm2s_cmdsts_aclk(sys_clk), // input m_axis_mm2s_cmdsts_aclk
          .m_axis_mm2s_cmdsts_aresetn(data_mover_aresetn), // input m_axis_mm2s_cmdsts_aresetn

          .s_axis_mm2s_cmd_tvalid(s_axis_mm2s_cmd_tvalid_axi4_mm), // input s_axis_mm2s_cmd_tvalid
          .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready_axi4_mm), // output s_axis_mm2s_cmd_tready
          .s_axis_mm2s_cmd_tdata(s_axis_mm2s_cmd_tdata_axi4_mm), // input [71 : 0] s_axis_mm2s_cmd_tdata

          .m_axis_mm2s_sts_tvalid(), // output m_axis_mm2s_sts_tvalid
          .m_axis_mm2s_sts_tready(1'b1), // input m_axis_mm2s_sts_tready
          .m_axis_mm2s_sts_tdata(), // output [7 : 0] m_axis_mm2s_sts_tdata
          .m_axis_mm2s_sts_tkeep(), // output [0 : 0] m_axis_mm2s_sts_tkeep
          .m_axis_mm2s_sts_tlast(), // output m_axis_mm2s_sts_tlast

          .m_axi_mm2s_arid(m_axi4_mm_arid), // output [3 : 0] m_axi_mm2s_arid
          .m_axi_mm2s_araddr(m_axi4_mm_araddr), // output [31 : 0] m_axi_mm2s_araddr
          .m_axi_mm2s_arlen(m_axi4_mm_arlen), // output [7 : 0] m_axi_mm2s_arlen
          .m_axi_mm2s_arsize(m_axi4_mm_arsize), // output [2 : 0] m_axi_mm2s_arsize
          .m_axi_mm2s_arburst(m_axi4_mm_arburst), // output [1 : 0] m_axi_mm2s_arburst
          .m_axi_mm2s_arprot(m_axi4_mm_arprot), // output [2 : 0] m_axi_mm2s_arprot
          .m_axi_mm2s_arcache(m_axi4_mm_arcache), // output [3 : 0] m_axi_mm2s_arcache
          .m_axi_mm2s_aruser(), // output [3 : 0] m_axi_mm2s_aruser
          .m_axi_mm2s_arvalid(m_axi4_mm_arvalid), // output m_axi_mm2s_arvalid
          .m_axi_mm2s_arready(m_axi4_mm_arready), // input m_axi_mm2s_arready
          .m_axi_mm2s_rdata(m_axi4_mm_rdata), // input [(AXI4_MM_DATA_WIDTH-1) : 0] m_axi_mm2s_rdata
          .m_axi_mm2s_rresp(m_axi4_mm_rresp), // input [1 : 0] m_axi_mm2s_rresp
          .m_axi_mm2s_rlast(m_axi4_mm_rlast), // input m_axi_mm2s_rlast
          .m_axi_mm2s_rvalid(m_axi4_mm_rvalid), // input m_axi_mm2s_rvalid
          .m_axi_mm2s_rready(m_axi4_mm_rready), // output m_axi_mm2s_rready

          .m_axis_mm2s_tdata(m_axis_mm2s_tdata_axi4_mm), // output [31 : 0] m_axis_mm2s_tdata
          .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep_axi4_mm), // output [3 : 0] m_axis_mm2s_tkeep
          .m_axis_mm2s_tlast(), // output m_axis_mm2s_tlast
          .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid_axi4_mm), // output m_axis_mm2s_tvalid
          .m_axis_mm2s_tready(m_axis_mm2s_tready_axi4_mm), // input m_axis_mm2s_tready

          .m_axi_s2mm_aclk(sys_clk), // input m_axi_s2mm_aclk
          .m_axi_s2mm_aresetn(data_mover_aresetn), // input m_axi_s2mm_aresetn
          .s2mm_err(s2mm_err_mm), // output s2mm_err
          .m_axis_s2mm_cmdsts_awclk(sys_clk), // input m_axis_s2mm_cmdsts_awclk
          .m_axis_s2mm_cmdsts_aresetn(data_mover_aresetn), // input m_axis_s2mm_cmdsts_aresetn

          .s_axis_s2mm_cmd_tvalid(s_axis_s2mm_cmd_tvalid_axi4_mm), // input s_axis_s2mm_cmd_tvalid
          .s_axis_s2mm_cmd_tready(s_axis_s2mm_cmd_tready_axi4_mm), // output s_axis_s2mm_cmd_tready
          .s_axis_s2mm_cmd_tdata(s_axis_s2mm_cmd_tdata_axi4_mm), // input [71 : 0] s_axis_s2mm_cmd_tdata

          .m_axis_s2mm_sts_tvalid(), // output m_axis_s2mm_sts_tvalid
          .m_axis_s2mm_sts_tready(1'b1), // input m_axis_s2mm_sts_tready
          .m_axis_s2mm_sts_tdata(), // output [7 : 0] m_axis_s2mm_sts_tdata
          .m_axis_s2mm_sts_tkeep(), // output [0 : 0] m_axis_s2mm_sts_tkeep
          .m_axis_s2mm_sts_tlast(), // output m_axis_s2mm_sts_tlast

          .m_axi_s2mm_awid(m_axi4_mm_awid), // output [3 : 0] m_axi_s2mm_awid
          .m_axi_s2mm_awaddr(m_axi4_mm_awaddr), // output [31 : 0] m_axi_s2mm_awaddr
          .m_axi_s2mm_awlen(m_axi4_mm_awlen), // output [7 : 0] m_axi_s2mm_awlen
          .m_axi_s2mm_awsize(m_axi4_mm_awsize), // output [2 : 0] m_axi_s2mm_awsize
          .m_axi_s2mm_awburst(m_axi4_mm_awburst), // output [1 : 0] m_axi_s2mm_awburst
          .m_axi_s2mm_awprot(m_axi4_mm_awprot), // output [2 : 0] m_axi_s2mm_awprot
          .m_axi_s2mm_awcache(m_axi4_mm_awcache), // output [3 : 0] m_axi_s2mm_awcache
          .m_axi_s2mm_awuser(), // output [3 : 0] m_axi_s2mm_awuser
          .m_axi_s2mm_awvalid(m_axi4_mm_awvalid), // output m_axi_s2mm_awvalid
          .m_axi_s2mm_awready(m_axi4_mm_awready), // input m_axi_s2mm_awready
          .m_axi_s2mm_wdata(m_axi4_mm_wdata), // output [(AXI4_MM_DATA_WIDTH-1) : 0] m_axi_s2mm_wdata
          .m_axi_s2mm_wstrb(m_axi4_mm_wstrb), // output [((AXI4_MM_DATA_WIDTH/8)-1) : 0] m_axi_s2mm_wstrb
          .m_axi_s2mm_wlast(m_axi4_mm_wlast), // output m_axi_s2mm_wlast
          .m_axi_s2mm_wvalid(m_axi4_mm_wvalid), // output m_axi_s2mm_wvalid
          .m_axi_s2mm_wready(m_axi4_mm_wready), // input m_axi_s2mm_wready
          .m_axi_s2mm_bresp(m_axi4_mm_bresp), // input [1 : 0] m_axi_s2mm_bresp
          .m_axi_s2mm_bvalid(m_axi4_mm_bvalid), // input m_axi_s2mm_bvalid
          .m_axi_s2mm_bready(m_axi4_mm_bready), // output m_axi_s2mm_bready

          .s_axis_s2mm_tdata(s_axis_s2mm_tdata_axi4_mm), // input [31 : 0] s_axis_s2mm_tdata
          .s_axis_s2mm_tkeep(s_axis_s2mm_tkeep_axi4_mm), // input [3 : 0] s_axis_s2mm_tkeep
          .s_axis_s2mm_tlast(s_axis_s2mm_tlast_axi4_mm), // input s_axis_s2mm_tlast
          .s_axis_s2mm_tvalid(s_axis_s2mm_tvalid_axi4_mm), // input s_axis_s2mm_tvalid
          .s_axis_s2mm_tready(s_axis_s2mm_tready_axi4_mm) // output s_axis_s2mm_tready
        );
    128 :
        axi_datamover_128MM_32STR axi_data_mover_inst (
          .m_axi_mm2s_aclk(sys_clk), // input m_axi_mm2s_aclk
          .m_axi_mm2s_aresetn(data_mover_aresetn), // input m_axi_mm2s_aresetn
          .mm2s_err(mm2s_err_mm), // output mm2s_err
          .m_axis_mm2s_cmdsts_aclk(sys_clk), // input m_axis_mm2s_cmdsts_aclk
          .m_axis_mm2s_cmdsts_aresetn(data_mover_aresetn), // input m_axis_mm2s_cmdsts_aresetn

          .s_axis_mm2s_cmd_tvalid(s_axis_mm2s_cmd_tvalid_axi4_mm), // input s_axis_mm2s_cmd_tvalid
          .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready_axi4_mm), // output s_axis_mm2s_cmd_tready
          .s_axis_mm2s_cmd_tdata(s_axis_mm2s_cmd_tdata_axi4_mm), // input [71 : 0] s_axis_mm2s_cmd_tdata

          .m_axis_mm2s_sts_tvalid(), // output m_axis_mm2s_sts_tvalid
          .m_axis_mm2s_sts_tready(1'b1), // input m_axis_mm2s_sts_tready
          .m_axis_mm2s_sts_tdata(), // output [7 : 0] m_axis_mm2s_sts_tdata
          .m_axis_mm2s_sts_tkeep(), // output [0 : 0] m_axis_mm2s_sts_tkeep
          .m_axis_mm2s_sts_tlast(), // output m_axis_mm2s_sts_tlast

          .m_axi_mm2s_arid(m_axi4_mm_arid), // output [3 : 0] m_axi_mm2s_arid
          .m_axi_mm2s_araddr(m_axi4_mm_araddr), // output [31 : 0] m_axi_mm2s_araddr
          .m_axi_mm2s_arlen(m_axi4_mm_arlen), // output [7 : 0] m_axi_mm2s_arlen
          .m_axi_mm2s_arsize(m_axi4_mm_arsize), // output [2 : 0] m_axi_mm2s_arsize
          .m_axi_mm2s_arburst(m_axi4_mm_arburst), // output [1 : 0] m_axi_mm2s_arburst
          .m_axi_mm2s_arprot(m_axi4_mm_arprot), // output [2 : 0] m_axi_mm2s_arprot
          .m_axi_mm2s_arcache(m_axi4_mm_arcache), // output [3 : 0] m_axi_mm2s_arcache
          .m_axi_mm2s_aruser(), // output [3 : 0] m_axi_mm2s_aruser
          .m_axi_mm2s_arvalid(m_axi4_mm_arvalid), // output m_axi_mm2s_arvalid
          .m_axi_mm2s_arready(m_axi4_mm_arready), // input m_axi_mm2s_arready
          .m_axi_mm2s_rdata(m_axi4_mm_rdata), // input [(AXI4_MM_DATA_WIDTH-1) : 0] m_axi_mm2s_rdata
          .m_axi_mm2s_rresp(m_axi4_mm_rresp), // input [1 : 0] m_axi_mm2s_rresp
          .m_axi_mm2s_rlast(m_axi4_mm_rlast), // input m_axi_mm2s_rlast
          .m_axi_mm2s_rvalid(m_axi4_mm_rvalid), // input m_axi_mm2s_rvalid
          .m_axi_mm2s_rready(m_axi4_mm_rready), // output m_axi_mm2s_rready

          .m_axis_mm2s_tdata(m_axis_mm2s_tdata_axi4_mm), // output [31 : 0] m_axis_mm2s_tdata
          .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep_axi4_mm), // output [3 : 0] m_axis_mm2s_tkeep
          .m_axis_mm2s_tlast(), // output m_axis_mm2s_tlast
          .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid_axi4_mm), // output m_axis_mm2s_tvalid
          .m_axis_mm2s_tready(m_axis_mm2s_tready_axi4_mm), // input m_axis_mm2s_tready

          .m_axi_s2mm_aclk(sys_clk), // input m_axi_s2mm_aclk
          .m_axi_s2mm_aresetn(data_mover_aresetn), // input m_axi_s2mm_aresetn
          .s2mm_err(s2mm_err_mm), // output s2mm_err
          .m_axis_s2mm_cmdsts_awclk(sys_clk), // input m_axis_s2mm_cmdsts_awclk
          .m_axis_s2mm_cmdsts_aresetn(data_mover_aresetn), // input m_axis_s2mm_cmdsts_aresetn

          .s_axis_s2mm_cmd_tvalid(s_axis_s2mm_cmd_tvalid_axi4_mm), // input s_axis_s2mm_cmd_tvalid
          .s_axis_s2mm_cmd_tready(s_axis_s2mm_cmd_tready_axi4_mm), // output s_axis_s2mm_cmd_tready
          .s_axis_s2mm_cmd_tdata(s_axis_s2mm_cmd_tdata_axi4_mm), // input [71 : 0] s_axis_s2mm_cmd_tdata

          .m_axis_s2mm_sts_tvalid(), // output m_axis_s2mm_sts_tvalid
          .m_axis_s2mm_sts_tready(1'b1), // input m_axis_s2mm_sts_tready
          .m_axis_s2mm_sts_tdata(), // output [7 : 0] m_axis_s2mm_sts_tdata
          .m_axis_s2mm_sts_tkeep(), // output [0 : 0] m_axis_s2mm_sts_tkeep
          .m_axis_s2mm_sts_tlast(), // output m_axis_s2mm_sts_tlast

          .m_axi_s2mm_awid(m_axi4_mm_awid), // output [3 : 0] m_axi_s2mm_awid
          .m_axi_s2mm_awaddr(m_axi4_mm_awaddr), // output [31 : 0] m_axi_s2mm_awaddr
          .m_axi_s2mm_awlen(m_axi4_mm_awlen), // output [7 : 0] m_axi_s2mm_awlen
          .m_axi_s2mm_awsize(m_axi4_mm_awsize), // output [2 : 0] m_axi_s2mm_awsize
          .m_axi_s2mm_awburst(m_axi4_mm_awburst), // output [1 : 0] m_axi_s2mm_awburst
          .m_axi_s2mm_awprot(m_axi4_mm_awprot), // output [2 : 0] m_axi_s2mm_awprot
          .m_axi_s2mm_awcache(m_axi4_mm_awcache), // output [3 : 0] m_axi_s2mm_awcache
          .m_axi_s2mm_awuser(), // output [3 : 0] m_axi_s2mm_awuser
          .m_axi_s2mm_awvalid(m_axi4_mm_awvalid), // output m_axi_s2mm_awvalid
          .m_axi_s2mm_awready(m_axi4_mm_awready), // input m_axi_s2mm_awready
          .m_axi_s2mm_wdata(m_axi4_mm_wdata), // output [(AXI4_MM_DATA_WIDTH-1) : 0] m_axi_s2mm_wdata
          .m_axi_s2mm_wstrb(m_axi4_mm_wstrb), // output [((AXI4_MM_DATA_WIDTH/8)-1) : 0] m_axi_s2mm_wstrb
          .m_axi_s2mm_wlast(m_axi4_mm_wlast), // output m_axi_s2mm_wlast
          .m_axi_s2mm_wvalid(m_axi4_mm_wvalid), // output m_axi_s2mm_wvalid
          .m_axi_s2mm_wready(m_axi4_mm_wready), // input m_axi_s2mm_wready
          .m_axi_s2mm_bresp(m_axi4_mm_bresp), // input [1 : 0] m_axi_s2mm_bresp
          .m_axi_s2mm_bvalid(m_axi4_mm_bvalid), // input m_axi_s2mm_bvalid
          .m_axi_s2mm_bready(m_axi4_mm_bready), // output m_axi_s2mm_bready

          .s_axis_s2mm_tdata(s_axis_s2mm_tdata_axi4_mm), // input [31 : 0] s_axis_s2mm_tdata
          .s_axis_s2mm_tkeep(s_axis_s2mm_tkeep_axi4_mm), // input [3 : 0] s_axis_s2mm_tkeep
          .s_axis_s2mm_tlast(s_axis_s2mm_tlast_axi4_mm), // input s_axis_s2mm_tlast
          .s_axis_s2mm_tvalid(s_axis_s2mm_tvalid_axi4_mm), // input s_axis_s2mm_tvalid
          .s_axis_s2mm_tready(s_axis_s2mm_tready_axi4_mm) // output s_axis_s2mm_tready
        );
    64 :
        axi_datamover_64MM_32STR axi_data_mover_inst (
          .m_axi_mm2s_aclk(sys_clk), // input m_axi_mm2s_aclk
          .m_axi_mm2s_aresetn(data_mover_aresetn), // input m_axi_mm2s_aresetn
          .mm2s_err(mm2s_err_mm), // output mm2s_err
          .m_axis_mm2s_cmdsts_aclk(sys_clk), // input m_axis_mm2s_cmdsts_aclk
          .m_axis_mm2s_cmdsts_aresetn(data_mover_aresetn), // input m_axis_mm2s_cmdsts_aresetn

          .s_axis_mm2s_cmd_tvalid(s_axis_mm2s_cmd_tvalid_axi4_mm), // input s_axis_mm2s_cmd_tvalid
          .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready_axi4_mm), // output s_axis_mm2s_cmd_tready
          .s_axis_mm2s_cmd_tdata(s_axis_mm2s_cmd_tdata_axi4_mm), // input [71 : 0] s_axis_mm2s_cmd_tdata

          .m_axis_mm2s_sts_tvalid(), // output m_axis_mm2s_sts_tvalid
          .m_axis_mm2s_sts_tready(1'b1), // input m_axis_mm2s_sts_tready
          .m_axis_mm2s_sts_tdata(), // output [7 : 0] m_axis_mm2s_sts_tdata
          .m_axis_mm2s_sts_tkeep(), // output [0 : 0] m_axis_mm2s_sts_tkeep
          .m_axis_mm2s_sts_tlast(), // output m_axis_mm2s_sts_tlast

          .m_axi_mm2s_arid(m_axi4_mm_arid), // output [3 : 0] m_axi_mm2s_arid
          .m_axi_mm2s_araddr(m_axi4_mm_araddr), // output [31 : 0] m_axi_mm2s_araddr
          .m_axi_mm2s_arlen(m_axi4_mm_arlen), // output [7 : 0] m_axi_mm2s_arlen
          .m_axi_mm2s_arsize(m_axi4_mm_arsize), // output [2 : 0] m_axi_mm2s_arsize
          .m_axi_mm2s_arburst(m_axi4_mm_arburst), // output [1 : 0] m_axi_mm2s_arburst
          .m_axi_mm2s_arprot(m_axi4_mm_arprot), // output [2 : 0] m_axi_mm2s_arprot
          .m_axi_mm2s_arcache(m_axi4_mm_arcache), // output [3 : 0] m_axi_mm2s_arcache
          .m_axi_mm2s_aruser(), // output [3 : 0] m_axi_mm2s_aruser
          .m_axi_mm2s_arvalid(m_axi4_mm_arvalid), // output m_axi_mm2s_arvalid
          .m_axi_mm2s_arready(m_axi4_mm_arready), // input m_axi_mm2s_arready
          .m_axi_mm2s_rdata(m_axi4_mm_rdata), // input [(AXI4_MM_DATA_WIDTH-1) : 0] m_axi_mm2s_rdata
          .m_axi_mm2s_rresp(m_axi4_mm_rresp), // input [1 : 0] m_axi_mm2s_rresp
          .m_axi_mm2s_rlast(m_axi4_mm_rlast), // input m_axi_mm2s_rlast
          .m_axi_mm2s_rvalid(m_axi4_mm_rvalid), // input m_axi_mm2s_rvalid
          .m_axi_mm2s_rready(m_axi4_mm_rready), // output m_axi_mm2s_rready

          .m_axis_mm2s_tdata(m_axis_mm2s_tdata_axi4_mm), // output [31 : 0] m_axis_mm2s_tdata
          .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep_axi4_mm), // output [3 : 0] m_axis_mm2s_tkeep
          .m_axis_mm2s_tlast(), // output m_axis_mm2s_tlast
          .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid_axi4_mm), // output m_axis_mm2s_tvalid
          .m_axis_mm2s_tready(m_axis_mm2s_tready_axi4_mm), // input m_axis_mm2s_tready

          .m_axi_s2mm_aclk(sys_clk), // input m_axi_s2mm_aclk
          .m_axi_s2mm_aresetn(data_mover_aresetn), // input m_axi_s2mm_aresetn
          .s2mm_err(s2mm_err_mm), // output s2mm_err
          .m_axis_s2mm_cmdsts_awclk(sys_clk), // input m_axis_s2mm_cmdsts_awclk
          .m_axis_s2mm_cmdsts_aresetn(data_mover_aresetn), // input m_axis_s2mm_cmdsts_aresetn

          .s_axis_s2mm_cmd_tvalid(s_axis_s2mm_cmd_tvalid_axi4_mm), // input s_axis_s2mm_cmd_tvalid
          .s_axis_s2mm_cmd_tready(s_axis_s2mm_cmd_tready_axi4_mm), // output s_axis_s2mm_cmd_tready
          .s_axis_s2mm_cmd_tdata(s_axis_s2mm_cmd_tdata_axi4_mm), // input [71 : 0] s_axis_s2mm_cmd_tdata

          .m_axis_s2mm_sts_tvalid(), // output m_axis_s2mm_sts_tvalid
          .m_axis_s2mm_sts_tready(1'b1), // input m_axis_s2mm_sts_tready
          .m_axis_s2mm_sts_tdata(), // output [7 : 0] m_axis_s2mm_sts_tdata
          .m_axis_s2mm_sts_tkeep(), // output [0 : 0] m_axis_s2mm_sts_tkeep
          .m_axis_s2mm_sts_tlast(), // output m_axis_s2mm_sts_tlast

          .m_axi_s2mm_awid(m_axi4_mm_awid), // output [3 : 0] m_axi_s2mm_awid
          .m_axi_s2mm_awaddr(m_axi4_mm_awaddr), // output [31 : 0] m_axi_s2mm_awaddr
          .m_axi_s2mm_awlen(m_axi4_mm_awlen), // output [7 : 0] m_axi_s2mm_awlen
          .m_axi_s2mm_awsize(m_axi4_mm_awsize), // output [2 : 0] m_axi_s2mm_awsize
          .m_axi_s2mm_awburst(m_axi4_mm_awburst), // output [1 : 0] m_axi_s2mm_awburst
          .m_axi_s2mm_awprot(m_axi4_mm_awprot), // output [2 : 0] m_axi_s2mm_awprot
          .m_axi_s2mm_awcache(m_axi4_mm_awcache), // output [3 : 0] m_axi_s2mm_awcache
          .m_axi_s2mm_awuser(), // output [3 : 0] m_axi_s2mm_awuser
          .m_axi_s2mm_awvalid(m_axi4_mm_awvalid), // output m_axi_s2mm_awvalid
          .m_axi_s2mm_awready(m_axi4_mm_awready), // input m_axi_s2mm_awready
          .m_axi_s2mm_wdata(m_axi4_mm_wdata), // output [(AXI4_MM_DATA_WIDTH-1) : 0] m_axi_s2mm_wdata
          .m_axi_s2mm_wstrb(m_axi4_mm_wstrb), // output [((AXI4_MM_DATA_WIDTH/8)-1) : 0] m_axi_s2mm_wstrb
          .m_axi_s2mm_wlast(m_axi4_mm_wlast), // output m_axi_s2mm_wlast
          .m_axi_s2mm_wvalid(m_axi4_mm_wvalid), // output m_axi_s2mm_wvalid
          .m_axi_s2mm_wready(m_axi4_mm_wready), // input m_axi_s2mm_wready
          .m_axi_s2mm_bresp(m_axi4_mm_bresp), // input [1 : 0] m_axi_s2mm_bresp
          .m_axi_s2mm_bvalid(m_axi4_mm_bvalid), // input m_axi_s2mm_bvalid
          .m_axi_s2mm_bready(m_axi4_mm_bready), // output m_axi_s2mm_bready

          .s_axis_s2mm_tdata(s_axis_s2mm_tdata_axi4_mm), // input [31 : 0] s_axis_s2mm_tdata
          .s_axis_s2mm_tkeep(s_axis_s2mm_tkeep_axi4_mm), // input [3 : 0] s_axis_s2mm_tkeep
          .s_axis_s2mm_tlast(s_axis_s2mm_tlast_axi4_mm), // input s_axis_s2mm_tlast
          .s_axis_s2mm_tvalid(s_axis_s2mm_tvalid_axi4_mm), // input s_axis_s2mm_tvalid
          .s_axis_s2mm_tready(s_axis_s2mm_tready_axi4_mm) // output s_axis_s2mm_tready
        );
    default :
        axi_datamover_32MM_32STR axi_data_mover_inst (
          .m_axi_mm2s_aclk(sys_clk), // input m_axi_mm2s_aclk
          .m_axi_mm2s_aresetn(data_mover_aresetn), // input m_axi_mm2s_aresetn
          .mm2s_err(mm2s_err_mm), // output mm2s_err
          .m_axis_mm2s_cmdsts_aclk(sys_clk), // input m_axis_mm2s_cmdsts_aclk
          .m_axis_mm2s_cmdsts_aresetn(data_mover_aresetn), // input m_axis_mm2s_cmdsts_aresetn

          .s_axis_mm2s_cmd_tvalid(s_axis_mm2s_cmd_tvalid_axi4_mm), // input s_axis_mm2s_cmd_tvalid
          .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready_axi4_mm), // output s_axis_mm2s_cmd_tready
          .s_axis_mm2s_cmd_tdata(s_axis_mm2s_cmd_tdata_axi4_mm), // input [71 : 0] s_axis_mm2s_cmd_tdata

          .m_axis_mm2s_sts_tvalid(), // output m_axis_mm2s_sts_tvalid
          .m_axis_mm2s_sts_tready(1'b1), // input m_axis_mm2s_sts_tready
          .m_axis_mm2s_sts_tdata(), // output [7 : 0] m_axis_mm2s_sts_tdata
          .m_axis_mm2s_sts_tkeep(), // output [0 : 0] m_axis_mm2s_sts_tkeep
          .m_axis_mm2s_sts_tlast(), // output m_axis_mm2s_sts_tlast

          .m_axi_mm2s_arid(m_axi4_mm_arid), // output [3 : 0] m_axi_mm2s_arid
          .m_axi_mm2s_araddr(m_axi4_mm_araddr), // output [31 : 0] m_axi_mm2s_araddr
          .m_axi_mm2s_arlen(m_axi4_mm_arlen), // output [7 : 0] m_axi_mm2s_arlen
          .m_axi_mm2s_arsize(m_axi4_mm_arsize), // output [2 : 0] m_axi_mm2s_arsize
          .m_axi_mm2s_arburst(m_axi4_mm_arburst), // output [1 : 0] m_axi_mm2s_arburst
          .m_axi_mm2s_arprot(m_axi4_mm_arprot), // output [2 : 0] m_axi_mm2s_arprot
          .m_axi_mm2s_arcache(m_axi4_mm_arcache), // output [3 : 0] m_axi_mm2s_arcache
          .m_axi_mm2s_aruser(), // output [3 : 0] m_axi_mm2s_aruser
          .m_axi_mm2s_arvalid(m_axi4_mm_arvalid), // output m_axi_mm2s_arvalid
          .m_axi_mm2s_arready(m_axi4_mm_arready), // input m_axi_mm2s_arready
          .m_axi_mm2s_rdata(m_axi4_mm_rdata), // input [(AXI4_MM_DATA_WIDTH-1) : 0] m_axi_mm2s_rdata
          .m_axi_mm2s_rresp(m_axi4_mm_rresp), // input [1 : 0] m_axi_mm2s_rresp
          .m_axi_mm2s_rlast(m_axi4_mm_rlast), // input m_axi_mm2s_rlast
          .m_axi_mm2s_rvalid(m_axi4_mm_rvalid), // input m_axi_mm2s_rvalid
          .m_axi_mm2s_rready(m_axi4_mm_rready), // output m_axi_mm2s_rready

          .m_axis_mm2s_tdata(m_axis_mm2s_tdata_axi4_mm), // output [31 : 0] m_axis_mm2s_tdata
          .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep_axi4_mm), // output [3 : 0] m_axis_mm2s_tkeep
          .m_axis_mm2s_tlast(), // output m_axis_mm2s_tlast
          .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid_axi4_mm), // output m_axis_mm2s_tvalid
          .m_axis_mm2s_tready(m_axis_mm2s_tready_axi4_mm), // input m_axis_mm2s_tready

          .m_axi_s2mm_aclk(sys_clk), // input m_axi_s2mm_aclk
          .m_axi_s2mm_aresetn(data_mover_aresetn), // input m_axi_s2mm_aresetn
          .s2mm_err(s2mm_err_mm), // output s2mm_err
          .m_axis_s2mm_cmdsts_awclk(sys_clk), // input m_axis_s2mm_cmdsts_awclk
          .m_axis_s2mm_cmdsts_aresetn(data_mover_aresetn), // input m_axis_s2mm_cmdsts_aresetn

          .s_axis_s2mm_cmd_tvalid(s_axis_s2mm_cmd_tvalid_axi4_mm), // input s_axis_s2mm_cmd_tvalid
          .s_axis_s2mm_cmd_tready(s_axis_s2mm_cmd_tready_axi4_mm), // output s_axis_s2mm_cmd_tready
          .s_axis_s2mm_cmd_tdata(s_axis_s2mm_cmd_tdata_axi4_mm), // input [71 : 0] s_axis_s2mm_cmd_tdata

          .m_axis_s2mm_sts_tvalid(), // output m_axis_s2mm_sts_tvalid
          .m_axis_s2mm_sts_tready(1'b1), // input m_axis_s2mm_sts_tready
          .m_axis_s2mm_sts_tdata(), // output [7 : 0] m_axis_s2mm_sts_tdata
          .m_axis_s2mm_sts_tkeep(), // output [0 : 0] m_axis_s2mm_sts_tkeep
          .m_axis_s2mm_sts_tlast(), // output m_axis_s2mm_sts_tlast

          .m_axi_s2mm_awid(m_axi4_mm_awid), // output [3 : 0] m_axi_s2mm_awid
          .m_axi_s2mm_awaddr(m_axi4_mm_awaddr), // output [31 : 0] m_axi_s2mm_awaddr
          .m_axi_s2mm_awlen(m_axi4_mm_awlen), // output [7 : 0] m_axi_s2mm_awlen
          .m_axi_s2mm_awsize(m_axi4_mm_awsize), // output [2 : 0] m_axi_s2mm_awsize
          .m_axi_s2mm_awburst(m_axi4_mm_awburst), // output [1 : 0] m_axi_s2mm_awburst
          .m_axi_s2mm_awprot(m_axi4_mm_awprot), // output [2 : 0] m_axi_s2mm_awprot
          .m_axi_s2mm_awcache(m_axi4_mm_awcache), // output [3 : 0] m_axi_s2mm_awcache
          .m_axi_s2mm_awuser(), // output [3 : 0] m_axi_s2mm_awuser
          .m_axi_s2mm_awvalid(m_axi4_mm_awvalid), // output m_axi_s2mm_awvalid
          .m_axi_s2mm_awready(m_axi4_mm_awready), // input m_axi_s2mm_awready
          .m_axi_s2mm_wdata(m_axi4_mm_wdata), // output [(AXI4_MM_DATA_WIDTH-1) : 0] m_axi_s2mm_wdata
          .m_axi_s2mm_wstrb(m_axi4_mm_wstrb), // output [((AXI4_MM_DATA_WIDTH/8)-1) : 0] m_axi_s2mm_wstrb
          .m_axi_s2mm_wlast(m_axi4_mm_wlast), // output m_axi_s2mm_wlast
          .m_axi_s2mm_wvalid(m_axi4_mm_wvalid), // output m_axi_s2mm_wvalid
          .m_axi_s2mm_wready(m_axi4_mm_wready), // input m_axi_s2mm_wready
          .m_axi_s2mm_bresp(m_axi4_mm_bresp), // input [1 : 0] m_axi_s2mm_bresp
          .m_axi_s2mm_bvalid(m_axi4_mm_bvalid), // input m_axi_s2mm_bvalid
          .m_axi_s2mm_bready(m_axi4_mm_bready), // output m_axi_s2mm_bready

          .s_axis_s2mm_tdata(s_axis_s2mm_tdata_axi4_mm), // input [31 : 0] s_axis_s2mm_tdata
          .s_axis_s2mm_tkeep(s_axis_s2mm_tkeep_axi4_mm), // input [3 : 0] s_axis_s2mm_tkeep
          .s_axis_s2mm_tlast(s_axis_s2mm_tlast_axi4_mm), // input s_axis_s2mm_tlast
          .s_axis_s2mm_tvalid(s_axis_s2mm_tvalid_axi4_mm), // input s_axis_s2mm_tvalid
          .s_axis_s2mm_tready(s_axis_s2mm_tready_axi4_mm) // output s_axis_s2mm_tready
        );
endcase

case (AXI4_LITE_DATA_WIDTH)
    64 : begin
        axi_mm64_to_axi_lite64 u_axi_mm_to_axi_lite (
          .aclk(sys_clk), // input aclk
          .aresetn(data_mover_aresetn), // input aresetn
          .s_axi_awid(im_axi_awid), // input [3 : 0] s_axi_awid
          .s_axi_awaddr(im_axi_awaddr), // input [31 : 0] s_axi_awaddr
          .s_axi_awlen(im_axi_awlen), // input [7 : 0] s_axi_awlen
          .s_axi_awsize(im_axi_awsize), // input [2 : 0] s_axi_awsize
          .s_axi_awburst(im_axi_awburst), // input [1 : 0] s_axi_awburst
          .s_axi_awlock(1'b0), // input [0 : 0] s_axi_awlock
          .s_axi_awcache(im_axi_awcache), // input [3 : 0] s_axi_awcache
          .s_axi_awprot(im_axi_awprot), // input [2 : 0] s_axi_awprot
          .s_axi_awregion(4'b0000), // input [3 : 0] s_axi_awregion
          .s_axi_awqos(4'b0000), // input [3 : 0] s_axi_awqos
          .s_axi_awvalid(im_axi_awvalid), // input s_axi_awvalid
          .s_axi_awready(im_axi_awready), // output s_axi_awready
          .s_axi_wdata(im_axi_wdata), // input [(AXI4_LITE_DATA_WIDTH-1) : 0] s_axi_wdata
          .s_axi_wstrb(im_axi_wstrb), // input [7 : 0] s_axi_wstrb
          .s_axi_wlast(im_axi_wlast), // input s_axi_wlast
          .s_axi_wvalid(im_axi_wvalid), // input s_axi_wvalid
          .s_axi_wready(im_axi_wready), // output s_axi_wready
          .s_axi_bid(im_axi_bid), // output [3 : 0] s_axi_bid
          .s_axi_bresp(im_axi_bresp), // output [1 : 0] s_axi_bresp
          .s_axi_bvalid(im_axi_bvalid), // output s_axi_bvalid
          .s_axi_bready(im_axi_bready), // input s_axi_bready
          .s_axi_arid(im_axi_arid), // input [3 : 0] s_axi_arid
          .s_axi_araddr(im_axi_araddr), // input [31 : 0] s_axi_araddr
          .s_axi_arlen(im_axi_arlen), // input [7 : 0] s_axi_arlen
          .s_axi_arsize(im_axi_arsize), // input [2 : 0] s_axi_arsize
          .s_axi_arburst(im_axi_arburst), // input [1 : 0] s_axi_arburst
          .s_axi_arlock(1'b0), // input [0 : 0] s_axi_arlock
          .s_axi_arcache(im_axi_arcache), // input [3 : 0] s_axi_arcache
          .s_axi_arprot(im_axi_arprot), // input [2 : 0] s_axi_arprot
          .s_axi_arregion(4'b0000), // input [3 : 0] s_axi_arregion
          .s_axi_arqos(4'b0000), // input [3 : 0] s_axi_arqos
          .s_axi_arvalid(im_axi_arvalid), // input s_axi_arvalid
          .s_axi_arready(im_axi_arready), // output s_axi_arready
          .s_axi_rid(im_axi_rid), // output [3 : 0] s_axi_rid
          .s_axi_rdata(im_axi_rdata), // output [63 : 0] s_axi_rdata
          .s_axi_rresp(im_axi_rresp), // output [1 : 0] s_axi_rresp
          .s_axi_rlast(im_axi_rlast), // output s_axi_rlast
          .s_axi_rvalid(im_axi_rvalid), // output s_axi_rvalid
          .s_axi_rready(im_axi_rready), // input s_axi_rready
          .m_axi_awaddr(m_axi4_lite_awaddr), // output [31 : 0] m_axi_awaddr
          .m_axi_awprot(m_axi4_lite_awprot), // output [2 : 0] m_axi_awprot
          .m_axi_awvalid(m_axi4_lite_awvalid), // output m_axi_awvalid
          .m_axi_awready(m_axi4_lite_awready), // input m_axi_awready
          .m_axi_wdata(m_axi4_lite_wdata), // output [(AXI4_LITE_DATA_WIDTH-1) : 0] m_axi_wdata
          .m_axi_wstrb(m_axi4_lite_wstrb), // output [((AXI4_LITE_DATA_WIDTH/8)-1) : 0] m_axi_wstrb
          .m_axi_wvalid(m_axi4_lite_wvalid), // output m_axi_wvalid
          .m_axi_wready(m_axi4_lite_wready), // input m_axi_wready
          .m_axi_bresp(m_axi4_lite_bresp), // input [1 : 0] m_axi_bresp
          .m_axi_bvalid(m_axi4_lite_bvalid), // input m_axi_bvalid
          .m_axi_bready(m_axi4_lite_bready), // output m_axi_bready
          .m_axi_araddr(m_axi4_lite_araddr), // output [31 : 0] m_axi_araddr
          .m_axi_arprot(m_axi4_lite_arprot), // output [2 : 0] m_axi_arprot
          .m_axi_arvalid(m_axi4_lite_arvalid), // output m_axi_arvalid
          .m_axi_arready(m_axi4_lite_arready), // input m_axi_arready
          .m_axi_rdata(m_axi4_lite_rdata), // input [(AXI4_LITE_DATA_WIDTH-1) : 0] m_axi_rdata
          .m_axi_rresp(m_axi4_lite_rresp), // input [1 : 0] m_axi_rresp
          .m_axi_rvalid(m_axi4_lite_rvalid), // input m_axi_rvalid
          .m_axi_rready(m_axi4_lite_rready) // output m_axi_rready
        );
        assign m_axi4_lite_wlast = 1'b1;
        //assign m_axi4_lite_rlast = 1'b1;
        assign m_axi4_lite_awid = 4'b0000;
        assign m_axi4_lite_arid = 4'b0000;
        axi_datamover_64MM_32STR axi_data_mover_inst (
          .m_axi_mm2s_aclk(sys_clk), // input m_axi_mm2s_aclk
          .m_axi_mm2s_aresetn(data_mover_aresetn), // input m_axi_mm2s_aresetn
          .mm2s_err(mm2s_err_lite), // output mm2s_err
          .m_axis_mm2s_cmdsts_aclk(sys_clk), // input m_axis_mm2s_cmdsts_aclk
          .m_axis_mm2s_cmdsts_aresetn(data_mover_aresetn), // input m_axis_mm2s_cmdsts_aresetn

          .s_axis_mm2s_cmd_tvalid(s_axis_mm2s_cmd_tvalid_axi4_lite), // input s_axis_mm2s_cmd_tvalid
          .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready_axi4_lite), // output s_axis_mm2s_cmd_tready
          .s_axis_mm2s_cmd_tdata(s_axis_mm2s_cmd_tdata_axi4_lite), // input [71 : 0] s_axis_mm2s_cmd_tdata

          .m_axis_mm2s_sts_tvalid(), // output m_axis_mm2s_sts_tvalid
          .m_axis_mm2s_sts_tready(1'b1), // input m_axis_mm2s_sts_tready
          .m_axis_mm2s_sts_tdata(), // output [7 : 0] m_axis_mm2s_sts_tdata
          .m_axis_mm2s_sts_tkeep(), // output [0 : 0] m_axis_mm2s_sts_tkeep
          .m_axis_mm2s_sts_tlast(), // output m_axis_mm2s_sts_tlast

          .m_axi_mm2s_arid(im_axi_arid), // output [3 : 0] m_axi_mm2s_arid
          .m_axi_mm2s_araddr(im_axi_araddr), // output [31 : 0] m_axi_mm2s_araddr
          .m_axi_mm2s_arlen(im_axi_arlen), // output [7 : 0] m_axi_mm2s_arlen
          .m_axi_mm2s_arsize(im_axi_arsize), // output [2 : 0] m_axi_mm2s_arsize
          .m_axi_mm2s_arburst(im_axi_arburst), // output [1 : 0] m_axi_mm2s_arburst
          .m_axi_mm2s_arprot(im_axi_arprot), // output [2 : 0] m_axi_mm2s_arprot
          .m_axi_mm2s_arcache(im_axi_arcache), // output [3 : 0] m_axi_mm2s_arcache
          .m_axi_mm2s_aruser(), // output [3 : 0] m_axi_mm2s_aruser
          .m_axi_mm2s_arvalid(im_axi_arvalid), // output m_axi_mm2s_arvalid
          .m_axi_mm2s_arready(im_axi_arready), // input m_axi_mm2s_arready
          .m_axi_mm2s_rdata(im_axi_rdata), // input [(AXI4_LITE_DATA_WIDTH-1) : 0] m_axi_mm2s_rdata
          .m_axi_mm2s_rresp(im_axi_rresp), // input [1 : 0] m_axi_mm2s_rresp
          .m_axi_mm2s_rlast(im_axi_rlast), // input m_axi_mm2s_rlast
          .m_axi_mm2s_rvalid(im_axi_rvalid), // input m_axi_mm2s_rvalid
          .m_axi_mm2s_rready(im_axi_rready), // output m_axi_mm2s_rready

          .m_axis_mm2s_tdata(m_axis_mm2s_tdata_axi4_lite), // output [31 : 0] m_axis_mm2s_tdata
          .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep_axi4_lite), // output [3 : 0] m_axis_mm2s_tkeep
          .m_axis_mm2s_tlast(), // output m_axis_mm2s_tlast
          .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid_axi4_lite), // output m_axis_mm2s_tvalid
          .m_axis_mm2s_tready(m_axis_mm2s_tready_axi4_lite), // input m_axis_mm2s_tready

          .m_axi_s2mm_aclk(sys_clk), // input m_axi_s2mm_aclk
          .m_axi_s2mm_aresetn(data_mover_aresetn), // input m_axi_s2mm_aresetn
          .s2mm_err(s2mm_err_lite), // output s2mm_err
          .m_axis_s2mm_cmdsts_awclk(sys_clk), // input m_axis_s2mm_cmdsts_awclk
          .m_axis_s2mm_cmdsts_aresetn(data_mover_aresetn), // input m_axis_s2mm_cmdsts_aresetn

          .s_axis_s2mm_cmd_tvalid(s_axis_s2mm_cmd_tvalid_axi4_lite), // input s_axis_s2mm_cmd_tvalid
          .s_axis_s2mm_cmd_tready(s_axis_s2mm_cmd_tready_axi4_lite), // output s_axis_s2mm_cmd_tready
          .s_axis_s2mm_cmd_tdata(s_axis_s2mm_cmd_tdata_axi4_lite), // input [71 : 0] s_axis_s2mm_cmd_tdata

          .m_axis_s2mm_sts_tvalid(), // output m_axis_s2mm_sts_tvalid
          .m_axis_s2mm_sts_tready(1'b1), // input m_axis_s2mm_sts_tready
          .m_axis_s2mm_sts_tdata(), // output [7 : 0] m_axis_s2mm_sts_tdata
          .m_axis_s2mm_sts_tkeep(), // output [0 : 0] m_axis_s2mm_sts_tkeep
          .m_axis_s2mm_sts_tlast(), // output m_axis_s2mm_sts_tlast

          .m_axi_s2mm_awid(im_axi_awid), // output [3 : 0] m_axi_s2mm_awid
          .m_axi_s2mm_awaddr(im_axi_awaddr), // output [31 : 0] m_axi_s2mm_awaddr
          .m_axi_s2mm_awlen(im_axi_awlen), // output [7 : 0] m_axi_s2mm_awlen
          .m_axi_s2mm_awsize(im_axi_awsize), // output [2 : 0] m_axi_s2mm_awsize
          .m_axi_s2mm_awburst(im_axi_awburst), // output [1 : 0] m_axi_s2mm_awburst
          .m_axi_s2mm_awprot(im_axi_awprot), // output [2 : 0] m_axi_s2mm_awprot
          .m_axi_s2mm_awcache(im_axi_awcache), // output [3 : 0] m_axi_s2mm_awcache
          .m_axi_s2mm_awuser(), // output [3 : 0] m_axi_s2mm_awuser
          .m_axi_s2mm_awvalid(im_axi_awvalid), // output m_axi_s2mm_awvalid
          .m_axi_s2mm_awready(im_axi_awready), // input m_axi_s2mm_awready
          .m_axi_s2mm_wdata(im_axi_wdata), // output [(AXI4_LITE_DATA_WIDTH-1) : 0] m_axi_s2mm_wdata
          .m_axi_s2mm_wstrb(im_axi_wstrb), // output [((AXI4_LITE_DATA_WIDTH/8)-1) : 0] m_axi_s2mm_wstrb
          .m_axi_s2mm_wlast(im_axi_wlast), // output m_axi_s2mm_wlast
          .m_axi_s2mm_wvalid(im_axi_wvalid), // output m_axi_s2mm_wvalid
          .m_axi_s2mm_wready(im_axi_wready), // input m_axi_s2mm_wready
          .m_axi_s2mm_bresp(im_axi_bresp), // input [1 : 0] m_axi_s2mm_bresp
          .m_axi_s2mm_bvalid(im_axi_bvalid), // input m_axi_s2mm_bvalid
          .m_axi_s2mm_bready(im_axi_bready), // output m_axi_s2mm_bready

          .s_axis_s2mm_tdata(s_axis_s2mm_tdata_axi4_lite), // input [31 : 0] s_axis_s2mm_tdata
          .s_axis_s2mm_tkeep(s_axis_s2mm_tkeep_axi4_lite), // input [3 : 0] s_axis_s2mm_tkeep
          .s_axis_s2mm_tlast(s_axis_s2mm_tlast_axi4_lite), // input s_axis_s2mm_tlast
          .s_axis_s2mm_tvalid(s_axis_s2mm_tvalid_axi4_lite), // input s_axis_s2mm_tvalid
          .s_axis_s2mm_tready(s_axis_s2mm_tready_axi4_lite) // output s_axis_s2mm_tready
        );
        end
    default : begin
        axi_mm32_to_axi_lite32 u_axi_mm_to_axi_lite (
          .aclk(sys_clk), // input aclk
          .aresetn(data_mover_aresetn), // input aresetn
          .s_axi_awid(im_axi_awid), // input [3 : 0] s_axi_awid
          .s_axi_awaddr(im_axi_awaddr), // input [31 : 0] s_axi_awaddr
          .s_axi_awlen(im_axi_awlen), // input [7 : 0] s_axi_awlen
          .s_axi_awsize(im_axi_awsize), // input [2 : 0] s_axi_awsize
          .s_axi_awburst(im_axi_awburst), // input [1 : 0] s_axi_awburst
          .s_axi_awlock(1'b0), // input [0 : 0] s_axi_awlock
          .s_axi_awcache(im_axi_awcache), // input [3 : 0] s_axi_awcache
          .s_axi_awprot(im_axi_awprot), // input [2 : 0] s_axi_awprot
          .s_axi_awregion(4'b0000), // input [3 : 0] s_axi_awregion
          .s_axi_awqos(4'b0000), // input [3 : 0] s_axi_awqos
          .s_axi_awvalid(im_axi_awvalid), // input s_axi_awvalid
          .s_axi_awready(im_axi_awready), // output s_axi_awready
          .s_axi_wdata(im_axi_wdata), // input [(AXI4_LITE_DATA_WIDTH-1) : 0] s_axi_wdata
          .s_axi_wstrb(im_axi_wstrb), // input [7 : 0] s_axi_wstrb
          .s_axi_wlast(im_axi_wlast), // input s_axi_wlast
          .s_axi_wvalid(im_axi_wvalid), // input s_axi_wvalid
          .s_axi_wready(im_axi_wready), // output s_axi_wready
          .s_axi_bid(im_axi_bid), // output [3 : 0] s_axi_bid
          .s_axi_bresp(im_axi_bresp), // output [1 : 0] s_axi_bresp
          .s_axi_bvalid(im_axi_bvalid), // output s_axi_bvalid
          .s_axi_bready(im_axi_bready), // input s_axi_bready
          .s_axi_arid(im_axi_arid), // input [3 : 0] s_axi_arid
          .s_axi_araddr(im_axi_araddr), // input [31 : 0] s_axi_araddr
          .s_axi_arlen(im_axi_arlen), // input [7 : 0] s_axi_arlen
          .s_axi_arsize(im_axi_arsize), // input [2 : 0] s_axi_arsize
          .s_axi_arburst(im_axi_arburst), // input [1 : 0] s_axi_arburst
          .s_axi_arlock(1'b0), // input [0 : 0] s_axi_arlock
          .s_axi_arcache(im_axi_arcache), // input [3 : 0] s_axi_arcache
          .s_axi_arprot(im_axi_arprot), // input [2 : 0] s_axi_arprot
          .s_axi_arregion(4'b0000), // input [3 : 0] s_axi_arregion
          .s_axi_arqos(4'b0000), // input [3 : 0] s_axi_arqos
          .s_axi_arvalid(im_axi_arvalid), // input s_axi_arvalid
          .s_axi_arready(im_axi_arready), // output s_axi_arready
          .s_axi_rid(im_axi_rid), // output [3 : 0] s_axi_rid
          .s_axi_rdata(im_axi_rdata), // output [(AXI4_LITE_DATA_WIDTH-1) : 0] s_axi_rdata
          .s_axi_rresp(im_axi_rresp), // output [1 : 0] s_axi_rresp
          .s_axi_rlast(im_axi_rlast), // output s_axi_rlast
          .s_axi_rvalid(im_axi_rvalid), // output s_axi_rvalid
          .s_axi_rready(im_axi_rready), // input s_axi_rready
          .m_axi_awaddr(m_axi4_lite_awaddr), // output [31 : 0] m_axi_awaddr
          .m_axi_awprot(m_axi4_lite_awprot), // output [2 : 0] m_axi_awprot
          .m_axi_awvalid(m_axi4_lite_awvalid), // output m_axi_awvalid
          .m_axi_awready(m_axi4_lite_awready), // input m_axi_awready
          .m_axi_wdata(m_axi4_lite_wdata), // output [(AXI4_LITE_DATA_WIDTH-1) : 0] m_axi_wdata
          .m_axi_wstrb(m_axi4_lite_wstrb), // output [((AXI4_LITE_DATA_WIDTH/8)-1) : 0] m_axi_wstrb
          .m_axi_wvalid(m_axi4_lite_wvalid), // output m_axi_wvalid
          .m_axi_wready(m_axi4_lite_wready), // input m_axi_wready
          .m_axi_bresp(m_axi4_lite_bresp), // input [1 : 0] m_axi_bresp
          .m_axi_bvalid(m_axi4_lite_bvalid), // input m_axi_bvalid
          .m_axi_bready(m_axi4_lite_bready), // output m_axi_bready
          .m_axi_araddr(m_axi4_lite_araddr), // output [31 : 0] m_axi_araddr
          .m_axi_arprot(m_axi4_lite_arprot), // output [2 : 0] m_axi_arprot
          .m_axi_arvalid(m_axi4_lite_arvalid), // output m_axi_arvalid
          .m_axi_arready(m_axi4_lite_arready), // input m_axi_arready
          .m_axi_rdata(m_axi4_lite_rdata), // input [(AXI4_LITE_DATA_WIDTH-1) : 0] m_axi_rdata
          .m_axi_rresp(m_axi4_lite_rresp), // input [1 : 0] m_axi_rresp
          .m_axi_rvalid(m_axi4_lite_rvalid), // input m_axi_rvalid
          .m_axi_rready(m_axi4_lite_rready) // output m_axi_rready
        );
        assign m_axi4_lite_wlast = 1'b1;
        //assign m_axi4_lite_rlast = 1'b1;
        assign m_axi4_lite_awid = 4'b0000;
        assign m_axi4_lite_arid = 4'b0000;
        axi_datamover_32MM_32STR axi_data_mover_inst (
          .m_axi_mm2s_aclk(sys_clk), // input m_axi_mm2s_aclk
          .m_axi_mm2s_aresetn(data_mover_aresetn), // input m_axi_mm2s_aresetn
          .mm2s_err(mm2s_err_lite), // output mm2s_err
          .m_axis_mm2s_cmdsts_aclk(sys_clk), // input m_axis_mm2s_cmdsts_aclk
          .m_axis_mm2s_cmdsts_aresetn(data_mover_aresetn), // input m_axis_mm2s_cmdsts_aresetn

          .s_axis_mm2s_cmd_tvalid(s_axis_mm2s_cmd_tvalid_axi4_lite), // input s_axis_mm2s_cmd_tvalid
          .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready_axi4_lite), // output s_axis_mm2s_cmd_tready
          .s_axis_mm2s_cmd_tdata(s_axis_mm2s_cmd_tdata_axi4_lite), // input [71 : 0] s_axis_mm2s_cmd_tdata

          .m_axis_mm2s_sts_tvalid(), // output m_axis_mm2s_sts_tvalid
          .m_axis_mm2s_sts_tready(1'b1), // input m_axis_mm2s_sts_tready
          .m_axis_mm2s_sts_tdata(), // output [7 : 0] m_axis_mm2s_sts_tdata
          .m_axis_mm2s_sts_tkeep(), // output [0 : 0] m_axis_mm2s_sts_tkeep
          .m_axis_mm2s_sts_tlast(), // output m_axis_mm2s_sts_tlast

          .m_axi_mm2s_arid(im_axi_arid), // output [3 : 0] m_axi_mm2s_arid
          .m_axi_mm2s_araddr(im_axi_araddr), // output [31 : 0] m_axi_mm2s_araddr
          .m_axi_mm2s_arlen(im_axi_arlen), // output [7 : 0] m_axi_mm2s_arlen
          .m_axi_mm2s_arsize(im_axi_arsize), // output [2 : 0] m_axi_mm2s_arsize
          .m_axi_mm2s_arburst(im_axi_arburst), // output [1 : 0] m_axi_mm2s_arburst
          .m_axi_mm2s_arprot(im_axi_arprot), // output [2 : 0] m_axi_mm2s_arprot
          .m_axi_mm2s_arcache(im_axi_arcache), // output [3 : 0] m_axi_mm2s_arcache
          .m_axi_mm2s_aruser(), // output [3 : 0] m_axi_mm2s_aruser
          .m_axi_mm2s_arvalid(im_axi_arvalid), // output m_axi_mm2s_arvalid
          .m_axi_mm2s_arready(im_axi_arready), // input m_axi_mm2s_arready
          .m_axi_mm2s_rdata(im_axi_rdata), // input [(AXI4_LITE_DATA_WIDTH-1) : 0] m_axi_mm2s_rdata
          .m_axi_mm2s_rresp(im_axi_rresp), // input [1 : 0] m_axi_mm2s_rresp
          .m_axi_mm2s_rlast(im_axi_rlast), // input m_axi_mm2s_rlast
          .m_axi_mm2s_rvalid(im_axi_rvalid), // input m_axi_mm2s_rvalid
          .m_axi_mm2s_rready(im_axi_rready), // output m_axi_mm2s_rready

          .m_axis_mm2s_tdata(m_axis_mm2s_tdata_axi4_lite), // output [31 : 0] m_axis_mm2s_tdata
          .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep_axi4_lite), // output [3 : 0] m_axis_mm2s_tkeep
          .m_axis_mm2s_tlast(), // output m_axis_mm2s_tlast
          .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid_axi4_lite), // output m_axis_mm2s_tvalid
          .m_axis_mm2s_tready(m_axis_mm2s_tready_axi4_lite), // input m_axis_mm2s_tready

          .m_axi_s2mm_aclk(sys_clk), // input m_axi_s2mm_aclk
          .m_axi_s2mm_aresetn(data_mover_aresetn), // input m_axi_s2mm_aresetn
          .s2mm_err(s2mm_err_lite), // output s2mm_err
          .m_axis_s2mm_cmdsts_awclk(sys_clk), // input m_axis_s2mm_cmdsts_awclk
          .m_axis_s2mm_cmdsts_aresetn(data_mover_aresetn), // input m_axis_s2mm_cmdsts_aresetn

          .s_axis_s2mm_cmd_tvalid(s_axis_s2mm_cmd_tvalid_axi4_lite), // input s_axis_s2mm_cmd_tvalid
          .s_axis_s2mm_cmd_tready(s_axis_s2mm_cmd_tready_axi4_lite), // output s_axis_s2mm_cmd_tready
          .s_axis_s2mm_cmd_tdata(s_axis_s2mm_cmd_tdata_axi4_lite), // input [71 : 0] s_axis_s2mm_cmd_tdata

          .m_axis_s2mm_sts_tvalid(), // output m_axis_s2mm_sts_tvalid
          .m_axis_s2mm_sts_tready(1'b1), // input m_axis_s2mm_sts_tready
          .m_axis_s2mm_sts_tdata(), // output [7 : 0] m_axis_s2mm_sts_tdata
          .m_axis_s2mm_sts_tkeep(), // output [0 : 0] m_axis_s2mm_sts_tkeep
          .m_axis_s2mm_sts_tlast(), // output m_axis_s2mm_sts_tlast

          .m_axi_s2mm_awid(im_axi_awid), // output [3 : 0] m_axi_s2mm_awid
          .m_axi_s2mm_awaddr(im_axi_awaddr), // output [31 : 0] m_axi_s2mm_awaddr
          .m_axi_s2mm_awlen(im_axi_awlen), // output [7 : 0] m_axi_s2mm_awlen
          .m_axi_s2mm_awsize(im_axi_awsize), // output [2 : 0] m_axi_s2mm_awsize
          .m_axi_s2mm_awburst(im_axi_awburst), // output [1 : 0] m_axi_s2mm_awburst
          .m_axi_s2mm_awprot(im_axi_awprot), // output [2 : 0] m_axi_s2mm_awprot
          .m_axi_s2mm_awcache(im_axi_awcache), // output [3 : 0] m_axi_s2mm_awcache
          .m_axi_s2mm_awuser(), // output [3 : 0] m_axi_s2mm_awuser
          .m_axi_s2mm_awvalid(im_axi_awvalid), // output m_axi_s2mm_awvalid
          .m_axi_s2mm_awready(im_axi_awready), // input m_axi_s2mm_awready
          .m_axi_s2mm_wdata(im_axi_wdata), // output [(AXI4_LITE_DATA_WIDTH-1) : 0] m_axi_s2mm_wdata
          .m_axi_s2mm_wstrb(im_axi_wstrb), // output [((AXI4_LITE_DATA_WIDTH/8)-1) : 0] m_axi_s2mm_wstrb
          .m_axi_s2mm_wlast(im_axi_wlast), // output m_axi_s2mm_wlast
          .m_axi_s2mm_wvalid(im_axi_wvalid), // output m_axi_s2mm_wvalid
          .m_axi_s2mm_wready(im_axi_wready), // input m_axi_s2mm_wready
          .m_axi_s2mm_bresp(im_axi_bresp), // input [1 : 0] m_axi_s2mm_bresp
          .m_axi_s2mm_bvalid(im_axi_bvalid), // input m_axi_s2mm_bvalid
          .m_axi_s2mm_bready(im_axi_bready), // output m_axi_s2mm_bready

          .s_axis_s2mm_tdata(s_axis_s2mm_tdata_axi4_lite), // input [31 : 0] s_axis_s2mm_tdata
          .s_axis_s2mm_tkeep(s_axis_s2mm_tkeep_axi4_lite), // input [3 : 0] s_axis_s2mm_tkeep
          .s_axis_s2mm_tlast(s_axis_s2mm_tlast_axi4_lite), // input s_axis_s2mm_tlast
          .s_axis_s2mm_tvalid(s_axis_s2mm_tvalid_axi4_lite), // input s_axis_s2mm_tvalid
          .s_axis_s2mm_tready(s_axis_s2mm_tready_axi4_lite) // output s_axis_s2mm_tready
        );
    end
endcase
endgenerate

endmodule
