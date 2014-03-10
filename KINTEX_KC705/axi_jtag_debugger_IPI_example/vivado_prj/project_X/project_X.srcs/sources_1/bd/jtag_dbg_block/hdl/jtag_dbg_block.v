`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "jtag_dbg_block,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=3,numNonXlnxBlks=1,numHierBlks=2,maxHierDepth=0,da_axi4_cnt=1,da_board_cnt=1,da_mig7_cnt=1}" *) 
module jtag_dbg_block
   (ddr3_sdram_addr,
    ddr3_sdram_ba,
    ddr3_sdram_cas_n,
    ddr3_sdram_ck_n,
    ddr3_sdram_ck_p,
    ddr3_sdram_cke,
    ddr3_sdram_cs_n,
    ddr3_sdram_dm,
    ddr3_sdram_dq,
    ddr3_sdram_dqs_n,
    ddr3_sdram_dqs_p,
    ddr3_sdram_odt,
    ddr3_sdram_ras_n,
    ddr3_sdram_reset_n,
    ddr3_sdram_we_n,
    reset,
    sys_diff_clock_clk_n,
    sys_diff_clock_clk_p);
  output [13:0]ddr3_sdram_addr;
  output [2:0]ddr3_sdram_ba;
  output ddr3_sdram_cas_n;
  output [0:0]ddr3_sdram_ck_n;
  output [0:0]ddr3_sdram_ck_p;
  output [0:0]ddr3_sdram_cke;
  output [0:0]ddr3_sdram_cs_n;
  output [7:0]ddr3_sdram_dm;
  inout [63:0]ddr3_sdram_dq;
  inout [7:0]ddr3_sdram_dqs_n;
  inout [7:0]ddr3_sdram_dqs_p;
  output [0:0]ddr3_sdram_odt;
  output ddr3_sdram_ras_n;
  output ddr3_sdram_reset_n;
  output ddr3_sdram_we_n;
  input reset;
  input sys_diff_clock_clk_n;
  input sys_diff_clock_clk_p;

  wire GND_1;
  wire VCC_1;
  wire [29:0]axi_mem_intercon_m00_axi_ARADDR;
  wire [1:0]axi_mem_intercon_m00_axi_ARBURST;
  wire [3:0]axi_mem_intercon_m00_axi_ARCACHE;
  wire [3:0]axi_mem_intercon_m00_axi_ARID;
  wire [7:0]axi_mem_intercon_m00_axi_ARLEN;
  wire [2:0]axi_mem_intercon_m00_axi_ARPROT;
  wire axi_mem_intercon_m00_axi_ARREADY;
  wire [2:0]axi_mem_intercon_m00_axi_ARSIZE;
  wire axi_mem_intercon_m00_axi_ARVALID;
  wire [29:0]axi_mem_intercon_m00_axi_AWADDR;
  wire [1:0]axi_mem_intercon_m00_axi_AWBURST;
  wire [3:0]axi_mem_intercon_m00_axi_AWCACHE;
  wire [3:0]axi_mem_intercon_m00_axi_AWID;
  wire [7:0]axi_mem_intercon_m00_axi_AWLEN;
  wire [2:0]axi_mem_intercon_m00_axi_AWPROT;
  wire axi_mem_intercon_m00_axi_AWREADY;
  wire [2:0]axi_mem_intercon_m00_axi_AWSIZE;
  wire axi_mem_intercon_m00_axi_AWVALID;
  wire axi_mem_intercon_m00_axi_BREADY;
  wire [1:0]axi_mem_intercon_m00_axi_BRESP;
  wire axi_mem_intercon_m00_axi_BVALID;
  wire [511:0]axi_mem_intercon_m00_axi_RDATA;
  wire axi_mem_intercon_m00_axi_RLAST;
  wire axi_mem_intercon_m00_axi_RREADY;
  wire [1:0]axi_mem_intercon_m00_axi_RRESP;
  wire axi_mem_intercon_m00_axi_RVALID;
  wire [511:0]axi_mem_intercon_m00_axi_WDATA;
  wire axi_mem_intercon_m00_axi_WLAST;
  wire axi_mem_intercon_m00_axi_WREADY;
  wire [63:0]axi_mem_intercon_m00_axi_WSTRB;
  wire axi_mem_intercon_m00_axi_WVALID;
  wire [31:0]jtag_axi_debugger_ip_0_m_axi4_mm_ARADDR;
  wire [1:0]jtag_axi_debugger_ip_0_m_axi4_mm_ARBURST;
  wire [3:0]jtag_axi_debugger_ip_0_m_axi4_mm_ARCACHE;
  wire [3:0]jtag_axi_debugger_ip_0_m_axi4_mm_ARID;
  wire [7:0]jtag_axi_debugger_ip_0_m_axi4_mm_ARLEN;
  wire [2:0]jtag_axi_debugger_ip_0_m_axi4_mm_ARPROT;
  wire jtag_axi_debugger_ip_0_m_axi4_mm_ARREADY;
  wire [2:0]jtag_axi_debugger_ip_0_m_axi4_mm_ARSIZE;
  wire jtag_axi_debugger_ip_0_m_axi4_mm_ARVALID;
  wire [31:0]jtag_axi_debugger_ip_0_m_axi4_mm_AWADDR;
  wire [1:0]jtag_axi_debugger_ip_0_m_axi4_mm_AWBURST;
  wire [3:0]jtag_axi_debugger_ip_0_m_axi4_mm_AWCACHE;
  wire [3:0]jtag_axi_debugger_ip_0_m_axi4_mm_AWID;
  wire [7:0]jtag_axi_debugger_ip_0_m_axi4_mm_AWLEN;
  wire [2:0]jtag_axi_debugger_ip_0_m_axi4_mm_AWPROT;
  wire jtag_axi_debugger_ip_0_m_axi4_mm_AWREADY;
  wire [2:0]jtag_axi_debugger_ip_0_m_axi4_mm_AWSIZE;
  wire jtag_axi_debugger_ip_0_m_axi4_mm_AWVALID;
  wire jtag_axi_debugger_ip_0_m_axi4_mm_BREADY;
  wire [1:0]jtag_axi_debugger_ip_0_m_axi4_mm_BRESP;
  wire jtag_axi_debugger_ip_0_m_axi4_mm_BVALID;
  wire [511:0]jtag_axi_debugger_ip_0_m_axi4_mm_RDATA;
  wire jtag_axi_debugger_ip_0_m_axi4_mm_RLAST;
  wire jtag_axi_debugger_ip_0_m_axi4_mm_RREADY;
  wire [1:0]jtag_axi_debugger_ip_0_m_axi4_mm_RRESP;
  wire jtag_axi_debugger_ip_0_m_axi4_mm_RVALID;
  wire [511:0]jtag_axi_debugger_ip_0_m_axi4_mm_WDATA;
  wire jtag_axi_debugger_ip_0_m_axi4_mm_WLAST;
  wire jtag_axi_debugger_ip_0_m_axi4_mm_WREADY;
  wire [63:0]jtag_axi_debugger_ip_0_m_axi4_mm_WSTRB;
  wire jtag_axi_debugger_ip_0_m_axi4_mm_WVALID;
  wire [13:0]mig_7series_0_ddr3_ADDR;
  wire [2:0]mig_7series_0_ddr3_BA;
  wire mig_7series_0_ddr3_CAS_N;
  wire [0:0]mig_7series_0_ddr3_CKE;
  wire [0:0]mig_7series_0_ddr3_CK_N;
  wire [0:0]mig_7series_0_ddr3_CK_P;
  wire [0:0]mig_7series_0_ddr3_CS_N;
  wire [7:0]mig_7series_0_ddr3_DM;
  wire [63:0]mig_7series_0_ddr3_DQ;
  wire [7:0]mig_7series_0_ddr3_DQS_N;
  wire [7:0]mig_7series_0_ddr3_DQS_P;
  wire [0:0]mig_7series_0_ddr3_ODT;
  wire mig_7series_0_ddr3_RAS_N;
  wire mig_7series_0_ddr3_RESET_N;
  wire mig_7series_0_ddr3_WE_N;
  wire mig_7series_0_mmcm_locked;
  wire mig_7series_0_ui_clk;
  wire mig_7series_0_ui_clk_sync_rst;
  wire [0:0]proc_sys_reset_interconnect_aresetn;
  wire [0:0]proc_sys_reset_peripheral_aresetn;
  wire reset_1;
  wire sys_diff_clock_1_CLK_N;
  wire sys_diff_clock_1_CLK_P;

  assign ddr3_sdram_addr[13:0] = mig_7series_0_ddr3_ADDR;
  assign ddr3_sdram_ba[2:0] = mig_7series_0_ddr3_BA;
  assign ddr3_sdram_cas_n = mig_7series_0_ddr3_CAS_N;
  assign ddr3_sdram_ck_n[0] = mig_7series_0_ddr3_CK_N;
  assign ddr3_sdram_ck_p[0] = mig_7series_0_ddr3_CK_P;
  assign ddr3_sdram_cke[0] = mig_7series_0_ddr3_CKE;
  assign ddr3_sdram_cs_n[0] = mig_7series_0_ddr3_CS_N;
  assign ddr3_sdram_dm[7:0] = mig_7series_0_ddr3_DM;
  assign ddr3_sdram_odt[0] = mig_7series_0_ddr3_ODT;
  assign ddr3_sdram_ras_n = mig_7series_0_ddr3_RAS_N;
  assign ddr3_sdram_reset_n = mig_7series_0_ddr3_RESET_N;
  assign ddr3_sdram_we_n = mig_7series_0_ddr3_WE_N;
  assign reset_1 = reset;
  assign sys_diff_clock_1_CLK_N = sys_diff_clock_clk_n;
  assign sys_diff_clock_1_CLK_P = sys_diff_clock_clk_p;
GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
jtag_dbg_block_axi_mem_intercon_0 axi_mem_intercon
       (.ACLK(mig_7series_0_ui_clk),
        .ARESETN(proc_sys_reset_interconnect_aresetn),
        .M00_ACLK(mig_7series_0_ui_clk),
        .M00_ARESETN(proc_sys_reset_peripheral_aresetn),
        .M00_AXI_araddr(axi_mem_intercon_m00_axi_ARADDR),
        .M00_AXI_arburst(axi_mem_intercon_m00_axi_ARBURST),
        .M00_AXI_arcache(axi_mem_intercon_m00_axi_ARCACHE),
        .M00_AXI_arid(axi_mem_intercon_m00_axi_ARID),
        .M00_AXI_arlen(axi_mem_intercon_m00_axi_ARLEN),
        .M00_AXI_arprot(axi_mem_intercon_m00_axi_ARPROT),
        .M00_AXI_arready(axi_mem_intercon_m00_axi_ARREADY),
        .M00_AXI_arsize(axi_mem_intercon_m00_axi_ARSIZE),
        .M00_AXI_arvalid(axi_mem_intercon_m00_axi_ARVALID),
        .M00_AXI_awaddr(axi_mem_intercon_m00_axi_AWADDR),
        .M00_AXI_awburst(axi_mem_intercon_m00_axi_AWBURST),
        .M00_AXI_awcache(axi_mem_intercon_m00_axi_AWCACHE),
        .M00_AXI_awid(axi_mem_intercon_m00_axi_AWID),
        .M00_AXI_awlen(axi_mem_intercon_m00_axi_AWLEN),
        .M00_AXI_awprot(axi_mem_intercon_m00_axi_AWPROT),
        .M00_AXI_awready(axi_mem_intercon_m00_axi_AWREADY),
        .M00_AXI_awsize(axi_mem_intercon_m00_axi_AWSIZE),
        .M00_AXI_awvalid(axi_mem_intercon_m00_axi_AWVALID),
        .M00_AXI_bready(axi_mem_intercon_m00_axi_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_m00_axi_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_m00_axi_BVALID),
        .M00_AXI_rdata(axi_mem_intercon_m00_axi_RDATA),
        .M00_AXI_rlast(axi_mem_intercon_m00_axi_RLAST),
        .M00_AXI_rready(axi_mem_intercon_m00_axi_RREADY),
        .M00_AXI_rresp(axi_mem_intercon_m00_axi_RRESP),
        .M00_AXI_rvalid(axi_mem_intercon_m00_axi_RVALID),
        .M00_AXI_wdata(axi_mem_intercon_m00_axi_WDATA),
        .M00_AXI_wlast(axi_mem_intercon_m00_axi_WLAST),
        .M00_AXI_wready(axi_mem_intercon_m00_axi_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_m00_axi_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_m00_axi_WVALID),
        .S00_ACLK(mig_7series_0_ui_clk),
        .S00_ARESETN(proc_sys_reset_peripheral_aresetn),
        .S00_AXI_araddr(jtag_axi_debugger_ip_0_m_axi4_mm_ARADDR[29:0]),
        .S00_AXI_arburst(jtag_axi_debugger_ip_0_m_axi4_mm_ARBURST),
        .S00_AXI_arcache(jtag_axi_debugger_ip_0_m_axi4_mm_ARCACHE),
        .S00_AXI_arid(jtag_axi_debugger_ip_0_m_axi4_mm_ARID),
        .S00_AXI_arlen(jtag_axi_debugger_ip_0_m_axi4_mm_ARLEN),
        .S00_AXI_arprot(jtag_axi_debugger_ip_0_m_axi4_mm_ARPROT),
        .S00_AXI_arready(jtag_axi_debugger_ip_0_m_axi4_mm_ARREADY),
        .S00_AXI_arsize(jtag_axi_debugger_ip_0_m_axi4_mm_ARSIZE),
        .S00_AXI_arvalid(jtag_axi_debugger_ip_0_m_axi4_mm_ARVALID),
        .S00_AXI_awaddr(jtag_axi_debugger_ip_0_m_axi4_mm_AWADDR[29:0]),
        .S00_AXI_awburst(jtag_axi_debugger_ip_0_m_axi4_mm_AWBURST),
        .S00_AXI_awcache(jtag_axi_debugger_ip_0_m_axi4_mm_AWCACHE),
        .S00_AXI_awid(jtag_axi_debugger_ip_0_m_axi4_mm_AWID),
        .S00_AXI_awlen(jtag_axi_debugger_ip_0_m_axi4_mm_AWLEN),
        .S00_AXI_awprot(jtag_axi_debugger_ip_0_m_axi4_mm_AWPROT),
        .S00_AXI_awready(jtag_axi_debugger_ip_0_m_axi4_mm_AWREADY),
        .S00_AXI_awsize(jtag_axi_debugger_ip_0_m_axi4_mm_AWSIZE),
        .S00_AXI_awvalid(jtag_axi_debugger_ip_0_m_axi4_mm_AWVALID),
        .S00_AXI_bready(jtag_axi_debugger_ip_0_m_axi4_mm_BREADY),
        .S00_AXI_bresp(jtag_axi_debugger_ip_0_m_axi4_mm_BRESP),
        .S00_AXI_bvalid(jtag_axi_debugger_ip_0_m_axi4_mm_BVALID),
        .S00_AXI_rdata(jtag_axi_debugger_ip_0_m_axi4_mm_RDATA),
        .S00_AXI_rlast(jtag_axi_debugger_ip_0_m_axi4_mm_RLAST),
        .S00_AXI_rready(jtag_axi_debugger_ip_0_m_axi4_mm_RREADY),
        .S00_AXI_rresp(jtag_axi_debugger_ip_0_m_axi4_mm_RRESP),
        .S00_AXI_rvalid(jtag_axi_debugger_ip_0_m_axi4_mm_RVALID),
        .S00_AXI_wdata(jtag_axi_debugger_ip_0_m_axi4_mm_WDATA),
        .S00_AXI_wlast(jtag_axi_debugger_ip_0_m_axi4_mm_WLAST),
        .S00_AXI_wready(jtag_axi_debugger_ip_0_m_axi4_mm_WREADY),
        .S00_AXI_wstrb(jtag_axi_debugger_ip_0_m_axi4_mm_WSTRB),
        .S00_AXI_wvalid(jtag_axi_debugger_ip_0_m_axi4_mm_WVALID));
jtag_dbg_block_jtag_axi_debugger_ip_0_0 jtag_axi_debugger_ip_0
       (.GP_IN_32_A({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .GP_IN_32_B({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .m_axi4_lite_arready(GND_1),
        .m_axi4_lite_awready(GND_1),
        .m_axi4_lite_bresp({GND_1,GND_1}),
        .m_axi4_lite_bvalid(GND_1),
        .m_axi4_lite_rdata({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .m_axi4_lite_rlast(GND_1),
        .m_axi4_lite_rresp({GND_1,GND_1}),
        .m_axi4_lite_rvalid(GND_1),
        .m_axi4_lite_wready(GND_1),
        .m_axi4_mm_araddr(jtag_axi_debugger_ip_0_m_axi4_mm_ARADDR),
        .m_axi4_mm_arburst(jtag_axi_debugger_ip_0_m_axi4_mm_ARBURST),
        .m_axi4_mm_arcache(jtag_axi_debugger_ip_0_m_axi4_mm_ARCACHE),
        .m_axi4_mm_arid(jtag_axi_debugger_ip_0_m_axi4_mm_ARID),
        .m_axi4_mm_arlen(jtag_axi_debugger_ip_0_m_axi4_mm_ARLEN),
        .m_axi4_mm_arprot(jtag_axi_debugger_ip_0_m_axi4_mm_ARPROT),
        .m_axi4_mm_arready(jtag_axi_debugger_ip_0_m_axi4_mm_ARREADY),
        .m_axi4_mm_arsize(jtag_axi_debugger_ip_0_m_axi4_mm_ARSIZE),
        .m_axi4_mm_arvalid(jtag_axi_debugger_ip_0_m_axi4_mm_ARVALID),
        .m_axi4_mm_awaddr(jtag_axi_debugger_ip_0_m_axi4_mm_AWADDR),
        .m_axi4_mm_awburst(jtag_axi_debugger_ip_0_m_axi4_mm_AWBURST),
        .m_axi4_mm_awcache(jtag_axi_debugger_ip_0_m_axi4_mm_AWCACHE),
        .m_axi4_mm_awid(jtag_axi_debugger_ip_0_m_axi4_mm_AWID),
        .m_axi4_mm_awlen(jtag_axi_debugger_ip_0_m_axi4_mm_AWLEN),
        .m_axi4_mm_awprot(jtag_axi_debugger_ip_0_m_axi4_mm_AWPROT),
        .m_axi4_mm_awready(jtag_axi_debugger_ip_0_m_axi4_mm_AWREADY),
        .m_axi4_mm_awsize(jtag_axi_debugger_ip_0_m_axi4_mm_AWSIZE),
        .m_axi4_mm_awvalid(jtag_axi_debugger_ip_0_m_axi4_mm_AWVALID),
        .m_axi4_mm_bready(jtag_axi_debugger_ip_0_m_axi4_mm_BREADY),
        .m_axi4_mm_bresp(jtag_axi_debugger_ip_0_m_axi4_mm_BRESP),
        .m_axi4_mm_bvalid(jtag_axi_debugger_ip_0_m_axi4_mm_BVALID),
        .m_axi4_mm_rdata(jtag_axi_debugger_ip_0_m_axi4_mm_RDATA),
        .m_axi4_mm_rlast(jtag_axi_debugger_ip_0_m_axi4_mm_RLAST),
        .m_axi4_mm_rready(jtag_axi_debugger_ip_0_m_axi4_mm_RREADY),
        .m_axi4_mm_rresp(jtag_axi_debugger_ip_0_m_axi4_mm_RRESP),
        .m_axi4_mm_rvalid(jtag_axi_debugger_ip_0_m_axi4_mm_RVALID),
        .m_axi4_mm_wdata(jtag_axi_debugger_ip_0_m_axi4_mm_WDATA),
        .m_axi4_mm_wlast(jtag_axi_debugger_ip_0_m_axi4_mm_WLAST),
        .m_axi4_mm_wready(jtag_axi_debugger_ip_0_m_axi4_mm_WREADY),
        .m_axi4_mm_wstrb(jtag_axi_debugger_ip_0_m_axi4_mm_WSTRB),
        .m_axi4_mm_wvalid(jtag_axi_debugger_ip_0_m_axi4_mm_WVALID),
        .sys_clk(mig_7series_0_ui_clk));
jtag_dbg_block_mig_7series_0_0 mig_7series_0
       (.aresetn(proc_sys_reset_peripheral_aresetn),
        .ddr3_addr(mig_7series_0_ddr3_ADDR),
        .ddr3_ba(mig_7series_0_ddr3_BA),
        .ddr3_cas_n(mig_7series_0_ddr3_CAS_N),
        .ddr3_ck_n(mig_7series_0_ddr3_CK_N),
        .ddr3_ck_p(mig_7series_0_ddr3_CK_P),
        .ddr3_cke(mig_7series_0_ddr3_CKE),
        .ddr3_cs_n(mig_7series_0_ddr3_CS_N),
        .ddr3_dm(mig_7series_0_ddr3_DM),
        .ddr3_dq(ddr3_sdram_dq[63:0]),
        .ddr3_dqs_n(ddr3_sdram_dqs_n[7:0]),
        .ddr3_dqs_p(ddr3_sdram_dqs_p[7:0]),
        .ddr3_odt(mig_7series_0_ddr3_ODT),
        .ddr3_ras_n(mig_7series_0_ddr3_RAS_N),
        .ddr3_reset_n(mig_7series_0_ddr3_RESET_N),
        .ddr3_we_n(mig_7series_0_ddr3_WE_N),
        .mmcm_locked(mig_7series_0_mmcm_locked),
        .s_axi_araddr(axi_mem_intercon_m00_axi_ARADDR),
        .s_axi_arburst(axi_mem_intercon_m00_axi_ARBURST),
        .s_axi_arcache(axi_mem_intercon_m00_axi_ARCACHE),
        .s_axi_arid(axi_mem_intercon_m00_axi_ARID),
        .s_axi_arlen(axi_mem_intercon_m00_axi_ARLEN),
        .s_axi_arlock(GND_1),
        .s_axi_arprot(axi_mem_intercon_m00_axi_ARPROT),
        .s_axi_arqos({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_arready(axi_mem_intercon_m00_axi_ARREADY),
        .s_axi_arsize(axi_mem_intercon_m00_axi_ARSIZE),
        .s_axi_arvalid(axi_mem_intercon_m00_axi_ARVALID),
        .s_axi_awaddr(axi_mem_intercon_m00_axi_AWADDR),
        .s_axi_awburst(axi_mem_intercon_m00_axi_AWBURST),
        .s_axi_awcache(axi_mem_intercon_m00_axi_AWCACHE),
        .s_axi_awid(axi_mem_intercon_m00_axi_AWID),
        .s_axi_awlen(axi_mem_intercon_m00_axi_AWLEN),
        .s_axi_awlock(GND_1),
        .s_axi_awprot(axi_mem_intercon_m00_axi_AWPROT),
        .s_axi_awqos({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_awready(axi_mem_intercon_m00_axi_AWREADY),
        .s_axi_awsize(axi_mem_intercon_m00_axi_AWSIZE),
        .s_axi_awvalid(axi_mem_intercon_m00_axi_AWVALID),
        .s_axi_bready(axi_mem_intercon_m00_axi_BREADY),
        .s_axi_bresp(axi_mem_intercon_m00_axi_BRESP),
        .s_axi_bvalid(axi_mem_intercon_m00_axi_BVALID),
        .s_axi_rdata(axi_mem_intercon_m00_axi_RDATA),
        .s_axi_rlast(axi_mem_intercon_m00_axi_RLAST),
        .s_axi_rready(axi_mem_intercon_m00_axi_RREADY),
        .s_axi_rresp(axi_mem_intercon_m00_axi_RRESP),
        .s_axi_rvalid(axi_mem_intercon_m00_axi_RVALID),
        .s_axi_wdata(axi_mem_intercon_m00_axi_WDATA),
        .s_axi_wlast(axi_mem_intercon_m00_axi_WLAST),
        .s_axi_wready(axi_mem_intercon_m00_axi_WREADY),
        .s_axi_wstrb(axi_mem_intercon_m00_axi_WSTRB),
        .s_axi_wvalid(axi_mem_intercon_m00_axi_WVALID),
        .sys_clk_n(sys_diff_clock_1_CLK_N),
        .sys_clk_p(sys_diff_clock_1_CLK_P),
        .sys_rst(reset_1),
        .ui_clk(mig_7series_0_ui_clk),
        .ui_clk_sync_rst(mig_7series_0_ui_clk_sync_rst));
jtag_dbg_block_proc_sys_reset_0 proc_sys_reset
       (.aux_reset_in(VCC_1),
        .dcm_locked(mig_7series_0_mmcm_locked),
        .ext_reset_in(mig_7series_0_ui_clk_sync_rst),
        .interconnect_aresetn(proc_sys_reset_interconnect_aresetn),
        .mb_debug_sys_rst(GND_1),
        .peripheral_aresetn(proc_sys_reset_peripheral_aresetn),
        .slowest_sync_clk(mig_7series_0_ui_clk));
endmodule

module jtag_dbg_block_axi_mem_intercon_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [29:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [3:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [29:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [3:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [29:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [3:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [29:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [3:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire axi_mem_intercon_ACLK_net;
  wire [0:0]axi_mem_intercon_ARESETN_net;
  wire [29:0]axi_mem_intercon_to_s00_couplers_ARADDR;
  wire [1:0]axi_mem_intercon_to_s00_couplers_ARBURST;
  wire [3:0]axi_mem_intercon_to_s00_couplers_ARCACHE;
  wire [3:0]axi_mem_intercon_to_s00_couplers_ARID;
  wire [7:0]axi_mem_intercon_to_s00_couplers_ARLEN;
  wire [2:0]axi_mem_intercon_to_s00_couplers_ARPROT;
  wire axi_mem_intercon_to_s00_couplers_ARREADY;
  wire [2:0]axi_mem_intercon_to_s00_couplers_ARSIZE;
  wire axi_mem_intercon_to_s00_couplers_ARVALID;
  wire [29:0]axi_mem_intercon_to_s00_couplers_AWADDR;
  wire [1:0]axi_mem_intercon_to_s00_couplers_AWBURST;
  wire [3:0]axi_mem_intercon_to_s00_couplers_AWCACHE;
  wire [3:0]axi_mem_intercon_to_s00_couplers_AWID;
  wire [7:0]axi_mem_intercon_to_s00_couplers_AWLEN;
  wire [2:0]axi_mem_intercon_to_s00_couplers_AWPROT;
  wire axi_mem_intercon_to_s00_couplers_AWREADY;
  wire [2:0]axi_mem_intercon_to_s00_couplers_AWSIZE;
  wire axi_mem_intercon_to_s00_couplers_AWVALID;
  wire axi_mem_intercon_to_s00_couplers_BREADY;
  wire [1:0]axi_mem_intercon_to_s00_couplers_BRESP;
  wire axi_mem_intercon_to_s00_couplers_BVALID;
  wire [511:0]axi_mem_intercon_to_s00_couplers_RDATA;
  wire axi_mem_intercon_to_s00_couplers_RLAST;
  wire axi_mem_intercon_to_s00_couplers_RREADY;
  wire [1:0]axi_mem_intercon_to_s00_couplers_RRESP;
  wire axi_mem_intercon_to_s00_couplers_RVALID;
  wire [511:0]axi_mem_intercon_to_s00_couplers_WDATA;
  wire axi_mem_intercon_to_s00_couplers_WLAST;
  wire axi_mem_intercon_to_s00_couplers_WREADY;
  wire [63:0]axi_mem_intercon_to_s00_couplers_WSTRB;
  wire axi_mem_intercon_to_s00_couplers_WVALID;
  wire s00_aclk_1;
  wire [0:0]s00_aresetn_1;
  wire [29:0]s00_couplers_to_axi_mem_intercon_ARADDR;
  wire [1:0]s00_couplers_to_axi_mem_intercon_ARBURST;
  wire [3:0]s00_couplers_to_axi_mem_intercon_ARCACHE;
  wire [3:0]s00_couplers_to_axi_mem_intercon_ARID;
  wire [7:0]s00_couplers_to_axi_mem_intercon_ARLEN;
  wire [2:0]s00_couplers_to_axi_mem_intercon_ARPROT;
  wire s00_couplers_to_axi_mem_intercon_ARREADY;
  wire [2:0]s00_couplers_to_axi_mem_intercon_ARSIZE;
  wire s00_couplers_to_axi_mem_intercon_ARVALID;
  wire [29:0]s00_couplers_to_axi_mem_intercon_AWADDR;
  wire [1:0]s00_couplers_to_axi_mem_intercon_AWBURST;
  wire [3:0]s00_couplers_to_axi_mem_intercon_AWCACHE;
  wire [3:0]s00_couplers_to_axi_mem_intercon_AWID;
  wire [7:0]s00_couplers_to_axi_mem_intercon_AWLEN;
  wire [2:0]s00_couplers_to_axi_mem_intercon_AWPROT;
  wire s00_couplers_to_axi_mem_intercon_AWREADY;
  wire [2:0]s00_couplers_to_axi_mem_intercon_AWSIZE;
  wire s00_couplers_to_axi_mem_intercon_AWVALID;
  wire s00_couplers_to_axi_mem_intercon_BREADY;
  wire [1:0]s00_couplers_to_axi_mem_intercon_BRESP;
  wire s00_couplers_to_axi_mem_intercon_BVALID;
  wire [511:0]s00_couplers_to_axi_mem_intercon_RDATA;
  wire s00_couplers_to_axi_mem_intercon_RLAST;
  wire s00_couplers_to_axi_mem_intercon_RREADY;
  wire [1:0]s00_couplers_to_axi_mem_intercon_RRESP;
  wire s00_couplers_to_axi_mem_intercon_RVALID;
  wire [511:0]s00_couplers_to_axi_mem_intercon_WDATA;
  wire s00_couplers_to_axi_mem_intercon_WLAST;
  wire s00_couplers_to_axi_mem_intercon_WREADY;
  wire [63:0]s00_couplers_to_axi_mem_intercon_WSTRB;
  wire s00_couplers_to_axi_mem_intercon_WVALID;

  assign M00_AXI_araddr[29:0] = s00_couplers_to_axi_mem_intercon_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_axi_mem_intercon_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_axi_mem_intercon_ARCACHE;
  assign M00_AXI_arid[3:0] = s00_couplers_to_axi_mem_intercon_ARID;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_axi_mem_intercon_ARLEN;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_mem_intercon_ARPROT;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_axi_mem_intercon_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_axi_mem_intercon_ARVALID;
  assign M00_AXI_awaddr[29:0] = s00_couplers_to_axi_mem_intercon_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_mem_intercon_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_mem_intercon_AWCACHE;
  assign M00_AXI_awid[3:0] = s00_couplers_to_axi_mem_intercon_AWID;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_axi_mem_intercon_AWLEN;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_mem_intercon_AWPROT;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_mem_intercon_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_mem_intercon_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_mem_intercon_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_mem_intercon_RREADY;
  assign M00_AXI_wdata[511:0] = s00_couplers_to_axi_mem_intercon_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_mem_intercon_WLAST;
  assign M00_AXI_wstrb[63:0] = s00_couplers_to_axi_mem_intercon_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_mem_intercon_WVALID;
  assign S00_AXI_arready = axi_mem_intercon_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_mem_intercon_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_mem_intercon_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_mem_intercon_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[511:0] = axi_mem_intercon_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_mem_intercon_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_mem_intercon_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_mem_intercon_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_mem_intercon_to_s00_couplers_WREADY;
  assign axi_mem_intercon_ACLK_net = M00_ACLK;
  assign axi_mem_intercon_ARESETN_net = M00_ARESETN[0];
  assign axi_mem_intercon_to_s00_couplers_ARADDR = S00_AXI_araddr[29:0];
  assign axi_mem_intercon_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_mem_intercon_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_mem_intercon_to_s00_couplers_ARID = S00_AXI_arid[3:0];
  assign axi_mem_intercon_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_mem_intercon_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_mem_intercon_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_mem_intercon_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_mem_intercon_to_s00_couplers_AWADDR = S00_AXI_awaddr[29:0];
  assign axi_mem_intercon_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_mem_intercon_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_mem_intercon_to_s00_couplers_AWID = S00_AXI_awid[3:0];
  assign axi_mem_intercon_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_mem_intercon_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_mem_intercon_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_mem_intercon_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_mem_intercon_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_mem_intercon_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_mem_intercon_to_s00_couplers_WDATA = S00_AXI_wdata[511:0];
  assign axi_mem_intercon_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_mem_intercon_to_s00_couplers_WSTRB = S00_AXI_wstrb[63:0];
  assign axi_mem_intercon_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_aclk_1 = S00_ACLK;
  assign s00_aresetn_1 = S00_ARESETN[0];
  assign s00_couplers_to_axi_mem_intercon_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_mem_intercon_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_mem_intercon_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_mem_intercon_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_mem_intercon_RDATA = M00_AXI_rdata[511:0];
  assign s00_couplers_to_axi_mem_intercon_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_axi_mem_intercon_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_mem_intercon_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_mem_intercon_WREADY = M00_AXI_wready;
s00_couplers_imp_5VZGPS s00_couplers
       (.M_ACLK(axi_mem_intercon_ACLK_net),
        .M_ARESETN(axi_mem_intercon_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_mem_intercon_ARADDR),
        .M_AXI_arburst(s00_couplers_to_axi_mem_intercon_ARBURST),
        .M_AXI_arcache(s00_couplers_to_axi_mem_intercon_ARCACHE),
        .M_AXI_arid(s00_couplers_to_axi_mem_intercon_ARID),
        .M_AXI_arlen(s00_couplers_to_axi_mem_intercon_ARLEN),
        .M_AXI_arprot(s00_couplers_to_axi_mem_intercon_ARPROT),
        .M_AXI_arready(s00_couplers_to_axi_mem_intercon_ARREADY),
        .M_AXI_arsize(s00_couplers_to_axi_mem_intercon_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_axi_mem_intercon_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_mem_intercon_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_mem_intercon_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_mem_intercon_AWCACHE),
        .M_AXI_awid(s00_couplers_to_axi_mem_intercon_AWID),
        .M_AXI_awlen(s00_couplers_to_axi_mem_intercon_AWLEN),
        .M_AXI_awprot(s00_couplers_to_axi_mem_intercon_AWPROT),
        .M_AXI_awready(s00_couplers_to_axi_mem_intercon_AWREADY),
        .M_AXI_awsize(s00_couplers_to_axi_mem_intercon_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_mem_intercon_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_mem_intercon_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_mem_intercon_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_mem_intercon_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_mem_intercon_RDATA),
        .M_AXI_rlast(s00_couplers_to_axi_mem_intercon_RLAST),
        .M_AXI_rready(s00_couplers_to_axi_mem_intercon_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_mem_intercon_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_mem_intercon_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_mem_intercon_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_mem_intercon_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_mem_intercon_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_mem_intercon_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_mem_intercon_WVALID),
        .S_ACLK(s00_aclk_1),
        .S_ARESETN(s00_aresetn_1),
        .S_AXI_araddr(axi_mem_intercon_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_intercon_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_intercon_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_mem_intercon_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_mem_intercon_to_s00_couplers_ARLEN),
        .S_AXI_arprot(axi_mem_intercon_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_mem_intercon_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_mem_intercon_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_intercon_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_mem_intercon_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_intercon_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_intercon_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_mem_intercon_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_mem_intercon_to_s00_couplers_AWLEN),
        .S_AXI_awprot(axi_mem_intercon_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_mem_intercon_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_mem_intercon_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_intercon_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_mem_intercon_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_mem_intercon_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_intercon_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_mem_intercon_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_mem_intercon_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_mem_intercon_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_mem_intercon_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_intercon_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_mem_intercon_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_mem_intercon_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_mem_intercon_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_intercon_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_intercon_to_s00_couplers_WVALID));
endmodule

module s00_couplers_imp_5VZGPS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [29:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [29:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [29:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [29:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [29:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [1:0]s00_couplers_to_s00_couplers_ARBURST;
  wire [3:0]s00_couplers_to_s00_couplers_ARCACHE;
  wire [3:0]s00_couplers_to_s00_couplers_ARID;
  wire [7:0]s00_couplers_to_s00_couplers_ARLEN;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire [2:0]s00_couplers_to_s00_couplers_ARSIZE;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [29:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [1:0]s00_couplers_to_s00_couplers_AWBURST;
  wire [3:0]s00_couplers_to_s00_couplers_AWCACHE;
  wire [3:0]s00_couplers_to_s00_couplers_AWID;
  wire [7:0]s00_couplers_to_s00_couplers_AWLEN;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire [2:0]s00_couplers_to_s00_couplers_AWSIZE;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [511:0]s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RLAST;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [511:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WLAST;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [63:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[29:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[3:0] = s00_couplers_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = s00_couplers_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[29:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_couplers_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_couplers_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[3:0] = s00_couplers_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_couplers_to_s00_couplers_AWLEN;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = s00_couplers_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_couplers_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[511:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[29:0];
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_couplers_ARID = S_AXI_arid[3:0];
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[29:0];
  assign s00_couplers_to_s00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_couplers_AWID = S_AXI_awid[3:0];
  assign s00_couplers_to_s00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[511:0];
  assign s00_couplers_to_s00_couplers_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[63:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule
