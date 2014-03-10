// Created : 10:53:39, Mon Feb 4, 2013 : Sanjay Rai
// Modified : Wed June 5, 2013 : Sanjay Rai

`timescale 1ns/100fs
module jtag_axi_debugger # (

   parameter C_S_AXI_ID_WIDTH      = 4

)
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

  output reg [3:0] AC701_LEDS,
  input RESET,
  input CLK_P,
  input CLK_N
  );

wire [C_S_AXI_ID_WIDTH-1:0]                s_axi_awid;
wire  [31:0]         s_axi_awaddr;
wire  [7:0]          s_axi_awlen;
wire  [2:0]          s_axi_awsize;
wire  [1:0]          s_axi_awburst;
wire  [3:0]          s_axi_awcache;
wire  [2:0]          s_axi_awprot;
wire                 s_axi_awvalid;
wire                 s_axi_awready;
// Slave Interface Write Data Ports
wire  [511:0]        s_axi_wdata;
wire  [63:0]         s_axi_wstrb;
wire                 s_axi_wlast;
wire                 s_axi_wvalid;
wire                 s_axi_wready;
// Slave Interface Write Response Ports
wire                 s_axi_bready;
wire [C_S_AXI_ID_WIDTH-1:0]                s_axi_bid;
wire [1:0]           s_axi_bresp;
wire                 s_axi_bvalid;
// Slave Interface Read Address Ports
wire [C_S_AXI_ID_WIDTH-1:0]                s_axi_arid;
wire  [31:0]         s_axi_araddr;
wire  [7:0]          s_axi_arlen;
wire  [2:0]          s_axi_arsize;
wire  [1:0]          s_axi_arburst;
wire  [3:0]          s_axi_arcache;
wire  [2:0]          s_axi_arprot;
wire                 s_axi_arvalid;
wire                 s_axi_arready;
// Slave Interface Read Data Ports
wire                 s_axi_rready;
wire [C_S_AXI_ID_WIDTH-1:0]                s_axi_rid;
wire [511:0]         s_axi_rdata;
wire [1:0]           s_axi_rresp;
wire                 s_axi_rlast;
wire                 s_axi_rvalid;


wire init_calib_complete;

wire                 clk_in;
wire                 sys_clk;
wire                 sys_rst;
reg                 aresetn = 1'b0;
wire  [31:0] GP_OUT_32_A;
wire  [31:0] GP_OUT_32_B;

reg [31:0] GP_IN_32_A_reg = 32'd0;
reg [31:0] GP_IN_32_B_reg = 32'd0;


IBUFDS ibufg (
                .I(CLK_P),
                .IB(CLK_N),
                .O(clk_in));



   always @(posedge sys_clk) begin
     aresetn <= ~sys_rst;
     AC701_LEDS <= GP_OUT_32_A[3:0];
     GP_IN_32_A_reg <= (GP_OUT_32_A + GP_OUT_32_B);
     GP_IN_32_B_reg <= (GP_OUT_32_A - GP_OUT_32_B);
   end

    mig_7series_ddr3_ac701 u_mig_7series_ddr3_ac701 (
    // Memory interface ports                                                                                       
         .ddr3_dq                        (ddr3_dq),                                                           
         .ddr3_dqs_n                     (ddr3_dqs_n),                                                        
         .ddr3_dqs_p                     (ddr3_dqs_p),                                                          
         .ddr3_addr                      (ddr3_addr),                                                         
         .ddr3_ba                        (ddr3_ba),                                                           
         .ddr3_ras_n                     (ddr3_ras_n),                                                        
         .ddr3_cas_n                     (ddr3_cas_n),                                                        
         .ddr3_we_n                      (ddr3_we_n),                                                         
         .ddr3_reset_n                   (ddr3_reset_n),                                                     
         .ddr3_ck_p                      (ddr3_ck_p),                                                          
         .ddr3_ck_n                      (ddr3_ck_n),                                                        
         .ddr3_cke                       (ddr3_cke),                                                          
         .ddr3_cs_n                      (ddr3_cs_n),                                                         
         .ddr3_dm                        (ddr3_dm),                                                           
         .ddr3_odt                       (ddr3_odt),                                                          
    // Application interface ports                                                                                  
         .ui_clk                         (sys_clk),                                                                  
         .mmcm_locked                    (),
         .ui_clk_sync_rst                (sys_rst),                                                         
         .aresetn                        (aresetn),                                                                 
         .app_sr_req                     (1'b0),
         .app_ref_req                    (1'b0),
         .app_zq_req                     (1'b0),
         .app_sr_active                  (),                                                           
         .app_ref_ack                    (),                                                             
         .app_zq_ack                     (),                                                              
                                                                                                                    
    // Slave Interface Write Address Ports                                                                          
         .s_axi_awid                     (s_axi_awid),                                                              
         .s_axi_awaddr                   (s_axi_awaddr),                                                            
         .s_axi_awlen                    (s_axi_awlen),
         .s_axi_awsize                   (s_axi_awsize),
         .s_axi_awburst                  (s_axi_awburst),
         .s_axi_awlock                   (1'b0),
         .s_axi_awcache                  (s_axi_awcache),
         .s_axi_awprot                   (s_axi_awprot),
         .s_axi_awqos                    (4'h0),
         .s_axi_awvalid                  (s_axi_awvalid),
         .s_axi_awready                  (s_axi_awready),
    // Slave Interface Write Data Ports
         .s_axi_wdata                    (s_axi_wdata),
         .s_axi_wstrb                    (s_axi_wstrb),
         .s_axi_wlast                    (s_axi_wlast),
         .s_axi_wvalid                   (s_axi_wvalid),
         .s_axi_wready                   (s_axi_wready),
    // Slave Interface Write Response Ports
         .s_axi_bready                   (s_axi_bready),
         .s_axi_bid                      (s_axi_bid),
         .s_axi_bresp                    (s_axi_bresp),
         .s_axi_bvalid                   (s_axi_bvalid),
    // Slave Interface Read Address Ports
         .s_axi_arid                     (s_axi_arid),
         .s_axi_araddr                   (s_axi_araddr),
         .s_axi_arlen                    (s_axi_arlen),
         .s_axi_arsize                   (s_axi_arsize),
         .s_axi_arburst                  (s_axi_arburst),
         .s_axi_arlock                   (1'b0),
         .s_axi_arcache                  (s_axi_arcache),
         .s_axi_arprot                   (s_axi_arprot),
         .s_axi_arqos                    (4'h0),
         .s_axi_arvalid                  (s_axi_arvalid),
         .s_axi_arready                  (s_axi_arready),
    // Slave Interface Read Data Ports
         .s_axi_rready                   (s_axi_rready),
         .s_axi_rid                      (s_axi_rid),
         .s_axi_rdata                    (s_axi_rdata),
         .s_axi_rresp                    (s_axi_rresp),
         .s_axi_rlast                    (s_axi_rlast),
         .s_axi_rvalid                   (s_axi_rvalid),
    // AXI CTRL port
         .init_calib_complete            (init_calib_complete),
         .sys_clk_i                      (clk_in),
         .sys_rst                        (RESET)
        );

jtag_axi_debugger_ip  # (

    .AXI4_LITE_DATA_WIDTH(64),
    .AXI4_MM_DATA_WIDTH(512)
)
u_jtag_axi_debugger_ip (
  .sys_clk(sys_clk), // input m_axi_mm2s_aclk
  .jtag_axi_debugger_ip_ERROR(),
  .GP_OUT_32_A(GP_OUT_32_A), //GPIO_IN
  .GP_OUT_32_B(GP_OUT_32_B), //GPIO_IN
  .GP_IN_32_A(GP_IN_32_A_reg), //GPIO_OUT
  .GP_IN_32_B(GP_IN_32_B_reg), //GPIO_OUt

  .m_axi4_lite_araddr(), // output [31 : 0] m_axi_mm2s_araddr
  .m_axi4_lite_arprot(), // output [2 : 0] m_axi_mm2s_arprot
  .m_axi4_lite_arvalid(), // output m_axi_mm2s_arvalid
  .m_axi4_lite_arready(1'b0), // input m_axi_mm2s_arready
  .m_axi4_lite_rdata(64'd0), // input [(AXI4_LITE_DATA_WIDTH-1) : 0] m_axi_mm2s_rdata
  .m_axi4_lite_rresp(2'b0), // input [1 : 0] m_axi_mm2s_rresp
  .m_axi4_lite_rlast(1'b0), // input m_axi_mm2s_rlast
  .m_axi4_lite_rvalid(1'b0), // input m_axi_mm2s_rvalid
  .m_axi4_lite_rready(), // output m_axi_mm2s_rready

  .m_axi4_lite_awaddr(), // output [31 : 0] m_axi_s2mm_awaddr
  .m_axi4_lite_awprot(), // output [2 : 0] m_axi_s2mm_awprot
  .m_axi4_lite_awvalid(), // output m_axi_s2mm_awvalid
  .m_axi4_lite_awready(1'b0), // input m_axi_s2mm_awready
  .m_axi4_lite_wdata(), // output [(AXI4_LITE_DATA_WIDTH-1) : 0] m_axi_s2mm_wdata
  .m_axi4_lite_wstrb(), // output [((AXI4_LITE_DATA_WIDTH/8)-1) : 0] m_axi_s2mm_wstrb
  .m_axi4_lite_wlast(), // output m_axi_s2mm_wlast
  .m_axi4_lite_wvalid(), // output m_axi_s2mm_wvalid
  .m_axi4_lite_wready(1'b0), // input m_axi_s2mm_wready
  .m_axi4_lite_bresp(2'b0), // input [1 : 0] m_axi_s2mm_bresp
  .m_axi4_lite_bvalid(2'b0), // input m_axi_s2mm_bvalid
  .m_axi4_lite_bready(), // output m_axi_s2mm_bready


  .m_axi4_mm_arid(s_axi_arid), // output [3 : 0] m_axi_mm2s_arid
  .m_axi4_mm_araddr(s_axi_araddr), // output [31 : 0] m_axi_mm2s_araddr
  .m_axi4_mm_arlen(s_axi_arlen), // output [7 : 0] m_axi_mm2s_arlen
  .m_axi4_mm_arsize(s_axi_arsize), // output [2 : 0] m_axi_mm2s_arsize
  .m_axi4_mm_arburst(s_axi_arburst), // output [1 : 0] m_axi_mm2s_arburst
  .m_axi4_mm_arprot(s_axi_arprot), // output [2 : 0] m_axi_mm2s_arprot
  .m_axi4_mm_arcache(s_axi_arcache), // output [3 : 0] m_axi_mm2s_arcache
  .m_axi4_mm_arvalid(s_axi_arvalid), // output m_axi_mm2s_arvalid
  .m_axi4_mm_arready(s_axi_arready), // input m_axi_mm2s_arready
  .m_axi4_mm_rdata(s_axi_rdata), // input [(AXI4_MM_DATA_WIDTH-1) : 0] m_axi_mm2s_rdata
  .m_axi4_mm_rresp(s_axi_rresp), // input [1 : 0] m_axi_mm2s_rresp
  .m_axi4_mm_rlast(s_axi_rlast), // input m_axi_mm2s_rlast
  .m_axi4_mm_rvalid(s_axi_rvalid), // input m_axi_mm2s_rvalid
  .m_axi4_mm_rready(s_axi_rready), // output m_axi_mm2s_rready

  .m_axi4_mm_awid(s_axi_awid), // output [3 : 0] m_axi_s2mm_awid
  .m_axi4_mm_awaddr(s_axi_awaddr), // output [31 : 0] m_axi_s2mm_awaddr
  .m_axi4_mm_awlen(s_axi_awlen), // output [7 : 0] m_axi_s2mm_awlen
  .m_axi4_mm_awsize(s_axi_awsize), // output [2 : 0] m_axi_s2mm_awsize
  .m_axi4_mm_awburst(s_axi_awburst), // output [1 : 0] m_axi_s2mm_awburst
  .m_axi4_mm_awprot(s_axi_awprot), // output [2 : 0] m_axi_s2mm_awprot
  .m_axi4_mm_awcache(s_axi_awcache), // output [3 : 0] m_axi_s2mm_awcache
  .m_axi4_mm_awvalid(s_axi_awvalid), // output m_axi_s2mm_awvalid
  .m_axi4_mm_awready(s_axi_awready), // input m_axi_s2mm_awready
  .m_axi4_mm_wdata(s_axi_wdata), // output [(AXI4_MM_DATA_WIDTH-1) : 0] m_axi_s2mm_wdata
  .m_axi4_mm_wstrb(s_axi_wstrb), // output [((AXI4_MM_DATA_WIDTH/8)-1) : 0] m_axi_s2mm_wstrb
  .m_axi4_mm_wlast(s_axi_wlast), // output m_axi_s2mm_wlast
  .m_axi4_mm_wvalid(s_axi_wvalid), // output m_axi_s2mm_wvalid
  .m_axi4_mm_wready(s_axi_wready), // input m_axi_s2mm_wready
  .m_axi4_mm_bresp(s_axi_bresp), // input [1 : 0] m_axi_s2mm_bresp
  .m_axi4_mm_bvalid(s_axi_bvalid), // input m_axi_s2mm_bvalid
  .m_axi4_mm_bready(s_axi_bready) // output m_axi_s2mm_bready

);

endmodule
