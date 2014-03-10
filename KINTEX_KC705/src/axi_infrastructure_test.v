// Created : 10:53:39, Mon may 16, 2013 : Sanjay Rai

`timescale 1ns/100fs

module axi_infrastructure_test
(
  inout [63:0]      ddr3_dq,
  inout [7:0]       ddr3_dqs_n,
  inout [7:0]       ddr3_dqs_p,
  // Outputs
  output [13:0]     ddr3_addr,
  output [2:0]      ddr3_ba,
  output            ddr3_ras_n,
  output            ddr3_cas_n,
  output            ddr3_we_n,
  output            ddr3_reset_n,
  output            ddr3_ck_p,
  output            ddr3_ck_n,
  output            ddr3_cke,
  output            ddr3_cs_n,
  output [7:0]      ddr3_dm,
  output            ddr3_odt,

  output reg [7:0] KC705_LEDS,
  output FAN_PWM,
  input RESET,
  input CLK_P,
  input CLK_N

);

wire [7 : 0] s_axi_awid;
wire [63 : 0] s_axi_awaddr;
wire [15 : 0] s_axi_awlen;
wire [5 : 0] s_axi_awsize;
wire [3 : 0] s_axi_awburst;
wire [1 : 0] s_axi_awlock;
wire [7 : 0] s_axi_awcache;
wire [5 : 0] s_axi_awprot;
wire [7 : 0] s_axi_awqos;
wire [1 : 0] s_axi_awvalid;
wire [1 : 0] s_axi_awready;
wire [511 : 0] s_axi_wdata;
wire [63 : 0] s_axi_wstrb;
wire [1 : 0] s_axi_wlast;
wire [1 : 0] s_axi_wvalid;
wire [1 : 0] s_axi_wready;
wire [7 : 0] s_axi_bid;
wire [3 : 0] s_axi_bresp;
wire [1 : 0] s_axi_bvalid;
wire [1 : 0] s_axi_bready;
wire [7 : 0] s_axi_arid;
wire [63 : 0] s_axi_araddr;
wire [15 : 0] s_axi_arlen;
wire [5 : 0] s_axi_arsize;
wire [3 : 0] s_axi_arburst;
wire [1 : 0] s_axi_arlock;
wire [7 : 0] s_axi_arcache;
wire [5 : 0] s_axi_arprot;
wire [7 : 0] s_axi_arqos;
wire [1 : 0] s_axi_arvalid;
wire [1 : 0] s_axi_arready;
wire [7 : 0] s_axi_rid;
wire [511 : 0] s_axi_rdata;
wire [3 : 0] s_axi_rresp;
wire [1 : 0] s_axi_rlast;
wire [1 : 0] s_axi_rvalid;
wire [1 : 0] s_axi_rready;

wire [7:0]          m_axi_awid;
wire [63:0]         m_axi_awaddr;
wire [15:0]         m_axi_awlen;
wire [5:0]          m_axi_awsize;
wire [3:0]          m_axi_awburst;
wire [7:0]          m_axi_awcache;
wire [5:0]          m_axi_awprot;
wire [1:0]          m_axi_awvalid;
wire [1:0]          m_axi_awready;
// Slave Interface Write Data Ports
wire [511:0]        m_axi_wdata;
wire [63:0]         m_axi_wstrb;
wire [1:0]          m_axi_wlast;
wire [1:0]          m_axi_wvalid;
wire [1:0]          m_axi_wready;
// Slave Interface Write Response Ports
wire [1:0]          m_axi_bready;
wire [7:0]          m_axi_bid;
wire [3:0]          m_axi_bresp;
wire [1:0]          m_axi_bvalid;
// Slave Interface Read Address Ports
wire [7:0]          m_axi_arid;
wire [63:0]         m_axi_araddr;
wire [15:0]         m_axi_arlen;
wire [5:0]          m_axi_arsize;
wire [3:0]          m_axi_arburst;
wire [7:0]          m_axi_arcache;
wire [5:0]          m_axi_arprot;
wire [1:0]          m_axi_arvalid;
wire [1:0]          m_axi_arready;
// Slave Interface Read Data Ports
wire [1:0]          m_axi_rready;
wire [7:0]          m_axi_rid;
wire [511:0]        m_axi_rdata;
wire [3:0]          m_axi_rresp;
wire [1:0]          m_axi_rlast;
wire [1:0]          m_axi_rvalid;

wire [31 : 0] s_axi_lite_awaddr;
wire          s_axi_lite_awvalid;
wire          s_axi_lite_awready;
wire [31 : 0] s_axi_lite_wdata;
wire          s_axi_lite_wvalid;
wire          s_axi_lite_wready;
wire          s_axi_lite_bready;
wire [1 : 0]  s_axi_lite_bresp;
wire          s_axi_lite_bvalid;
wire [31 : 0] s_axi_lite_araddr;
wire          s_axi_lite_arvalid;
wire          s_axi_lite_arready;
wire          s_axi_lite_rready;
wire [31 : 0] s_axi_lite_rdata;
wire [1 : 0]  s_axi_lite_rresp;
wire          s_axi_lite_rvalid;


wire init_calib_complete;

wire                 clk_in;
wire                 sys_clk;
wire                 sys_rst;
wire  [31:0] GP_OUT_32_A;
wire  [31:0] GP_OUT_32_B;

reg [31:0] GP_IN_32_A_reg = 32'd0;
reg [31:0] GP_IN_32_B_reg = 32'd0;

reg                 aresetn = 1'b0;

assign FAN_PWM = 1'b1;

IBUFDS ibufg (
                .I(CLK_P),
                .IB(CLK_N),
                .O(clk_in));

   always @(posedge sys_clk) begin
     aresetn <= ~sys_rst;
     KC705_LEDS <= GP_OUT_32_A[7:0];
     GP_IN_32_A_reg <= (GP_OUT_32_A + GP_OUT_32_B);
     GP_IN_32_B_reg <= (GP_OUT_32_A - GP_OUT_32_B);
   end

ddr3_kc705 u_ddr3_kc705 (
       
// Memory interface ports
       .ddr3_addr                      (ddr3_addr),
       .ddr3_ba                        (ddr3_ba),
       .ddr3_cas_n                     (ddr3_cas_n),
       .ddr3_ck_n                      (ddr3_ck_n),
       .ddr3_ck_p                      (ddr3_ck_p),
       .ddr3_cke                       (ddr3_cke),
       .ddr3_ras_n                     (ddr3_ras_n),
       .ddr3_reset_n                   (ddr3_reset_n),
       .ddr3_we_n                      (ddr3_we_n),
       .ddr3_dq                        (ddr3_dq),
       .ddr3_dqs_n                     (ddr3_dqs_n),
       .ddr3_dqs_p                     (ddr3_dqs_p),
       .ddr3_cs_n                      (ddr3_cs_n),
       .ddr3_dm                        (ddr3_dm),
       .ddr3_odt                       (ddr3_odt),
// Application interface ports
       .ui_clk                         (sys_clk),
       .ui_clk_sync_rst                (sys_rst),

       .mmcm_locked                    (mmcm_locked),
       .aresetn                        (aresetn),
       .app_sr_active                  (),
       .app_ref_ack                    (),
       .app_zq_ack                     (),

// Slave Interface Write Address Ports
       .s_axi_awid                     (m_axi_awid[3:0]),
       .s_axi_awaddr                   (m_axi_awaddr[31:0]),
       .s_axi_awlen                    (m_axi_awlen[7:0]),
       .s_axi_awsize                   (m_axi_awsize[2:0]),
       .s_axi_awburst                  (m_axi_awburst[1:0]),
       .s_axi_awlock                   (1'b0),
       .s_axi_awcache                  (m_axi_awcache[3:0]),
       .s_axi_awprot                   (m_axi_awprot[2:0]),
       .s_axi_awqos                    (4'h0),
       .s_axi_awvalid                  (m_axi_awvalid[0]),
       .s_axi_awready                  (m_axi_awready[0]),
// Slave Interface Write Data Ports
       .s_axi_wdata                    (m_axi_wdata[255:0]),
       .s_axi_wstrb                    (m_axi_wstrb[31:0]),
       .s_axi_wlast                    (m_axi_wlast[0]),
       .s_axi_wvalid                   (m_axi_wvalid[0]),
       .s_axi_wready                   (m_axi_wready[0]),
// Slave Interface Write Response Ports
       .s_axi_bid                      (m_axi_bid[3:0]),
       .s_axi_bresp                    (m_axi_bresp[1:0]),
       .s_axi_bvalid                   (m_axi_bvalid[0]),
       .s_axi_bready                   (m_axi_bready[0]),
// Slave Interface Read Address Ports
       .s_axi_arid                     (m_axi_arid[3:0]),
       .s_axi_araddr                   (m_axi_araddr[31:0]),
       .s_axi_arlen                    (m_axi_arlen[7:0]),
       .s_axi_arsize                   (m_axi_arsize[2:0]),
       .s_axi_arburst                  (m_axi_arburst[1:0]),
       .s_axi_arlock                   (1'b0),
       .s_axi_arcache                  (m_axi_arcache[3:0]),
       .s_axi_arprot                   (m_axi_arprot[2:0]),
       .s_axi_arqos                    (4'h0),
       .s_axi_arvalid                  (m_axi_arvalid[0]),
       .s_axi_arready                  (m_axi_arready[0]),
// Slave Interface Read Data Ports
       .s_axi_rid                      (m_axi_rid[3:0]),
       .s_axi_rdata                    (m_axi_rdata[255:0]),
       .s_axi_rresp                    (m_axi_rresp[1:0]),
       .s_axi_rlast                    (m_axi_rlast[0]),
       .s_axi_rvalid                   (m_axi_rvalid[0]),
       .s_axi_rready                   (m_axi_rready[0]),

// System Clock Ports
       .init_calib_complete            (init_calib_complete),
       .sys_clk_i                      (clk_in),
       .sys_rst                        (RESET)
       );

RAMB_AXI_256x256 u_RAMB_AXI_256x256 (
  .s_aclk(sys_clk), // input s_aclk
  .s_aresetn(aresetn), // input s_aresetn
  .s_axi_awid(m_axi_awid[7:4]), // input [3 : 0] s_axi_awid
  .s_axi_awaddr(m_axi_awaddr[63:32]), // input [31 : 0] s_axi_awaddr
  .s_axi_awlen(m_axi_awlen[15:8]), // input [7 : 0] s_axi_awlen
  .s_axi_awsize(m_axi_awsize[5:3]), // input [2 : 0] s_axi_awsize
  .s_axi_awburst(m_axi_awburst[3:2]), // input [1 : 0] s_axi_awburst
  .s_axi_awvalid(m_axi_awvalid[1]), // input s_axi_awvalid
  .s_axi_awready(m_axi_awready[1]), // output s_axi_awready
  .s_axi_wdata(m_axi_wdata[511:256]), // input [255 : 0] s_axi_wdata
  .s_axi_wstrb(m_axi_wstrb[63:32]), // input [31 : 0] s_axi_wstrb
  .s_axi_wlast(m_axi_wlast[1]), // input s_axi_wlast
  .s_axi_wvalid(m_axi_wvalid[1]), // input s_axi_wvalid
  .s_axi_wready(m_axi_wready[1]), // output s_axi_wready
  .s_axi_bid(m_axi_bid[7:4]), // output [3 : 0] s_axi_bid
  .s_axi_bresp(m_axi_bresp[3:2]), // output [1 : 0] s_axi_bresp
  .s_axi_bvalid(m_axi_bvalid[1]), // output s_axi_bvalid
  .s_axi_bready(m_axi_bready[1]), // input s_axi_bready
  .s_axi_arid(m_axi_arid[7:4]), // input [3 : 0] s_axi_arid
  .s_axi_araddr(m_axi_araddr[63:32]), // input [31 : 0] s_axi_araddr
  .s_axi_arlen(m_axi_arlen[15:8]), // input [7 : 0] s_axi_arlen
  .s_axi_arsize(m_axi_arsize[5:3]), // input [2 : 0] s_axi_arsize
  .s_axi_arburst(m_axi_arburst[3:2]), // input [1 : 0] s_axi_arburst
  .s_axi_arvalid(m_axi_arvalid[1]), // input s_axi_arvalid
  .s_axi_arready(m_axi_arready[1]), // output s_axi_arready
  .s_axi_rid(m_axi_rid[7:4]), // output [3 : 0] s_axi_rid
  .s_axi_rdata(m_axi_rdata[511:256]), // output [255 : 0] s_axi_rdata
  .s_axi_rresp(m_axi_rresp[3:2]), // output [1 : 0] s_axi_rresp
  .s_axi_rlast(m_axi_rlast[1]), // output s_axi_rlast
  .s_axi_rvalid(m_axi_rvalid[1]), // output s_axi_rvalid
  .s_axi_rready(m_axi_rready[1]) // input s_axi_rready
);

axi_crossbar u_axi_crossbar (
  .aclk(sys_clk), // input aclk
  .aresetn(aresetn), // input aresetn
  .s_axi_awid({s_axi_awid[7:4], 4'h0}), // input [7 : 0] s_axi_awid
  .s_axi_awaddr(s_axi_awaddr), // input [63 : 0] s_axi_awaddr
  .s_axi_awlen(s_axi_awlen), // input [15 : 0] s_axi_awlen
  .s_axi_awsize(s_axi_awsize), // input [5 : 0] s_axi_awsize
  .s_axi_awburst(s_axi_awburst), // input [3 : 0] s_axi_awburst
  .s_axi_awlock(s_axi_awlock), // input [1 : 0] s_axi_awlock
  .s_axi_awcache(s_axi_awcache), // input [7 : 0] s_axi_awcache
  .s_axi_awprot(s_axi_awprot), // input [5 : 0] s_axi_awprot
  .s_axi_awqos(s_axi_awqos), // input [7 : 0] s_axi_awqos
  .s_axi_awvalid(s_axi_awvalid), // input [1 : 0] s_axi_awvalid
  .s_axi_awready(s_axi_awready), // output [1 : 0] s_axi_awready
  .s_axi_wdata(s_axi_wdata), // input [511 : 0] s_axi_wdata
  .s_axi_wstrb(s_axi_wstrb), // input [63 : 0] s_axi_wstrb
  .s_axi_wlast(s_axi_wlast), // input [1 : 0] s_axi_wlast
  .s_axi_wvalid(s_axi_wvalid), // input [1 : 0] s_axi_wvalid
  .s_axi_wready(s_axi_wready), // output [1 : 0] s_axi_wready
  .s_axi_bid(s_axi_bid), // output [7 : 0] s_axi_bid
  .s_axi_bresp(s_axi_bresp), // output [3 : 0] s_axi_bresp
  .s_axi_bvalid(s_axi_bvalid), // output [1 : 0] s_axi_bvalid
  .s_axi_bready(s_axi_bready), // input [1 : 0] s_axi_bready
  .s_axi_arid({s_axi_arid[7:4], 4'h0}), // input [7 : 0] s_axi_arid
  .s_axi_araddr(s_axi_araddr), // input [63 : 0] s_axi_araddr
  .s_axi_arlen(s_axi_arlen), // input [15 : 0] s_axi_arlen
  .s_axi_arsize(s_axi_arsize), // input [5 : 0] s_axi_arsize
  .s_axi_arburst(s_axi_arburst), // input [3 : 0] s_axi_arburst
  .s_axi_arlock(s_axi_arlock), // input [1 : 0] s_axi_arlock
  .s_axi_arcache(s_axi_arcache), // input [7 : 0] s_axi_arcache
  .s_axi_arprot(s_axi_arprot), // input [5 : 0] s_axi_arprot
  .s_axi_arqos(s_axi_arqos), // input [7 : 0] s_axi_arqos
  .s_axi_arvalid(s_axi_arvalid), // input [1 : 0] s_axi_arvalid
  .s_axi_arready(s_axi_arready), // output [1 : 0] s_axi_arready
  .s_axi_rid(s_axi_rid), // output [7 : 0] s_axi_rid
  .s_axi_rdata(s_axi_rdata), // output [511 : 0] s_axi_rdata
  .s_axi_rresp(s_axi_rresp), // output [3 : 0] s_axi_rresp
  .s_axi_rlast(s_axi_rlast), // output [1 : 0] s_axi_rlast
  .s_axi_rvalid(s_axi_rvalid), // output [1 : 0] s_axi_rvalid
  .s_axi_rready(s_axi_rready), // input [1 : 0] s_axi_rready
  .m_axi_awid(m_axi_awid), // output [7 : 0] m_axi_awid
  .m_axi_awaddr(m_axi_awaddr), // output [63 : 0] m_axi_awaddr
  .m_axi_awlen(m_axi_awlen), // output [15 : 0] m_axi_awlen
  .m_axi_awsize(m_axi_awsize), // output [5 : 0] m_axi_awsize
  .m_axi_awburst(m_axi_awburst), // output [3 : 0] m_axi_awburst
  .m_axi_awlock(m_axi_awlock), // output [1 : 0] m_axi_awlock
  .m_axi_awcache(m_axi_awcache), // output [7 : 0] m_axi_awcache
  .m_axi_awprot(m_axi_awprot), // output [5 : 0] m_axi_awprot
  .m_axi_awregion(m_axi_awregion), // output [7 : 0] m_axi_awregion
  .m_axi_awqos(m_axi_awqos), // output [7 : 0] m_axi_awqos
  .m_axi_awvalid(m_axi_awvalid), // output [1 : 0] m_axi_awvalid
  .m_axi_awready(m_axi_awready), // input [1 : 0] m_axi_awready
  .m_axi_wdata(m_axi_wdata), // output [511 : 0] m_axi_wdata
  .m_axi_wstrb(m_axi_wstrb), // output [63 : 0] m_axi_wstrb
  .m_axi_wlast(m_axi_wlast), // output [1 : 0] m_axi_wlast
  .m_axi_wvalid(m_axi_wvalid), // output [1 : 0] m_axi_wvalid
  .m_axi_wready(m_axi_wready), // input [1 : 0] m_axi_wready
  .m_axi_bid(m_axi_bid), // input [7 : 0] m_axi_bid
  .m_axi_bresp(m_axi_bresp), // input [3 : 0] m_axi_bresp
  .m_axi_bvalid(m_axi_bvalid), // input [1 : 0] m_axi_bvalid
  .m_axi_bready(m_axi_bready), // output [1 : 0] m_axi_bready
  .m_axi_arid(m_axi_arid), // output [7 : 0] m_axi_arid
  .m_axi_araddr(m_axi_araddr), // output [63 : 0] m_axi_araddr
  .m_axi_arlen(m_axi_arlen), // output [15 : 0] m_axi_arlen
  .m_axi_arsize(m_axi_arsize), // output [5 : 0] m_axi_arsize
  .m_axi_arburst(m_axi_arburst), // output [3 : 0] m_axi_arburst
  .m_axi_arlock(m_axi_arlock), // output [1 : 0] m_axi_arlock
  .m_axi_arcache(m_axi_arcache), // output [7 : 0] m_axi_arcache
  .m_axi_arprot(m_axi_arprot), // output [5 : 0] m_axi_arprot
  .m_axi_arregion(m_axi_arregion), // output [7 : 0] m_axi_arregion
  .m_axi_arqos(m_axi_arqos), // output [7 : 0] m_axi_arqos
  .m_axi_arvalid(m_axi_arvalid), // output [1 : 0] m_axi_arvalid
  .m_axi_arready(m_axi_arready), // input [1 : 0] m_axi_arready
  .m_axi_rid(m_axi_rid), // input [7 : 0] m_axi_rid
  .m_axi_rdata(m_axi_rdata), // input [511 : 0] m_axi_rdata
  .m_axi_rresp(m_axi_rresp), // input [3 : 0] m_axi_rresp
  .m_axi_rlast(m_axi_rlast), // input [1 : 0] m_axi_rlast
  .m_axi_rvalid(m_axi_rvalid), // input [1 : 0] m_axi_rvalid
  .m_axi_rready(m_axi_rready) // output [1 : 0] m_axi_rready
);

axi_cdma_0 u_axi_cdma (
  .m_axi_aclk(sys_clk), // input m_axi_aclk
  .s_axi_lite_aclk(sys_clk), // input s_axi_lite_aclk
  .s_axi_lite_aresetn(aresetn), // input s_axi_lite_aresetn
  .cdma_introut(), // output cdma_introut
  .s_axi_lite_awready(s_axi_lite_awready), // output s_axi_lite_awready
  .s_axi_lite_awvalid(s_axi_lite_awvalid), // input s_axi_lite_awvalid
  .s_axi_lite_awaddr(s_axi_lite_awaddr[5:0]), // input [5 : 0] s_axi_lite_awaddr
  .s_axi_lite_wready(s_axi_lite_wready), // output s_axi_lite_wready
  .s_axi_lite_wvalid(s_axi_lite_wvalid), // input s_axi_lite_wvalid
  .s_axi_lite_wdata(s_axi_lite_wdata), // input [31 : 0] s_axi_lite_wdata
  .s_axi_lite_bready(s_axi_lite_bready), // input s_axi_lite_bready
  .s_axi_lite_bvalid(s_axi_lite_bvalid), // output s_axi_lite_bvalid
  .s_axi_lite_bresp(s_axi_lite_bresp), // output [1 : 0] s_axi_lite_bresp
  .s_axi_lite_arready(s_axi_lite_arready), // output s_axi_lite_arready
  .s_axi_lite_arvalid(s_axi_lite_arvalid), // input s_axi_lite_arvalid
  .s_axi_lite_araddr(s_axi_lite_araddr[5:0]), // input [5 : 0] s_axi_lite_araddr
  .s_axi_lite_rready(s_axi_lite_rready), // input s_axi_lite_rready
  .s_axi_lite_rvalid(s_axi_lite_rvalid), // output s_axi_lite_rvalid
  .s_axi_lite_rdata(s_axi_lite_rdata), // output [31 : 0] s_axi_lite_rdata
  .s_axi_lite_rresp(s_axi_lite_rresp), // output [1 : 0] s_axi_lite_rresp
  .m_axi_arready(s_axi_arready[0]), // input m_axi_arready
  .m_axi_arvalid(s_axi_arvalid[0]), // output m_axi_arvalid
  .m_axi_araddr(s_axi_araddr[31 : 0]), // output [31 : 0] m_axi_araddr
  .m_axi_arlen(s_axi_arlen[7 : 0]), // output [7 : 0] m_axi_arlen
  .m_axi_arsize(s_axi_arsize[2 : 0]), // output [2 : 0] m_axi_arsize
  .m_axi_arburst(s_axi_arburst[1 : 0]), // output [1 : 0] m_axi_arburst
  .m_axi_arprot(s_axi_arprot[2 : 0]), // output [2 : 0] m_axi_arprot
  .m_axi_arcache(s_axi_arcache[3 : 0]), // output [3 : 0] m_axi_arcache
  .m_axi_rready(s_axi_rready[0]), // output m_axi_rready
  .m_axi_rvalid(s_axi_rvalid[0]), // input m_axi_rvalid
  .m_axi_rdata(s_axi_rdata[255 : 0]), // input [255 : 0] m_axi_rdata
  .m_axi_rresp(s_axi_rresp[1 : 0]), // input [1 : 0] m_axi_rresp
  .m_axi_rlast(s_axi_rlast[0]), // input m_axi_rlast
  .m_axi_awready(s_axi_awready[0]), // input m_axi_awready
  .m_axi_awvalid(s_axi_awvalid[0]), // output m_axi_awvalid
  .m_axi_awaddr(s_axi_awaddr[31 : 0]), // output [31 : 0] m_axi_awaddr
  .m_axi_awlen(s_axi_awlen[7 : 0]), // output [7 : 0] m_axi_awlen
  .m_axi_awsize(s_axi_awsize[2 : 0]), // output [2 : 0] m_axi_awsize
  .m_axi_awburst(s_axi_awburst[1 : 0]), // output [1 : 0] m_axi_awburst
  .m_axi_awprot(s_axi_awprot[2 : 0]), // output [2 : 0] m_axi_awprot
  .m_axi_awcache(s_axi_awcache[3 : 0]), // output [3 : 0] m_axi_awcache
  .m_axi_wready(s_axi_wready[0]), // input m_axi_wready
  .m_axi_wvalid(s_axi_wvalid[0]), // output m_axi_wvalid
  .m_axi_wdata(s_axi_wdata[255 : 0]), // output [255 : 0] m_axi_wdata
  .m_axi_wstrb(s_axi_wstrb[31 : 0]), // output [31 : 0] m_axi_wstrb
  .m_axi_wlast(s_axi_wlast[0]), // output m_axi_wlast
  .m_axi_bready(s_axi_bready[0]), // output m_axi_bready
  .m_axi_bvalid(s_axi_bvalid[0]), // input m_axi_bvalid
  .m_axi_bresp(s_axi_bresp[1 : 0]), // input [1 : 0] m_axi_bresp
  .cdma_tvect_out() // output [31 : 0] cdma_tvect_out
);

jtag_axi_debugger_ip_mmx256 u_jtag_axi_debugger_ip (
  .sys_clk(sys_clk), // input sys_clk
  .jtag_axi_debugger_ip_ERROR(),  // output jtag_axi_debugger_ip_ERROR
  .GP_OUT_32_A(GP_OUT_32_A), // output [31 : 0] GP_OUT_32_A
  .GP_OUT_32_B(GP_OUT_32_B), // output [31 : 0] GP_OUT_32_B
  .GP_IN_32_A(GP_IN_32_A_reg), // input [31 : 0] GP_IN_32_A
  .GP_IN_32_B(GP_IN_32_B_reg), // input [31 : 0] GP_IN_32_B
  .m_axi4_lite_awaddr(s_axi_lite_awaddr), // output [31 : 0] m_axi4_lite_awaddr
  .m_axi4_lite_awprot(), // output [2 : 0] m_axi4_lite_awprot
  .m_axi4_lite_awvalid(s_axi_lite_awvalid), // output m_axi4_lite_awvalid
  .m_axi4_lite_awready(s_axi_lite_awready), // input m_axi4_lite_awready
  .m_axi4_lite_wdata(s_axi_lite_wdata), // output [31 : 0] m_axi4_lite_wdata
  .m_axi4_lite_wstrb(), // output [3 : 0] m_axi4_lite_wstrb
  .m_axi4_lite_wlast(), // output m_axi4_lite_wlast
  .m_axi4_lite_wvalid(s_axi_lite_wvalid), // output m_axi4_lite_wvalid
  .m_axi4_lite_wready(s_axi_lite_wready), // input m_axi4_lite_wready
  .m_axi4_lite_bready(s_axi_lite_bready), // output m_axi4_lite_bready
  .m_axi4_lite_bresp(s_axi_lite_bresp), // input [1 : 0] m_axi4_lite_bresp
  .m_axi4_lite_bvalid(s_axi_lite_bvalid), // input m_axi4_lite_bvalid
  .m_axi4_lite_araddr(s_axi_lite_araddr), // output [31 : 0] m_axi4_lite_araddr
  .m_axi4_lite_arprot(), // output [2 : 0] m_axi4_lite_arprot
  .m_axi4_lite_arvalid(s_axi_lite_arvalid), // output m_axi4_lite_arvalid
  .m_axi4_lite_arready(s_axi_lite_arready), // input m_axi4_lite_arready
  .m_axi4_lite_rready(s_axi_lite_rready), // output m_axi4_lite_rready
  .m_axi4_lite_rdata(s_axi_lite_rdata), // input [31 : 0] m_axi4_lite_rdata
  .m_axi4_lite_rresp(s_axi_lite_rresp), // input [1 : 0] m_axi4_lite_rresp
  .m_axi4_lite_rlast(1'b1), // input m_axi4_lite_rlast
  .m_axi4_lite_rvalid(s_axi_lite_rvalid), // input m_axi4_lite_rvalid

  .m_axi4_mm_awid(s_axi_awid[7 : 4]), // output [3 : 0] m_axi4_mm_awid
  .m_axi4_mm_awaddr(s_axi_awaddr[63 : 32]), // output [31 : 0] m_axi4_mm_awaddr
  .m_axi4_mm_awlen(s_axi_awlen[15 : 8]), // output [7 : 0] m_axi4_mm_awlen
  .m_axi4_mm_awsize(s_axi_awsize[5 : 3]), // output [2 : 0] m_axi4_mm_awsize
  .m_axi4_mm_awburst(s_axi_awburst[3 : 2]), // output [1 : 0] m_axi4_mm_awburst
  .m_axi4_mm_awcache(s_axi_awcache[7 : 4]), // output [3 : 0] m_axi4_mm_awcache
  .m_axi4_mm_awprot(s_axi_awprot[5 : 3]), // output [2 : 0] m_axi4_mm_awprot
  .m_axi4_mm_awvalid(s_axi_awvalid[1]), // output m_axi4_mm_awvalid
  .m_axi4_mm_awready(s_axi_awready[1]), // input m_axi4_mm_awready
  .m_axi4_mm_wdata(s_axi_wdata[511 : 256]), // output [255 : 0] m_axi4_mm_wdata
  .m_axi4_mm_wstrb(s_axi_wstrb[63 : 32]), // output [31 : 0] m_axi4_mm_wstrb
  .m_axi4_mm_wlast(s_axi_wlast[1]), // output m_axi4_mm_wlast
  .m_axi4_mm_wvalid(s_axi_wvalid[1]), // output m_axi4_mm_wvalid
  .m_axi4_mm_wready(s_axi_wready[1]), // input m_axi4_mm_wready
  .m_axi4_mm_bready(s_axi_bready[1]), // output m_axi4_mm_bready
  .m_axi4_mm_bresp(s_axi_bresp[3 : 2]), // input [1 : 0] m_axi4_mm_bresp
  .m_axi4_mm_bvalid(s_axi_bvalid[1]), // input m_axi4_mm_bvalid
  .m_axi4_mm_arid(s_axi_arid[7 : 4]), // output [3 : 0] m_axi4_mm_arid
  .m_axi4_mm_araddr(s_axi_araddr[63 : 32]), // output [31 : 0] m_axi4_mm_araddr
  .m_axi4_mm_arlen(s_axi_arlen[15 : 8]), // output [7 : 0] m_axi4_mm_arlen
  .m_axi4_mm_arsize(s_axi_arsize[5 : 3]), // output [2 : 0] m_axi4_mm_arsize
  .m_axi4_mm_arburst(s_axi_arburst[3 : 2]), // output [1 : 0] m_axi4_mm_arburst
  .m_axi4_mm_arcache(s_axi_arcache[7 : 4]), // output [3 : 0] m_axi4_mm_arcache
  .m_axi4_mm_arprot(s_axi_arprot[5 : 3]), // output [2 : 0] m_axi4_mm_arprot
  .m_axi4_mm_arvalid(s_axi_arvalid[1]), // output m_axi4_mm_arvalid
  .m_axi4_mm_arready(s_axi_arready[1]), // input m_axi4_mm_arready
  .m_axi4_mm_rready(s_axi_rready[1]), // output m_axi4_mm_rready
  .m_axi4_mm_rdata(s_axi_rdata[511 : 256]), // input [255 : 0] m_axi4_mm_rdata
  .m_axi4_mm_rresp(s_axi_rresp[3 : 2]), // input [1 : 0] m_axi4_mm_rresp
  .m_axi4_mm_rlast(s_axi_rlast[1]), // input m_axi4_mm_rlast
  .m_axi4_mm_rvalid(s_axi_rvalid[1]) // input m_axi4_mm_rvalid
);

endmodule
