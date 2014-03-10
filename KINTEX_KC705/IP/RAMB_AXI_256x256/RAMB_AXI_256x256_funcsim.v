// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.3 (lin64) Build 329390 Wed Oct 16 18:26:55 MDT 2013
// Date        : Thu Nov 14 09:21:06 2013
// Host        : centosMC running 64-bit CentOS release 6.4 (Final)
// Command     : write_verilog -force -mode funcsim
//               /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/IP/RAMB_AXI_256x256/RAMB_AXI_256x256_funcsim.v
// Design      : RAMB_AXI_256x256
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_0,Vivado 2013.3" *) (* CHECK_LICENSE_TYPE = "RAMB_AXI_256x256,blk_mem_gen_v8_0,{}" *) 
(* core_generation_info = "RAMB_AXI_256x256,blk_mem_gen_v8_0,{x_ipProduct=Vivado 2013.3,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=blk_mem_gen,x_ipVersion=8.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,C_FAMILY=virtex7,C_XDEVICEFAMILY=virtex7,C_ELABORATION_DIR=./,C_INTERFACE_TYPE=1,C_AXI_TYPE=1,C_AXI_SLAVE_TYPE=0,C_HAS_AXI_ID=1,C_AXI_ID_WIDTH=4,C_MEM_TYPE=1,C_BYTE_SIZE=8,C_ALGORITHM=1,C_PRIM_TYPE=1,C_LOAD_INIT_FILE=0,C_INIT_FILE_NAME=no_coe_file_loaded,C_INIT_FILE=RAMB_AXI_256x256.mem,C_USE_DEFAULT_DATA=0,C_DEFAULT_DATA=0,C_RST_TYPE=ASYNC,C_HAS_RSTA=0,C_RST_PRIORITY_A=CE,C_RSTRAM_A=0,C_INITA_VAL=0,C_HAS_ENA=1,C_HAS_REGCEA=0,C_USE_BYTE_WEA=1,C_WEA_WIDTH=32,C_WRITE_MODE_A=READ_FIRST,C_WRITE_WIDTH_A=256,C_READ_WIDTH_A=256,C_WRITE_DEPTH_A=256,C_READ_DEPTH_A=256,C_ADDRA_WIDTH=8,C_HAS_RSTB=1,C_RST_PRIORITY_B=CE,C_RSTRAM_B=0,C_INITB_VAL=0,C_HAS_ENB=1,C_HAS_REGCEB=0,C_USE_BYTE_WEB=1,C_WEB_WIDTH=32,C_WRITE_MODE_B=READ_FIRST,C_WRITE_WIDTH_B=256,C_READ_WIDTH_B=256,C_WRITE_DEPTH_B=256,C_READ_DEPTH_B=256,C_ADDRB_WIDTH=8,C_HAS_MEM_OUTPUT_REGS_A=0,C_HAS_MEM_OUTPUT_REGS_B=0,C_HAS_MUX_OUTPUT_REGS_A=0,C_HAS_MUX_OUTPUT_REGS_B=0,C_MUX_PIPELINE_STAGES=0,C_HAS_SOFTECC_INPUT_REGS_A=0,C_HAS_SOFTECC_OUTPUT_REGS_B=0,C_USE_SOFTECC=0,C_USE_ECC=0,C_HAS_INJECTERR=0,C_SIM_COLLISION_CHECK=ALL,C_COMMON_CLK=1,C_ENABLE_32BIT_ADDRESS=0,C_DISABLE_WARN_BHV_COLL=0,C_DISABLE_WARN_BHV_RANGE=0,C_USE_BRAM_BLOCK=0,C_CTRL_ECC_ALGO=NONE}" *) 
(* NotValidForBitStream *)
module RAMB_AXI_256x256
   (s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready);
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;

  wire \<const0> ;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [3:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [255:0]s_axi_rdata;
  wire [3:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [255:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [31:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [255:0]NLW_U0_douta_UNCONNECTED;
  wire [255:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;

GND GND
       (.G(\<const0> ));
(* C_ADDRA_WIDTH = "8" *) 
   (* C_ADDRB_WIDTH = "8" *) 
   (* C_ALGORITHM = "1" *) 
   (* C_AXI_ID_WIDTH = "4" *) 
   (* C_AXI_SLAVE_TYPE = "0" *) 
   (* C_AXI_TYPE = "1" *) 
   (* C_BYTE_SIZE = "8" *) 
   (* C_COMMON_CLK = "1" *) 
   (* C_CTRL_ECC_ALGO = "NONE" *) 
   (* C_DEFAULT_DATA = "0" *) 
   (* C_DISABLE_WARN_BHV_COLL = "0" *) 
   (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
   (* C_ELABORATION_DIR = "./" *) 
   (* C_ENABLE_32BIT_ADDRESS = "0" *) 
   (* C_FAMILY = "virtex7" *) 
   (* C_HAS_AXI_ID = "1" *) 
   (* C_HAS_ENA = "1" *) 
   (* C_HAS_ENB = "1" *) 
   (* C_HAS_INJECTERR = "0" *) 
   (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
   (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
   (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
   (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
   (* C_HAS_REGCEA = "0" *) 
   (* C_HAS_REGCEB = "0" *) 
   (* C_HAS_RSTA = "0" *) 
   (* C_HAS_RSTB = "1" *) 
   (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
   (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
   (* C_INITA_VAL = "0" *) 
   (* C_INITB_VAL = "0" *) 
   (* C_INIT_FILE = "RAMB_AXI_256x256.mem" *) 
   (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
   (* C_INTERFACE_TYPE = "1" *) 
   (* C_LOAD_INIT_FILE = "0" *) 
   (* C_MEM_TYPE = "1" *) 
   (* C_MUX_PIPELINE_STAGES = "0" *) 
   (* C_PRIM_TYPE = "1" *) 
   (* C_READ_DEPTH_A = "256" *) 
   (* C_READ_DEPTH_B = "256" *) 
   (* C_READ_WIDTH_A = "256" *) 
   (* C_READ_WIDTH_B = "256" *) 
   (* C_RSTRAM_A = "0" *) 
   (* C_RSTRAM_B = "0" *) 
   (* C_RST_PRIORITY_A = "CE" *) 
   (* C_RST_PRIORITY_B = "CE" *) 
   (* C_RST_TYPE = "ASYNC" *) 
   (* C_SIM_COLLISION_CHECK = "ALL" *) 
   (* C_USE_BRAM_BLOCK = "0" *) 
   (* C_USE_BYTE_WEA = "1" *) 
   (* C_USE_BYTE_WEB = "1" *) 
   (* C_USE_DEFAULT_DATA = "0" *) 
   (* C_USE_ECC = "0" *) 
   (* C_USE_SOFTECC = "0" *) 
   (* C_WEA_WIDTH = "32" *) 
   (* C_WEB_WIDTH = "32" *) 
   (* C_WRITE_DEPTH_A = "256" *) 
   (* C_WRITE_DEPTH_B = "256" *) 
   (* C_WRITE_MODE_A = "READ_FIRST" *) 
   (* C_WRITE_MODE_B = "READ_FIRST" *) 
   (* C_WRITE_WIDTH_A = "256" *) 
   (* C_WRITE_WIDTH_B = "256" *) 
   (* C_XDEVICEFAMILY = "virtex7" *) 
   (* DONT_TOUCH *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   RAMB_AXI_256x256blk_mem_gen_v8_0 U0
       (.addra({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .addrb({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .clka(\<const0> ),
        .clkb(\<const0> ),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .dina({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .dinb({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .douta(NLW_U0_douta_UNCONNECTED[255:0]),
        .doutb(NLW_U0_doutb_UNCONNECTED[255:0]),
        .ena(\<const0> ),
        .enb(\<const0> ),
        .injectdbiterr(\<const0> ),
        .injectsbiterr(\<const0> ),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(\<const0> ),
        .regceb(\<const0> ),
        .rsta(\<const0> ),
        .rstb(\<const0> ),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(\<const0> ),
        .s_axi_injectsbiterr(\<const0> ),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .wea({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .web({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }));
endmodule

module RAMB_AXI_256x256blk_mem_axi_read_fsm
   (s_axi_arready,
    AR,
    O1,
    s_axi_rlast,
    O2,
    O3,
    O4,
    O5,
    O6,
    Q,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    O15,
    E,
    O16,
    O17,
    ADDRARDADDR,
    O18,
    O19,
    O20,
    O21,
    O22,
    O23,
    s_aclk,
    s_axi_araddr,
    axis_address_full_r,
    D,
    I1,
    I2,
    s_axi_arvalid,
    s_axi_arlen,
    I3,
    s_axi_rready,
    s_axi_arsize,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    incr_en_r,
    p_0_in3_in,
    I10,
    I11,
    I12,
    s_axi_arid,
    I13,
    I14,
    I15,
    I16,
    I17,
    I18,
    s_axi_arburst,
    s_aresetn);
  output s_axi_arready;
  output [0:0]AR;
  output O1;
  output s_axi_rlast;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  output [0:0]Q;
  output O7;
  output O8;
  output [8:0]O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output [7:0]O15;
  output [0:0]E;
  output [0:0]O16;
  output [7:0]O17;
  output [7:0]ADDRARDADDR;
  output [0:0]O18;
  output [3:0]O19;
  output O20;
  output [0:0]O21;
  output [0:0]O22;
  output O23;
  input s_aclk;
  input [12:0]s_axi_araddr;
  input [12:0]axis_address_full_r;
  input [1:0]D;
  input [5:0]I1;
  input I2;
  input s_axi_arvalid;
  input [7:0]s_axi_arlen;
  input [7:0]I3;
  input s_axi_rready;
  input [2:0]s_axi_arsize;
  input I4;
  input I5;
  input [11:0]I6;
  input I7;
  input I8;
  input I9;
  input incr_en_r;
  input p_0_in3_in;
  input I10;
  input I11;
  input [3:0]I12;
  input [3:0]s_axi_arid;
  input I13;
  input I14;
  input I15;
  input I16;
  input I17;
  input I18;
  input [1:0]s_axi_arburst;
  input s_aresetn;

  wire \<const1> ;
  wire [7:0]ADDRARDADDR;
  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire [5:0]I1;
  wire I10;
  wire I11;
  wire [3:0]I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I17;
  wire I18;
  wire I2;
  wire [7:0]I3;
  wire I4;
  wire I5;
  wire [11:0]I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire [7:0]O15;
  wire [0:0]O16;
  wire [7:0]O17;
  wire [0:0]O18;
  wire [3:0]O19;
  wire O2;
  wire O20;
  wire [0:0]O21;
  wire [0:0]O22;
  wire O23;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire [8:0]O9;
  wire [0:0]Q;
  wire ar_ready_c;
  wire [12:0]axis_address_full_r;
  wire incr_en_r;
  wire \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20 ;
  wire \n_0_gaxi_full_sm.S_AXI_RLAST_i_1 ;
  wire \n_0_gaxi_full_sm.ar_ready_r_i_2 ;
  wire \n_0_gaxi_full_sm.ar_ready_r_i_3 ;
  wire \n_0_gaxi_full_sm.ar_ready_r_i_4 ;
  wire \n_0_gaxi_full_sm.ar_ready_r_i_5 ;
  wire \n_0_gaxi_full_sm.arlen_cntr[2]_i_2 ;
  wire \n_0_gaxi_full_sm.arlen_cntr[3]_i_2 ;
  wire \n_0_gaxi_full_sm.arlen_cntr[3]_i_3 ;
  wire \n_0_gaxi_full_sm.arlen_cntr[4]_i_2 ;
  wire \n_0_gaxi_full_sm.arlen_cntr[5]_i_2 ;
  wire \n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ;
  wire \n_0_gaxi_full_sm.arlen_cntr[7]_i_4 ;
  wire \n_0_gaxi_full_sm.arlen_cntr[7]_i_5 ;
  wire \n_0_gaxi_full_sm.arlen_cntr[7]_i_6 ;
  wire \n_0_gaxi_full_sm.arlen_cntr[7]_i_7 ;
  wire \n_0_gaxi_full_sm.arlen_cntr[7]_i_8 ;
  wire \n_0_gaxi_full_sm.arlen_cntr[7]_i_9 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_5 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_6 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_7 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_8 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_9 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_5 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_6 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_7 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_2 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_3 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_4 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_10 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_11 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_12 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_5 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_6 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_7 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_8 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_9 ;
  wire \n_0_gaxi_full_sm.outstanding_read_r_i_1 ;
  wire \n_0_gaxi_full_sm.r_valid_r_i_1 ;
  wire \n_0_gaxi_full_sm.r_valid_r_i_2 ;
  wire [1:0]next_state;
  wire outstanding_read_r;
  wire p_0_in3_in;
  wire [0:0]present_state;
  wire r_last_c;
  wire s_aclk;
  wire s_aresetn;
  wire [12:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;

LUT6 #(
    .INIT(64'hFCAC0404FCACFCAC)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_1 
       (.I0(present_state),
        .I1(s_axi_arvalid),
        .I2(Q),
        .I3(outstanding_read_r),
        .I4(s_axi_rready),
        .I5(O1),
        .O(O20));
LUT6 #(
    .INIT(64'h9CCCDDDD9CCC8888)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_10 
       (.I0(I6[4]),
        .I1(axis_address_full_r[5]),
        .I2(incr_en_r),
        .I3(p_0_in3_in),
        .I4(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20 ),
        .I5(s_axi_araddr[5]),
        .O(ADDRARDADDR[0]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'hAAAAAA08)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20 
       (.I0(Q),
        .I1(O1),
        .I2(s_axi_rready),
        .I3(outstanding_read_r),
        .I4(present_state),
        .O(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20 ));
LUT6 #(
    .INIT(64'h9CCCDDDD9CCC8888)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_3 
       (.I0(I6[11]),
        .I1(axis_address_full_r[12]),
        .I2(I7),
        .I3(axis_address_full_r[11]),
        .I4(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20 ),
        .I5(s_axi_araddr[12]),
        .O(ADDRARDADDR[7]));
LUT5 #(
    .INIT(32'h9CDD9C88)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_4 
       (.I0(I6[10]),
        .I1(axis_address_full_r[11]),
        .I2(I7),
        .I3(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20 ),
        .I4(s_axi_araddr[11]),
        .O(ADDRARDADDR[6]));
LUT6 #(
    .INIT(64'h9CCCDDDD9CCC8888)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_5 
       (.I0(I6[9]),
        .I1(axis_address_full_r[10]),
        .I2(I8),
        .I3(axis_address_full_r[9]),
        .I4(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20 ),
        .I5(s_axi_araddr[10]),
        .O(ADDRARDADDR[5]));
LUT5 #(
    .INIT(32'h9CDD9C88)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_6 
       (.I0(I6[8]),
        .I1(axis_address_full_r[9]),
        .I2(I8),
        .I3(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20 ),
        .I4(s_axi_araddr[9]),
        .O(ADDRARDADDR[4]));
LUT5 #(
    .INIT(32'h9CDD9C88)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_7 
       (.I0(I6[7]),
        .I1(axis_address_full_r[8]),
        .I2(I9),
        .I3(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20 ),
        .I4(s_axi_araddr[8]),
        .O(ADDRARDADDR[3]));
LUT5 #(
    .INIT(32'h9CDD9C88)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_8 
       (.I0(I6[6]),
        .I1(axis_address_full_r[7]),
        .I2(I11),
        .I3(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20 ),
        .I4(s_axi_araddr[7]),
        .O(ADDRARDADDR[2]));
LUT6 #(
    .INIT(64'h9CCCDDDD9CCC8888)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_9 
       (.I0(I6[5]),
        .I1(axis_address_full_r[6]),
        .I2(I10),
        .I3(axis_address_full_r[5]),
        .I4(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20 ),
        .I5(s_axi_araddr[6]),
        .O(ADDRARDADDR[1]));
VCC VCC
       (.P(\<const1> ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT4 #(
    .INIT(16'hBA8A)) 
     \gaxi_full_sm.S_AXI_RLAST_i_1 
       (.I0(r_last_c),
        .I1(s_axi_rready),
        .I2(O1),
        .I3(s_axi_rlast),
        .O(\n_0_gaxi_full_sm.S_AXI_RLAST_i_1 ));
LUT6 #(
    .INIT(64'h88B833FF88B80000)) 
     \gaxi_full_sm.S_AXI_RLAST_i_2 
       (.I0(\n_0_gaxi_full_sm.ar_ready_r_i_2 ),
        .I1(present_state),
        .I2(outstanding_read_r),
        .I3(\n_0_gaxi_full_sm.ar_ready_r_i_3 ),
        .I4(Q),
        .I5(\n_0_gaxi_full_sm.r_valid_r_i_2 ),
        .O(r_last_c));
FDCE \gaxi_full_sm.S_AXI_RLAST_reg 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AR),
        .D(\n_0_gaxi_full_sm.S_AXI_RLAST_i_1 ),
        .Q(s_axi_rlast));
LUT6 #(
    .INIT(64'hFFFFFFFFAA030000)) 
     \gaxi_full_sm.ar_ready_r_i_1 
       (.I0(\n_0_gaxi_full_sm.ar_ready_r_i_2 ),
        .I1(\n_0_gaxi_full_sm.ar_ready_r_i_3 ),
        .I2(outstanding_read_r),
        .I3(present_state),
        .I4(Q),
        .I5(\n_0_gaxi_full_sm.ar_ready_r_i_4 ),
        .O(ar_ready_c));
LUT4 #(
    .INIT(16'h0100)) 
     \gaxi_full_sm.ar_ready_r_i_2 
       (.I0(I3[0]),
        .I1(I3[1]),
        .I2(I3[2]),
        .I3(\n_0_gaxi_full_sm.ar_ready_r_i_5 ),
        .O(\n_0_gaxi_full_sm.ar_ready_r_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \gaxi_full_sm.ar_ready_r_i_3 
       (.I0(O1),
        .I1(s_axi_rready),
        .O(\n_0_gaxi_full_sm.ar_ready_r_i_3 ));
LUT6 #(
    .INIT(64'h3030100033331133)) 
     \gaxi_full_sm.ar_ready_r_i_4 
       (.I0(O1),
        .I1(Q),
        .I2(\n_0_gaxi_full_sm.r_valid_r_i_2 ),
        .I3(present_state),
        .I4(s_axi_rready),
        .I5(s_axi_arvalid),
        .O(\n_0_gaxi_full_sm.ar_ready_r_i_4 ));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     \gaxi_full_sm.ar_ready_r_i_5 
       (.I0(I3[7]),
        .I1(I3[3]),
        .I2(s_axi_rready),
        .I3(I3[5]),
        .I4(I3[6]),
        .I5(I3[4]),
        .O(\n_0_gaxi_full_sm.ar_ready_r_i_5 ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.ar_ready_r_reg 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AR),
        .D(ar_ready_c),
        .Q(s_axi_arready));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'h33335C55)) 
     \gaxi_full_sm.arlen_cntr[0]_i_1 
       (.I0(I3[0]),
        .I1(s_axi_arlen[0]),
        .I2(Q),
        .I3(s_axi_arvalid),
        .I4(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .O(O15[0]));
LUT6 #(
    .INIT(64'hF1E0E0F13D2C2C3D)) 
     \gaxi_full_sm.arlen_cntr[1]_i_1 
       (.I0(O8),
        .I1(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I2(s_axi_arlen[1]),
        .I3(I3[1]),
        .I4(I3[0]),
        .I5(s_axi_arlen[0]),
        .O(O15[1]));
LUT6 #(
    .INIT(64'h04FF0FF4F00BFB00)) 
     \gaxi_full_sm.arlen_cntr[2]_i_1 
       (.I0(Q),
        .I1(s_axi_arvalid),
        .I2(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I3(\n_0_gaxi_full_sm.arlen_cntr[2]_i_2 ),
        .I4(I3[2]),
        .I5(s_axi_arlen[2]),
        .O(O15[2]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h00035503)) 
     \gaxi_full_sm.arlen_cntr[2]_i_2 
       (.I0(s_axi_arlen[1]),
        .I1(I3[1]),
        .I2(I3[0]),
        .I3(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I4(s_axi_arlen[0]),
        .O(\n_0_gaxi_full_sm.arlen_cntr[2]_i_2 ));
LUT6 #(
    .INIT(64'h04FF0FF4F00BFB00)) 
     \gaxi_full_sm.arlen_cntr[3]_i_1 
       (.I0(Q),
        .I1(s_axi_arvalid),
        .I2(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I3(\n_0_gaxi_full_sm.arlen_cntr[3]_i_2 ),
        .I4(I3[3]),
        .I5(s_axi_arlen[3]),
        .O(O15[3]));
LUT6 #(
    .INIT(64'h0000001105050011)) 
     \gaxi_full_sm.arlen_cntr[3]_i_2 
       (.I0(\n_0_gaxi_full_sm.arlen_cntr[3]_i_3 ),
        .I1(I3[1]),
        .I2(s_axi_arlen[1]),
        .I3(I3[2]),
        .I4(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I5(s_axi_arlen[2]),
        .O(\n_0_gaxi_full_sm.arlen_cntr[3]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gaxi_full_sm.arlen_cntr[3]_i_3 
       (.I0(s_axi_arlen[0]),
        .I1(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I2(I3[0]),
        .O(\n_0_gaxi_full_sm.arlen_cntr[3]_i_3 ));
LUT6 #(
    .INIT(64'h04FF0FF4F00BFB00)) 
     \gaxi_full_sm.arlen_cntr[4]_i_1 
       (.I0(Q),
        .I1(s_axi_arvalid),
        .I2(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I3(\n_0_gaxi_full_sm.arlen_cntr[4]_i_2 ),
        .I4(I3[4]),
        .I5(s_axi_arlen[4]),
        .O(O15[4]));
LUT6 #(
    .INIT(64'h0000003050500030)) 
     \gaxi_full_sm.arlen_cntr[4]_i_2 
       (.I0(s_axi_arlen[2]),
        .I1(I3[2]),
        .I2(\n_0_gaxi_full_sm.arlen_cntr[2]_i_2 ),
        .I3(I3[3]),
        .I4(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I5(s_axi_arlen[3]),
        .O(\n_0_gaxi_full_sm.arlen_cntr[4]_i_2 ));
LUT6 #(
    .INIT(64'h04FF0FF4F00BFB00)) 
     \gaxi_full_sm.arlen_cntr[5]_i_1 
       (.I0(Q),
        .I1(s_axi_arvalid),
        .I2(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I3(\n_0_gaxi_full_sm.arlen_cntr[5]_i_2 ),
        .I4(I3[5]),
        .I5(s_axi_arlen[5]),
        .O(O15[5]));
LUT6 #(
    .INIT(64'h0000000000044404)) 
     \gaxi_full_sm.arlen_cntr[5]_i_2 
       (.I0(\n_0_gaxi_full_sm.arlen_cntr[7]_i_8 ),
        .I1(\n_0_gaxi_full_sm.arlen_cntr[2]_i_2 ),
        .I2(I3[2]),
        .I3(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I4(s_axi_arlen[2]),
        .I5(\n_0_gaxi_full_sm.arlen_cntr[7]_i_6 ),
        .O(\n_0_gaxi_full_sm.arlen_cntr[5]_i_2 ));
LUT6 #(
    .INIT(64'h04FF0FF4F00BFB00)) 
     \gaxi_full_sm.arlen_cntr[6]_i_1 
       (.I0(Q),
        .I1(s_axi_arvalid),
        .I2(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I3(\n_0_gaxi_full_sm.arlen_cntr[7]_i_5 ),
        .I4(I3[6]),
        .I5(s_axi_arlen[6]),
        .O(O15[6]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'hFFF4)) 
     \gaxi_full_sm.arlen_cntr[7]_i_1 
       (.I0(Q),
        .I1(s_axi_arvalid),
        .I2(O13),
        .I3(\n_0_gaxi_full_sm.ar_ready_r_i_2 ),
        .O(E));
LUT6 #(
    .INIT(64'hF2FFE3EE1C110D00)) 
     \gaxi_full_sm.arlen_cntr[7]_i_2 
       (.I0(O8),
        .I1(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I2(\n_0_gaxi_full_sm.arlen_cntr[7]_i_4 ),
        .I3(\n_0_gaxi_full_sm.arlen_cntr[7]_i_5 ),
        .I4(I3[7]),
        .I5(s_axi_arlen[7]),
        .O(O15[7]));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \gaxi_full_sm.arlen_cntr[7]_i_3 
       (.I0(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3 ),
        .I1(O13),
        .O(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ));
LUT3 #(
    .INIT(8'hB8)) 
     \gaxi_full_sm.arlen_cntr[7]_i_4 
       (.I0(s_axi_arlen[6]),
        .I1(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I2(I3[6]),
        .O(\n_0_gaxi_full_sm.arlen_cntr[7]_i_4 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \gaxi_full_sm.arlen_cntr[7]_i_5 
       (.I0(\n_0_gaxi_full_sm.arlen_cntr[7]_i_6 ),
        .I1(\n_0_gaxi_full_sm.arlen_cntr[7]_i_7 ),
        .I2(\n_0_gaxi_full_sm.arlen_cntr[2]_i_2 ),
        .I3(\n_0_gaxi_full_sm.arlen_cntr[7]_i_8 ),
        .I4(\n_0_gaxi_full_sm.arlen_cntr[7]_i_9 ),
        .O(\n_0_gaxi_full_sm.arlen_cntr[7]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gaxi_full_sm.arlen_cntr[7]_i_6 
       (.I0(s_axi_arlen[4]),
        .I1(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I2(I3[4]),
        .O(\n_0_gaxi_full_sm.arlen_cntr[7]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gaxi_full_sm.arlen_cntr[7]_i_7 
       (.I0(s_axi_arlen[2]),
        .I1(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I2(I3[2]),
        .O(\n_0_gaxi_full_sm.arlen_cntr[7]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gaxi_full_sm.arlen_cntr[7]_i_8 
       (.I0(s_axi_arlen[3]),
        .I1(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I2(I3[3]),
        .O(\n_0_gaxi_full_sm.arlen_cntr[7]_i_8 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gaxi_full_sm.arlen_cntr[7]_i_9 
       (.I0(s_axi_arlen[5]),
        .I1(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I2(I3[5]),
        .O(\n_0_gaxi_full_sm.arlen_cntr[7]_i_9 ));
LUT1 #(
    .INIT(2'h1)) 
     \gaxi_full_sm.aw_ready_r_i_2 
       (.I0(s_aresetn),
        .O(AR));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_1 
       (.I0(O9[8]),
        .I1(r_last_c),
        .O(O18));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_2 
       (.I0(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3 ),
        .I1(s_axi_arburst[1]),
        .I2(s_axi_arburst[0]),
        .O(O9[8]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'h04)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3 
       (.I0(Q),
        .I1(s_axi_arvalid),
        .I2(\n_0_gaxi_full_sm.r_valid_r_i_2 ),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3 ));
LUT5 #(
    .INIT(32'h00000008)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_1 
       (.I0(O9[8]),
        .I1(I18),
        .I2(I5),
        .I3(s_axi_arlen[2]),
        .I4(s_axi_arlen[1]),
        .O(O9[0]));
LUT6 #(
    .INIT(64'h0000002A00000000)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_1 
       (.I0(O9[8]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arsize[2]),
        .I5(I17),
        .O(O9[1]));
LUT5 #(
    .INIT(32'h00000800)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_1 
       (.I0(I16),
        .I1(O9[8]),
        .I2(O7),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arlen[3]),
        .O(O9[2]));
LUT4 #(
    .INIT(16'hFFFE)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_3 
       (.I0(s_axi_arlen[5]),
        .I1(s_axi_arlen[4]),
        .I2(s_axi_arlen[6]),
        .I3(s_axi_arlen[7]),
        .O(O7));
LUT2 #(
    .INIT(4'h2)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_1 
       (.I0(O9[8]),
        .I1(I15),
        .O(O9[3]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_1 
       (.I0(O9[8]),
        .I1(I14),
        .O(O9[4]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_1 
       (.I0(O9[8]),
        .I1(I13),
        .O(O9[5]));
LUT6 #(
    .INIT(64'h444444440CCC44CC)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[7]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(O9[8]),
        .I2(I4),
        .I3(s_axi_arlen[2]),
        .I4(s_axi_arlen[1]),
        .I5(I5),
        .O(O9[6]));
LUT5 #(
    .INIT(32'h0A0AAA2A)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_1 
       (.I0(O9[8]),
        .I1(s_axi_arlen[2]),
        .I2(I4),
        .I3(s_axi_arlen[1]),
        .I4(I5),
        .O(O9[7]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT4 #(
    .INIT(16'hFB08)) 
     \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[10]_i_1 
       (.I0(s_axi_araddr[10]),
        .I1(s_axi_arvalid),
        .I2(Q),
        .I3(ADDRARDADDR[5]),
        .O(O17[5]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT4 #(
    .INIT(16'hFB08)) 
     \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_1 
       (.I0(s_axi_araddr[11]),
        .I1(s_axi_arvalid),
        .I2(Q),
        .I3(ADDRARDADDR[6]),
        .O(O17[6]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'hF4)) 
     \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[12]_i_1 
       (.I0(Q),
        .I1(s_axi_arvalid),
        .I2(O13),
        .O(O16));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT4 #(
    .INIT(16'hFB08)) 
     \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[12]_i_2 
       (.I0(s_axi_araddr[12]),
        .I1(s_axi_arvalid),
        .I2(Q),
        .I3(ADDRARDADDR[7]),
        .O(O17[7]));
LUT4 #(
    .INIT(16'hFB08)) 
     \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[5]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_arvalid),
        .I2(Q),
        .I3(ADDRARDADDR[0]),
        .O(O17[0]));
LUT4 #(
    .INIT(16'hFB08)) 
     \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[6]_i_1 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_arvalid),
        .I2(Q),
        .I3(ADDRARDADDR[1]),
        .O(O17[1]));
LUT4 #(
    .INIT(16'hFB08)) 
     \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[7]_i_1 
       (.I0(s_axi_araddr[7]),
        .I1(s_axi_arvalid),
        .I2(Q),
        .I3(ADDRARDADDR[2]),
        .O(O17[2]));
LUT4 #(
    .INIT(16'hFB08)) 
     \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[8]_i_1 
       (.I0(s_axi_araddr[8]),
        .I1(s_axi_arvalid),
        .I2(Q),
        .I3(ADDRARDADDR[3]),
        .O(O17[3]));
LUT4 #(
    .INIT(16'hFB08)) 
     \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[9]_i_1 
       (.I0(s_axi_araddr[9]),
        .I1(s_axi_arvalid),
        .I2(Q),
        .I3(ADDRARDADDR[4]),
        .O(O17[4]));
LUT5 #(
    .INIT(32'hFFEF00E0)) 
     \gaxi_full_sm.gaxifull_mem_slave.incr_en_r_i_1 
       (.I0(s_axi_arburst[0]),
        .I1(s_axi_arburst[1]),
        .I2(s_axi_arvalid),
        .I3(Q),
        .I4(incr_en_r),
        .O(O23));
LUT6 #(
    .INIT(64'hABAAABFFA8AAA800)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_2 
       (.I0(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_5 ),
        .I1(present_state),
        .I2(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3 ),
        .I3(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_6 ),
        .I4(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_7 ),
        .I5(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_8 ),
        .O(O5));
LUT5 #(
    .INIT(32'hF4F7B080)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_3 
       (.I0(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3 ),
        .I1(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_6 ),
        .I2(D[0]),
        .I3(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_9 ),
        .I4(I1[0]),
        .O(O6));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'hF4)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_4 
       (.I0(Q),
        .I1(s_axi_arvalid),
        .I2(O13),
        .O(O14));
LUT6 #(
    .INIT(64'hABFFAAAAA800AAAA)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_5 
       (.I0(s_axi_araddr[0]),
        .I1(I2),
        .I2(O7),
        .I3(O8),
        .I4(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20 ),
        .I5(axis_address_full_r[0]),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_5 ));
LUT6 #(
    .INIT(64'h4404440477074404)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_6 
       (.I0(\n_0_gaxi_full_sm.ar_ready_r_i_2 ),
        .I1(Q),
        .I2(O1),
        .I3(s_axi_rready),
        .I4(s_axi_arvalid),
        .I5(\n_0_gaxi_full_sm.r_valid_r_i_2 ),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'h000000E0)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_7 
       (.I0(O7),
        .I1(I2),
        .I2(s_axi_arvalid),
        .I3(Q),
        .I4(present_state),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_7 ));
LUT3 #(
    .INIT(8'hE2)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_8 
       (.I0(s_axi_araddr[0]),
        .I1(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20 ),
        .I2(axis_address_full_r[0]),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_8 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h000000E0)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_9 
       (.I0(I2),
        .I1(O7),
        .I2(s_axi_arvalid),
        .I3(Q),
        .I4(present_state),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_9 ));
LUT5 #(
    .INIT(32'h8B8BB88B)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_2 
       (.I0(s_axi_araddr[1]),
        .I1(O4),
        .I2(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3 ),
        .I3(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4 ),
        .I4(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_5 ),
        .O(O11));
LUT6 #(
    .INIT(64'h3737303F3037303F)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3 
       (.I0(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_6 ),
        .I1(s_axi_araddr[1]),
        .I2(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_7 ),
        .I3(axis_address_full_r[1]),
        .I4(O13),
        .I5(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3 ),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3 ));
LUT3 #(
    .INIT(8'hF8)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4 
       (.I0(O6),
        .I1(O5),
        .I2(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_11 ),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_5 
       (.I0(O5),
        .I1(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_11 ),
        .I2(O6),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_5 ));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_6 
       (.I0(O8),
        .I1(s_axi_arlen[5]),
        .I2(s_axi_arlen[4]),
        .I3(s_axi_arlen[6]),
        .I4(s_axi_arlen[7]),
        .I5(I2),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_6 ));
LUT6 #(
    .INIT(64'h0100010155555555)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_7 
       (.I0(I6[0]),
        .I1(present_state),
        .I2(outstanding_read_r),
        .I3(s_axi_rready),
        .I4(O1),
        .I5(Q),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_7 ));
LUT5 #(
    .INIT(32'hB88B8BB8)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_2 
       (.I0(s_axi_araddr[2]),
        .I1(O4),
        .I2(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3 ),
        .I3(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4 ),
        .I4(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5 ),
        .O(O12));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT4 #(
    .INIT(16'h2ABF)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3 
       (.I0(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3 ),
        .I1(O6),
        .I2(O5),
        .I3(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_11 ),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3 ));
LUT6 #(
    .INIT(64'h555501FD01FD01FD)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4 
       (.I0(s_axi_araddr[2]),
        .I1(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20 ),
        .I2(I6[1]),
        .I3(axis_address_full_r[2]),
        .I4(O13),
        .I5(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3 ),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4 ));
LUT6 #(
    .INIT(64'h04FFFFFF04000000)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .I3(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3 ),
        .I4(O13),
        .I5(I1[2]),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'hB88B8BB8)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[3]_i_2 
       (.I0(s_axi_araddr[3]),
        .I1(O4),
        .I2(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_7 ),
        .I3(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_5 ),
        .I4(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_6 ),
        .O(O10));
LUT6 #(
    .INIT(64'hC5CAFFFFC5CA0000)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_1 
       (.I0(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_2 ),
        .I1(s_axi_araddr[4]),
        .I2(O4),
        .I3(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_3 ),
        .I4(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_4 ),
        .I5(axis_address_full_r[4]),
        .O(O3));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'hB2)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_2 
       (.I0(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_5 ),
        .I1(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_6 ),
        .I2(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_7 ),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_2 ));
LUT6 #(
    .INIT(64'hAAAA999A55559995)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_3 
       (.I0(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_8 ),
        .I1(axis_address_full_r[4]),
        .I2(I6[3]),
        .I3(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20 ),
        .I4(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I5(s_axi_araddr[4]),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'hF4)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_4 
       (.I0(Q),
        .I1(s_axi_arvalid),
        .I2(O13),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_4 ));
LUT5 #(
    .INIT(32'h40FF4000)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_10 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .I3(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I4(I1[5]),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_10 ));
LUT5 #(
    .INIT(32'hF4F7B080)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_11 
       (.I0(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3 ),
        .I1(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_6 ),
        .I2(D[1]),
        .I3(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_12 ),
        .I4(I1[1]),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_11 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h000000E0)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_12 
       (.I0(I2),
        .I1(O7),
        .I2(s_axi_arvalid),
        .I3(Q),
        .I4(present_state),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_12 ));
LUT6 #(
    .INIT(64'hB2FF00B24D00FF4D)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_2 
       (.I0(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_5 ),
        .I1(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_6 ),
        .I2(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_7 ),
        .I3(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_8 ),
        .I4(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_9 ),
        .I5(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_10 ),
        .O(O2));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'h04)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_3 
       (.I0(Q),
        .I1(s_axi_arvalid),
        .I2(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .O(O4));
LUT6 #(
    .INIT(64'h10001000103F1000)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_4 
       (.I0(\n_0_gaxi_full_sm.ar_ready_r_i_2 ),
        .I1(\n_0_gaxi_full_sm.ar_ready_r_i_3 ),
        .I2(present_state),
        .I3(Q),
        .I4(s_axi_arvalid),
        .I5(\n_0_gaxi_full_sm.r_valid_r_i_2 ),
        .O(O13));
LUT6 #(
    .INIT(64'h555501FD01FD01FD)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_5 
       (.I0(s_axi_araddr[3]),
        .I1(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20 ),
        .I2(I6[2]),
        .I3(axis_address_full_r[3]),
        .I4(O13),
        .I5(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3 ),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_5 ));
LUT5 #(
    .INIT(32'h08FF0800)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_6 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .I3(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I4(I1[3]),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_6 ));
LUT6 #(
    .INIT(64'h0A8E8EAF8E8EAFAF)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_7 
       (.I0(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4 ),
        .I1(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3 ),
        .I2(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5 ),
        .I3(O5),
        .I4(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_11 ),
        .I5(O6),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_7 ));
LUT5 #(
    .INIT(32'h02FF0200)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_8 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .I3(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I4(I1[4]),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_8 ));
LUT5 #(
    .INIT(32'h44457775)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_9 
       (.I0(s_axi_araddr[4]),
        .I1(\n_0_gaxi_full_sm.arlen_cntr[7]_i_3 ),
        .I2(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20 ),
        .I3(I6[3]),
        .I4(axis_address_full_r[4]),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_9 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[5]_i_1 
       (.I0(s_axi_arvalid),
        .I1(Q),
        .O(O22));
LUT6 #(
    .INIT(64'h000008080C000000)) 
     \gaxi_full_sm.outstanding_read_r_i_1 
       (.I0(\n_0_gaxi_full_sm.r_valid_r_i_2 ),
        .I1(O1),
        .I2(s_axi_rready),
        .I3(outstanding_read_r),
        .I4(Q),
        .I5(present_state),
        .O(\n_0_gaxi_full_sm.outstanding_read_r_i_1 ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.outstanding_read_r_reg 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AR),
        .D(\n_0_gaxi_full_sm.outstanding_read_r_i_1 ),
        .Q(outstanding_read_r));
LUT6 #(
    .INIT(64'hCCCCCCCCFF4F0000)) 
     \gaxi_full_sm.present_state[0]_i_1__0 
       (.I0(O1),
        .I1(present_state),
        .I2(\n_0_gaxi_full_sm.r_valid_r_i_2 ),
        .I3(s_axi_rready),
        .I4(s_axi_arvalid),
        .I5(Q),
        .O(next_state[0]));
LUT6 #(
    .INIT(64'h0000000055FCFFFF)) 
     \gaxi_full_sm.present_state[1]_i_1__0 
       (.I0(\n_0_gaxi_full_sm.ar_ready_r_i_2 ),
        .I1(\n_0_gaxi_full_sm.ar_ready_r_i_3 ),
        .I2(outstanding_read_r),
        .I3(present_state),
        .I4(Q),
        .I5(\n_0_gaxi_full_sm.ar_ready_r_i_4 ),
        .O(next_state[1]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.present_state_reg[0] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AR),
        .D(next_state[0]),
        .Q(present_state));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.present_state_reg[1] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AR),
        .D(next_state[1]),
        .Q(Q));
LUT6 #(
    .INIT(64'hAAEAFFFFAAEAAAEA)) 
     \gaxi_full_sm.r_valid_r_i_1 
       (.I0(O20),
        .I1(present_state),
        .I2(\n_0_gaxi_full_sm.r_valid_r_i_2 ),
        .I3(Q),
        .I4(s_axi_rready),
        .I5(O1),
        .O(\n_0_gaxi_full_sm.r_valid_r_i_1 ));
LUT6 #(
    .INIT(64'h0000000000010000)) 
     \gaxi_full_sm.r_valid_r_i_2 
       (.I0(O7),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[2]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arvalid),
        .I5(s_axi_arlen[3]),
        .O(\n_0_gaxi_full_sm.r_valid_r_i_2 ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.r_valid_r_reg 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AR),
        .D(\n_0_gaxi_full_sm.r_valid_r_i_1 ),
        .Q(O1));
LUT5 #(
    .INIT(32'hBAAA8AAA)) 
     \grid.S_AXI_RID[0]_i_1 
       (.I0(I12[0]),
        .I1(Q),
        .I2(s_axi_arvalid),
        .I3(O20),
        .I4(s_axi_arid[0]),
        .O(O19[0]));
LUT5 #(
    .INIT(32'hBAAA8AAA)) 
     \grid.S_AXI_RID[1]_i_1 
       (.I0(I12[1]),
        .I1(Q),
        .I2(s_axi_arvalid),
        .I3(O20),
        .I4(s_axi_arid[1]),
        .O(O19[1]));
LUT5 #(
    .INIT(32'hBAAA8AAA)) 
     \grid.S_AXI_RID[2]_i_1 
       (.I0(I12[2]),
        .I1(Q),
        .I2(s_axi_arvalid),
        .I3(O20),
        .I4(s_axi_arid[2]),
        .O(O19[2]));
LUT6 #(
    .INIT(64'hFCAC0404FCACFCAC)) 
     \grid.S_AXI_RID[3]_i_1 
       (.I0(present_state),
        .I1(s_axi_arvalid),
        .I2(Q),
        .I3(outstanding_read_r),
        .I4(s_axi_rready),
        .I5(O1),
        .O(O21));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'hBAAA8AAA)) 
     \grid.S_AXI_RID[3]_i_2 
       (.I0(I12[3]),
        .I1(Q),
        .I2(s_axi_arvalid),
        .I3(O20),
        .I4(s_axi_arid[3]),
        .O(O19[3]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \grid.ar_id_r[3]_i_1 
       (.I0(s_axi_arvalid),
        .I1(Q),
        .O(O8));
endmodule

module RAMB_AXI_256x256blk_mem_axi_read_wrapper
   (s_axi_arready,
    AS,
    O1,
    s_axi_rlast,
    ADDRARDADDR,
    s_axi_rd_en_c,
    s_axi_rid,
    s_aclk,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_rready,
    s_axi_arid,
    s_axi_arburst,
    s_aresetn);
  output s_axi_arready;
  output [0:0]AS;
  output O1;
  output s_axi_rlast;
  output [7:0]ADDRARDADDR;
  output s_axi_rd_en_c;
  output [3:0]s_axi_rid;
  input s_aclk;
  input [12:0]s_axi_araddr;
  input s_axi_arvalid;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input s_axi_rready;
  input [3:0]s_axi_arid;
  input [1:0]s_axi_arburst;
  input s_aresetn;

  wire \<const1> ;
  wire [7:0]ADDRARDADDR;
  wire [0:0]AS;
  wire O1;
  wire [3:0]ar_id_r;
  wire [12:0]axis_address_full_r;
  wire incr_en_r;
  wire \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_19 ;
  wire \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_21 ;
  wire \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_22 ;
  wire \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_23 ;
  wire \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_24 ;
  wire \n_0_gaxi_full_sm.arlen_cntr_reg[0] ;
  wire \n_0_gaxi_full_sm.arlen_cntr_reg[1] ;
  wire \n_0_gaxi_full_sm.arlen_cntr_reg[2] ;
  wire \n_0_gaxi_full_sm.arlen_cntr_reg[3] ;
  wire \n_0_gaxi_full_sm.arlen_cntr_reg[4] ;
  wire \n_0_gaxi_full_sm.arlen_cntr_reg[5] ;
  wire \n_0_gaxi_full_sm.arlen_cntr_reg[6] ;
  wire \n_0_gaxi_full_sm.arlen_cntr_reg[7] ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_2 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_2 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_2 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_2 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_2 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_2 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_2 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_3 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[10] ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11] ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[12] ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[1] ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[2] ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[3] ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[4] ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[5] ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[6] ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[7] ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[8] ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[9] ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_1 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_10 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_1 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_1 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[3]_i_1 ;
  wire \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_1 ;
  wire n_10_axi_read_fsm;
  wire n_11_axi_read_fsm;
  wire n_12_axi_read_fsm;
  wire n_13_axi_read_fsm;
  wire n_14_axi_read_fsm;
  wire n_15_axi_read_fsm;
  wire n_16_axi_read_fsm;
  wire n_17_axi_read_fsm;
  wire n_18_axi_read_fsm;
  wire n_19_axi_read_fsm;
  wire n_20_axi_read_fsm;
  wire n_21_axi_read_fsm;
  wire n_22_axi_read_fsm;
  wire n_23_axi_read_fsm;
  wire n_24_axi_read_fsm;
  wire n_25_axi_read_fsm;
  wire n_26_axi_read_fsm;
  wire n_27_axi_read_fsm;
  wire n_28_axi_read_fsm;
  wire n_29_axi_read_fsm;
  wire n_30_axi_read_fsm;
  wire n_31_axi_read_fsm;
  wire n_32_axi_read_fsm;
  wire n_33_axi_read_fsm;
  wire n_34_axi_read_fsm;
  wire n_35_axi_read_fsm;
  wire n_36_axi_read_fsm;
  wire n_37_axi_read_fsm;
  wire n_38_axi_read_fsm;
  wire n_39_axi_read_fsm;
  wire n_40_axi_read_fsm;
  wire n_41_axi_read_fsm;
  wire n_42_axi_read_fsm;
  wire n_43_axi_read_fsm;
  wire n_4_axi_read_fsm;
  wire n_52_axi_read_fsm;
  wire n_53_axi_read_fsm;
  wire n_54_axi_read_fsm;
  wire n_55_axi_read_fsm;
  wire n_56_axi_read_fsm;
  wire n_58_axi_read_fsm;
  wire n_59_axi_read_fsm;
  wire n_5_axi_read_fsm;
  wire n_60_axi_read_fsm;
  wire n_6_axi_read_fsm;
  wire n_7_axi_read_fsm;
  wire n_8_axi_read_fsm;
  wire [5:0]num_of_bytes_c;
  wire [5:0]num_of_bytes_r;
  wire p_0_in3_in;
  wire [1:1]present_state;
  wire s_aclk;
  wire s_aresetn;
  wire [12:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire s_axi_rd_en_c;
  wire [3:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;

LUT3 #(
    .INIT(8'h80)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_19 
       (.I0(axis_address_full_r[10]),
        .I1(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_21 ),
        .I2(axis_address_full_r[9]),
        .O(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_19 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_21 
       (.I0(axis_address_full_r[8]),
        .I1(axis_address_full_r[6]),
        .I2(axis_address_full_r[5]),
        .I3(p_0_in3_in),
        .I4(incr_en_r),
        .I5(axis_address_full_r[7]),
        .O(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_21 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_22 
       (.I0(axis_address_full_r[7]),
        .I1(incr_en_r),
        .I2(p_0_in3_in),
        .I3(axis_address_full_r[5]),
        .I4(axis_address_full_r[6]),
        .O(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_22 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_23 
       (.I0(axis_address_full_r[6]),
        .I1(axis_address_full_r[5]),
        .I2(p_0_in3_in),
        .I3(incr_en_r),
        .O(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_23 ));
LUT2 #(
    .INIT(4'h8)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_24 
       (.I0(p_0_in3_in),
        .I1(incr_en_r),
        .O(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_24 ));
VCC VCC
       (.P(\<const1> ));
RAMB_AXI_256x256blk_mem_axi_read_fsm axi_read_fsm
       (.ADDRARDADDR(ADDRARDADDR),
        .AR(AS),
        .D(num_of_bytes_c[1:0]),
        .E(n_34_axi_read_fsm),
        .I1(num_of_bytes_r),
        .I10(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_24 ),
        .I11(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_23 ),
        .I12(ar_id_r),
        .I13(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_2 ),
        .I14(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_2 ),
        .I15(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_2 ),
        .I16(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_2 ),
        .I17(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_2 ),
        .I18(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_2 ),
        .I2(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_10 ),
        .I3({\n_0_gaxi_full_sm.arlen_cntr_reg[7] ,\n_0_gaxi_full_sm.arlen_cntr_reg[6] ,\n_0_gaxi_full_sm.arlen_cntr_reg[5] ,\n_0_gaxi_full_sm.arlen_cntr_reg[4] ,\n_0_gaxi_full_sm.arlen_cntr_reg[3] ,\n_0_gaxi_full_sm.arlen_cntr_reg[2] ,\n_0_gaxi_full_sm.arlen_cntr_reg[1] ,\n_0_gaxi_full_sm.arlen_cntr_reg[0] }),
        .I4(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_2 ),
        .I5(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_3 ),
        .I6({\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[12] ,\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11] ,\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[10] ,\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[9] ,\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[8] ,\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[7] ,\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[6] ,\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[5] ,\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[4] ,\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[3] ,\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[2] ,\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[1] }),
        .I7(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_19 ),
        .I8(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_21 ),
        .I9(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_22 ),
        .O1(O1),
        .O10(n_21_axi_read_fsm),
        .O11(n_22_axi_read_fsm),
        .O12(n_23_axi_read_fsm),
        .O13(n_24_axi_read_fsm),
        .O14(n_25_axi_read_fsm),
        .O15({n_26_axi_read_fsm,n_27_axi_read_fsm,n_28_axi_read_fsm,n_29_axi_read_fsm,n_30_axi_read_fsm,n_31_axi_read_fsm,n_32_axi_read_fsm,n_33_axi_read_fsm}),
        .O16(n_35_axi_read_fsm),
        .O17({n_36_axi_read_fsm,n_37_axi_read_fsm,n_38_axi_read_fsm,n_39_axi_read_fsm,n_40_axi_read_fsm,n_41_axi_read_fsm,n_42_axi_read_fsm,n_43_axi_read_fsm}),
        .O18(n_52_axi_read_fsm),
        .O19({n_53_axi_read_fsm,n_54_axi_read_fsm,n_55_axi_read_fsm,n_56_axi_read_fsm}),
        .O2(n_4_axi_read_fsm),
        .O20(s_axi_rd_en_c),
        .O21(n_58_axi_read_fsm),
        .O22(n_59_axi_read_fsm),
        .O23(n_60_axi_read_fsm),
        .O3(n_5_axi_read_fsm),
        .O4(n_6_axi_read_fsm),
        .O5(n_7_axi_read_fsm),
        .O6(n_8_axi_read_fsm),
        .O7(n_10_axi_read_fsm),
        .O8(n_11_axi_read_fsm),
        .O9({n_12_axi_read_fsm,n_13_axi_read_fsm,n_14_axi_read_fsm,n_15_axi_read_fsm,n_16_axi_read_fsm,n_17_axi_read_fsm,n_18_axi_read_fsm,n_19_axi_read_fsm,n_20_axi_read_fsm}),
        .Q(present_state),
        .axis_address_full_r(axis_address_full_r),
        .incr_en_r(incr_en_r),
        .p_0_in3_in(p_0_in3_in),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready));
FDPE #(
    .INIT(1'b1)) 
     \gaxi_full_sm.arlen_cntr_reg[0] 
       (.C(s_aclk),
        .CE(n_34_axi_read_fsm),
        .D(n_33_axi_read_fsm),
        .PRE(AS),
        .Q(\n_0_gaxi_full_sm.arlen_cntr_reg[0] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.arlen_cntr_reg[1] 
       (.C(s_aclk),
        .CE(n_34_axi_read_fsm),
        .CLR(AS),
        .D(n_32_axi_read_fsm),
        .Q(\n_0_gaxi_full_sm.arlen_cntr_reg[1] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.arlen_cntr_reg[2] 
       (.C(s_aclk),
        .CE(n_34_axi_read_fsm),
        .CLR(AS),
        .D(n_31_axi_read_fsm),
        .Q(\n_0_gaxi_full_sm.arlen_cntr_reg[2] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.arlen_cntr_reg[3] 
       (.C(s_aclk),
        .CE(n_34_axi_read_fsm),
        .CLR(AS),
        .D(n_30_axi_read_fsm),
        .Q(\n_0_gaxi_full_sm.arlen_cntr_reg[3] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.arlen_cntr_reg[4] 
       (.C(s_aclk),
        .CE(n_34_axi_read_fsm),
        .CLR(AS),
        .D(n_29_axi_read_fsm),
        .Q(\n_0_gaxi_full_sm.arlen_cntr_reg[4] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.arlen_cntr_reg[5] 
       (.C(s_aclk),
        .CE(n_34_axi_read_fsm),
        .CLR(AS),
        .D(n_28_axi_read_fsm),
        .Q(\n_0_gaxi_full_sm.arlen_cntr_reg[5] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.arlen_cntr_reg[6] 
       (.C(s_aclk),
        .CE(n_34_axi_read_fsm),
        .CLR(AS),
        .D(n_27_axi_read_fsm),
        .Q(\n_0_gaxi_full_sm.arlen_cntr_reg[6] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.arlen_cntr_reg[7] 
       (.C(s_aclk),
        .CE(n_34_axi_read_fsm),
        .CLR(AS),
        .D(n_26_axi_read_fsm),
        .Q(\n_0_gaxi_full_sm.arlen_cntr_reg[7] ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'h01)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_2 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_2 ));
LUT4 #(
    .INIT(16'h0010)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_2 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arlen[0]),
        .I3(n_10_axi_read_fsm),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT5 #(
    .INIT(32'h0000013B)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_2 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arlen[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arsize[2]),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_2 ));
LUT6 #(
    .INIT(64'hFFFEFFCEFFEEFF00)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_2 
       (.I0(s_axi_arlen[2]),
        .I1(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_3 ),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arsize[0]),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_2 ));
LUT6 #(
    .INIT(64'hFFEEFF00FFCEFE00)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_2 
       (.I0(s_axi_arlen[2]),
        .I1(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_3 ),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arsize[0]),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_2 ));
LUT6 #(
    .INIT(64'hFECEFE00FE00EE00)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_2 
       (.I0(s_axi_arlen[2]),
        .I1(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_3 ),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arsize[0]),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_2 ));
LUT3 #(
    .INIT(8'hA8)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_2 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_3 
       (.I0(s_axi_arlen[7]),
        .I1(s_axi_arlen[6]),
        .I2(s_axi_arlen[4]),
        .I3(s_axi_arlen[5]),
        .I4(s_axi_arlen[0]),
        .I5(s_axi_arlen[3]),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_3 ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[10] 
       (.C(s_aclk),
        .CE(n_52_axi_read_fsm),
        .CLR(AS),
        .D(n_12_axi_read_fsm),
        .Q(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[10] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11] 
       (.C(s_aclk),
        .CE(n_52_axi_read_fsm),
        .CLR(AS),
        .D(n_12_axi_read_fsm),
        .Q(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[12] 
       (.C(s_aclk),
        .CE(n_52_axi_read_fsm),
        .CLR(AS),
        .D(n_12_axi_read_fsm),
        .Q(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[12] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[1] 
       (.C(s_aclk),
        .CE(n_52_axi_read_fsm),
        .CLR(AS),
        .D(n_20_axi_read_fsm),
        .Q(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[1] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[2] 
       (.C(s_aclk),
        .CE(n_52_axi_read_fsm),
        .CLR(AS),
        .D(n_19_axi_read_fsm),
        .Q(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[2] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[3] 
       (.C(s_aclk),
        .CE(n_52_axi_read_fsm),
        .CLR(AS),
        .D(n_18_axi_read_fsm),
        .Q(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[3] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[4] 
       (.C(s_aclk),
        .CE(n_52_axi_read_fsm),
        .CLR(AS),
        .D(n_17_axi_read_fsm),
        .Q(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[4] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[5] 
       (.C(s_aclk),
        .CE(n_52_axi_read_fsm),
        .CLR(AS),
        .D(n_16_axi_read_fsm),
        .Q(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[5] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[6] 
       (.C(s_aclk),
        .CE(n_52_axi_read_fsm),
        .CLR(AS),
        .D(n_15_axi_read_fsm),
        .Q(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[6] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[7] 
       (.C(s_aclk),
        .CE(n_52_axi_read_fsm),
        .CLR(AS),
        .D(n_14_axi_read_fsm),
        .Q(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[7] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[8] 
       (.C(s_aclk),
        .CE(n_52_axi_read_fsm),
        .CLR(AS),
        .D(n_13_axi_read_fsm),
        .Q(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[8] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[9] 
       (.C(s_aclk),
        .CE(n_52_axi_read_fsm),
        .CLR(AS),
        .D(n_12_axi_read_fsm),
        .Q(\n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[9] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[10] 
       (.C(s_aclk),
        .CE(n_35_axi_read_fsm),
        .CLR(AS),
        .D(n_38_axi_read_fsm),
        .Q(axis_address_full_r[10]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] 
       (.C(s_aclk),
        .CE(n_35_axi_read_fsm),
        .CLR(AS),
        .D(n_37_axi_read_fsm),
        .Q(axis_address_full_r[11]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[12] 
       (.C(s_aclk),
        .CE(n_35_axi_read_fsm),
        .CLR(AS),
        .D(n_36_axi_read_fsm),
        .Q(axis_address_full_r[12]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[5] 
       (.C(s_aclk),
        .CE(n_35_axi_read_fsm),
        .CLR(AS),
        .D(n_43_axi_read_fsm),
        .Q(axis_address_full_r[5]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6] 
       (.C(s_aclk),
        .CE(n_35_axi_read_fsm),
        .CLR(AS),
        .D(n_42_axi_read_fsm),
        .Q(axis_address_full_r[6]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[7] 
       (.C(s_aclk),
        .CE(n_35_axi_read_fsm),
        .CLR(AS),
        .D(n_41_axi_read_fsm),
        .Q(axis_address_full_r[7]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[8] 
       (.C(s_aclk),
        .CE(n_35_axi_read_fsm),
        .CLR(AS),
        .D(n_40_axi_read_fsm),
        .Q(axis_address_full_r[8]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[9] 
       (.C(s_aclk),
        .CE(n_35_axi_read_fsm),
        .CLR(AS),
        .D(n_39_axi_read_fsm),
        .Q(axis_address_full_r[9]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.incr_en_r_reg 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(n_60_axi_read_fsm),
        .Q(incr_en_r));
LUT6 #(
    .INIT(64'h8BB8FFFF8BB80000)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(n_6_axi_read_fsm),
        .I2(n_7_axi_read_fsm),
        .I3(n_8_axi_read_fsm),
        .I4(n_25_axi_read_fsm),
        .I5(axis_address_full_r[0]),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_1 ));
LUT5 #(
    .INIT(32'hFFFFFFFB)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_10 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arvalid),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[2]),
        .I4(s_axi_arlen[1]),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_10 ));
LUT5 #(
    .INIT(32'hAAEFAA20)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_1 
       (.I0(n_22_axi_read_fsm),
        .I1(present_state),
        .I2(s_axi_arvalid),
        .I3(n_24_axi_read_fsm),
        .I4(axis_address_full_r[1]),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_1 ));
LUT5 #(
    .INIT(32'hAAEFAA20)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_1 
       (.I0(n_23_axi_read_fsm),
        .I1(present_state),
        .I2(s_axi_arvalid),
        .I3(n_24_axi_read_fsm),
        .I4(axis_address_full_r[2]),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_1 ));
LUT5 #(
    .INIT(32'hAAEFAA20)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[3]_i_1 
       (.I0(n_21_axi_read_fsm),
        .I1(present_state),
        .I2(s_axi_arvalid),
        .I3(n_24_axi_read_fsm),
        .I4(axis_address_full_r[3]),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[3]_i_1 ));
LUT6 #(
    .INIT(64'h2222F2FF22220200)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_1 
       (.I0(n_4_axi_read_fsm),
        .I1(n_6_axi_read_fsm),
        .I2(present_state),
        .I3(s_axi_arvalid),
        .I4(n_24_axi_read_fsm),
        .I5(p_0_in3_in),
        .O(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_1 ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[0] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_1 ),
        .Q(axis_address_full_r[0]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[1] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_1 ),
        .Q(axis_address_full_r[1]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_1 ),
        .Q(axis_address_full_r[2]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[3] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[3]_i_1 ),
        .Q(axis_address_full_r[3]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[4] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(n_5_axi_read_fsm),
        .Q(axis_address_full_r[4]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[5] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(\n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_1 ),
        .Q(p_0_in3_in));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT3 #(
    .INIT(8'h01)) 
     \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[0]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .O(num_of_bytes_c[0]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[1]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .O(num_of_bytes_c[1]));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'h04)) 
     \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[2]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .O(num_of_bytes_c[2]));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[3]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .O(num_of_bytes_c[3]));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[4]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .O(num_of_bytes_c[4]));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'h40)) 
     \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[5]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(num_of_bytes_c[5]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0] 
       (.C(s_aclk),
        .CE(n_59_axi_read_fsm),
        .CLR(AS),
        .D(num_of_bytes_c[0]),
        .Q(num_of_bytes_r[0]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[1] 
       (.C(s_aclk),
        .CE(n_59_axi_read_fsm),
        .CLR(AS),
        .D(num_of_bytes_c[1]),
        .Q(num_of_bytes_r[1]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[2] 
       (.C(s_aclk),
        .CE(n_59_axi_read_fsm),
        .CLR(AS),
        .D(num_of_bytes_c[2]),
        .Q(num_of_bytes_r[2]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[3] 
       (.C(s_aclk),
        .CE(n_59_axi_read_fsm),
        .CLR(AS),
        .D(num_of_bytes_c[3]),
        .Q(num_of_bytes_r[3]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[4] 
       (.C(s_aclk),
        .CE(n_59_axi_read_fsm),
        .CLR(AS),
        .D(num_of_bytes_c[4]),
        .Q(num_of_bytes_r[4]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[5] 
       (.C(s_aclk),
        .CE(n_59_axi_read_fsm),
        .CLR(AS),
        .D(num_of_bytes_c[5]),
        .Q(num_of_bytes_r[5]));
FDCE #(
    .INIT(1'b0)) 
     \grid.S_AXI_RID_reg[0] 
       (.C(s_aclk),
        .CE(n_58_axi_read_fsm),
        .CLR(AS),
        .D(n_56_axi_read_fsm),
        .Q(s_axi_rid[0]));
FDCE #(
    .INIT(1'b0)) 
     \grid.S_AXI_RID_reg[1] 
       (.C(s_aclk),
        .CE(n_58_axi_read_fsm),
        .CLR(AS),
        .D(n_55_axi_read_fsm),
        .Q(s_axi_rid[1]));
FDCE #(
    .INIT(1'b0)) 
     \grid.S_AXI_RID_reg[2] 
       (.C(s_aclk),
        .CE(n_58_axi_read_fsm),
        .CLR(AS),
        .D(n_54_axi_read_fsm),
        .Q(s_axi_rid[2]));
FDCE #(
    .INIT(1'b0)) 
     \grid.S_AXI_RID_reg[3] 
       (.C(s_aclk),
        .CE(n_58_axi_read_fsm),
        .CLR(AS),
        .D(n_53_axi_read_fsm),
        .Q(s_axi_rid[3]));
FDCE #(
    .INIT(1'b0)) 
     \grid.ar_id_r_reg[0] 
       (.C(s_aclk),
        .CE(n_11_axi_read_fsm),
        .CLR(AS),
        .D(s_axi_arid[0]),
        .Q(ar_id_r[0]));
FDCE #(
    .INIT(1'b0)) 
     \grid.ar_id_r_reg[1] 
       (.C(s_aclk),
        .CE(n_11_axi_read_fsm),
        .CLR(AS),
        .D(s_axi_arid[1]),
        .Q(ar_id_r[1]));
FDCE #(
    .INIT(1'b0)) 
     \grid.ar_id_r_reg[2] 
       (.C(s_aclk),
        .CE(n_11_axi_read_fsm),
        .CLR(AS),
        .D(s_axi_arid[2]),
        .Q(ar_id_r[2]));
FDCE #(
    .INIT(1'b0)) 
     \grid.ar_id_r_reg[3] 
       (.C(s_aclk),
        .CE(n_11_axi_read_fsm),
        .CLR(AS),
        .D(s_axi_arid[3]),
        .Q(ar_id_r[3]));
endmodule

module RAMB_AXI_256x256blk_mem_axi_write_fsm
   (O1,
    s_axi_wready,
    O3,
    O2,
    O4,
    E,
    addr_en_c,
    D,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    s_aclk,
    AS,
    s_axi_wvalid,
    Q,
    I1,
    I2,
    I3,
    s_axi_awaddr,
    I4,
    s_axi_awsize,
    I5,
    s_axi_awlen,
    I6,
    s_axi_awvalid,
    I7,
    I8,
    s_axi_bready,
    s_axi_awburst,
    I9,
    I10,
    I11,
    I12,
    ADDRBWRADDR,
    p_0_in_0,
    incr_en_r,
    I13,
    I14,
    I15);
  output O1;
  output s_axi_wready;
  output O3;
  output O2;
  output O4;
  output [0:0]E;
  output addr_en_c;
  output [7:0]D;
  output [4:0]O5;
  output [0:0]O6;
  output [0:0]O7;
  output [0:0]O8;
  output [0:0]O9;
  output [0:0]O10;
  output [7:0]O11;
  output [0:0]O12;
  input s_aclk;
  input [0:0]AS;
  input s_axi_wvalid;
  input [7:0]Q;
  input [3:0]I1;
  input I2;
  input [3:0]I3;
  input [7:0]s_axi_awaddr;
  input I4;
  input [0:0]s_axi_awsize;
  input I5;
  input [7:0]s_axi_awlen;
  input I6;
  input s_axi_awvalid;
  input I7;
  input I8;
  input s_axi_bready;
  input [1:0]s_axi_awburst;
  input I9;
  input I10;
  input I11;
  input I12;
  input [3:0]ADDRBWRADDR;
  input p_0_in_0;
  input incr_en_r;
  input I13;
  input I14;
  input I15;

  wire \<const1> ;
  wire [3:0]ADDRBWRADDR;
  wire [0:0]AS;
  wire [7:0]D;
  wire [0:0]E;
  wire [3:0]I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I2;
  wire [3:0]I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire [0:0]O10;
  wire [7:0]O11;
  wire [0:0]O12;
  wire O2;
  wire O3;
  wire O4;
  wire [4:0]O5;
  wire [0:0]O6;
  wire [0:0]O7;
  wire [0:0]O8;
  wire [0:0]O9;
  wire [7:0]Q;
  wire addr_en_c;
  wire aw_ready_c;
  wire incr_en_r;
  wire \n_0_gaxi_full_sm.aw_ready_r_i_3 ;
  wire \n_0_gaxi_full_sm.present_state[1]_i_2 ;
  wire \n_0_gaxi_full_sm.present_state[1]_i_3 ;
  wire \n_0_gaxi_full_sm.w_ready_r_i_2 ;
  wire \n_0_gaxi_full_sm.w_ready_r_i_3 ;
  wire \n_0_gaxif_wlast_gen.awlen_cntr_r[7]_i_3 ;
  wire [1:0]next_state;
  wire p_0_in_0;
  wire [1:0]present_state;
  wire s_aclk;
  wire [7:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire w_ready_c;

LUT3 #(
    .INIT(8'h60)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_2 
       (.I0(present_state[0]),
        .I1(present_state[1]),
        .I2(s_axi_wvalid),
        .O(O3));
VCC VCC
       (.P(\<const1> ));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT4 #(
    .INIT(16'h0008)) 
     \gaxi_bid_gen.axi_bid_array[0][3]_i_1 
       (.I0(O1),
        .I1(s_axi_awvalid),
        .I2(I7),
        .I3(I8),
        .O(O6));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT4 #(
    .INIT(16'h0080)) 
     \gaxi_bid_gen.axi_bid_array[1][3]_i_1 
       (.I0(O1),
        .I1(s_axi_awvalid),
        .I2(I7),
        .I3(I8),
        .O(O9));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT4 #(
    .INIT(16'h0080)) 
     \gaxi_bid_gen.axi_bid_array[2][3]_i_1 
       (.I0(O1),
        .I1(s_axi_awvalid),
        .I2(I8),
        .I3(I7),
        .O(O8));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \gaxi_bid_gen.axi_bid_array[3][3]_i_1 
       (.I0(O1),
        .I1(s_axi_awvalid),
        .I2(I7),
        .I3(I8),
        .O(O7));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT3 #(
    .INIT(8'h28)) 
     \gaxi_bvalid_id_r.bvalid_d1_c_i_1 
       (.I0(\n_0_gaxi_full_sm.w_ready_r_i_3 ),
        .I1(present_state[0]),
        .I2(present_state[1]),
        .O(O4));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT5 #(
    .INIT(32'hBB88CF03)) 
     \gaxi_full_sm.aw_ready_r_i_1 
       (.I0(s_axi_bready),
        .I1(present_state[0]),
        .I2(s_axi_awvalid),
        .I3(\n_0_gaxi_full_sm.aw_ready_r_i_3 ),
        .I4(present_state[1]),
        .O(aw_ready_c));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT4 #(
    .INIT(16'hA8AA)) 
     \gaxi_full_sm.aw_ready_r_i_3 
       (.I0(\n_0_gaxi_full_sm.w_ready_r_i_3 ),
        .I1(I13),
        .I2(I14),
        .I3(I15),
        .O(\n_0_gaxi_full_sm.aw_ready_r_i_3 ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.aw_ready_r_reg 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(aw_ready_c),
        .Q(O1));
LUT6 #(
    .INIT(64'h55CF55CF0FCC0000)) 
     \gaxi_full_sm.present_state[0]_i_1 
       (.I0(s_axi_bready),
        .I1(s_axi_awvalid),
        .I2(\n_0_gaxi_full_sm.aw_ready_r_i_3 ),
        .I3(present_state[1]),
        .I4(s_axi_wvalid),
        .I5(present_state[0]),
        .O(next_state[0]));
LUT6 #(
    .INIT(64'hFFFFFFFF4000EA00)) 
     \gaxi_full_sm.present_state[1]_i_1 
       (.I0(present_state[1]),
        .I1(\n_0_gaxi_full_sm.w_ready_r_i_2 ),
        .I2(\n_0_gaxi_full_sm.w_ready_r_i_3 ),
        .I3(present_state[0]),
        .I4(s_axi_bready),
        .I5(\n_0_gaxi_full_sm.present_state[1]_i_2 ),
        .O(next_state[1]));
LUT6 #(
    .INIT(64'h0000000000002272)) 
     \gaxi_full_sm.present_state[1]_i_2 
       (.I0(present_state[1]),
        .I1(\n_0_gaxi_full_sm.aw_ready_r_i_3 ),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(\n_0_gaxi_full_sm.present_state[1]_i_3 ),
        .I5(present_state[0]),
        .O(\n_0_gaxi_full_sm.present_state[1]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT4 #(
    .INIT(16'hFD00)) 
     \gaxi_full_sm.present_state[1]_i_3 
       (.I0(\n_0_gaxif_wlast_gen.awlen_cntr_r[7]_i_3 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(s_axi_wvalid),
        .O(\n_0_gaxi_full_sm.present_state[1]_i_3 ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.present_state_reg[0] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(next_state[0]),
        .Q(present_state[0]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.present_state_reg[1] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(next_state[1]),
        .Q(present_state[1]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT5 #(
    .INIT(32'h003370FC)) 
     \gaxi_full_sm.w_ready_r_i_1 
       (.I0(\n_0_gaxi_full_sm.w_ready_r_i_2 ),
        .I1(present_state[0]),
        .I2(s_axi_awvalid),
        .I3(\n_0_gaxi_full_sm.w_ready_r_i_3 ),
        .I4(present_state[1]),
        .O(w_ready_c));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \gaxi_full_sm.w_ready_r_i_2 
       (.I0(I15),
        .I1(I14),
        .I2(I13),
        .O(\n_0_gaxi_full_sm.w_ready_r_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT4 #(
    .INIT(16'h0008)) 
     \gaxi_full_sm.w_ready_r_i_3 
       (.I0(s_axi_wvalid),
        .I1(\n_0_gaxif_wlast_gen.awlen_cntr_r[7]_i_3 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\n_0_gaxi_full_sm.w_ready_r_i_3 ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_full_sm.w_ready_r_reg 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(w_ready_c),
        .Q(s_axi_wready));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT4 #(
    .INIT(16'hBAAA)) 
     \gaxif_ms_addr_gen.addr_cnt_enb[12]_i_1 
       (.I0(\n_0_gaxi_full_sm.w_ready_r_i_3 ),
        .I1(s_axi_awburst[0]),
        .I2(s_axi_awburst[1]),
        .I3(addr_en_c),
        .O(O12));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \gaxif_ms_addr_gen.addr_cnt_enb[12]_i_2 
       (.I0(addr_en_c),
        .I1(s_axi_awburst[1]),
        .I2(s_axi_awburst[0]),
        .O(O5[4]));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT4 #(
    .INIT(16'h0040)) 
     \gaxif_ms_addr_gen.addr_cnt_enb[5]_i_1 
       (.I0(s_axi_awburst[0]),
        .I1(s_axi_awburst[1]),
        .I2(addr_en_c),
        .I3(I10),
        .O(O5[0]));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT4 #(
    .INIT(16'h0040)) 
     \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_1 
       (.I0(s_axi_awburst[0]),
        .I1(s_axi_awburst[1]),
        .I2(addr_en_c),
        .I3(I9),
        .O(O5[1]));
LUT6 #(
    .INIT(64'h444444440CCC44CC)) 
     \gaxif_ms_addr_gen.addr_cnt_enb[7]_i_1 
       (.I0(s_axi_awsize),
        .I1(O5[4]),
        .I2(I5),
        .I3(s_axi_awlen[2]),
        .I4(s_axi_awlen[1]),
        .I5(I6),
        .O(O5[2]));
LUT5 #(
    .INIT(32'h2022AAAA)) 
     \gaxif_ms_addr_gen.addr_cnt_enb[8]_i_1 
       (.I0(O5[4]),
        .I1(I6),
        .I2(s_axi_awlen[1]),
        .I3(s_axi_awlen[2]),
        .I4(I5),
        .O(O5[3]));
LUT6 #(
    .INIT(64'hFFFF0000AA9AAA9A)) 
     \gaxif_ms_addr_gen.bmg_address_r[10]_i_1 
       (.I0(I1[3]),
        .I1(I4),
        .I2(I1[2]),
        .I3(I3[3]),
        .I4(s_axi_awaddr[5]),
        .I5(addr_en_c),
        .O(D[5]));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gaxif_ms_addr_gen.bmg_address_r[11]_i_1 
       (.I0(s_axi_awaddr[6]),
        .I1(addr_en_c),
        .I2(ADDRBWRADDR[2]),
        .O(D[6]));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \gaxif_ms_addr_gen.bmg_address_r[12]_i_1 
       (.I0(addr_en_c),
        .I1(O2),
        .O(O10));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gaxif_ms_addr_gen.bmg_address_r[12]_i_2 
       (.I0(s_axi_awaddr[7]),
        .I1(addr_en_c),
        .I2(ADDRBWRADDR[3]),
        .O(D[7]));
LUT6 #(
    .INIT(64'hB8B8B8B88BB8B8B8)) 
     \gaxif_ms_addr_gen.bmg_address_r[5]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(addr_en_c),
        .I2(I1[0]),
        .I3(p_0_in_0),
        .I4(incr_en_r),
        .I5(I3[0]),
        .O(D[0]));
LUT3 #(
    .INIT(8'hB8)) 
     \gaxif_ms_addr_gen.bmg_address_r[6]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(addr_en_c),
        .I2(ADDRBWRADDR[0]),
        .O(D[1]));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \gaxif_ms_addr_gen.bmg_address_r[7]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(addr_en_c),
        .I2(ADDRBWRADDR[1]),
        .O(D[2]));
LUT5 #(
    .INIT(32'hFF00A9A9)) 
     \gaxif_ms_addr_gen.bmg_address_r[8]_i_1 
       (.I0(I1[1]),
        .I1(I2),
        .I2(I3[1]),
        .I3(s_axi_awaddr[3]),
        .I4(addr_en_c),
        .O(D[3]));
LUT5 #(
    .INIT(32'hFF00A9A9)) 
     \gaxif_ms_addr_gen.bmg_address_r[9]_i_1 
       (.I0(I1[2]),
        .I1(I4),
        .I2(I3[2]),
        .I3(s_axi_awaddr[4]),
        .I4(addr_en_c),
        .O(D[4]));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT4 #(
    .INIT(16'h4044)) 
     \gaxif_ms_addr_gen.incr_en_r_i_1 
       (.I0(present_state[1]),
        .I1(s_axi_awvalid),
        .I2(\n_0_gaxi_full_sm.aw_ready_r_i_3 ),
        .I3(present_state[0]),
        .O(addr_en_c));
LUT6 #(
    .INIT(64'h0000A8AAA8AA0000)) 
     \gaxif_ms_addr_gen.next_address_r[5]_i_3 
       (.I0(s_axi_wvalid),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(\n_0_gaxif_wlast_gen.awlen_cntr_r[7]_i_3 ),
        .I4(present_state[0]),
        .I5(present_state[1]),
        .O(O2));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT3 #(
    .INIT(8'h8B)) 
     \gaxif_wlast_gen.awlen_cntr_r[0]_i_1 
       (.I0(s_axi_awlen[0]),
        .I1(addr_en_c),
        .I2(Q[0]),
        .O(O11[0]));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT4 #(
    .INIT(16'hB88B)) 
     \gaxif_wlast_gen.awlen_cntr_r[1]_i_1 
       (.I0(s_axi_awlen[1]),
        .I1(addr_en_c),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(O11[1]));
LUT5 #(
    .INIT(32'hB8B8B88B)) 
     \gaxif_wlast_gen.awlen_cntr_r[2]_i_1 
       (.I0(s_axi_awlen[2]),
        .I1(addr_en_c),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(O11[2]));
LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
     \gaxif_wlast_gen.awlen_cntr_r[3]_i_1 
       (.I0(s_axi_awlen[3]),
        .I1(addr_en_c),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(O11[3]));
LUT4 #(
    .INIT(16'hB88B)) 
     \gaxif_wlast_gen.awlen_cntr_r[4]_i_1 
       (.I0(s_axi_awlen[4]),
        .I1(addr_en_c),
        .I2(Q[4]),
        .I3(I12),
        .O(O11[4]));
LUT4 #(
    .INIT(16'h8BB8)) 
     \gaxif_wlast_gen.awlen_cntr_r[5]_i_1 
       (.I0(s_axi_awlen[5]),
        .I1(addr_en_c),
        .I2(Q[5]),
        .I3(I11),
        .O(O11[5]));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT4 #(
    .INIT(16'h8BB8)) 
     \gaxif_wlast_gen.awlen_cntr_r[6]_i_1 
       (.I0(s_axi_awlen[6]),
        .I1(addr_en_c),
        .I2(Q[6]),
        .I3(\n_0_gaxif_wlast_gen.awlen_cntr_r[7]_i_3 ),
        .O(O11[6]));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \gaxif_wlast_gen.awlen_cntr_r[7]_i_1 
       (.I0(addr_en_c),
        .I1(O2),
        .I2(\n_0_gaxi_full_sm.w_ready_r_i_3 ),
        .O(E));
LUT5 #(
    .INIT(32'hB88BB8B8)) 
     \gaxif_wlast_gen.awlen_cntr_r[7]_i_2 
       (.I0(s_axi_awlen[7]),
        .I1(addr_en_c),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(\n_0_gaxif_wlast_gen.awlen_cntr_r[7]_i_3 ),
        .O(O11[7]));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \gaxif_wlast_gen.awlen_cntr_r[7]_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\n_0_gaxif_wlast_gen.awlen_cntr_r[7]_i_3 ));
endmodule

module RAMB_AXI_256x256blk_mem_axi_write_wrapper
   (O1,
    s_axi_wready,
    O2,
    O3,
    ADDRBWRADDR,
    s_axi_bid,
    s_aclk,
    AS,
    s_axi_wvalid,
    s_axi_awsize,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_awburst,
    s_axi_awid,
    s_aresetn);
  output O1;
  output s_axi_wready;
  output O2;
  output O3;
  output [7:0]ADDRBWRADDR;
  output [3:0]s_axi_bid;
  input s_aclk;
  input [0:0]AS;
  input s_axi_wvalid;
  input [2:0]s_axi_awsize;
  input [12:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input s_axi_awvalid;
  input s_axi_bready;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awid;
  input s_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]ADDRBWRADDR;
  wire [0:0]AS;
  wire O1;
  wire O2;
  wire O3;
  wire addr_en_c;
  wire [12:0]axi_addr_full_r;
  wire bvalid_d1_c;
  wire [1:0]bvalid_rd_cnt_c;
  wire [1:0]bvalid_rd_cnt_r;
  wire [7:0]\gaxif_wlast_gen.awlen_cntr_r_reg__0 ;
  wire incr_en_r;
  wire \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_25 ;
  wire \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_26 ;
  wire \n_0_bvalid_count_r[0]_i_1 ;
  wire \n_0_bvalid_count_r[1]_i_1 ;
  wire \n_0_bvalid_count_r[2]_i_1 ;
  wire \n_0_bvalid_count_r_reg[0] ;
  wire \n_0_bvalid_count_r_reg[1] ;
  wire \n_0_bvalid_count_r_reg[2] ;
  wire \n_0_gaxi_bid_gen.S_AXI_BID[0]_i_1 ;
  wire \n_0_gaxi_bid_gen.S_AXI_BID[1]_i_1 ;
  wire \n_0_gaxi_bid_gen.S_AXI_BID[2]_i_1 ;
  wire \n_0_gaxi_bid_gen.S_AXI_BID[3]_i_1 ;
  wire \n_0_gaxi_bid_gen.axi_bid_array_reg[0][0] ;
  wire \n_0_gaxi_bid_gen.axi_bid_array_reg[0][1] ;
  wire \n_0_gaxi_bid_gen.axi_bid_array_reg[0][2] ;
  wire \n_0_gaxi_bid_gen.axi_bid_array_reg[0][3] ;
  wire \n_0_gaxi_bid_gen.axi_bid_array_reg[1][0] ;
  wire \n_0_gaxi_bid_gen.axi_bid_array_reg[1][1] ;
  wire \n_0_gaxi_bid_gen.axi_bid_array_reg[1][2] ;
  wire \n_0_gaxi_bid_gen.axi_bid_array_reg[1][3] ;
  wire \n_0_gaxi_bid_gen.axi_bid_array_reg[2][0] ;
  wire \n_0_gaxi_bid_gen.axi_bid_array_reg[2][1] ;
  wire \n_0_gaxi_bid_gen.axi_bid_array_reg[2][2] ;
  wire \n_0_gaxi_bid_gen.axi_bid_array_reg[2][3] ;
  wire \n_0_gaxi_bid_gen.axi_bid_array_reg[3][0] ;
  wire \n_0_gaxi_bid_gen.axi_bid_array_reg[3][1] ;
  wire \n_0_gaxi_bid_gen.axi_bid_array_reg[3][2] ;
  wire \n_0_gaxi_bid_gen.axi_bid_array_reg[3][3] ;
  wire \n_0_gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1 ;
  wire \n_0_gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1 ;
  wire \n_0_gaxi_bid_gen.bvalid_wr_cnt_r_reg[0] ;
  wire \n_0_gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] ;
  wire \n_0_gaxi_bvalid_id_r.bvalid_r_i_1 ;
  wire \n_0_gaxif_ms_addr_gen.addr_cnt_enb[5]_i_2 ;
  wire \n_0_gaxif_ms_addr_gen.addr_cnt_enb[6]_i_2 ;
  wire \n_0_gaxif_ms_addr_gen.addr_cnt_enb[8]_i_2 ;
  wire \n_0_gaxif_ms_addr_gen.addr_cnt_enb[8]_i_3 ;
  wire \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[10] ;
  wire \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[11] ;
  wire \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[12] ;
  wire \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[5] ;
  wire \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[6] ;
  wire \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[7] ;
  wire \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[8] ;
  wire \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[9] ;
  wire \n_0_gaxif_ms_addr_gen.incr_en_r_i_2 ;
  wire \n_0_gaxif_ms_addr_gen.next_address_r[0]_i_1 ;
  wire \n_0_gaxif_ms_addr_gen.next_address_r[1]_i_1 ;
  wire \n_0_gaxif_ms_addr_gen.next_address_r[1]_i_2 ;
  wire \n_0_gaxif_ms_addr_gen.next_address_r[2]_i_1 ;
  wire \n_0_gaxif_ms_addr_gen.next_address_r[2]_i_2 ;
  wire \n_0_gaxif_ms_addr_gen.next_address_r[3]_i_1 ;
  wire \n_0_gaxif_ms_addr_gen.next_address_r[3]_i_2 ;
  wire \n_0_gaxif_ms_addr_gen.next_address_r[4]_i_1 ;
  wire \n_0_gaxif_ms_addr_gen.next_address_r[4]_i_2 ;
  wire \n_0_gaxif_ms_addr_gen.next_address_r[5]_i_1 ;
  wire \n_0_gaxif_ms_addr_gen.next_address_r[5]_i_2 ;
  wire \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[0] ;
  wire \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[1] ;
  wire \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[2] ;
  wire \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[3] ;
  wire \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[4] ;
  wire \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[5] ;
  wire \n_0_gaxif_wlast_gen.awlen_cntr_r[4]_i_2 ;
  wire \n_0_gaxif_wlast_gen.awlen_cntr_r[5]_i_2 ;
  wire n_10_axi_wr_fsm;
  wire n_11_axi_wr_fsm;
  wire n_12_axi_wr_fsm;
  wire n_13_axi_wr_fsm;
  wire n_14_axi_wr_fsm;
  wire n_15_axi_wr_fsm;
  wire n_16_axi_wr_fsm;
  wire n_17_axi_wr_fsm;
  wire n_18_axi_wr_fsm;
  wire n_19_axi_wr_fsm;
  wire n_20_axi_wr_fsm;
  wire n_21_axi_wr_fsm;
  wire n_22_axi_wr_fsm;
  wire n_23_axi_wr_fsm;
  wire n_24_axi_wr_fsm;
  wire n_33_axi_wr_fsm;
  wire n_3_axi_wr_fsm;
  wire n_4_axi_wr_fsm;
  wire n_5_axi_wr_fsm;
  wire n_7_axi_wr_fsm;
  wire n_8_axi_wr_fsm;
  wire n_9_axi_wr_fsm;
  wire [5:0]num_of_bytes_c;
  wire [7:0]p_0_in;
  wire p_0_in_0;
  wire s_aclk;
  wire s_aresetn;
  wire [12:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [3:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_wready;
  wire s_axi_wvalid;

GND GND
       (.G(\<const0> ));
LUT6 #(
    .INIT(64'hAAAAAAAA9AAAAAAA)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_11 
       (.I0(axi_addr_full_r[12]),
        .I1(\n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[12] ),
        .I2(axi_addr_full_r[11]),
        .I3(axi_addr_full_r[10]),
        .I4(axi_addr_full_r[9]),
        .I5(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_25 ),
        .O(ADDRBWRADDR[7]));
LUT5 #(
    .INIT(32'hAAAA9AAA)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_12 
       (.I0(axi_addr_full_r[11]),
        .I1(\n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[11] ),
        .I2(axi_addr_full_r[10]),
        .I3(axi_addr_full_r[9]),
        .I4(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_25 ),
        .O(ADDRBWRADDR[6]));
LUT4 #(
    .INIT(16'hAA9A)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_13 
       (.I0(axi_addr_full_r[10]),
        .I1(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_25 ),
        .I2(axi_addr_full_r[9]),
        .I3(\n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[10] ),
        .O(ADDRBWRADDR[5]));
LUT3 #(
    .INIT(8'hA9)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_14 
       (.I0(axi_addr_full_r[9]),
        .I1(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_25 ),
        .I2(\n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[9] ),
        .O(ADDRBWRADDR[4]));
LUT3 #(
    .INIT(8'hA9)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_15 
       (.I0(axi_addr_full_r[8]),
        .I1(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_26 ),
        .I2(\n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[8] ),
        .O(ADDRBWRADDR[3]));
LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAAA)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_16 
       (.I0(axi_addr_full_r[7]),
        .I1(axi_addr_full_r[5]),
        .I2(p_0_in_0),
        .I3(incr_en_r),
        .I4(axi_addr_full_r[6]),
        .I5(\n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[7] ),
        .O(ADDRBWRADDR[2]));
LUT5 #(
    .INIT(32'hAAAA6AAA)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_17 
       (.I0(axi_addr_full_r[6]),
        .I1(incr_en_r),
        .I2(p_0_in_0),
        .I3(axi_addr_full_r[5]),
        .I4(\n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[6] ),
        .O(ADDRBWRADDR[1]));
LUT4 #(
    .INIT(16'hAA6A)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_18 
       (.I0(axi_addr_full_r[5]),
        .I1(p_0_in_0),
        .I2(incr_en_r),
        .I3(\n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[5] ),
        .O(ADDRBWRADDR[0]));
LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_25 
       (.I0(axi_addr_full_r[7]),
        .I1(axi_addr_full_r[5]),
        .I2(p_0_in_0),
        .I3(incr_en_r),
        .I4(axi_addr_full_r[6]),
        .I5(axi_addr_full_r[8]),
        .O(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_25 ));
LUT5 #(
    .INIT(32'h7FFFFFFF)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_26 
       (.I0(axi_addr_full_r[6]),
        .I1(incr_en_r),
        .I2(p_0_in_0),
        .I3(axi_addr_full_r[5]),
        .I4(axi_addr_full_r[7]),
        .O(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_26 ));
VCC VCC
       (.P(\<const1> ));
RAMB_AXI_256x256blk_mem_axi_write_fsm axi_wr_fsm
       (.ADDRBWRADDR({ADDRBWRADDR[7:6],ADDRBWRADDR[2:1]}),
        .AS(AS),
        .D({n_7_axi_wr_fsm,n_8_axi_wr_fsm,n_9_axi_wr_fsm,n_10_axi_wr_fsm,n_11_axi_wr_fsm,n_12_axi_wr_fsm,n_13_axi_wr_fsm,n_14_axi_wr_fsm}),
        .E(n_5_axi_wr_fsm),
        .I1({axi_addr_full_r[10:8],axi_addr_full_r[5]}),
        .I10(\n_0_gaxif_ms_addr_gen.addr_cnt_enb[5]_i_2 ),
        .I11(\n_0_gaxif_wlast_gen.awlen_cntr_r[5]_i_2 ),
        .I12(\n_0_gaxif_wlast_gen.awlen_cntr_r[4]_i_2 ),
        .I13(\n_0_bvalid_count_r_reg[1] ),
        .I14(\n_0_bvalid_count_r_reg[2] ),
        .I15(\n_0_bvalid_count_r_reg[0] ),
        .I2(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_26 ),
        .I3({\n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[10] ,\n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[9] ,\n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[8] ,\n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[5] }),
        .I4(\n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_25 ),
        .I5(\n_0_gaxif_ms_addr_gen.addr_cnt_enb[8]_i_3 ),
        .I6(\n_0_gaxif_ms_addr_gen.addr_cnt_enb[8]_i_2 ),
        .I7(\n_0_gaxi_bid_gen.bvalid_wr_cnt_r_reg[0] ),
        .I8(\n_0_gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] ),
        .I9(\n_0_gaxif_ms_addr_gen.addr_cnt_enb[6]_i_2 ),
        .O1(O1),
        .O10(n_24_axi_wr_fsm),
        .O11(p_0_in),
        .O12(n_33_axi_wr_fsm),
        .O2(n_3_axi_wr_fsm),
        .O3(O3),
        .O4(n_4_axi_wr_fsm),
        .O5({n_15_axi_wr_fsm,n_16_axi_wr_fsm,n_17_axi_wr_fsm,n_18_axi_wr_fsm,n_19_axi_wr_fsm}),
        .O6(n_20_axi_wr_fsm),
        .O7(n_21_axi_wr_fsm),
        .O8(n_22_axi_wr_fsm),
        .O9(n_23_axi_wr_fsm),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg__0 ),
        .addr_en_c(addr_en_c),
        .incr_en_r(incr_en_r),
        .p_0_in_0(p_0_in_0),
        .s_aclk(s_aclk),
        .s_axi_awaddr(s_axi_awaddr[12:5]),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awsize(s_axi_awsize[2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
LUT6 #(
    .INIT(64'hF00F0F0F0EF0F0F0)) 
     \bvalid_count_r[0]_i_1 
       (.I0(\n_0_bvalid_count_r_reg[1] ),
        .I1(\n_0_bvalid_count_r_reg[2] ),
        .I2(\n_0_bvalid_count_r_reg[0] ),
        .I3(s_axi_bready),
        .I4(O2),
        .I5(n_4_axi_wr_fsm),
        .O(\n_0_bvalid_count_r[0]_i_1 ));
LUT6 #(
    .INIT(64'hAA5A5A5AA4AAAAAA)) 
     \bvalid_count_r[1]_i_1 
       (.I0(\n_0_bvalid_count_r_reg[1] ),
        .I1(\n_0_bvalid_count_r_reg[2] ),
        .I2(\n_0_bvalid_count_r_reg[0] ),
        .I3(s_axi_bready),
        .I4(O2),
        .I5(n_4_axi_wr_fsm),
        .O(\n_0_bvalid_count_r[1]_i_1 ));
LUT6 #(
    .INIT(64'hCC6C6C6CC8CCCCCC)) 
     \bvalid_count_r[2]_i_1 
       (.I0(\n_0_bvalid_count_r_reg[1] ),
        .I1(\n_0_bvalid_count_r_reg[2] ),
        .I2(\n_0_bvalid_count_r_reg[0] ),
        .I3(s_axi_bready),
        .I4(O2),
        .I5(n_4_axi_wr_fsm),
        .O(\n_0_bvalid_count_r[2]_i_1 ));
FDCE #(
    .INIT(1'b0)) 
     \bvalid_count_r_reg[0] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(\n_0_bvalid_count_r[0]_i_1 ),
        .Q(\n_0_bvalid_count_r_reg[0] ));
FDCE #(
    .INIT(1'b0)) 
     \bvalid_count_r_reg[1] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(\n_0_bvalid_count_r[1]_i_1 ),
        .Q(\n_0_bvalid_count_r_reg[1] ));
FDCE #(
    .INIT(1'b0)) 
     \bvalid_count_r_reg[2] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(\n_0_bvalid_count_r[2]_i_1 ),
        .Q(\n_0_bvalid_count_r_reg[2] ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \gaxi_bid_gen.S_AXI_BID[0]_i_1 
       (.I0(\n_0_gaxi_bid_gen.axi_bid_array_reg[3][0] ),
        .I1(\n_0_gaxi_bid_gen.axi_bid_array_reg[1][0] ),
        .I2(bvalid_rd_cnt_c[0]),
        .I3(\n_0_gaxi_bid_gen.axi_bid_array_reg[2][0] ),
        .I4(bvalid_rd_cnt_c[1]),
        .I5(\n_0_gaxi_bid_gen.axi_bid_array_reg[0][0] ),
        .O(\n_0_gaxi_bid_gen.S_AXI_BID[0]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \gaxi_bid_gen.S_AXI_BID[1]_i_1 
       (.I0(\n_0_gaxi_bid_gen.axi_bid_array_reg[3][1] ),
        .I1(\n_0_gaxi_bid_gen.axi_bid_array_reg[1][1] ),
        .I2(bvalid_rd_cnt_c[0]),
        .I3(\n_0_gaxi_bid_gen.axi_bid_array_reg[2][1] ),
        .I4(bvalid_rd_cnt_c[1]),
        .I5(\n_0_gaxi_bid_gen.axi_bid_array_reg[0][1] ),
        .O(\n_0_gaxi_bid_gen.S_AXI_BID[1]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \gaxi_bid_gen.S_AXI_BID[2]_i_1 
       (.I0(\n_0_gaxi_bid_gen.axi_bid_array_reg[3][2] ),
        .I1(\n_0_gaxi_bid_gen.axi_bid_array_reg[1][2] ),
        .I2(bvalid_rd_cnt_c[0]),
        .I3(\n_0_gaxi_bid_gen.axi_bid_array_reg[2][2] ),
        .I4(bvalid_rd_cnt_c[1]),
        .I5(\n_0_gaxi_bid_gen.axi_bid_array_reg[0][2] ),
        .O(\n_0_gaxi_bid_gen.S_AXI_BID[2]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \gaxi_bid_gen.S_AXI_BID[3]_i_1 
       (.I0(\n_0_gaxi_bid_gen.axi_bid_array_reg[3][3] ),
        .I1(\n_0_gaxi_bid_gen.axi_bid_array_reg[1][3] ),
        .I2(bvalid_rd_cnt_c[0]),
        .I3(\n_0_gaxi_bid_gen.axi_bid_array_reg[2][3] ),
        .I4(bvalid_rd_cnt_c[1]),
        .I5(\n_0_gaxi_bid_gen.axi_bid_array_reg[0][3] ),
        .O(\n_0_gaxi_bid_gen.S_AXI_BID[3]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.S_AXI_BID_reg[0] 
       (.C(s_aclk),
        .CE(s_aresetn),
        .D(\n_0_gaxi_bid_gen.S_AXI_BID[0]_i_1 ),
        .Q(s_axi_bid[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.S_AXI_BID_reg[1] 
       (.C(s_aclk),
        .CE(s_aresetn),
        .D(\n_0_gaxi_bid_gen.S_AXI_BID[1]_i_1 ),
        .Q(s_axi_bid[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.S_AXI_BID_reg[2] 
       (.C(s_aclk),
        .CE(s_aresetn),
        .D(\n_0_gaxi_bid_gen.S_AXI_BID[2]_i_1 ),
        .Q(s_axi_bid[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.S_AXI_BID_reg[3] 
       (.C(s_aclk),
        .CE(s_aresetn),
        .D(\n_0_gaxi_bid_gen.S_AXI_BID[3]_i_1 ),
        .Q(s_axi_bid[3]),
        .R(\<const0> ));
(* RAM_STYLE = "pipe_distributed" *) 
   FDRE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.axi_bid_array_reg[0][0] 
       (.C(s_aclk),
        .CE(n_20_axi_wr_fsm),
        .D(s_axi_awid[0]),
        .Q(\n_0_gaxi_bid_gen.axi_bid_array_reg[0][0] ),
        .R(\<const0> ));
(* RAM_STYLE = "pipe_distributed" *) 
   FDRE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.axi_bid_array_reg[0][1] 
       (.C(s_aclk),
        .CE(n_20_axi_wr_fsm),
        .D(s_axi_awid[1]),
        .Q(\n_0_gaxi_bid_gen.axi_bid_array_reg[0][1] ),
        .R(\<const0> ));
(* RAM_STYLE = "pipe_distributed" *) 
   FDRE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.axi_bid_array_reg[0][2] 
       (.C(s_aclk),
        .CE(n_20_axi_wr_fsm),
        .D(s_axi_awid[2]),
        .Q(\n_0_gaxi_bid_gen.axi_bid_array_reg[0][2] ),
        .R(\<const0> ));
(* RAM_STYLE = "pipe_distributed" *) 
   FDRE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.axi_bid_array_reg[0][3] 
       (.C(s_aclk),
        .CE(n_20_axi_wr_fsm),
        .D(s_axi_awid[3]),
        .Q(\n_0_gaxi_bid_gen.axi_bid_array_reg[0][3] ),
        .R(\<const0> ));
(* RAM_STYLE = "pipe_distributed" *) 
   FDRE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.axi_bid_array_reg[1][0] 
       (.C(s_aclk),
        .CE(n_23_axi_wr_fsm),
        .D(s_axi_awid[0]),
        .Q(\n_0_gaxi_bid_gen.axi_bid_array_reg[1][0] ),
        .R(\<const0> ));
(* RAM_STYLE = "pipe_distributed" *) 
   FDRE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.axi_bid_array_reg[1][1] 
       (.C(s_aclk),
        .CE(n_23_axi_wr_fsm),
        .D(s_axi_awid[1]),
        .Q(\n_0_gaxi_bid_gen.axi_bid_array_reg[1][1] ),
        .R(\<const0> ));
(* RAM_STYLE = "pipe_distributed" *) 
   FDRE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.axi_bid_array_reg[1][2] 
       (.C(s_aclk),
        .CE(n_23_axi_wr_fsm),
        .D(s_axi_awid[2]),
        .Q(\n_0_gaxi_bid_gen.axi_bid_array_reg[1][2] ),
        .R(\<const0> ));
(* RAM_STYLE = "pipe_distributed" *) 
   FDRE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.axi_bid_array_reg[1][3] 
       (.C(s_aclk),
        .CE(n_23_axi_wr_fsm),
        .D(s_axi_awid[3]),
        .Q(\n_0_gaxi_bid_gen.axi_bid_array_reg[1][3] ),
        .R(\<const0> ));
(* RAM_STYLE = "pipe_distributed" *) 
   FDRE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.axi_bid_array_reg[2][0] 
       (.C(s_aclk),
        .CE(n_22_axi_wr_fsm),
        .D(s_axi_awid[0]),
        .Q(\n_0_gaxi_bid_gen.axi_bid_array_reg[2][0] ),
        .R(\<const0> ));
(* RAM_STYLE = "pipe_distributed" *) 
   FDRE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.axi_bid_array_reg[2][1] 
       (.C(s_aclk),
        .CE(n_22_axi_wr_fsm),
        .D(s_axi_awid[1]),
        .Q(\n_0_gaxi_bid_gen.axi_bid_array_reg[2][1] ),
        .R(\<const0> ));
(* RAM_STYLE = "pipe_distributed" *) 
   FDRE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.axi_bid_array_reg[2][2] 
       (.C(s_aclk),
        .CE(n_22_axi_wr_fsm),
        .D(s_axi_awid[2]),
        .Q(\n_0_gaxi_bid_gen.axi_bid_array_reg[2][2] ),
        .R(\<const0> ));
(* RAM_STYLE = "pipe_distributed" *) 
   FDRE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.axi_bid_array_reg[2][3] 
       (.C(s_aclk),
        .CE(n_22_axi_wr_fsm),
        .D(s_axi_awid[3]),
        .Q(\n_0_gaxi_bid_gen.axi_bid_array_reg[2][3] ),
        .R(\<const0> ));
(* RAM_STYLE = "pipe_distributed" *) 
   FDRE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.axi_bid_array_reg[3][0] 
       (.C(s_aclk),
        .CE(n_21_axi_wr_fsm),
        .D(s_axi_awid[0]),
        .Q(\n_0_gaxi_bid_gen.axi_bid_array_reg[3][0] ),
        .R(\<const0> ));
(* RAM_STYLE = "pipe_distributed" *) 
   FDRE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.axi_bid_array_reg[3][1] 
       (.C(s_aclk),
        .CE(n_21_axi_wr_fsm),
        .D(s_axi_awid[1]),
        .Q(\n_0_gaxi_bid_gen.axi_bid_array_reg[3][1] ),
        .R(\<const0> ));
(* RAM_STYLE = "pipe_distributed" *) 
   FDRE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.axi_bid_array_reg[3][2] 
       (.C(s_aclk),
        .CE(n_21_axi_wr_fsm),
        .D(s_axi_awid[2]),
        .Q(\n_0_gaxi_bid_gen.axi_bid_array_reg[3][2] ),
        .R(\<const0> ));
(* RAM_STYLE = "pipe_distributed" *) 
   FDRE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.axi_bid_array_reg[3][3] 
       (.C(s_aclk),
        .CE(n_21_axi_wr_fsm),
        .D(s_axi_awid[3]),
        .Q(\n_0_gaxi_bid_gen.axi_bid_array_reg[3][3] ),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \gaxi_bid_gen.bvalid_rd_cnt_r[0]_i_1 
       (.I0(bvalid_rd_cnt_r[0]),
        .I1(O2),
        .I2(s_axi_bready),
        .O(bvalid_rd_cnt_c[0]));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \gaxi_bid_gen.bvalid_rd_cnt_r[1]_i_1 
       (.I0(bvalid_rd_cnt_r[1]),
        .I1(s_axi_bready),
        .I2(O2),
        .I3(bvalid_rd_cnt_r[0]),
        .O(bvalid_rd_cnt_c[1]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.bvalid_rd_cnt_r_reg[0] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(bvalid_rd_cnt_c[0]),
        .Q(bvalid_rd_cnt_r[0]));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.bvalid_rd_cnt_r_reg[1] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(bvalid_rd_cnt_c[1]),
        .Q(bvalid_rd_cnt_r[1]));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1 
       (.I0(n_4_axi_wr_fsm),
        .I1(\n_0_gaxi_bid_gen.bvalid_wr_cnt_r_reg[0] ),
        .O(\n_0_gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1 
       (.I0(\n_0_gaxi_bid_gen.bvalid_wr_cnt_r_reg[0] ),
        .I1(n_4_axi_wr_fsm),
        .I2(\n_0_gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] ),
        .O(\n_0_gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1 ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(\n_0_gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1 ),
        .Q(\n_0_gaxi_bid_gen.bvalid_wr_cnt_r_reg[0] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(\n_0_gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1 ),
        .Q(\n_0_gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_bvalid_id_r.bvalid_d1_c_reg 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(n_4_axi_wr_fsm),
        .Q(bvalid_d1_c));
LUT5 #(
    .INIT(32'hFEFFAAAA)) 
     \gaxi_bvalid_id_r.bvalid_r_i_1 
       (.I0(bvalid_d1_c),
        .I1(\n_0_bvalid_count_r_reg[1] ),
        .I2(\n_0_bvalid_count_r_reg[2] ),
        .I3(s_axi_bready),
        .I4(O2),
        .O(\n_0_gaxi_bvalid_id_r.bvalid_r_i_1 ));
FDCE #(
    .INIT(1'b0)) 
     \gaxi_bvalid_id_r.bvalid_r_reg 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(\n_0_gaxi_bvalid_id_r.bvalid_r_i_1 ),
        .Q(O2));
LUT6 #(
    .INIT(64'hFFFFFFFEEECE0000)) 
     \gaxif_ms_addr_gen.addr_cnt_enb[5]_i_2 
       (.I0(s_axi_awlen[2]),
        .I1(\n_0_gaxif_ms_addr_gen.addr_cnt_enb[8]_i_2 ),
        .I2(s_axi_awlen[1]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[2]),
        .O(\n_0_gaxif_ms_addr_gen.addr_cnt_enb[5]_i_2 ));
LUT6 #(
    .INIT(64'hFEFEFEEECE000000)) 
     \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_2 
       (.I0(s_axi_awlen[2]),
        .I1(\n_0_gaxif_ms_addr_gen.addr_cnt_enb[8]_i_2 ),
        .I2(s_axi_awlen[1]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[2]),
        .O(\n_0_gaxif_ms_addr_gen.addr_cnt_enb[6]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
     \gaxif_ms_addr_gen.addr_cnt_enb[8]_i_2 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awlen[5]),
        .I2(s_axi_awlen[6]),
        .I3(s_axi_awlen[7]),
        .I4(s_axi_awlen[3]),
        .I5(s_axi_awlen[4]),
        .O(\n_0_gaxif_ms_addr_gen.addr_cnt_enb[8]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT3 #(
    .INIT(8'hA8)) 
     \gaxif_ms_addr_gen.addr_cnt_enb[8]_i_3 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .O(\n_0_gaxif_ms_addr_gen.addr_cnt_enb[8]_i_3 ));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.addr_cnt_enb_reg[10] 
       (.C(s_aclk),
        .CE(n_33_axi_wr_fsm),
        .CLR(AS),
        .D(n_15_axi_wr_fsm),
        .Q(\n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[10] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.addr_cnt_enb_reg[11] 
       (.C(s_aclk),
        .CE(n_33_axi_wr_fsm),
        .CLR(AS),
        .D(n_15_axi_wr_fsm),
        .Q(\n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[11] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.addr_cnt_enb_reg[12] 
       (.C(s_aclk),
        .CE(n_33_axi_wr_fsm),
        .CLR(AS),
        .D(n_15_axi_wr_fsm),
        .Q(\n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[12] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.addr_cnt_enb_reg[5] 
       (.C(s_aclk),
        .CE(n_33_axi_wr_fsm),
        .CLR(AS),
        .D(n_19_axi_wr_fsm),
        .Q(\n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[5] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.addr_cnt_enb_reg[6] 
       (.C(s_aclk),
        .CE(n_33_axi_wr_fsm),
        .CLR(AS),
        .D(n_18_axi_wr_fsm),
        .Q(\n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[6] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.addr_cnt_enb_reg[7] 
       (.C(s_aclk),
        .CE(n_33_axi_wr_fsm),
        .CLR(AS),
        .D(n_17_axi_wr_fsm),
        .Q(\n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[7] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.addr_cnt_enb_reg[8] 
       (.C(s_aclk),
        .CE(n_33_axi_wr_fsm),
        .CLR(AS),
        .D(n_16_axi_wr_fsm),
        .Q(\n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[8] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.addr_cnt_enb_reg[9] 
       (.C(s_aclk),
        .CE(n_33_axi_wr_fsm),
        .CLR(AS),
        .D(n_15_axi_wr_fsm),
        .Q(\n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[9] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.bmg_address_r_reg[10] 
       (.C(s_aclk),
        .CE(n_24_axi_wr_fsm),
        .CLR(AS),
        .D(n_9_axi_wr_fsm),
        .Q(axi_addr_full_r[10]));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.bmg_address_r_reg[11] 
       (.C(s_aclk),
        .CE(n_24_axi_wr_fsm),
        .CLR(AS),
        .D(n_8_axi_wr_fsm),
        .Q(axi_addr_full_r[11]));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.bmg_address_r_reg[12] 
       (.C(s_aclk),
        .CE(n_24_axi_wr_fsm),
        .CLR(AS),
        .D(n_7_axi_wr_fsm),
        .Q(axi_addr_full_r[12]));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.bmg_address_r_reg[5] 
       (.C(s_aclk),
        .CE(n_24_axi_wr_fsm),
        .CLR(AS),
        .D(n_14_axi_wr_fsm),
        .Q(axi_addr_full_r[5]));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.bmg_address_r_reg[6] 
       (.C(s_aclk),
        .CE(n_24_axi_wr_fsm),
        .CLR(AS),
        .D(n_13_axi_wr_fsm),
        .Q(axi_addr_full_r[6]));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.bmg_address_r_reg[7] 
       (.C(s_aclk),
        .CE(n_24_axi_wr_fsm),
        .CLR(AS),
        .D(n_12_axi_wr_fsm),
        .Q(axi_addr_full_r[7]));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.bmg_address_r_reg[8] 
       (.C(s_aclk),
        .CE(n_24_axi_wr_fsm),
        .CLR(AS),
        .D(n_11_axi_wr_fsm),
        .Q(axi_addr_full_r[8]));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.bmg_address_r_reg[9] 
       (.C(s_aclk),
        .CE(n_24_axi_wr_fsm),
        .CLR(AS),
        .D(n_10_axi_wr_fsm),
        .Q(axi_addr_full_r[9]));
LUT2 #(
    .INIT(4'hE)) 
     \gaxif_ms_addr_gen.incr_en_r_i_2 
       (.I0(s_axi_awburst[0]),
        .I1(s_axi_awburst[1]),
        .O(\n_0_gaxif_ms_addr_gen.incr_en_r_i_2 ));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.incr_en_r_reg 
       (.C(s_aclk),
        .CE(addr_en_c),
        .CLR(AS),
        .D(\n_0_gaxif_ms_addr_gen.incr_en_r_i_2 ),
        .Q(incr_en_r));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT5 #(
    .INIT(32'hA3AFACA0)) 
     \gaxif_ms_addr_gen.next_address_r[0]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(\n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[0] ),
        .I2(addr_en_c),
        .I3(n_3_axi_wr_fsm),
        .I4(axi_addr_full_r[0]),
        .O(\n_0_gaxif_ms_addr_gen.next_address_r[0]_i_1 ));
LUT6 #(
    .INIT(64'hAAC3AAFFAA3CAA00)) 
     \gaxif_ms_addr_gen.next_address_r[1]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(\n_0_gaxif_ms_addr_gen.next_address_r[1]_i_2 ),
        .I2(\n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[1] ),
        .I3(addr_en_c),
        .I4(n_3_axi_wr_fsm),
        .I5(axi_addr_full_r[1]),
        .O(\n_0_gaxif_ms_addr_gen.next_address_r[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \gaxif_ms_addr_gen.next_address_r[1]_i_2 
       (.I0(axi_addr_full_r[0]),
        .I1(\n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[0] ),
        .O(\n_0_gaxif_ms_addr_gen.next_address_r[1]_i_2 ));
LUT6 #(
    .INIT(64'hAA3CAAFFAAC3AA00)) 
     \gaxif_ms_addr_gen.next_address_r[2]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(\n_0_gaxif_ms_addr_gen.next_address_r[2]_i_2 ),
        .I2(\n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[2] ),
        .I3(addr_en_c),
        .I4(n_3_axi_wr_fsm),
        .I5(axi_addr_full_r[2]),
        .O(\n_0_gaxif_ms_addr_gen.next_address_r[2]_i_1 ));
LUT4 #(
    .INIT(16'h157F)) 
     \gaxif_ms_addr_gen.next_address_r[2]_i_2 
       (.I0(axi_addr_full_r[1]),
        .I1(\n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[0] ),
        .I2(axi_addr_full_r[0]),
        .I3(\n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[1] ),
        .O(\n_0_gaxif_ms_addr_gen.next_address_r[2]_i_2 ));
LUT6 #(
    .INIT(64'hAAC3AAFFAA3CAA00)) 
     \gaxif_ms_addr_gen.next_address_r[3]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(\n_0_gaxif_ms_addr_gen.next_address_r[3]_i_2 ),
        .I2(\n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[3] ),
        .I3(addr_en_c),
        .I4(n_3_axi_wr_fsm),
        .I5(axi_addr_full_r[3]),
        .O(\n_0_gaxif_ms_addr_gen.next_address_r[3]_i_1 ));
LUT6 #(
    .INIT(64'hFEEEEAAAA8888000)) 
     \gaxif_ms_addr_gen.next_address_r[3]_i_2 
       (.I0(\n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[2] ),
        .I1(\n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[1] ),
        .I2(axi_addr_full_r[0]),
        .I3(\n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[0] ),
        .I4(axi_addr_full_r[1]),
        .I5(axi_addr_full_r[2]),
        .O(\n_0_gaxif_ms_addr_gen.next_address_r[3]_i_2 ));
LUT6 #(
    .INIT(64'hAA3CAAFFAAC3AA00)) 
     \gaxif_ms_addr_gen.next_address_r[4]_i_1 
       (.I0(s_axi_awaddr[4]),
        .I1(\n_0_gaxif_ms_addr_gen.next_address_r[4]_i_2 ),
        .I2(\n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[4] ),
        .I3(addr_en_c),
        .I4(n_3_axi_wr_fsm),
        .I5(axi_addr_full_r[4]),
        .O(\n_0_gaxif_ms_addr_gen.next_address_r[4]_i_1 ));
LUT3 #(
    .INIT(8'h17)) 
     \gaxif_ms_addr_gen.next_address_r[4]_i_2 
       (.I0(axi_addr_full_r[3]),
        .I1(\n_0_gaxif_ms_addr_gen.next_address_r[3]_i_2 ),
        .I2(\n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[3] ),
        .O(\n_0_gaxif_ms_addr_gen.next_address_r[4]_i_2 ));
LUT4 #(
    .INIT(16'h2320)) 
     \gaxif_ms_addr_gen.next_address_r[5]_i_1 
       (.I0(\n_0_gaxif_ms_addr_gen.next_address_r[5]_i_2 ),
        .I1(addr_en_c),
        .I2(n_3_axi_wr_fsm),
        .I3(p_0_in_0),
        .O(\n_0_gaxif_ms_addr_gen.next_address_r[5]_i_1 ));
LUT6 #(
    .INIT(64'h55565666666A6AAA)) 
     \gaxif_ms_addr_gen.next_address_r[5]_i_2 
       (.I0(\n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[5] ),
        .I1(axi_addr_full_r[4]),
        .I2(axi_addr_full_r[3]),
        .I3(\n_0_gaxif_ms_addr_gen.next_address_r[3]_i_2 ),
        .I4(\n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[3] ),
        .I5(\n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[4] ),
        .O(\n_0_gaxif_ms_addr_gen.next_address_r[5]_i_2 ));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.next_address_r_reg[0] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(\n_0_gaxif_ms_addr_gen.next_address_r[0]_i_1 ),
        .Q(axi_addr_full_r[0]));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.next_address_r_reg[1] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(\n_0_gaxif_ms_addr_gen.next_address_r[1]_i_1 ),
        .Q(axi_addr_full_r[1]));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.next_address_r_reg[2] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(\n_0_gaxif_ms_addr_gen.next_address_r[2]_i_1 ),
        .Q(axi_addr_full_r[2]));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.next_address_r_reg[3] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(\n_0_gaxif_ms_addr_gen.next_address_r[3]_i_1 ),
        .Q(axi_addr_full_r[3]));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.next_address_r_reg[4] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(\n_0_gaxif_ms_addr_gen.next_address_r[4]_i_1 ),
        .Q(axi_addr_full_r[4]));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.next_address_r_reg[5] 
       (.C(s_aclk),
        .CE(\<const1> ),
        .CLR(AS),
        .D(\n_0_gaxif_ms_addr_gen.next_address_r[5]_i_1 ),
        .Q(p_0_in_0));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT3 #(
    .INIT(8'h01)) 
     \gaxif_ms_addr_gen.num_of_bytes_r[0]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .O(num_of_bytes_c[0]));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \gaxif_ms_addr_gen.num_of_bytes_r[1]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .O(num_of_bytes_c[1]));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT3 #(
    .INIT(8'h04)) 
     \gaxif_ms_addr_gen.num_of_bytes_r[2]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .O(num_of_bytes_c[2]));
LUT3 #(
    .INIT(8'h08)) 
     \gaxif_ms_addr_gen.num_of_bytes_r[3]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .O(num_of_bytes_c[3]));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \gaxif_ms_addr_gen.num_of_bytes_r[4]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .O(num_of_bytes_c[4]));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT3 #(
    .INIT(8'h40)) 
     \gaxif_ms_addr_gen.num_of_bytes_r[5]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .O(num_of_bytes_c[5]));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.num_of_bytes_r_reg[0] 
       (.C(s_aclk),
        .CE(addr_en_c),
        .CLR(AS),
        .D(num_of_bytes_c[0]),
        .Q(\n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[0] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.num_of_bytes_r_reg[1] 
       (.C(s_aclk),
        .CE(addr_en_c),
        .CLR(AS),
        .D(num_of_bytes_c[1]),
        .Q(\n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[1] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.num_of_bytes_r_reg[2] 
       (.C(s_aclk),
        .CE(addr_en_c),
        .CLR(AS),
        .D(num_of_bytes_c[2]),
        .Q(\n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[2] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.num_of_bytes_r_reg[3] 
       (.C(s_aclk),
        .CE(addr_en_c),
        .CLR(AS),
        .D(num_of_bytes_c[3]),
        .Q(\n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[3] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.num_of_bytes_r_reg[4] 
       (.C(s_aclk),
        .CE(addr_en_c),
        .CLR(AS),
        .D(num_of_bytes_c[4]),
        .Q(\n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[4] ));
FDCE #(
    .INIT(1'b0)) 
     \gaxif_ms_addr_gen.num_of_bytes_r_reg[5] 
       (.C(s_aclk),
        .CE(addr_en_c),
        .CLR(AS),
        .D(num_of_bytes_c[5]),
        .Q(\n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[5] ));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \gaxif_wlast_gen.awlen_cntr_r[4]_i_2 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [3]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [2]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [0]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [1]),
        .O(\n_0_gaxif_wlast_gen.awlen_cntr_r[4]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT5 #(
    .INIT(32'h00000001)) 
     \gaxif_wlast_gen.awlen_cntr_r[5]_i_2 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [4]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [1]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [0]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [2]),
        .I4(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [3]),
        .O(\n_0_gaxif_wlast_gen.awlen_cntr_r[5]_i_2 ));
(* counter = "1" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gaxif_wlast_gen.awlen_cntr_r_reg[0] 
       (.C(s_aclk),
        .CE(n_5_axi_wr_fsm),
        .D(p_0_in[0]),
        .PRE(AS),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [0]));
(* counter = "1" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gaxif_wlast_gen.awlen_cntr_r_reg[1] 
       (.C(s_aclk),
        .CE(n_5_axi_wr_fsm),
        .D(p_0_in[1]),
        .PRE(AS),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [1]));
(* counter = "1" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gaxif_wlast_gen.awlen_cntr_r_reg[2] 
       (.C(s_aclk),
        .CE(n_5_axi_wr_fsm),
        .D(p_0_in[2]),
        .PRE(AS),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [2]));
(* counter = "1" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gaxif_wlast_gen.awlen_cntr_r_reg[3] 
       (.C(s_aclk),
        .CE(n_5_axi_wr_fsm),
        .D(p_0_in[3]),
        .PRE(AS),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [3]));
(* counter = "1" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gaxif_wlast_gen.awlen_cntr_r_reg[4] 
       (.C(s_aclk),
        .CE(n_5_axi_wr_fsm),
        .D(p_0_in[4]),
        .PRE(AS),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [4]));
(* counter = "1" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gaxif_wlast_gen.awlen_cntr_r_reg[5] 
       (.C(s_aclk),
        .CE(n_5_axi_wr_fsm),
        .D(p_0_in[5]),
        .PRE(AS),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [5]));
(* counter = "1" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gaxif_wlast_gen.awlen_cntr_r_reg[6] 
       (.C(s_aclk),
        .CE(n_5_axi_wr_fsm),
        .D(p_0_in[6]),
        .PRE(AS),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [6]));
(* counter = "1" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gaxif_wlast_gen.awlen_cntr_r_reg[7] 
       (.C(s_aclk),
        .CE(n_5_axi_wr_fsm),
        .D(p_0_in[7]),
        .PRE(AS),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg__0 [7]));
endmodule

module RAMB_AXI_256x256blk_mem_gen_generic_cstr
   (s_axi_rdata,
    s_axi_rd_en_c,
    s_aclk,
    AS,
    ENA,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [255:0]s_axi_rdata;
  input s_axi_rd_en_c;
  input s_aclk;
  input [0:0]AS;
  input ENA;
  input [7:0]ADDRARDADDR;
  input [7:0]ADDRBWRADDR;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;

  wire [7:0]ADDRARDADDR;
  wire [7:0]ADDRBWRADDR;
  wire [0:0]AS;
  wire ENA;
  wire s_aclk;
  wire s_axi_rd_en_c;
  wire [255:0]s_axi_rdata;
  wire [255:0]s_axi_wdata;
  wire [31:0]s_axi_wstrb;

RAMB_AXI_256x256blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .AS(AS),
        .ENA(ENA),
        .s_aclk(s_aclk),
        .s_axi_rd_en_c(s_axi_rd_en_c),
        .s_axi_rdata(s_axi_rdata[63:0]),
        .s_axi_wdata(s_axi_wdata[63:0]),
        .s_axi_wstrb(s_axi_wstrb[7:0]));
RAMB_AXI_256x256blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .AS(AS),
        .ENA(ENA),
        .s_aclk(s_aclk),
        .s_axi_rd_en_c(s_axi_rd_en_c),
        .s_axi_rdata(s_axi_rdata[127:64]),
        .s_axi_wdata(s_axi_wdata[127:64]),
        .s_axi_wstrb(s_axi_wstrb[15:8]));
RAMB_AXI_256x256blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .AS(AS),
        .ENA(ENA),
        .s_aclk(s_aclk),
        .s_axi_rd_en_c(s_axi_rd_en_c),
        .s_axi_rdata(s_axi_rdata[191:128]),
        .s_axi_wdata(s_axi_wdata[191:128]),
        .s_axi_wstrb(s_axi_wstrb[23:16]));
RAMB_AXI_256x256blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .AS(AS),
        .ENA(ENA),
        .s_aclk(s_aclk),
        .s_axi_rd_en_c(s_axi_rd_en_c),
        .s_axi_rdata(s_axi_rdata[255:192]),
        .s_axi_wdata(s_axi_wdata[255:192]),
        .s_axi_wstrb(s_axi_wstrb[31:24]));
endmodule

module RAMB_AXI_256x256blk_mem_gen_prim_width
   (s_axi_rdata,
    s_axi_rd_en_c,
    s_aclk,
    AS,
    ENA,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [63:0]s_axi_rdata;
  input s_axi_rd_en_c;
  input s_aclk;
  input [0:0]AS;
  input ENA;
  input [7:0]ADDRARDADDR;
  input [7:0]ADDRBWRADDR;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;

  wire [7:0]ADDRARDADDR;
  wire [7:0]ADDRBWRADDR;
  wire [0:0]AS;
  wire ENA;
  wire s_aclk;
  wire s_axi_rd_en_c;
  wire [63:0]s_axi_rdata;
  wire [63:0]s_axi_wdata;
  wire [7:0]s_axi_wstrb;

RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6 \v6_noinit.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .AS(AS),
        .ENA(ENA),
        .s_aclk(s_aclk),
        .s_axi_rd_en_c(s_axi_rd_en_c),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module RAMB_AXI_256x256blk_mem_gen_prim_width__parameterized0
   (s_axi_rdata,
    s_axi_rd_en_c,
    s_aclk,
    AS,
    ENA,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [63:0]s_axi_rdata;
  input s_axi_rd_en_c;
  input s_aclk;
  input [0:0]AS;
  input ENA;
  input [7:0]ADDRARDADDR;
  input [7:0]ADDRBWRADDR;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;

  wire [7:0]ADDRARDADDR;
  wire [7:0]ADDRBWRADDR;
  wire [0:0]AS;
  wire ENA;
  wire s_aclk;
  wire s_axi_rd_en_c;
  wire [63:0]s_axi_rdata;
  wire [63:0]s_axi_wdata;
  wire [7:0]s_axi_wstrb;

RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6__parameterized0 \v6_noinit.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .AS(AS),
        .ENA(ENA),
        .s_aclk(s_aclk),
        .s_axi_rd_en_c(s_axi_rd_en_c),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module RAMB_AXI_256x256blk_mem_gen_prim_width__parameterized1
   (s_axi_rdata,
    s_axi_rd_en_c,
    s_aclk,
    AS,
    ENA,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [63:0]s_axi_rdata;
  input s_axi_rd_en_c;
  input s_aclk;
  input [0:0]AS;
  input ENA;
  input [7:0]ADDRARDADDR;
  input [7:0]ADDRBWRADDR;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;

  wire [7:0]ADDRARDADDR;
  wire [7:0]ADDRBWRADDR;
  wire [0:0]AS;
  wire ENA;
  wire s_aclk;
  wire s_axi_rd_en_c;
  wire [63:0]s_axi_rdata;
  wire [63:0]s_axi_wdata;
  wire [7:0]s_axi_wstrb;

RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6__parameterized1 \v6_noinit.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .AS(AS),
        .ENA(ENA),
        .s_aclk(s_aclk),
        .s_axi_rd_en_c(s_axi_rd_en_c),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module RAMB_AXI_256x256blk_mem_gen_prim_width__parameterized2
   (s_axi_rdata,
    s_axi_rd_en_c,
    s_aclk,
    AS,
    ENA,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [63:0]s_axi_rdata;
  input s_axi_rd_en_c;
  input s_aclk;
  input [0:0]AS;
  input ENA;
  input [7:0]ADDRARDADDR;
  input [7:0]ADDRBWRADDR;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;

  wire [7:0]ADDRARDADDR;
  wire [7:0]ADDRBWRADDR;
  wire [0:0]AS;
  wire ENA;
  wire s_aclk;
  wire s_axi_rd_en_c;
  wire [63:0]s_axi_rdata;
  wire [63:0]s_axi_wdata;
  wire [7:0]s_axi_wstrb;

RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6__parameterized2 \v6_noinit.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .AS(AS),
        .ENA(ENA),
        .s_aclk(s_aclk),
        .s_axi_rd_en_c(s_axi_rd_en_c),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

module RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6
   (s_axi_rdata,
    s_axi_rd_en_c,
    s_aclk,
    AS,
    ENA,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [63:0]s_axi_rdata;
  input s_axi_rd_en_c;
  input s_aclk;
  input [0:0]AS;
  input ENA;
  input [7:0]ADDRARDADDR;
  input [7:0]ADDRBWRADDR;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]ADDRARDADDR;
  wire [7:0]ADDRBWRADDR;
  wire [0:0]AS;
  wire ENA;
  wire \n_68_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_69_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_70_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_71_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_72_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_73_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_74_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_75_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire s_aclk;
  wire s_axi_rd_en_c;
  wire [63:0]s_axi_rdata;
  wire [63:0]s_axi_wdata;
  wire [7:0]s_axi_wstrb;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,\<const0> ,ADDRARDADDR,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const0> ,ADDRBWRADDR,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI(s_axi_wdata[31:0]),
        .DIBDI(s_axi_wdata[63:32]),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DOADO(s_axi_rdata[31:0]),
        .DOBDO(s_axi_rdata[63:32]),
        .DOPADOP({\n_68_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_69_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_70_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_71_NO_BMM_INFO.SDP.WIDE_PRIM36.ram }),
        .DOPBDOP({\n_72_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_73_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_74_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_75_NO_BMM_INFO.SDP.WIDE_PRIM36.ram }),
        .ECCPARITY(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(s_axi_rd_en_c),
        .ENBWREN(ENA),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(AS),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .WEBWE(s_axi_wstrb));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6__parameterized0
   (s_axi_rdata,
    s_axi_rd_en_c,
    s_aclk,
    AS,
    ENA,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [63:0]s_axi_rdata;
  input s_axi_rd_en_c;
  input s_aclk;
  input [0:0]AS;
  input ENA;
  input [7:0]ADDRARDADDR;
  input [7:0]ADDRBWRADDR;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]ADDRARDADDR;
  wire [7:0]ADDRBWRADDR;
  wire [0:0]AS;
  wire ENA;
  wire \n_68_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_69_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_70_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_71_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_72_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_73_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_74_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_75_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire s_aclk;
  wire s_axi_rd_en_c;
  wire [63:0]s_axi_rdata;
  wire [63:0]s_axi_wdata;
  wire [7:0]s_axi_wstrb;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,\<const0> ,ADDRARDADDR,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const0> ,ADDRBWRADDR,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI(s_axi_wdata[31:0]),
        .DIBDI(s_axi_wdata[63:32]),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DOADO(s_axi_rdata[31:0]),
        .DOBDO(s_axi_rdata[63:32]),
        .DOPADOP({\n_68_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_69_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_70_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_71_NO_BMM_INFO.SDP.WIDE_PRIM36.ram }),
        .DOPBDOP({\n_72_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_73_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_74_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_75_NO_BMM_INFO.SDP.WIDE_PRIM36.ram }),
        .ECCPARITY(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(s_axi_rd_en_c),
        .ENBWREN(ENA),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(AS),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .WEBWE(s_axi_wstrb));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6__parameterized1
   (s_axi_rdata,
    s_axi_rd_en_c,
    s_aclk,
    AS,
    ENA,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [63:0]s_axi_rdata;
  input s_axi_rd_en_c;
  input s_aclk;
  input [0:0]AS;
  input ENA;
  input [7:0]ADDRARDADDR;
  input [7:0]ADDRBWRADDR;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]ADDRARDADDR;
  wire [7:0]ADDRBWRADDR;
  wire [0:0]AS;
  wire ENA;
  wire \n_68_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_69_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_70_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_71_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_72_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_73_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_74_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_75_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire s_aclk;
  wire s_axi_rd_en_c;
  wire [63:0]s_axi_rdata;
  wire [63:0]s_axi_wdata;
  wire [7:0]s_axi_wstrb;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,\<const0> ,ADDRARDADDR,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const0> ,ADDRBWRADDR,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI(s_axi_wdata[31:0]),
        .DIBDI(s_axi_wdata[63:32]),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DOADO(s_axi_rdata[31:0]),
        .DOBDO(s_axi_rdata[63:32]),
        .DOPADOP({\n_68_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_69_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_70_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_71_NO_BMM_INFO.SDP.WIDE_PRIM36.ram }),
        .DOPBDOP({\n_72_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_73_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_74_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_75_NO_BMM_INFO.SDP.WIDE_PRIM36.ram }),
        .ECCPARITY(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(s_axi_rd_en_c),
        .ENBWREN(ENA),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(AS),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .WEBWE(s_axi_wstrb));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6__parameterized2
   (s_axi_rdata,
    s_axi_rd_en_c,
    s_aclk,
    AS,
    ENA,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [63:0]s_axi_rdata;
  input s_axi_rd_en_c;
  input s_aclk;
  input [0:0]AS;
  input ENA;
  input [7:0]ADDRARDADDR;
  input [7:0]ADDRBWRADDR;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]ADDRARDADDR;
  wire [7:0]ADDRBWRADDR;
  wire [0:0]AS;
  wire ENA;
  wire \n_68_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_69_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_70_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_71_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_72_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_73_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_74_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_75_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire s_aclk;
  wire s_axi_rd_en_c;
  wire [63:0]s_axi_rdata;
  wire [63:0]s_axi_wdata;
  wire [7:0]s_axi_wstrb;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
     \NO_BMM_INFO.SDP.WIDE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,\<const0> ,ADDRARDADDR,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const0> ,ADDRBWRADDR,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI(s_axi_wdata[31:0]),
        .DIBDI(s_axi_wdata[63:32]),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DOADO(s_axi_rdata[31:0]),
        .DOBDO(s_axi_rdata[63:32]),
        .DOPADOP({\n_68_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_69_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_70_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_71_NO_BMM_INFO.SDP.WIDE_PRIM36.ram }),
        .DOPBDOP({\n_72_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_73_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_74_NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_75_NO_BMM_INFO.SDP.WIDE_PRIM36.ram }),
        .ECCPARITY(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(s_axi_rd_en_c),
        .ENBWREN(ENA),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(AS),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .WEBWE(s_axi_wstrb));
VCC VCC
       (.P(\<const1> ));
endmodule

module RAMB_AXI_256x256blk_mem_gen_top
   (s_axi_rdata,
    s_axi_rd_en_c,
    s_aclk,
    AS,
    ENA,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [255:0]s_axi_rdata;
  input s_axi_rd_en_c;
  input s_aclk;
  input [0:0]AS;
  input ENA;
  input [7:0]ADDRARDADDR;
  input [7:0]ADDRBWRADDR;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;

  wire [7:0]ADDRARDADDR;
  wire [7:0]ADDRBWRADDR;
  wire [0:0]AS;
  wire ENA;
  wire s_aclk;
  wire s_axi_rd_en_c;
  wire [255:0]s_axi_rdata;
  wire [255:0]s_axi_wdata;
  wire [31:0]s_axi_wstrb;

RAMB_AXI_256x256blk_mem_gen_generic_cstr \valid.cstr 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .AS(AS),
        .ENA(ENA),
        .s_aclk(s_aclk),
        .s_axi_rd_en_c(s_axi_rd_en_c),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* C_FAMILY = "virtex7" *) (* C_XDEVICEFAMILY = "virtex7" *) (* C_ELABORATION_DIR = "./" *) 
(* C_INTERFACE_TYPE = "1" *) (* C_AXI_TYPE = "1" *) (* C_AXI_SLAVE_TYPE = "0" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_CTRL_ECC_ALGO = "NONE" *) 
(* C_HAS_AXI_ID = "1" *) (* C_AXI_ID_WIDTH = "4" *) (* C_MEM_TYPE = "1" *) 
(* C_BYTE_SIZE = "8" *) (* C_ALGORITHM = "1" *) (* C_PRIM_TYPE = "1" *) 
(* C_LOAD_INIT_FILE = "0" *) (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) (* C_INIT_FILE = "RAMB_AXI_256x256.mem" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_DEFAULT_DATA = "0" *) (* C_RST_TYPE = "ASYNC" *) 
(* C_HAS_RSTA = "0" *) (* C_RST_PRIORITY_A = "CE" *) (* C_RSTRAM_A = "0" *) 
(* C_INITA_VAL = "0" *) (* C_HAS_ENA = "1" *) (* C_HAS_REGCEA = "0" *) 
(* C_USE_BYTE_WEA = "1" *) (* C_WEA_WIDTH = "32" *) (* C_WRITE_MODE_A = "READ_FIRST" *) 
(* C_WRITE_WIDTH_A = "256" *) (* C_READ_WIDTH_A = "256" *) (* C_WRITE_DEPTH_A = "256" *) 
(* C_READ_DEPTH_A = "256" *) (* C_ADDRA_WIDTH = "8" *) (* C_HAS_RSTB = "1" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_RSTRAM_B = "0" *) (* C_INITB_VAL = "0" *) 
(* C_HAS_ENB = "1" *) (* C_HAS_REGCEB = "0" *) (* C_USE_BYTE_WEB = "1" *) 
(* C_WEB_WIDTH = "32" *) (* C_WRITE_MODE_B = "READ_FIRST" *) (* C_WRITE_WIDTH_B = "256" *) 
(* C_READ_WIDTH_B = "256" *) (* C_WRITE_DEPTH_B = "256" *) (* C_READ_DEPTH_B = "256" *) 
(* C_ADDRB_WIDTH = "8" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
(* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) 
(* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_ECC = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_COMMON_CLK = "1" *) (* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module RAMB_AXI_256x256blk_mem_gen_v8_0
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr,
    rdaddrecc,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [31:0]wea;
  input [7:0]addra;
  input [255:0]dina;
  output [255:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [31:0]web;
  input [7:0]addrb;
  input [255:0]dinb;
  output [255:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;
  output [7:0]rdaddrecc;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [7:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [255:0]dina;
  wire [255:0]dinb;
  wire ena;
  wire enb;
  wire injectdbiterr;
  wire injectsbiterr;
  wire regcea;
  wire regceb;
  wire rsta;
  wire rstb;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [3:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_injectdbiterr;
  wire s_axi_injectsbiterr;
  wire [255:0]s_axi_rdata;
  wire [3:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [255:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [31:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]wea;
  wire [31:0]web;

  assign dbiterr = \<const0> ;
  assign douta[255] = \<const0> ;
  assign douta[254] = \<const0> ;
  assign douta[253] = \<const0> ;
  assign douta[252] = \<const0> ;
  assign douta[251] = \<const0> ;
  assign douta[250] = \<const0> ;
  assign douta[249] = \<const0> ;
  assign douta[248] = \<const0> ;
  assign douta[247] = \<const0> ;
  assign douta[246] = \<const0> ;
  assign douta[245] = \<const0> ;
  assign douta[244] = \<const0> ;
  assign douta[243] = \<const0> ;
  assign douta[242] = \<const0> ;
  assign douta[241] = \<const0> ;
  assign douta[240] = \<const0> ;
  assign douta[239] = \<const0> ;
  assign douta[238] = \<const0> ;
  assign douta[237] = \<const0> ;
  assign douta[236] = \<const0> ;
  assign douta[235] = \<const0> ;
  assign douta[234] = \<const0> ;
  assign douta[233] = \<const0> ;
  assign douta[232] = \<const0> ;
  assign douta[231] = \<const0> ;
  assign douta[230] = \<const0> ;
  assign douta[229] = \<const0> ;
  assign douta[228] = \<const0> ;
  assign douta[227] = \<const0> ;
  assign douta[226] = \<const0> ;
  assign douta[225] = \<const0> ;
  assign douta[224] = \<const0> ;
  assign douta[223] = \<const0> ;
  assign douta[222] = \<const0> ;
  assign douta[221] = \<const0> ;
  assign douta[220] = \<const0> ;
  assign douta[219] = \<const0> ;
  assign douta[218] = \<const0> ;
  assign douta[217] = \<const0> ;
  assign douta[216] = \<const0> ;
  assign douta[215] = \<const0> ;
  assign douta[214] = \<const0> ;
  assign douta[213] = \<const0> ;
  assign douta[212] = \<const0> ;
  assign douta[211] = \<const0> ;
  assign douta[210] = \<const0> ;
  assign douta[209] = \<const0> ;
  assign douta[208] = \<const0> ;
  assign douta[207] = \<const0> ;
  assign douta[206] = \<const0> ;
  assign douta[205] = \<const0> ;
  assign douta[204] = \<const0> ;
  assign douta[203] = \<const0> ;
  assign douta[202] = \<const0> ;
  assign douta[201] = \<const0> ;
  assign douta[200] = \<const0> ;
  assign douta[199] = \<const0> ;
  assign douta[198] = \<const0> ;
  assign douta[197] = \<const0> ;
  assign douta[196] = \<const0> ;
  assign douta[195] = \<const0> ;
  assign douta[194] = \<const0> ;
  assign douta[193] = \<const0> ;
  assign douta[192] = \<const0> ;
  assign douta[191] = \<const0> ;
  assign douta[190] = \<const0> ;
  assign douta[189] = \<const0> ;
  assign douta[188] = \<const0> ;
  assign douta[187] = \<const0> ;
  assign douta[186] = \<const0> ;
  assign douta[185] = \<const0> ;
  assign douta[184] = \<const0> ;
  assign douta[183] = \<const0> ;
  assign douta[182] = \<const0> ;
  assign douta[181] = \<const0> ;
  assign douta[180] = \<const0> ;
  assign douta[179] = \<const0> ;
  assign douta[178] = \<const0> ;
  assign douta[177] = \<const0> ;
  assign douta[176] = \<const0> ;
  assign douta[175] = \<const0> ;
  assign douta[174] = \<const0> ;
  assign douta[173] = \<const0> ;
  assign douta[172] = \<const0> ;
  assign douta[171] = \<const0> ;
  assign douta[170] = \<const0> ;
  assign douta[169] = \<const0> ;
  assign douta[168] = \<const0> ;
  assign douta[167] = \<const0> ;
  assign douta[166] = \<const0> ;
  assign douta[165] = \<const0> ;
  assign douta[164] = \<const0> ;
  assign douta[163] = \<const0> ;
  assign douta[162] = \<const0> ;
  assign douta[161] = \<const0> ;
  assign douta[160] = \<const0> ;
  assign douta[159] = \<const0> ;
  assign douta[158] = \<const0> ;
  assign douta[157] = \<const0> ;
  assign douta[156] = \<const0> ;
  assign douta[155] = \<const0> ;
  assign douta[154] = \<const0> ;
  assign douta[153] = \<const0> ;
  assign douta[152] = \<const0> ;
  assign douta[151] = \<const0> ;
  assign douta[150] = \<const0> ;
  assign douta[149] = \<const0> ;
  assign douta[148] = \<const0> ;
  assign douta[147] = \<const0> ;
  assign douta[146] = \<const0> ;
  assign douta[145] = \<const0> ;
  assign douta[144] = \<const0> ;
  assign douta[143] = \<const0> ;
  assign douta[142] = \<const0> ;
  assign douta[141] = \<const0> ;
  assign douta[140] = \<const0> ;
  assign douta[139] = \<const0> ;
  assign douta[138] = \<const0> ;
  assign douta[137] = \<const0> ;
  assign douta[136] = \<const0> ;
  assign douta[135] = \<const0> ;
  assign douta[134] = \<const0> ;
  assign douta[133] = \<const0> ;
  assign douta[132] = \<const0> ;
  assign douta[131] = \<const0> ;
  assign douta[130] = \<const0> ;
  assign douta[129] = \<const0> ;
  assign douta[128] = \<const0> ;
  assign douta[127] = \<const0> ;
  assign douta[126] = \<const0> ;
  assign douta[125] = \<const0> ;
  assign douta[124] = \<const0> ;
  assign douta[123] = \<const0> ;
  assign douta[122] = \<const0> ;
  assign douta[121] = \<const0> ;
  assign douta[120] = \<const0> ;
  assign douta[119] = \<const0> ;
  assign douta[118] = \<const0> ;
  assign douta[117] = \<const0> ;
  assign douta[116] = \<const0> ;
  assign douta[115] = \<const0> ;
  assign douta[114] = \<const0> ;
  assign douta[113] = \<const0> ;
  assign douta[112] = \<const0> ;
  assign douta[111] = \<const0> ;
  assign douta[110] = \<const0> ;
  assign douta[109] = \<const0> ;
  assign douta[108] = \<const0> ;
  assign douta[107] = \<const0> ;
  assign douta[106] = \<const0> ;
  assign douta[105] = \<const0> ;
  assign douta[104] = \<const0> ;
  assign douta[103] = \<const0> ;
  assign douta[102] = \<const0> ;
  assign douta[101] = \<const0> ;
  assign douta[100] = \<const0> ;
  assign douta[99] = \<const0> ;
  assign douta[98] = \<const0> ;
  assign douta[97] = \<const0> ;
  assign douta[96] = \<const0> ;
  assign douta[95] = \<const0> ;
  assign douta[94] = \<const0> ;
  assign douta[93] = \<const0> ;
  assign douta[92] = \<const0> ;
  assign douta[91] = \<const0> ;
  assign douta[90] = \<const0> ;
  assign douta[89] = \<const0> ;
  assign douta[88] = \<const0> ;
  assign douta[87] = \<const0> ;
  assign douta[86] = \<const0> ;
  assign douta[85] = \<const0> ;
  assign douta[84] = \<const0> ;
  assign douta[83] = \<const0> ;
  assign douta[82] = \<const0> ;
  assign douta[81] = \<const0> ;
  assign douta[80] = \<const0> ;
  assign douta[79] = \<const0> ;
  assign douta[78] = \<const0> ;
  assign douta[77] = \<const0> ;
  assign douta[76] = \<const0> ;
  assign douta[75] = \<const0> ;
  assign douta[74] = \<const0> ;
  assign douta[73] = \<const0> ;
  assign douta[72] = \<const0> ;
  assign douta[71] = \<const0> ;
  assign douta[70] = \<const0> ;
  assign douta[69] = \<const0> ;
  assign douta[68] = \<const0> ;
  assign douta[67] = \<const0> ;
  assign douta[66] = \<const0> ;
  assign douta[65] = \<const0> ;
  assign douta[64] = \<const0> ;
  assign douta[63] = \<const0> ;
  assign douta[62] = \<const0> ;
  assign douta[61] = \<const0> ;
  assign douta[60] = \<const0> ;
  assign douta[59] = \<const0> ;
  assign douta[58] = \<const0> ;
  assign douta[57] = \<const0> ;
  assign douta[56] = \<const0> ;
  assign douta[55] = \<const0> ;
  assign douta[54] = \<const0> ;
  assign douta[53] = \<const0> ;
  assign douta[52] = \<const0> ;
  assign douta[51] = \<const0> ;
  assign douta[50] = \<const0> ;
  assign douta[49] = \<const0> ;
  assign douta[48] = \<const0> ;
  assign douta[47] = \<const0> ;
  assign douta[46] = \<const0> ;
  assign douta[45] = \<const0> ;
  assign douta[44] = \<const0> ;
  assign douta[43] = \<const0> ;
  assign douta[42] = \<const0> ;
  assign douta[41] = \<const0> ;
  assign douta[40] = \<const0> ;
  assign douta[39] = \<const0> ;
  assign douta[38] = \<const0> ;
  assign douta[37] = \<const0> ;
  assign douta[36] = \<const0> ;
  assign douta[35] = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign doutb[255] = \<const0> ;
  assign doutb[254] = \<const0> ;
  assign doutb[253] = \<const0> ;
  assign doutb[252] = \<const0> ;
  assign doutb[251] = \<const0> ;
  assign doutb[250] = \<const0> ;
  assign doutb[249] = \<const0> ;
  assign doutb[248] = \<const0> ;
  assign doutb[247] = \<const0> ;
  assign doutb[246] = \<const0> ;
  assign doutb[245] = \<const0> ;
  assign doutb[244] = \<const0> ;
  assign doutb[243] = \<const0> ;
  assign doutb[242] = \<const0> ;
  assign doutb[241] = \<const0> ;
  assign doutb[240] = \<const0> ;
  assign doutb[239] = \<const0> ;
  assign doutb[238] = \<const0> ;
  assign doutb[237] = \<const0> ;
  assign doutb[236] = \<const0> ;
  assign doutb[235] = \<const0> ;
  assign doutb[234] = \<const0> ;
  assign doutb[233] = \<const0> ;
  assign doutb[232] = \<const0> ;
  assign doutb[231] = \<const0> ;
  assign doutb[230] = \<const0> ;
  assign doutb[229] = \<const0> ;
  assign doutb[228] = \<const0> ;
  assign doutb[227] = \<const0> ;
  assign doutb[226] = \<const0> ;
  assign doutb[225] = \<const0> ;
  assign doutb[224] = \<const0> ;
  assign doutb[223] = \<const0> ;
  assign doutb[222] = \<const0> ;
  assign doutb[221] = \<const0> ;
  assign doutb[220] = \<const0> ;
  assign doutb[219] = \<const0> ;
  assign doutb[218] = \<const0> ;
  assign doutb[217] = \<const0> ;
  assign doutb[216] = \<const0> ;
  assign doutb[215] = \<const0> ;
  assign doutb[214] = \<const0> ;
  assign doutb[213] = \<const0> ;
  assign doutb[212] = \<const0> ;
  assign doutb[211] = \<const0> ;
  assign doutb[210] = \<const0> ;
  assign doutb[209] = \<const0> ;
  assign doutb[208] = \<const0> ;
  assign doutb[207] = \<const0> ;
  assign doutb[206] = \<const0> ;
  assign doutb[205] = \<const0> ;
  assign doutb[204] = \<const0> ;
  assign doutb[203] = \<const0> ;
  assign doutb[202] = \<const0> ;
  assign doutb[201] = \<const0> ;
  assign doutb[200] = \<const0> ;
  assign doutb[199] = \<const0> ;
  assign doutb[198] = \<const0> ;
  assign doutb[197] = \<const0> ;
  assign doutb[196] = \<const0> ;
  assign doutb[195] = \<const0> ;
  assign doutb[194] = \<const0> ;
  assign doutb[193] = \<const0> ;
  assign doutb[192] = \<const0> ;
  assign doutb[191] = \<const0> ;
  assign doutb[190] = \<const0> ;
  assign doutb[189] = \<const0> ;
  assign doutb[188] = \<const0> ;
  assign doutb[187] = \<const0> ;
  assign doutb[186] = \<const0> ;
  assign doutb[185] = \<const0> ;
  assign doutb[184] = \<const0> ;
  assign doutb[183] = \<const0> ;
  assign doutb[182] = \<const0> ;
  assign doutb[181] = \<const0> ;
  assign doutb[180] = \<const0> ;
  assign doutb[179] = \<const0> ;
  assign doutb[178] = \<const0> ;
  assign doutb[177] = \<const0> ;
  assign doutb[176] = \<const0> ;
  assign doutb[175] = \<const0> ;
  assign doutb[174] = \<const0> ;
  assign doutb[173] = \<const0> ;
  assign doutb[172] = \<const0> ;
  assign doutb[171] = \<const0> ;
  assign doutb[170] = \<const0> ;
  assign doutb[169] = \<const0> ;
  assign doutb[168] = \<const0> ;
  assign doutb[167] = \<const0> ;
  assign doutb[166] = \<const0> ;
  assign doutb[165] = \<const0> ;
  assign doutb[164] = \<const0> ;
  assign doutb[163] = \<const0> ;
  assign doutb[162] = \<const0> ;
  assign doutb[161] = \<const0> ;
  assign doutb[160] = \<const0> ;
  assign doutb[159] = \<const0> ;
  assign doutb[158] = \<const0> ;
  assign doutb[157] = \<const0> ;
  assign doutb[156] = \<const0> ;
  assign doutb[155] = \<const0> ;
  assign doutb[154] = \<const0> ;
  assign doutb[153] = \<const0> ;
  assign doutb[152] = \<const0> ;
  assign doutb[151] = \<const0> ;
  assign doutb[150] = \<const0> ;
  assign doutb[149] = \<const0> ;
  assign doutb[148] = \<const0> ;
  assign doutb[147] = \<const0> ;
  assign doutb[146] = \<const0> ;
  assign doutb[145] = \<const0> ;
  assign doutb[144] = \<const0> ;
  assign doutb[143] = \<const0> ;
  assign doutb[142] = \<const0> ;
  assign doutb[141] = \<const0> ;
  assign doutb[140] = \<const0> ;
  assign doutb[139] = \<const0> ;
  assign doutb[138] = \<const0> ;
  assign doutb[137] = \<const0> ;
  assign doutb[136] = \<const0> ;
  assign doutb[135] = \<const0> ;
  assign doutb[134] = \<const0> ;
  assign doutb[133] = \<const0> ;
  assign doutb[132] = \<const0> ;
  assign doutb[131] = \<const0> ;
  assign doutb[130] = \<const0> ;
  assign doutb[129] = \<const0> ;
  assign doutb[128] = \<const0> ;
  assign doutb[127] = \<const0> ;
  assign doutb[126] = \<const0> ;
  assign doutb[125] = \<const0> ;
  assign doutb[124] = \<const0> ;
  assign doutb[123] = \<const0> ;
  assign doutb[122] = \<const0> ;
  assign doutb[121] = \<const0> ;
  assign doutb[120] = \<const0> ;
  assign doutb[119] = \<const0> ;
  assign doutb[118] = \<const0> ;
  assign doutb[117] = \<const0> ;
  assign doutb[116] = \<const0> ;
  assign doutb[115] = \<const0> ;
  assign doutb[114] = \<const0> ;
  assign doutb[113] = \<const0> ;
  assign doutb[112] = \<const0> ;
  assign doutb[111] = \<const0> ;
  assign doutb[110] = \<const0> ;
  assign doutb[109] = \<const0> ;
  assign doutb[108] = \<const0> ;
  assign doutb[107] = \<const0> ;
  assign doutb[106] = \<const0> ;
  assign doutb[105] = \<const0> ;
  assign doutb[104] = \<const0> ;
  assign doutb[103] = \<const0> ;
  assign doutb[102] = \<const0> ;
  assign doutb[101] = \<const0> ;
  assign doutb[100] = \<const0> ;
  assign doutb[99] = \<const0> ;
  assign doutb[98] = \<const0> ;
  assign doutb[97] = \<const0> ;
  assign doutb[96] = \<const0> ;
  assign doutb[95] = \<const0> ;
  assign doutb[94] = \<const0> ;
  assign doutb[93] = \<const0> ;
  assign doutb[92] = \<const0> ;
  assign doutb[91] = \<const0> ;
  assign doutb[90] = \<const0> ;
  assign doutb[89] = \<const0> ;
  assign doutb[88] = \<const0> ;
  assign doutb[87] = \<const0> ;
  assign doutb[86] = \<const0> ;
  assign doutb[85] = \<const0> ;
  assign doutb[84] = \<const0> ;
  assign doutb[83] = \<const0> ;
  assign doutb[82] = \<const0> ;
  assign doutb[81] = \<const0> ;
  assign doutb[80] = \<const0> ;
  assign doutb[79] = \<const0> ;
  assign doutb[78] = \<const0> ;
  assign doutb[77] = \<const0> ;
  assign doutb[76] = \<const0> ;
  assign doutb[75] = \<const0> ;
  assign doutb[74] = \<const0> ;
  assign doutb[73] = \<const0> ;
  assign doutb[72] = \<const0> ;
  assign doutb[71] = \<const0> ;
  assign doutb[70] = \<const0> ;
  assign doutb[69] = \<const0> ;
  assign doutb[68] = \<const0> ;
  assign doutb[67] = \<const0> ;
  assign doutb[66] = \<const0> ;
  assign doutb[65] = \<const0> ;
  assign doutb[64] = \<const0> ;
  assign doutb[63] = \<const0> ;
  assign doutb[62] = \<const0> ;
  assign doutb[61] = \<const0> ;
  assign doutb[60] = \<const0> ;
  assign doutb[59] = \<const0> ;
  assign doutb[58] = \<const0> ;
  assign doutb[57] = \<const0> ;
  assign doutb[56] = \<const0> ;
  assign doutb[55] = \<const0> ;
  assign doutb[54] = \<const0> ;
  assign doutb[53] = \<const0> ;
  assign doutb[52] = \<const0> ;
  assign doutb[51] = \<const0> ;
  assign doutb[50] = \<const0> ;
  assign doutb[49] = \<const0> ;
  assign doutb[48] = \<const0> ;
  assign doutb[47] = \<const0> ;
  assign doutb[46] = \<const0> ;
  assign doutb[45] = \<const0> ;
  assign doutb[44] = \<const0> ;
  assign doutb[43] = \<const0> ;
  assign doutb[42] = \<const0> ;
  assign doutb[41] = \<const0> ;
  assign doutb[40] = \<const0> ;
  assign doutb[39] = \<const0> ;
  assign doutb[38] = \<const0> ;
  assign doutb[37] = \<const0> ;
  assign doutb[36] = \<const0> ;
  assign doutb[35] = \<const0> ;
  assign doutb[34] = \<const0> ;
  assign doutb[33] = \<const0> ;
  assign doutb[32] = \<const0> ;
  assign doutb[31] = \<const0> ;
  assign doutb[30] = \<const0> ;
  assign doutb[29] = \<const0> ;
  assign doutb[28] = \<const0> ;
  assign doutb[27] = \<const0> ;
  assign doutb[26] = \<const0> ;
  assign doutb[25] = \<const0> ;
  assign doutb[24] = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign sbiterr = \<const0> ;
GND GND
       (.G(\<const0> ));
RAMB_AXI_256x256blk_mem_gen_v8_0_synth inst_blk_mem_gen
       (.O1(s_axi_bvalid),
        .O2(s_axi_rvalid),
        .S_AXI_AWREADY(s_axi_awready),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_araddr(s_axi_araddr[12:0]),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[12:0]),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module RAMB_AXI_256x256blk_mem_gen_v8_0_synth
   (s_axi_rdata,
    S_AXI_AWREADY,
    s_axi_wready,
    O1,
    s_axi_bid,
    s_axi_arready,
    s_axi_rid,
    O2,
    s_axi_rlast,
    s_axi_wvalid,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arlen,
    s_axi_awsize,
    s_axi_arsize,
    s_axi_rready,
    s_axi_awaddr,
    s_axi_awlen,
    s_aclk,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_bready,
    s_axi_awid,
    s_aresetn,
    s_axi_arid,
    s_axi_awvalid,
    s_axi_awburst,
    s_axi_arburst);
  output [255:0]s_axi_rdata;
  output S_AXI_AWREADY;
  output s_axi_wready;
  output O1;
  output [3:0]s_axi_bid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output O2;
  output s_axi_rlast;
  input s_axi_wvalid;
  input [12:0]s_axi_araddr;
  input s_axi_arvalid;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_awsize;
  input [2:0]s_axi_arsize;
  input s_axi_rready;
  input [12:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input s_aclk;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_bready;
  input [3:0]s_axi_awid;
  input s_aresetn;
  input [3:0]s_axi_arid;
  input s_axi_awvalid;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_arburst;

  wire O1;
  wire O2;
  wire S_AXI_AWREADY;
  wire \n_3_gaxibmg.axi_wr_fsm ;
  wire s_aclk;
  wire s_aresetn;
  wire s_aresetn_a_c;
  wire [12:0]s_axi_araddr;
  wire [7:0]s_axi_araddr_out_c;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire [7:0]s_axi_awaddr_out_c;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [3:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_rd_en_c;
  wire [255:0]s_axi_rdata;
  wire [3:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [255:0]s_axi_wdata;
  wire s_axi_wready;
  wire [31:0]s_axi_wstrb;
  wire s_axi_wvalid;

RAMB_AXI_256x256blk_mem_gen_top \gaxibmg.axi_blk_mem_gen 
       (.ADDRARDADDR(s_axi_araddr_out_c),
        .ADDRBWRADDR(s_axi_awaddr_out_c),
        .AS(s_aresetn_a_c),
        .ENA(\n_3_gaxibmg.axi_wr_fsm ),
        .s_aclk(s_aclk),
        .s_axi_rd_en_c(s_axi_rd_en_c),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
RAMB_AXI_256x256blk_mem_axi_read_wrapper \gaxibmg.axi_rd_sm 
       (.ADDRARDADDR(s_axi_araddr_out_c),
        .AS(s_aresetn_a_c),
        .O1(O2),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rd_en_c(s_axi_rd_en_c),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready));
RAMB_AXI_256x256blk_mem_axi_write_wrapper \gaxibmg.axi_wr_fsm 
       (.ADDRBWRADDR(s_axi_awaddr_out_c),
        .AS(s_aresetn_a_c),
        .O1(S_AXI_AWREADY),
        .O2(O1),
        .O3(\n_3_gaxibmg.axi_wr_fsm ),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
