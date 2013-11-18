//*****************************************************************************
// (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
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
//*****************************************************************************
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor             : Xilinx
// \   \   \/     Version            : 2.0
//  \   \         Application        : MIG
//  /   /         Filename           : example_top.v
// /___/   /\     Date Last Modified : $Date: 2011/06/02 08:35:03 $
// \   \  /  \    Date Created       : Tue Sept 21 2010
//  \___\/\___\
//
// Device           : 7 Series
// Design Name      : DDR3 SDRAM
// Purpose          :
//   Top-level  module. This module serves both as an example,
//   and allows the user to synthesize a self-contained design,
//   which they can be used to test their hardware.
//   In addition to the memory controller, the module instantiates:
//     1. Synthesizable testbench - used to model user's backend logic
//        and generate different traffic patterns
// Reference        :
// Revision History :
//*****************************************************************************

`timescale 1ps/1ps

module example_top #
  (

   //***************************************************************************
   // Traffic Gen related parameters
   //***************************************************************************
   parameter BL_WIDTH              = 10,
   parameter PORT_MODE             = "BI_MODE",
   parameter DATA_MODE             = 4'b0010,
   parameter ADDR_MODE             = 4'b0011,
   parameter TST_MEM_INSTR_MODE    = "R_W_INSTR_MODE",
   parameter EYE_TEST              = "FALSE",
                                     // set EYE_TEST = "TRUE" to probe memory
                                     // signals. Traffic Generator will only
                                     // write to one single location and no
                                     // read transactions will be generated.
   parameter DATA_PATTERN          = "DGEN_ALL",
                                      // For small devices, choose one only.
                                      // For large device, choose "DGEN_ALL"
                                      // "DGEN_HAMMER", "DGEN_WALKING1",
                                      // "DGEN_WALKING0","DGEN_ADDR","
                                      // "DGEN_NEIGHBOR","DGEN_PRBS","DGEN_ALL"
   parameter CMD_PATTERN           = "CGEN_ALL",
                                      // "CGEN_PRBS","CGEN_FIXED","CGEN_BRAM",
                                      // "CGEN_SEQUENTIAL", "CGEN_ALL"
   parameter BEGIN_ADDRESS         = 32'h00000000,
   parameter END_ADDRESS           = 32'h00ffffff,
   parameter MEM_ADDR_ORDER        = "BANK_ROW_COLUMN",
                                      //Possible Parameters
                                      //1.BANK_ROW_COLUMN : Address mapping is
                                      //                    in form of Bank Row Column.
                                      //2.ROW_BANK_COLUMN : Address mapping is
                                      //                    in the form of Row Bank Column.
                                      //3.TG_TEST : Scrambles Address bits
                                      //            for distributed Addressing.
   parameter PRBS_EADDR_MASK_POS   = 32'hff000000,
   parameter CMD_WDT               = 'h3FF,
   parameter WR_WDT                = 'h1FFF,
   parameter RD_WDT                = 'h3FF,
   parameter SEL_VICTIM_LINE       = 0,
   parameter ENFORCE_RD_WR         = 0,
   parameter ENFORCE_RD_WR_CMD     = 8'h11,
   parameter ENFORCE_RD_WR_PATTERN = 3'b000,
   parameter C_EN_WRAP_TRANS       = 0,
   parameter C_AXI_NBURST_TEST     = 0,

   //***************************************************************************
   // The following parameters refer to width of various ports
   //***************************************************************************
   parameter BANK_WIDTH            = 3,
                                     // # of memory Bank Address bits.
   parameter CK_WIDTH              = 1,
                                     // # of CK/CK# outputs to memory.
   parameter COL_WIDTH             = 10,
                                     // # of memory Column Address bits.
   parameter CS_WIDTH              = 1,
                                     // # of unique CS outputs to memory.
   parameter nCS_PER_RANK          = 1,
                                     // # of unique CS outputs per rank for phy
   parameter CKE_WIDTH             = 1,
                                     // # of CKE outputs to memory.
   parameter DATA_BUF_ADDR_WIDTH   = 5,
   parameter DQ_CNT_WIDTH          = 6,
                                     // = ceil(log2(DQ_WIDTH))
   parameter DQ_PER_DM             = 8,
   parameter DM_WIDTH              = 8,
                                     // # of DM (data mask)
   parameter DQ_WIDTH              = 64,
                                     // # of DQ (data)
   parameter DQS_WIDTH             = 8,
   parameter DQS_CNT_WIDTH         = 3,
                                     // = ceil(log2(DQS_WIDTH))
   parameter DRAM_WIDTH            = 8,
                                     // # of DQ per DQS
   parameter ECC                   = "OFF",
   parameter nBANK_MACHS           = 4,
   parameter RANKS                 = 1,
                                     // # of Ranks.
   parameter ODT_WIDTH             = 1,
                                     // # of ODT outputs to memory.
   parameter ROW_WIDTH             = 14,
                                     // # of memory Row Address bits.
   parameter ADDR_WIDTH            = 28,
                                     // # = RANK_WIDTH + BANK_WIDTH
                                     //     + ROW_WIDTH + COL_WIDTH;
                                     // Chip Select is always tied to low for
                                     // single rank devices
   parameter USE_CS_PORT          = 1,
                                     // # = 1, When Chip Select (CS#) output is enabled
                                     //   = 0, When Chip Select (CS#) output is disabled
                                     // If CS_N disabled, user must connect
                                     // DRAM CS_N input(s) to ground
   parameter USE_DM_PORT           = 1,
                                     // # = 1, When Data Mask option is enabled
                                     //   = 0, When Data Mask option is disbaled
                                     // When Data Mask option is disabled in
                                     // MIG Controller Options page, the logic
                                     // related to Data Mask should not get
                                     // synthesized
   parameter USE_ODT_PORT          = 1,
                                     // # = 1, When ODT output is enabled
                                     //   = 0, When ODT output is disabled
                                     // Parameter configuration for Dynamic ODT support:
                                     // USE_ODT_PORT = 0, RTT_NOM = "DISABLED", RTT_WR = "60/120".
                                     // This configuration allows to save ODT pin mapping from FPGA.
                                     // The user can tie the ODT input of DRAM to HIGH.
   parameter IS_CLK_SHARED          = "FALSE",
                                      // # = "true" when clock is shared
                                      //   = "false" when clock is not shared 

   parameter PHY_CONTROL_MASTER_BANK = 1,
                                     // The bank index where master PHY_CONTROL resides,
                                     // equal to the PLL residing bank
   parameter MEM_DENSITY           = "1Gb",
                                     // Indicates the density of the Memory part
                                     // Added for the sake of Vivado simulations
   parameter MEM_SPEEDGRADE        = "125",
                                     // Indicates the Speed grade of Memory Part
                                     // Added for the sake of Vivado simulations
   parameter MEM_DEVICE_WIDTH      = 8,
                                     // Indicates the device width of the Memory Part
                                     // Added for the sake of Vivado simulations

   //***************************************************************************
   // The following parameters are mode register settings
   //***************************************************************************
   parameter AL                    = "0",
                                     // DDR3 SDRAM:
                                     // Additive Latency (Mode Register 1).
                                     // # = "0", "CL-1", "CL-2".
                                     // DDR2 SDRAM:
                                     // Additive Latency (Extended Mode Register).
   parameter nAL                   = 0,
                                     // # Additive Latency in number of clock
                                     // cycles.
   parameter BURST_MODE            = "8",
                                     // DDR3 SDRAM:
                                     // Burst Length (Mode Register 0).
                                     // # = "8", "4", "OTF".
                                     // DDR2 SDRAM:
                                     // Burst Length (Mode Register).
                                     // # = "8", "4".
   parameter BURST_TYPE            = "SEQ",
                                     // DDR3 SDRAM: Burst Type (Mode Register 0).
                                     // DDR2 SDRAM: Burst Type (Mode Register).
                                     // # = "SEQ" - (Sequential),
                                     //   = "INT" - (Interleaved).
   parameter CL                    = 11,
                                     // in number of clock cycles
                                     // DDR3 SDRAM: CAS Latency (Mode Register 0).
                                     // DDR2 SDRAM: CAS Latency (Mode Register).
   parameter CWL                   = 8,
                                     // in number of clock cycles
                                     // DDR3 SDRAM: CAS Write Latency (Mode Register 2).
                                     // DDR2 SDRAM: Can be ignored
   parameter OUTPUT_DRV            = "HIGH",
                                     // Output Driver Impedance Control (Mode Register 1).
                                     // # = "HIGH" - RZQ/7,
                                     //   = "LOW" - RZQ/6.
   parameter RTT_NOM               = "40",
                                     // RTT_NOM (ODT) (Mode Register 1).
                                     //   = "120" - RZQ/2,
                                     //   = "60"  - RZQ/4,
                                     //   = "40"  - RZQ/6.
   parameter RTT_WR                = "OFF",
                                     // RTT_WR (ODT) (Mode Register 2).
                                     // # = "OFF" - Dynamic ODT off,
                                     //   = "120" - RZQ/2,
                                     //   = "60"  - RZQ/4,
   parameter ADDR_CMD_MODE         = "1T" ,
                                     // # = "1T", "2T".
   parameter REG_CTRL              = "OFF",
                                     // # = "ON" - RDIMMs,
                                     //   = "OFF" - Components, SODIMMs, UDIMMs.
   parameter CA_MIRROR             = "OFF",
                                     // C/A mirror opt for DDR3 dual rank

   parameter VDD_OP_VOLT           = "150",
                                     // # = "150" - 1.5V Vdd Memory part
                                     //   = "135" - 1.35V Vdd Memory part

   
   //***************************************************************************
   // The following parameters are multiplier and divisor factors for PLLE2.
   // Based on the selected design frequency these parameters vary.
   //***************************************************************************
   parameter CLKIN_PERIOD          = 5000,
                                     // Input Clock Period
   parameter CLKFBOUT_MULT         = 8,
                                     // write PLL VCO multiplier
   parameter DIVCLK_DIVIDE         = 1,
                                     // write PLL VCO divisor
   parameter CLKOUT0_PHASE         = 337.5,
                                     // Phase for PLL output clock (CLKOUT0)
   parameter CLKOUT0_DIVIDE        = 2,
                                     // VCO output divisor for PLL output clock (CLKOUT0)
   parameter CLKOUT1_DIVIDE        = 2,
                                     // VCO output divisor for PLL output clock (CLKOUT1)
   parameter CLKOUT2_DIVIDE        = 32,
                                     // VCO output divisor for PLL output clock (CLKOUT2)
   parameter CLKOUT3_DIVIDE        = 8,
                                     // VCO output divisor for PLL output clock (CLKOUT3)

   //***************************************************************************
   // Memory Timing Parameters. These parameters varies based on the selected
   // memory part.
   //***************************************************************************
   parameter tCKE                  = 5000,
                                     // memory tCKE paramter in pS
   parameter tFAW                  = 30000,
                                     // memory tRAW paramter in pS.
   parameter tRAS                  = 35000,
                                     // memory tRAS paramter in pS.
   parameter tRCD                  = 13125,
                                     // memory tRCD paramter in pS.
   parameter tREFI                 = 7800000,
                                     // memory tREFI paramter in pS.
   parameter tRFC                  = 110000,
                                     // memory tRFC paramter in pS.
   parameter tRP                   = 13125,
                                     // memory tRP paramter in pS.
   parameter tRRD                  = 6000,
                                     // memory tRRD paramter in pS.
   parameter tRTP                  = 7500,
                                     // memory tRTP paramter in pS.
   parameter tWTR                  = 7500,
                                     // memory tWTR paramter in pS.
   parameter tZQI                  = 128_000_000,
                                     // memory tZQI paramter in nS.
   parameter tZQCS                 = 64,
                                     // memory tZQCS paramter in clock cycles.

   //***************************************************************************
   // Simulation parameters
   //***************************************************************************
   parameter SIM_BYPASS_INIT_CAL   = "OFF",
                                     // # = "OFF" -  Complete memory init &
                                     //              calibration sequence
                                     // # = "SKIP" - Not supported
                                     // # = "FAST" - Complete memory init & use
                                     //              abbreviated calib sequence

   parameter SIMULATION            = "FALSE",
                                     // Should be TRUE during design simulations and
                                     // FALSE during implementations

   //***************************************************************************
   // The following parameters varies based on the pin out entered in MIG GUI.
   // Do not change any of these parameters directly by editing the RTL.
   // Any changes required should be done through GUI and the design regenerated.
   //***************************************************************************
   parameter BYTE_LANES_B0         = 4'b1111,
                                     // Byte lanes used in an IO column.
   parameter BYTE_LANES_B1         = 4'b0111,
                                     // Byte lanes used in an IO column.
   parameter BYTE_LANES_B2         = 4'b1111,
                                     // Byte lanes used in an IO column.
   parameter BYTE_LANES_B3         = 4'b0000,
                                     // Byte lanes used in an IO column.
   parameter BYTE_LANES_B4         = 4'b0000,
                                     // Byte lanes used in an IO column.
   parameter DATA_CTL_B0           = 4'b1111,
                                     // Indicates Byte lane is data byte lane
                                     // or control Byte lane. '1' in a bit
                                     // position indicates a data byte lane and
                                     // a '0' indicates a control byte lane
   parameter DATA_CTL_B1           = 4'b0000,
                                     // Indicates Byte lane is data byte lane
                                     // or control Byte lane. '1' in a bit
                                     // position indicates a data byte lane and
                                     // a '0' indicates a control byte lane
   parameter DATA_CTL_B2           = 4'b1111,
                                     // Indicates Byte lane is data byte lane
                                     // or control Byte lane. '1' in a bit
                                     // position indicates a data byte lane and
                                     // a '0' indicates a control byte lane
   parameter DATA_CTL_B3           = 4'b0000,
                                     // Indicates Byte lane is data byte lane
                                     // or control Byte lane. '1' in a bit
                                     // position indicates a data byte lane and
                                     // a '0' indicates a control byte lane
   parameter DATA_CTL_B4           = 4'b0000,
                                     // Indicates Byte lane is data byte lane
                                     // or control Byte lane. '1' in a bit
                                     // position indicates a data byte lane and
                                     // a '0' indicates a control byte lane
   parameter PHY_0_BITLANES        = 48'h3FE_3FE_3FE_2FF,
   parameter PHY_1_BITLANES        = 48'h000_CB0_473_FFF,
   parameter PHY_2_BITLANES        = 48'h3FE_3FE_3FE_2FF,

   // control/address/data pin mapping parameters
   parameter CK_BYTE_MAP
     = 144'h00_00_00_00_00_00_00_00_00_00_00_00_00_00_00_00_00_11,
   parameter ADDR_MAP
     = 192'h000_000_111_110_109_108_107_106_10B_10A_105_104_103_102_101_100,
   parameter BANK_MAP   = 36'h11A_115_114,
   parameter CAS_MAP    = 12'h12A,
   parameter CKE_ODT_BYTE_MAP = 8'h00,
   parameter CKE_MAP    = 96'h000_000_000_000_000_000_000_116,
   parameter ODT_MAP    = 96'h000_000_000_000_000_000_000_127,
   parameter CS_MAP     = 120'h000_000_000_000_000_000_000_000_000_12B,
   parameter PARITY_MAP = 12'h000,
   parameter RAS_MAP    = 12'h125,
   parameter WE_MAP     = 12'h124,
   parameter DQS_BYTE_MAP
     = 144'h00_00_00_00_00_00_00_00_00_00_03_02_01_00_23_22_21_20,
   parameter DATA0_MAP  = 96'h200_209_206_203_204_205_202_207,
   parameter DATA1_MAP  = 96'h219_218_214_215_217_212_216_213,
   parameter DATA2_MAP  = 96'h225_224_229_226_223_222_228_227,
   parameter DATA3_MAP  = 96'h238_236_234_233_235_237_232_239,
   parameter DATA4_MAP  = 96'h005_003_000_009_007_006_004_002,
   parameter DATA5_MAP  = 96'h013_012_018_019_015_014_017_016,
   parameter DATA6_MAP  = 96'h023_027_022_029_024_025_028_026,
   parameter DATA7_MAP  = 96'h039_037_033_032_035_034_038_036,
   parameter DATA8_MAP  = 96'h000_000_000_000_000_000_000_000,
   parameter DATA9_MAP  = 96'h000_000_000_000_000_000_000_000,
   parameter DATA10_MAP = 96'h000_000_000_000_000_000_000_000,
   parameter DATA11_MAP = 96'h000_000_000_000_000_000_000_000,
   parameter DATA12_MAP = 96'h000_000_000_000_000_000_000_000,
   parameter DATA13_MAP = 96'h000_000_000_000_000_000_000_000,
   parameter DATA14_MAP = 96'h000_000_000_000_000_000_000_000,
   parameter DATA15_MAP = 96'h000_000_000_000_000_000_000_000,
   parameter DATA16_MAP = 96'h000_000_000_000_000_000_000_000,
   parameter DATA17_MAP = 96'h000_000_000_000_000_000_000_000,
   parameter MASK0_MAP  = 108'h000_031_021_011_001_231_221_211_201,
   parameter MASK1_MAP  = 108'h000_000_000_000_000_000_000_000_000,

   parameter SLOT_0_CONFIG         = 8'b0000_0001,
                                     // Mapping of Ranks.
   parameter SLOT_1_CONFIG         = 8'b0000_0000,
                                     // Mapping of Ranks.

   //***************************************************************************
   // IODELAY and PHY related parameters
   //***************************************************************************
   parameter IBUF_LPWR_MODE        = "OFF",
                                     // to phy_top
   parameter DATA_IO_IDLE_PWRDWN   = "ON",
                                     // # = "ON", "OFF"
   parameter BANK_TYPE             = "HP_IO",
                                     // # = "HP_IO", "HPL_IO", "HR_IO", "HRL_IO"
   parameter DATA_IO_PRIM_TYPE     = "HP_LP",
                                     // # = "HP_LP", "HR_LP", "DEFAULT"
   parameter CKE_ODT_AUX           = "FALSE",
   parameter USER_REFRESH          = "OFF",
   parameter WRLVL                 = "ON",
                                     // # = "ON" - DDR3 SDRAM
                                     //   = "OFF" - DDR2 SDRAM.
   parameter ORDERING              = "NORM",
                                     // # = "NORM", "STRICT", "RELAXED".
   parameter CALIB_ROW_ADD         = 16'h0000,
                                     // Calibration row address will be used for
                                     // calibration read and write operations
   parameter CALIB_COL_ADD         = 12'h000,
                                     // Calibration column address will be used for
                                     // calibration read and write operations
   parameter CALIB_BA_ADD          = 3'h0,
                                     // Calibration bank address will be used for
                                     // calibration read and write operations
   parameter TCQ                   = 100,
   parameter IODELAY_GRP           = "MIG_7SERIES_64BIT_800MHZ_IODELAY_MIG",
                                     // It is associated to a set of IODELAYs with
                                     // an IDELAYCTRL that have same IODELAY CONTROLLER
                                     // clock frequency.
   parameter SYSCLK_TYPE           = "NO_BUFFER",
                                     // System clock type DIFFERENTIAL, SINGLE_ENDED,
                                     // NO_BUFFER
   parameter REFCLK_TYPE           = "USE_SYSTEM_CLOCK",
                                     // Reference clock type DIFFERENTIAL, SINGLE_ENDED,
                                     // NO_BUFFER, USE_SYSTEM_CLOCK
   parameter SYS_RST_PORT          = "FALSE",
                                     // "TRUE" - if pin is selected for sys_rst
                                     //          and IBUF will be instantiated.
                                     // "FALSE" - if pin is not selected for sys_rst
      
   parameter DRAM_TYPE             = "DDR3",
   parameter CAL_WIDTH             = "HALF",
   parameter STARVE_LIMIT          = 2,
                                     // # = 2,3,4.

   //***************************************************************************
   // Referece clock frequency parameters
   //***************************************************************************
   parameter REFCLK_FREQ           = 200.0,
                                     // IODELAYCTRL reference clock frequency
   parameter DIFF_TERM_REFCLK      = "TRUE",
                                     // Differential Termination for idelay
                                     // reference clock input pins
   //***************************************************************************
   // System clock frequency parameters
   //***************************************************************************
   parameter tCK                   = 1250,
                                     // memory tCK paramter.
                                     // # = Clock Period in pS.
   parameter nCK_PER_CLK           = 4,
                                     // # of memory CKs per fabric CLK
   parameter DIFF_TERM_SYSCLK      = "TRUE",
                                     // Differential Termination for System
                                     // clock input pins

   
   //***************************************************************************
   // AXI4 Shim parameters
   //***************************************************************************
   
   parameter UI_EXTRA_CLOCKS = "FALSE",
                                     // Generates extra clocks as
                                     // 1/2, 1/4 and 1/8 of fabrick clock.
                                     // Valid for DDR2/DDR3 AXI interfaces
                                     // based on GUI selection
   parameter C_S_AXI_ID_WIDTH              = 4,
                                             // Width of all master and slave ID signals.
                                             // # = >= 1.
   parameter C_S_AXI_MEM_SIZE              = "1073741824",
                                     // Address Space required for this component
   parameter C_S_AXI_ADDR_WIDTH            = 32,
                                             // Width of S_AXI_AWADDR, S_AXI_ARADDR, M_AXI_AWADDR and
                                             // M_AXI_ARADDR for all SI/MI slots.
                                             // # = 32.
   parameter C_S_AXI_DATA_WIDTH            = 512,
                                             // Width of WDATA and RDATA on SI slot.
                                             // Must be <= APP_DATA_WIDTH.
                                             // # = 32, 64, 128, 256.
   parameter C_MC_nCK_PER_CLK              = 4,
                                             // Indicates whether to instatiate upsizer
                                             // Range: 0, 1
   parameter C_S_AXI_SUPPORTS_NARROW_BURST = 1,
                                             // Indicates whether to instatiate upsizer
                                             // Range: 0, 1
   parameter C_RD_WR_ARB_ALGORITHM          = "RD_PRI_REG",
                                             // Indicates the Arbitration
                                             // Allowed values - "TDM", "ROUND_ROBIN",
                                             // "RD_PRI_REG", "RD_PRI_REG_STARVE_LIMIT"
                                             // "WRITE_PRIORITY", "WRITE_PRIORITY_REG"
   parameter C_S_AXI_REG_EN0               = 20'h00000,
                                             // C_S_AXI_REG_EN0[00] = Reserved
                                             // C_S_AXI_REG_EN0[04] = AW CHANNEL REGISTER SLICE
                                             // C_S_AXI_REG_EN0[05] =  W CHANNEL REGISTER SLICE
                                             // C_S_AXI_REG_EN0[06] =  B CHANNEL REGISTER SLICE
                                             // C_S_AXI_REG_EN0[07] =  R CHANNEL REGISTER SLICE
                                             // C_S_AXI_REG_EN0[08] = AW CHANNEL UPSIZER REGISTER SLICE
                                             // C_S_AXI_REG_EN0[09] =  W CHANNEL UPSIZER REGISTER SLICE
                                             // C_S_AXI_REG_EN0[10] = AR CHANNEL UPSIZER REGISTER SLICE
                                             // C_S_AXI_REG_EN0[11] =  R CHANNEL UPSIZER REGISTER SLICE
   parameter C_S_AXI_REG_EN1               = 20'h00000,
                                             // Instatiates register slices after the upsizer.
                                             // The type of register is specified for each channel
                                             // in a vector. 4 bits per channel are used.
                                             // C_S_AXI_REG_EN1[03:00] = AW CHANNEL REGISTER SLICE
                                             // C_S_AXI_REG_EN1[07:04] =  W CHANNEL REGISTER SLICE
                                             // C_S_AXI_REG_EN1[11:08] =  B CHANNEL REGISTER SLICE
                                             // C_S_AXI_REG_EN1[15:12] = AR CHANNEL REGISTER SLICE
                                             // C_S_AXI_REG_EN1[20:16] =  R CHANNEL REGISTER SLICE
                                             // Possible values for each channel are:
                                             //
                                             //   0 => BYPASS    = The channel is just wired through the
                                             //                    module.
                                             //   1 => FWD       = The master VALID and payload signals
                                             //                    are registrated.
                                             //   2 => REV       = The slave ready signal is registrated
                                             //   3 => FWD_REV   = Both FWD and REV
                                             //   4 => SLAVE_FWD = All slave side signals and master
                                             //                    VALID and payload are registrated.
                                             //   5 => SLAVE_RDY = All slave side signals and master
                                             //                    READY are registrated.
                                             //   6 => INPUTS    = Slave and Master side inputs are
                                             //                    registrated.
                                             //   7 => ADDRESS   = Optimized for address channel
   parameter C_S_AXI_CTRL_ADDR_WIDTH       = 32,
                                             // Width of AXI-4-Lite address bus
   parameter C_S_AXI_CTRL_DATA_WIDTH       = 32,
                                             // Width of AXI-4-Lite data buses
   parameter C_S_AXI_BASEADDR              = 32'h0000_0000,
                                             // Base address of AXI4 Memory Mapped bus.
   parameter C_ECC_ONOFF_RESET_VALUE       = 1,
                                             // Controls ECC on/off value at startup/reset
   parameter C_ECC_CE_COUNTER_WIDTH        = 8,
                                             // The external memory to controller clock ratio.

   //***************************************************************************
   // Debug parameters
   //***************************************************************************
   parameter DEBUG_PORT            = "ON",
                                     // # = "ON" Enable debug signals/controls.
                                     //   = "OFF" Disable debug signals/controls.

   //***************************************************************************
   // Temparature monitor parameter
   //***************************************************************************
   parameter TEMP_MON_CONTROL      = "INTERNAL",
                                     // # = "INTERNAL", "EXTERNAL"
      
   parameter RST_ACT_LOW           = 1
                                     // =1 for active low reset,
                                     // =0 for active high.
   )
  (

   // Inouts
   inout [DQ_WIDTH-1:0]                         ddr3_dq,
   inout [DQS_WIDTH-1:0]                        ddr3_dqs_n,
   inout [DQS_WIDTH-1:0]                        ddr3_dqs_p,

   // Outputs
   output [ROW_WIDTH-1:0]                       ddr3_addr,
   output [BANK_WIDTH-1:0]                      ddr3_ba,
   output                                       ddr3_ras_n,
   output                                       ddr3_cas_n,
   output                                       ddr3_we_n,
   output                                       ddr3_reset_n,
   output [CK_WIDTH-1:0]                        ddr3_ck_p,
   output [CK_WIDTH-1:0]                        ddr3_ck_n,
   output [CKE_WIDTH-1:0]                       ddr3_cke,
   output [CS_WIDTH*nCS_PER_RANK-1:0]           ddr3_cs_n,
   output [DM_WIDTH-1:0]                        ddr3_dm,
   output [ODT_WIDTH-1:0]                       ddr3_odt,

   // Inputs
   // Single-ended system clock
   input                                        sys_clk_i,
   
   
   output                                       tg_compare_error,
   output                                       init_calib_complete,
   
      

   // System reset - Default polarity of sys_rst pin is Active Low.
   // System reset polarity will change based on the option 
   // selected in GUI.
   input                                        sys_rst
   );

function integer clogb2 (input integer size);
    begin
      size = size - 1;
      for (clogb2=1; size>1; clogb2=clogb2+1)
        size = size >> 1;
    end
  endfunction // clogb2

  function integer STR_TO_INT;
    input [7:0] in;
    begin
      if(in == "8")
        STR_TO_INT = 8;
      else if(in == "4")
        STR_TO_INT = 4;
      else
        STR_TO_INT = 0;
    end
  endfunction


  localparam CMD_PIPE_PLUS1        = "ON";
                                     // add pipeline stage between MC and PHY
  localparam DATA_WIDTH            = 64;
  localparam ECC_TEST              = "OFF";
  localparam RANK_WIDTH = clogb2(RANKS);
  localparam tPRDI                 = 1_000_000;
                                     // memory tPRDI paramter in pS.
  localparam PAYLOAD_WIDTH         = (ECC_TEST == "OFF") ? DATA_WIDTH : DQ_WIDTH;
  localparam BURST_LENGTH          = STR_TO_INT(BURST_MODE);
  localparam APP_DATA_WIDTH        = 2 * nCK_PER_CLK * PAYLOAD_WIDTH;
  localparam APP_MASK_WIDTH        = APP_DATA_WIDTH / 8;

  //***************************************************************************
  // Traffic Gen related parameters (derived)
  //***************************************************************************
  localparam  TG_ADDR_WIDTH = ((CS_WIDTH == 1) ? 0 : RANK_WIDTH)
                                 + BANK_WIDTH + ROW_WIDTH + COL_WIDTH;
  localparam MASK_SIZE             = DATA_WIDTH/8;
  localparam DBG_WR_STS_WIDTH      = 32;
  localparam DBG_RD_STS_WIDTH      = 32;
      

  // Wire declarations
      
  wire                              clk;
  wire                              rst;
  wire                              mmcm_locked;
  reg                               aresetn;
  wire                              app_sr_active;
  wire                              app_ref_ack;
  wire                              app_zq_ack;
  wire                              app_rd_data_valid;
  wire [APP_DATA_WIDTH-1:0]         app_rd_data;
  wire                              mem_pattern_init_done;

  wire                              cmd_err;
  wire                              data_msmatch_err;
  wire                              write_err;
  wire                              read_err;
  wire                              test_cmptd;
  wire                              write_cmptd;
  wire                              read_cmptd;
  wire                              cmptd_one_wr_rd;

  // Slave Interface Write Address Ports
  wire [C_S_AXI_ID_WIDTH-1:0]       s_axi_awid;
  wire [C_S_AXI_ADDR_WIDTH-1:0]     s_axi_awaddr;
  wire [7:0]                        s_axi_awlen;
  wire [2:0]                        s_axi_awsize;
  wire [1:0]                        s_axi_awburst;
  wire [0:0]                        s_axi_awlock;
  wire [3:0]                        s_axi_awcache;
  wire [2:0]                        s_axi_awprot;
  wire                              s_axi_awvalid;
  wire                              s_axi_awready;
   // Slave Interface Write Data Ports
  wire [C_S_AXI_DATA_WIDTH-1:0]     s_axi_wdata;
  wire [C_S_AXI_DATA_WIDTH/8-1:0]   s_axi_wstrb;
  wire                              s_axi_wlast;
  wire                              s_axi_wvalid;
  wire                              s_axi_wready;
   // Slave Interface Write Response Ports
  wire                              s_axi_bready;
  wire [C_S_AXI_ID_WIDTH-1:0]       s_axi_bid;
  wire [1:0]                        s_axi_bresp;
  wire                              s_axi_bvalid;
   // Slave Interface Read Address Ports
  wire [C_S_AXI_ID_WIDTH-1:0]       s_axi_arid;
  wire [C_S_AXI_ADDR_WIDTH-1:0]     s_axi_araddr;
  wire [7:0]                        s_axi_arlen;
  wire [2:0]                        s_axi_arsize;
  wire [1:0]                        s_axi_arburst;
  wire [0:0]                        s_axi_arlock;
  wire [3:0]                        s_axi_arcache;
  wire [2:0]                        s_axi_arprot;
  wire                              s_axi_arvalid;
  wire                              s_axi_arready;
   // Slave Interface Read Data Ports
  wire                              s_axi_rready;
  wire [C_S_AXI_ID_WIDTH-1:0]       s_axi_rid;
  wire [C_S_AXI_DATA_WIDTH-1:0]     s_axi_rdata;
  wire [1:0]                        s_axi_rresp;
  wire                              s_axi_rlast;
  wire                              s_axi_rvalid;

  wire                              cmp_data_valid;
  wire [C_S_AXI_DATA_WIDTH-1:0]      cmp_data;     // Compare data
  wire [C_S_AXI_DATA_WIDTH-1:0]      rdata_cmp;      // Read data

  wire                              dbg_wr_sts_vld;
  wire [DBG_WR_STS_WIDTH-1:0]       dbg_wr_sts;
  wire                              dbg_rd_sts_vld;
  wire [DBG_RD_STS_WIDTH-1:0]       dbg_rd_sts;
    // Debug port wire declarations

  wire [255:0]                          ddr3_ila_basic_w;
  reg  [255:0]                          ddr3_ila_basic;
  wire [255:0]                          ddr3_ila_wrpath_w;
  reg  [255:0]                          ddr3_ila_wrpath;
  wire [1023:0]                         ddr3_ila_rdpath_w;
  reg  [1023:0]                         ddr3_ila_rdpath;

  (* mark_debug = "TRUE" *) wire [4:0]                            dbg_dqs;
  (* mark_debug = "TRUE" *) wire [8:0]                            dbg_bit;

  (* mark_debug = "TRUE" *) wire           dbg_init_calib_complete;
  (* mark_debug = "TRUE" *) wire           dbg_wrlvl_start;
  (* mark_debug = "TRUE" *) wire           dbg_wrlvl_done;
  (* mark_debug = "TRUE" *) wire           dbg_wrlvl_err;
  (* mark_debug = "TRUE" *) wire           dbg_pi_phaselock_start;
  (* mark_debug = "TRUE" *) wire           dbg_pi_phaselocked_done;
  (* mark_debug = "TRUE" *) wire           dbg_pi_phaselock_err;
  (* mark_debug = "TRUE" *) wire           dbg_pi_dqsfound_start;
  (* mark_debug = "TRUE" *) wire           dbg_pi_dqsfound_done;
  (* mark_debug = "TRUE" *) wire           dbg_pi_dqsfound_err;
  (* mark_debug = "TRUE" *) wire [1:0]     dbg_rdlvl_start;
  (* mark_debug = "TRUE" *) wire [1:0]     dbg_rdlvl_done;
  (* mark_debug = "TRUE" *) wire [1:0]     dbg_rdlvl_err;
  (* mark_debug = "TRUE" *) wire           dbg_oclkdelay_calib_start;
  (* mark_debug = "TRUE" *) wire           dbg_oclkdelay_calib_done;
  (* mark_debug = "TRUE" *) wire           dbg_wrcal_start;
  (* mark_debug = "TRUE" *) wire           dbg_wrcal_done;
  (* mark_debug = "TRUE" *) wire           dbg_wrcal_err;
  (* mark_debug = "TRUE" *) wire [5:0]     dbg_phy_init_5_0;
  (* mark_debug = "TRUE" *) wire           dbg_rddata_valid_r;
  (* mark_debug = "TRUE" *) wire [63:0]    dbg_rddata_r;
  (* mark_debug = "TRUE" *) wire           dbg_fine_adjust_done_r;
  (* mark_debug = "TRUE" *) wire           dbg_cmd_wdt_err_w;
  (* mark_debug = "TRUE" *) wire           dbg_rd_wdt_err_w;
  (* mark_debug = "TRUE" *) wire           dbg_wr_wdt_err_w;
  (* mark_debug = "TRUE" *) wire           dbg_tg_compare_error;
  (* mark_debug = "TRUE" *) wire           dbg_cmp_data_valid;
  (* mark_debug = "TRUE" *) wire           dbg_cmp_error;
  (* mark_debug = "TRUE" *) wire [63:0]    dbg_cmp_data_r;
  (* mark_debug = "TRUE" *) wire [7:0]     dbg_dq_error_bytelane_cmp;
  (* mark_debug = "TRUE" *) wire [7:0]     dbg_cumlative_dq_lane_error;
  (* mark_debug = "TRUE" *) wire [31:0]    dbg_cmp_addr_i;
  (* mark_debug = "TRUE" *) wire [5:0]     dbg_cmp_bl_i;
  (* mark_debug = "TRUE" *) wire           dbg_mcb_cmd_full_i;
  (* mark_debug = "TRUE" *) wire           dbg_mcb_wr_full_i;
  (* mark_debug = "TRUE" *) wire           dbg_mcb_rd_empty_i;
  (* mark_debug = "TRUE" *) wire [1:0]     dbg_ddrx_ila_rdpath_765_764;
  (* mark_debug = "TRUE" *) wire [31:0]    dbg_axi_cmp_data;
  (* mark_debug = "TRUE" *) wire [31:0]    dbg_axi_rdata_cmp;

  // Write path debug signals
  (* mark_debug = "TRUE" *) wire [4:0]     dbg_wl_state_r;
  (* mark_debug = "TRUE" *) wire [3:0]     dbg_dqs_cnt_r;
  (* mark_debug = "TRUE" *) wire           dbg_wl_edge_detect_valid_r;
  (* mark_debug = "TRUE" *) wire           dbg_rd_data_edge_detect_r_by_dqs;
  (* mark_debug = "TRUE" *) wire [5:0]     dbg_wl_po_fine_cnt_by_dqs;
  (* mark_debug = "TRUE" *) wire [2:0]     dbg_wl_po_coarse_cnt_by_dqs;
  (* mark_debug = "TRUE" *) wire [5:0]     dbg_ocal_tap_cnt_by_dqs;
  (* mark_debug = "TRUE" *) wire           dbg_ocal_rise_edge1_found;
  (* mark_debug = "TRUE" *) wire           dbg_ocal_rise_edge2_found;
  (* mark_debug = "TRUE" *) wire           dbg_ocal_fall_edge1_found;
  (* mark_debug = "TRUE" *) wire           dbg_ocal_fall_edge2_found;
  (* mark_debug = "TRUE" *) wire [5:0]     dbg_ocal_rise_edge1_taps;
  (* mark_debug = "TRUE" *) wire [5:0]     dbg_ocal_rise_edge2_taps;
  (* mark_debug = "TRUE" *) wire [5:0]     dbg_ocal_fall_edge1_taps;
  (* mark_debug = "TRUE" *) wire [5:0]     dbg_ocal_fall_edge2_taps;
  (* mark_debug = "TRUE" *) wire [4:0]     dbg_ocal_state_r;
  (* mark_debug = "TRUE" *) wire [5:0]     dbg_stg2_tap_cnt;
  (* mark_debug = "TRUE" *) wire           dbg_wrcal_pat_data_match_r;
  (* mark_debug = "TRUE" *) wire           dbg_wrcal_pat_data_match_valid_r;
  (* mark_debug = "TRUE" *) wire [3:0]     dbg_wrcal_dqs_cnt_r;
  (* mark_debug = "TRUE" *) wire [4:0]     cal2_state_r;
  (* mark_debug = "TRUE" *) wire [4:0]     not_empty_wait_cnt;
  (* mark_debug = "TRUE" *) wire           dbg_early1_data;
  (* mark_debug = "TRUE" *) wire           dbg_early2_data;
  (* mark_debug = "TRUE" *) wire [3:0]     dbg_phy_oclkdelay_cal_57_54;
  (* mark_debug = "TRUE" *) wire [53:0]    dbg_phy_wrlvl_128_75;
  (* mark_debug = "TRUE" *) wire [26:0]    dbg_phy_wrlvl_155_129;
  // Read path debug signals

  (* mark_debug = "TRUE" *) wire [11:0]    dbg_pi_phase_locked_phy4lanes;
  (* mark_debug = "TRUE" *) wire [11:0]    dbg_pi_dqs_found_lanes_phy4lanes;
  (* mark_debug = "TRUE" *) wire [11:0]    dbg_rd_data_offset;
  (* mark_debug = "TRUE" *) wire [5:0]     dbg_cal1_state_r;
  (* mark_debug = "TRUE" *) wire [3:0]     dbg_cal1_cnt_cpt_r;
  (* mark_debug = "TRUE" *) wire [7:0]     dbg_mux_rd_rise0_r;
  (* mark_debug = "TRUE" *) wire [7:0]     dbg_mux_rd_fall0_r;
  (* mark_debug = "TRUE" *) wire [7:0]     dbg_mux_rd_rise1_r;
  (* mark_debug = "TRUE" *) wire [7:0]     dbg_mux_rd_fall1_r;
  (* mark_debug = "TRUE" *) wire [7:0]     dbg_mux_rd_rise2_r;
  (* mark_debug = "TRUE" *) wire [7:0]     dbg_mux_rd_fall2_r;
  (* mark_debug = "TRUE" *) wire [7:0]     dbg_mux_rd_rise3_r;
  (* mark_debug = "TRUE" *) wire [7:0]     dbg_mux_rd_fall3_r;
  (* mark_debug = "TRUE" *) wire           dbg_rdlvl_pat_data_match_r;
  (* mark_debug = "TRUE" *) wire           dbg_mux_rd_valid_r;
  (* mark_debug = "TRUE" *) wire [5:0]     dbg_cpt_first_edge_cnt_by_dqs;
  (* mark_debug = "TRUE" *) wire [5:0]     dbg_cpt_second_edge_cnt_by_dqs;
  (* mark_debug = "TRUE" *) wire [5:0]     dbg_cpt_tap_cnt_by_dqs;
  (* mark_debug = "TRUE" *) wire [4:0]     dbg_dq_idelay_tap_cnt_by_dqs;
  (* mark_debug = "TRUE" *) wire [11:0]    dbg_dbg_calib_rd_data_offset_1;
  (* mark_debug = "TRUE" *) wire [11:0]    dbg_dbg_calib_rd_data_offset_2;
  (* mark_debug = "TRUE" *) wire [5:0]     dbg_data_offset;
  (* mark_debug = "TRUE" *) wire [5:0]     dbg_data_offset_1;
  (* mark_debug = "TRUE" *) wire [5:0]     dbg_data_offset_2;
  (* mark_debug = "TRUE" *) wire [107:0]   dbg_cpt_first_edge_cnt;
  (* mark_debug = "TRUE" *) wire [107:0]   dbg_cpt_second_edge_cnt;
  (* mark_debug = "TRUE" *) wire [107:0]   dbg_cpt_tap_cnt;
  (* mark_debug = "TRUE" *) wire [89:0]    dbg_dq_idelay_tap_cnt;
  (* mark_debug = "TRUE" *) wire [254:0]   dbg_prbs_rdlvl;

  (* mark_debug = "TRUE" *) wire                                  win_start;
  (* mark_debug = "TRUE" *) wire                                  win_sel_pi_pon;
  (* mark_debug = "TRUE" *) wire                                  vio_win_byte_select_inc;
  (* mark_debug = "TRUE" *) wire                                  vio_win_byte_select_dec;
  (* mark_debug = "TRUE" *) wire [5:0]                            dbg_pi_counter_read_val;
  (* mark_debug = "TRUE" *) wire [8:0]                            dbg_po_counter_read_val;
  (* mark_debug = "TRUE" *) wire [5:0]                            pi_win_left_ram_out;
  (* mark_debug = "TRUE" *) wire [5:0]                            pi_win_right_ram_out;
  (* mark_debug = "TRUE" *) wire [8:0]                            po_win_left_ram_out;
  (* mark_debug = "TRUE" *) wire [8:0]                            po_win_right_ram_out;
  (* mark_debug = "TRUE" *) wire                                  win_clr_error;
  (* mark_debug = "TRUE" *) wire                                  manual_clear_error;

  (* mark_debug = "TRUE" *) wire                                  win_active;
  (* mark_debug = "TRUE" *) wire [4:0]                            vio_sel_mux_rdd;
  (* mark_debug = "TRUE" *) wire [6:0]                            win_current_bit;
  (* mark_debug = "TRUE" *) wire [4:0]                            win_current_byte;
  (* mark_debug = "TRUE" *) wire [164:0]                           dbg_win_chk;
  wire                                  pi_win_up;
  wire                                  pi_win_down;
  wire                                  po_win_up;
  wire                                  po_stg23_sel;
  wire                                  po_win_down;
  wire                                  po_win_tg_rst;

  reg                                   app_rd_data_valid_r1;
  reg                                   app_rd_data_valid_r2;
  reg                                   app_rd_data_valid_r3;
  (* mark_debug = "TRUE" *) reg [6:0]                             win_byte_select;
  reg [2*nCK_PER_CLK*PAYLOAD_WIDTH-1:0]      app_rd_data_r1;
  reg [2*nCK_PER_CLK*PAYLOAD_WIDTH-1:0]      app_rd_data_r2;
  reg [2*nCK_PER_CLK*PAYLOAD_WIDTH-1:0]      app_rd_data_r3;
  reg [DQS_CNT_WIDTH:0]                 dbg_byte_sel_r;
  reg [255:0]                           tg_simple_data;
  (* mark_debug = "TRUE" *) wire [1:0]                            vio_tg_simple_data_sel;
  (* mark_debug = "TRUE" *) wire                                  wdt_en_w;
  wire                                  cmd_wdt_err_w;
  wire                                  wr_wdt_err_w;
  wire                                  rd_wdt_err_w;
  (* mark_debug = "TRUE" *) wire                                  dbg_clear_error;

//***************************************************************************



  assign tg_compare_error = cmd_err | data_msmatch_err | write_err | read_err;
      


      
// Start of User Design top instance
//***************************************************************************
// The User design is instantiated below. The memory interface ports are
// connected to the top-level and the application interface ports are
// connected to the traffic generator module. This provides a reference
// for connecting the memory controller to system.
//***************************************************************************

  mig_7series_64bit_800Mhz #
    (
     
     .TCQ                              (TCQ),
     .ADDR_CMD_MODE                    (ADDR_CMD_MODE),
     .AL                               (AL),
     .PAYLOAD_WIDTH                    (PAYLOAD_WIDTH),
     .BANK_WIDTH                       (BANK_WIDTH),
     .BURST_MODE                       (BURST_MODE),
     .BURST_TYPE                       (BURST_TYPE),
     .CA_MIRROR                        (CA_MIRROR),
     .VDD_OP_VOLT                      (VDD_OP_VOLT),
     .CK_WIDTH                         (CK_WIDTH),
     .COL_WIDTH                        (COL_WIDTH),
     .CMD_PIPE_PLUS1                   (CMD_PIPE_PLUS1),
     .CS_WIDTH                         (CS_WIDTH),
     .nCS_PER_RANK                     (nCS_PER_RANK),
     .CKE_WIDTH                        (CKE_WIDTH),
     .DATA_WIDTH                       (DATA_WIDTH),
     .DATA_BUF_ADDR_WIDTH              (DATA_BUF_ADDR_WIDTH),
     .DQ_CNT_WIDTH                     (DQ_CNT_WIDTH),
     .DQ_PER_DM                        (DQ_PER_DM),
     .DQ_WIDTH                         (DQ_WIDTH),
     .DQS_CNT_WIDTH                    (DQS_CNT_WIDTH),
     .DQS_WIDTH                        (DQS_WIDTH),
     .DRAM_WIDTH                       (DRAM_WIDTH),
     .ECC                              (ECC),
     .ECC_TEST                         (ECC_TEST),
     .nAL                              (nAL),
     .nBANK_MACHS                      (nBANK_MACHS),
     .CKE_ODT_AUX                      (CKE_ODT_AUX),
     .ORDERING                         (ORDERING),
     .OUTPUT_DRV                       (OUTPUT_DRV),
     .IBUF_LPWR_MODE                   (IBUF_LPWR_MODE),
     .DATA_IO_IDLE_PWRDWN              (DATA_IO_IDLE_PWRDWN),
     .BANK_TYPE                        (BANK_TYPE),
     .DATA_IO_PRIM_TYPE                (DATA_IO_PRIM_TYPE),
     .REG_CTRL                         (REG_CTRL),
     .RTT_NOM                          (RTT_NOM),
     .RTT_WR                           (RTT_WR),
     .CL                               (CL),
     .CWL                              (CWL),
     .tCKE                             (tCKE),
     .tFAW                             (tFAW),
     .tPRDI                            (tPRDI),
     .tRAS                             (tRAS),
     .tRCD                             (tRCD),
     .tREFI                            (tREFI),
     .tRFC                             (tRFC),
     .tRP                              (tRP),
     .tRRD                             (tRRD),
     .tRTP                             (tRTP),
     .tWTR                             (tWTR),
     .tZQI                             (tZQI),
     .tZQCS                            (tZQCS),
     .USER_REFRESH                     (USER_REFRESH),
     .WRLVL                            (WRLVL),
     .DEBUG_PORT                       (DEBUG_PORT),
     .RANKS                            (RANKS),
     .ODT_WIDTH                        (ODT_WIDTH),
     .ROW_WIDTH                        (ROW_WIDTH),
     .ADDR_WIDTH                       (ADDR_WIDTH),
     .SIM_BYPASS_INIT_CAL              (SIM_BYPASS_INIT_CAL),
     .SIMULATION                       (SIMULATION),
     .BYTE_LANES_B0                    (BYTE_LANES_B0),
     .BYTE_LANES_B1                    (BYTE_LANES_B1),
     .BYTE_LANES_B2                    (BYTE_LANES_B2),
     .BYTE_LANES_B3                    (BYTE_LANES_B3),
     .BYTE_LANES_B4                    (BYTE_LANES_B4),
     .DATA_CTL_B0                      (DATA_CTL_B0),
     .DATA_CTL_B1                      (DATA_CTL_B1),
     .DATA_CTL_B2                      (DATA_CTL_B2),
     .DATA_CTL_B3                      (DATA_CTL_B3),
     .DATA_CTL_B4                      (DATA_CTL_B4),
     .PHY_0_BITLANES                   (PHY_0_BITLANES),
     .PHY_1_BITLANES                   (PHY_1_BITLANES),
     .PHY_2_BITLANES                   (PHY_2_BITLANES),
     .CK_BYTE_MAP                      (CK_BYTE_MAP),
     .ADDR_MAP                         (ADDR_MAP),
     .BANK_MAP                         (BANK_MAP),
     .CAS_MAP                          (CAS_MAP),
     .CKE_ODT_BYTE_MAP                 (CKE_ODT_BYTE_MAP),
     .CKE_MAP                          (CKE_MAP),
     .ODT_MAP                          (ODT_MAP),
     .CS_MAP                           (CS_MAP),
     .PARITY_MAP                       (PARITY_MAP),
     .RAS_MAP                          (RAS_MAP),
     .WE_MAP                           (WE_MAP),
     .DQS_BYTE_MAP                     (DQS_BYTE_MAP),
     .DATA0_MAP                        (DATA0_MAP),
     .DATA1_MAP                        (DATA1_MAP),
     .DATA2_MAP                        (DATA2_MAP),
     .DATA3_MAP                        (DATA3_MAP),
     .DATA4_MAP                        (DATA4_MAP),
     .DATA5_MAP                        (DATA5_MAP),
     .DATA6_MAP                        (DATA6_MAP),
     .DATA7_MAP                        (DATA7_MAP),
     .DATA8_MAP                        (DATA8_MAP),
     .DATA9_MAP                        (DATA9_MAP),
     .DATA10_MAP                       (DATA10_MAP),
     .DATA11_MAP                       (DATA11_MAP),
     .DATA12_MAP                       (DATA12_MAP),
     .DATA13_MAP                       (DATA13_MAP),
     .DATA14_MAP                       (DATA14_MAP),
     .DATA15_MAP                       (DATA15_MAP),
     .DATA16_MAP                       (DATA16_MAP),
     .DATA17_MAP                       (DATA17_MAP),
     .MASK0_MAP                        (MASK0_MAP),
     .MASK1_MAP                        (MASK1_MAP),
     .CALIB_ROW_ADD                    (CALIB_ROW_ADD),
     .CALIB_COL_ADD                    (CALIB_COL_ADD),
     .CALIB_BA_ADD                     (CALIB_BA_ADD),
     .SLOT_0_CONFIG                    (SLOT_0_CONFIG),
     .SLOT_1_CONFIG                    (SLOT_1_CONFIG),
     .MEM_ADDR_ORDER                   (MEM_ADDR_ORDER),
     .USE_CS_PORT                      (USE_CS_PORT),
     .USE_DM_PORT                      (USE_DM_PORT),
     .USE_ODT_PORT                     (USE_ODT_PORT),
     .PHY_CONTROL_MASTER_BANK          (PHY_CONTROL_MASTER_BANK),
     .TEMP_MON_CONTROL                 (TEMP_MON_CONTROL),
      
     
     .DM_WIDTH                         (DM_WIDTH),
     
     .nCK_PER_CLK                      (nCK_PER_CLK),
     .tCK                              (tCK),
     .DIFF_TERM_SYSCLK                 (DIFF_TERM_SYSCLK),
     .CLKIN_PERIOD                     (CLKIN_PERIOD),
     .CLKFBOUT_MULT                    (CLKFBOUT_MULT),
     .DIVCLK_DIVIDE                    (DIVCLK_DIVIDE),
     .CLKOUT0_PHASE                    (CLKOUT0_PHASE),
     .CLKOUT0_DIVIDE                   (CLKOUT0_DIVIDE),
     .CLKOUT1_DIVIDE                   (CLKOUT1_DIVIDE),
     .CLKOUT2_DIVIDE                   (CLKOUT2_DIVIDE),
     .CLKOUT3_DIVIDE                   (CLKOUT3_DIVIDE),
     
     .UI_EXTRA_CLOCKS                 (UI_EXTRA_CLOCKS),
     .C_S_AXI_ID_WIDTH                 (C_S_AXI_ID_WIDTH),
     .C_S_AXI_ADDR_WIDTH               (C_S_AXI_ADDR_WIDTH),
     .C_S_AXI_DATA_WIDTH               (C_S_AXI_DATA_WIDTH),
     .C_MC_nCK_PER_CLK                 (C_MC_nCK_PER_CLK),
     .C_S_AXI_SUPPORTS_NARROW_BURST    (C_S_AXI_SUPPORTS_NARROW_BURST),
     .C_RD_WR_ARB_ALGORITHM            (C_RD_WR_ARB_ALGORITHM),
     .C_S_AXI_REG_EN0                  (C_S_AXI_REG_EN0),
     .C_S_AXI_REG_EN1                  (C_S_AXI_REG_EN1),
     .C_S_AXI_CTRL_ADDR_WIDTH          (C_S_AXI_CTRL_ADDR_WIDTH),
     .C_S_AXI_CTRL_DATA_WIDTH          (C_S_AXI_CTRL_DATA_WIDTH),
     .C_S_AXI_BASEADDR                 (C_S_AXI_BASEADDR),
     .C_ECC_ONOFF_RESET_VALUE          (C_ECC_ONOFF_RESET_VALUE),
     .C_ECC_CE_COUNTER_WIDTH           (C_ECC_CE_COUNTER_WIDTH),
      
     
     .SYSCLK_TYPE                      (SYSCLK_TYPE),
     .REFCLK_TYPE                      (REFCLK_TYPE),
     .SYS_RST_PORT                     (SYS_RST_PORT),
     .REFCLK_FREQ                      (REFCLK_FREQ),
     .DIFF_TERM_REFCLK                 (DIFF_TERM_REFCLK),
     .IODELAY_GRP                      (IODELAY_GRP),
      
     .CAL_WIDTH                        (CAL_WIDTH),
     .STARVE_LIMIT                     (STARVE_LIMIT),
     .DRAM_TYPE                        (DRAM_TYPE),
      
      
     .RST_ACT_LOW                      (RST_ACT_LOW)
     )
    u_mig_7series_64bit_800Mhz
      (
       
       
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
       .init_calib_complete            (init_calib_complete),
      
       .ddr3_cs_n                      (ddr3_cs_n),
       .ddr3_dm                        (ddr3_dm),
       .ddr3_odt                       (ddr3_odt),
// Application interface ports
       .ui_clk                         (clk),
       .ui_clk_sync_rst                (rst),

       .mmcm_locked                    (mmcm_locked),
       .aresetn                        (aresetn),
       .app_sr_req                     (1'b0),
       .app_ref_req                    (1'b0),
       .app_zq_req                     (1'b0),
       .app_sr_active                  (app_sr_active),
       .app_ref_ack                    (app_ref_ack),
       .app_zq_ack                     (app_zq_ack),

// Slave Interface Write Address Ports
       .s_axi_awid                     (s_axi_awid),
       .s_axi_awaddr                   (s_axi_awaddr),
       .s_axi_awlen                    (s_axi_awlen),
       .s_axi_awsize                   (s_axi_awsize),
       .s_axi_awburst                  (s_axi_awburst),
       .s_axi_awlock                   (s_axi_awlock),
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
       .s_axi_bid                      (s_axi_bid),
       .s_axi_bresp                    (s_axi_bresp),
       .s_axi_bvalid                   (s_axi_bvalid),
       .s_axi_bready                   (s_axi_bready),
// Slave Interface Read Address Ports
       .s_axi_arid                     (s_axi_arid),
       .s_axi_araddr                   (s_axi_araddr),
       .s_axi_arlen                    (s_axi_arlen),
       .s_axi_arsize                   (s_axi_arsize),
       .s_axi_arburst                  (s_axi_arburst),
       .s_axi_arlock                   (s_axi_arlock),
       .s_axi_arcache                  (s_axi_arcache),
       .s_axi_arprot                   (s_axi_arprot),
       .s_axi_arqos                    (4'h0),
       .s_axi_arvalid                  (s_axi_arvalid),
       .s_axi_arready                  (s_axi_arready),
// Slave Interface Read Data Ports
       .s_axi_rid                      (s_axi_rid),
       .s_axi_rdata                    (s_axi_rdata),
       .s_axi_rresp                    (s_axi_rresp),
       .s_axi_rlast                    (s_axi_rlast),
       .s_axi_rvalid                   (s_axi_rvalid),
       .s_axi_rready                   (s_axi_rready),

      
// Debug Ports
       .ddr3_ila_basic                 (ddr3_ila_basic_w[119:0]),
       .ddr3_ila_wrpath                (ddr3_ila_wrpath_w),
       .ddr3_ila_rdpath                (ddr3_ila_rdpath_w),

       .ddr3_vio_sync_out              ({dbg_dqs,dbg_bit}),

       .dbg_pi_counter_read_val        (dbg_pi_counter_read_val),
       .dbg_sel_pi_incdec              (dbg_sel_pi_incdec),
       .dbg_po_counter_read_val        (dbg_po_counter_read_val),
       .dbg_sel_po_incdec              (dbg_sel_po_incdec),
       .dbg_byte_sel                   (dbg_byte_sel_r),
       .dbg_pi_f_inc                   (dbg_pi_f_inc),
       .dbg_pi_f_dec                   (dbg_pi_f_dec),
       .dbg_po_f_inc                   (dbg_po_f_inc),
       .dbg_po_f_stg23_sel             (dbg_po_f_stg23_sel),
       .dbg_po_f_dec                   (dbg_po_f_dec),
       
// System Clock Ports
       .sys_clk_i                       (sys_clk_i),
      
       .sys_rst                        (sys_rst)
       );
// End of User Design top instance


//***************************************************************************
// The traffic generation module instantiated below drives traffic (patterns)
// on the application interface of the memory controller
//***************************************************************************

   always @(posedge clk) begin
     aresetn <= ~rst;
   end

   mig_7series_v2_0_axi4_tg #(

     .C_AXI_ID_WIDTH                   (C_S_AXI_ID_WIDTH),
     .C_AXI_ADDR_WIDTH                 (C_S_AXI_ADDR_WIDTH),
     .C_AXI_DATA_WIDTH                 (C_S_AXI_DATA_WIDTH),
     .C_AXI_NBURST_SUPPORT             (C_AXI_NBURST_TEST),
     .C_EN_WRAP_TRANS                  (C_EN_WRAP_TRANS),
     .C_BEGIN_ADDRESS                  (BEGIN_ADDRESS),
     .C_END_ADDRESS                    (END_ADDRESS),
     .PRBS_EADDR_MASK_POS              (PRBS_EADDR_MASK_POS),
     .DBG_WR_STS_WIDTH                 (DBG_WR_STS_WIDTH),
     .DBG_RD_STS_WIDTH                 (DBG_RD_STS_WIDTH),
     .ENFORCE_RD_WR                    (ENFORCE_RD_WR),
     .ENFORCE_RD_WR_CMD                (ENFORCE_RD_WR_CMD),
     .EN_UPSIZER                       (C_S_AXI_SUPPORTS_NARROW_BURST),
     .ENFORCE_RD_WR_PATTERN            (ENFORCE_RD_WR_PATTERN)

   ) u_axi4_tg_inst
   (
     .aclk                             (clk),
     .aresetn                          (aresetn),

// Input control signals
     .init_cmptd                       (init_calib_complete),
     .init_test                        (1'b0),
     .wdog_mask                        (~init_calib_complete),
     .wrap_en                          (1'b0),

// AXI write address channel signals
     .axi_wready                       (s_axi_awready),
     .axi_wid                          (s_axi_awid),
     .axi_waddr                        (s_axi_awaddr),
     .axi_wlen                         (s_axi_awlen),
     .axi_wsize                        (s_axi_awsize),
     .axi_wburst                       (s_axi_awburst),
     .axi_wlock                        (s_axi_awlock),
     .axi_wcache                       (s_axi_awcache),
     .axi_wprot                        (s_axi_awprot),
     .axi_wvalid                       (s_axi_awvalid),

// AXI write data channel signals
     .axi_wd_wready                    (s_axi_wready),
     .axi_wd_wid                       (s_axi_wid),
     .axi_wd_data                      (s_axi_wdata),
     .axi_wd_strb                      (s_axi_wstrb),
     .axi_wd_last                      (s_axi_wlast),
     .axi_wd_valid                     (s_axi_wvalid),

// AXI write response channel signals
     .axi_wd_bid                       (s_axi_bid),
     .axi_wd_bresp                     (s_axi_bresp),
     .axi_wd_bvalid                    (s_axi_bvalid),
     .axi_wd_bready                    (s_axi_bready),

// AXI read address channel signals
     .axi_rready                       (s_axi_arready),
     .axi_rid                          (s_axi_arid),
     .axi_raddr                        (s_axi_araddr),
     .axi_rlen                         (s_axi_arlen),
     .axi_rsize                        (s_axi_arsize),
     .axi_rburst                       (s_axi_arburst),
     .axi_rlock                        (s_axi_arlock),
     .axi_rcache                       (s_axi_arcache),
     .axi_rprot                        (s_axi_arprot),
     .axi_rvalid                       (s_axi_arvalid),

// AXI read data channel signals
     .axi_rd_bid                       (s_axi_rid),
     .axi_rd_rresp                     (s_axi_rresp),
     .axi_rd_rvalid                    (s_axi_rvalid),
     .axi_rd_data                      (s_axi_rdata),
     .axi_rd_last                      (s_axi_rlast),
     .axi_rd_rready                    (s_axi_rready),

// Error status signals
     .cmd_err                          (cmd_err),
     .data_msmatch_err                 (data_msmatch_err),
     .write_err                        (write_err),
     .read_err                         (read_err),
     .test_cmptd                       (test_cmptd),
     .write_cmptd                      (write_cmptd),
     .read_cmptd                       (read_cmptd),
     .cmptd_one_wr_rd                  (cmptd_one_wr_rd),

// Debug status signals
     .cmp_data_en                      (cmp_data_valid),
     .cmp_data_o                       (cmp_data),
     .rdata_cmp                        (rdata_cmp),
     .dbg_wr_sts_vld                   (dbg_wr_sts_vld),
     .dbg_wr_sts                       (dbg_wr_sts),
     .dbg_rd_sts_vld                   (dbg_rd_sts_vld),
     .dbg_rd_sts                       (dbg_rd_sts)
);

      


 generate
    if (DEBUG_PORT=="ON") begin: CHIPSCOPE_INST


       assign ddr3_ila_basic_w[128]       = tg_compare_error;
       assign ddr3_ila_basic_w[129+:32]   = cmp_data[32*dbg_dqs+:32];
       assign ddr3_ila_basic_w[161+:32]   = rdata_cmp[32*dbg_dqs+:32];
       assign ddr3_ila_basic_w[255:193]   = 'b0;

        vio_twm_ddrx u_vio_twm_ddrx (
            .clk         (clk),
            .probe_in0   (win_start),//1
            .probe_in1   (dbg_pi_counter_read_val),//6
            .probe_in2   (pi_win_left_ram_out),//6
            .probe_in3   (pi_win_right_ram_out),//6
            .probe_in4   (win_active),//1
            .probe_in5   (dbg_win_chk),//165
            .probe_in6   (win_current_bit),//7
            .probe_in7   (win_current_byte[3:0]),//4
            .probe_in8   (win_byte_select),//7
            .probe_in9   (po_win_left_ram_out),//9
            .probe_in10  (po_win_right_ram_out),//9
            .probe_in11  (dbg_po_counter_read_val),//9
            .probe_in12  (mem_pattern_init_done),//1
            .probe_out0  (dbg_bit),//9
            .probe_out1  (dbg_dqs),//5
            .probe_out2  (vio_modify_enable),//1
            .probe_out3  (vio_data_mode_value),//4
            .probe_out4  (vio_addr_mode_value),//3
            .probe_out5  (vio_instr_mode_value),//4
            .probe_out6  (vio_bl_mode_value),//2
            .probe_out7  (vio_fixed_bl_value),//10
            .probe_out8  (vio_data_mask_gen),//1
            .probe_out9  (vio_pause_traffic),//1
            .probe_out10 (vio_fixed_instr_value),//3
            .probe_out11 (dbg_clear_error),//1
            .probe_out12 (vio_tg_rst),//1
            .probe_out13 (wdt_en_w),//1
            .probe_out14 (win_start),//1
            .probe_out15 (win_sel_pi_pon),//1
            .probe_out16 (vio_dbg_sel_pi_incdec),//1
            .probe_out17 (vio_dbg_sel_po_incdec),//1
            .probe_out18 (vio_dbg_pi_f_inc),//1
            .probe_out19 (vio_dbg_pi_f_dec),//1
            .probe_out20 (vio_dbg_po_f_inc),//1
            .probe_out21 (vio_dbg_po_f_dec),//1
            .probe_out22 (vio_dbg_po_f_stg23_sel),//1
            .probe_out23 (vio_win_byte_select_inc),//1
            .probe_out24 (vio_win_byte_select_dec),//1
            .probe_out25 (vio_sel_mux_rdd[3:0]),//4
            .probe_out26 (vio_tg_simple_data_sel)//2
        );


          always @ (posedge clk or posedge rst)
          begin
            if (rst)
            begin
              ddr3_ila_basic    <= 'b0;
              ddr3_ila_rdpath   <= 'b0;
              ddr3_ila_wrpath   <= 'b0;
            end
            else
            begin
              ddr3_ila_basic    <= ddr3_ila_basic_w;
              ddr3_ila_rdpath   <= ddr3_ila_rdpath_w;
              ddr3_ila_wrpath   <= ddr3_ila_wrpath_w;
            end
          end

       assign dbg_sel_pi_incdec  = (!win_active) ? vio_dbg_sel_pi_incdec : 1'b1;
       assign dbg_sel_po_incdec  = (!win_active) ? vio_dbg_sel_po_incdec : 1'b1;
       assign manual_clear_error = (!win_active) ? dbg_clear_error : win_clr_error;
       assign dbg_pi_f_inc       = (!win_active) ? vio_dbg_pi_f_inc : pi_win_up;
       assign dbg_pi_f_dec       = (!win_active) ? vio_dbg_pi_f_dec : pi_win_down;
       assign dbg_po_f_inc       = (!win_active) ? vio_dbg_po_f_inc : po_win_up;
       assign dbg_po_f_dec       = (!win_active) ? vio_dbg_po_f_dec : po_win_down;
       assign dbg_po_f_stg23_sel = (!win_active) ?  vio_dbg_po_f_stg23_sel : po_stg23_sel;

        assign dbg_init_calib_complete          = ddr3_ila_basic[0];
        assign dbg_wrlvl_start                  = ddr3_ila_basic[1];
        assign dbg_wrlvl_done                   = ddr3_ila_basic[2];
        assign dbg_wrlvl_err                    = ddr3_ila_basic[3];
        assign dbg_pi_phaselock_start           = ddr3_ila_basic[4];
        assign dbg_pi_phaselocked_done          = ddr3_ila_basic[5];
        assign dbg_pi_phaselock_err             = ddr3_ila_basic[6];
        assign dbg_pi_dqsfound_start            = ddr3_ila_basic[7];
        assign dbg_pi_dqsfound_done             = ddr3_ila_basic[8];
        assign dbg_pi_dqsfound_err              = ddr3_ila_basic[9];
        assign dbg_rdlvl_start                  = ddr3_ila_basic[11:10];
        assign dbg_rdlvl_done                   = ddr3_ila_basic[13:12];
        assign dbg_rdlvl_err                    = ddr3_ila_basic[15:14];
        assign dbg_oclkdelay_calib_start        = ddr3_ila_basic[16];
        assign dbg_oclkdelay_calib_done         = ddr3_ila_basic[17];
        assign dbg_wrcal_start                  = ddr3_ila_basic[19];
        assign dbg_wrcal_done                   = ddr3_ila_basic[20];
        assign dbg_wrcal_err                    = ddr3_ila_basic[21];
        assign dbg_phy_init_5_0                 = ddr3_ila_basic[27:22];
        assign dbg_rddata_valid_r               = ddr3_ila_basic[28];
        assign dbg_rddata_r                     = ddr3_ila_basic[29+:64];
        assign dbg_fine_adjust_done_r           = ddr3_ila_basic[93];
        assign dbg_cmd_wdt_err_w                = ddr3_ila_basic[125];
        assign dbg_rd_wdt_err_w                 = ddr3_ila_basic[126];
        assign dbg_wr_wdt_err_w                 = ddr3_ila_basic[127];
        assign dbg_tg_compare_error             = ddr3_ila_basic[128];
        assign dbg_axi_cmp_data                 = ddr3_ila_basic[129+:32];
        assign dbg_axi_rdata_cmp                = ddr3_ila_basic[161+:32];

        assign dbg_wl_state_r                   = ddr3_ila_wrpath[0+:5];
        assign dbg_dqs_cnt_r                    = ddr3_ila_wrpath[6+:4];
        assign dbg_wl_edge_detect_valid_r       = ddr3_ila_wrpath[10];
        assign dbg_rd_data_edge_detect_r_by_dqs = ddr3_ila_wrpath[11];
        assign dbg_wl_po_fine_cnt_by_dqs        = ddr3_ila_wrpath[12+:6];
        assign dbg_wl_po_coarse_cnt_by_dqs      = ddr3_ila_wrpath[18+:3];
        assign dbg_ocal_tap_cnt_by_dqs          = ddr3_ila_wrpath[32+:6];
        assign dbg_ocal_state_r                 = ddr3_ila_wrpath[52+:5];
        assign dbg_ocal_rise_edge1_found        = ddr3_ila_wrpath[63];
        assign dbg_ocal_rise_edge2_found        = ddr3_ila_wrpath[241];
        assign dbg_ocal_fall_edge1_found        = ddr3_ila_wrpath[242];
        assign dbg_ocal_fall_edge2_found        = ddr3_ila_wrpath[243];
        assign dbg_ocal_rise_edge1_taps         = ddr3_ila_wrpath[40+:6];
        assign dbg_ocal_rise_edge2_taps         = ddr3_ila_wrpath[46+:6];
        assign dbg_ocal_fall_edge1_taps         = ddr3_ila_wrpath[249:244];
        assign dbg_ocal_fall_edge2_taps         = ddr3_ila_wrpath[255:250];
        assign dbg_stg2_tap_cnt                 = ddr3_ila_wrpath[57+:6];
        assign dbg_wrcal_pat_data_match_r       = ddr3_ila_wrpath[64];
        assign dbg_wrcal_pat_data_match_valid_r = ddr3_ila_wrpath[65];
        assign dbg_wrcal_dqs_cnt_r              = ddr3_ila_wrpath[66+:4];
        assign cal2_state_r                     = ddr3_ila_wrpath[70+:5];
        assign not_empty_wait_cnt               = ddr3_ila_wrpath[75+:5];
        assign dbg_early1_data                  = ddr3_ila_wrpath[80];
        assign dbg_early2_data                  = ddr3_ila_wrpath[81];
        assign dbg_phy_oclkdelay_cal_57_54      = ddr3_ila_wrpath[91:88];
        assign dbg_phy_wrlvl_128_75             = ddr3_ila_wrpath[96+:54];
        assign dbg_phy_wrlvl_155_129            = ddr3_ila_wrpath[150+:27];
        assign dbg_pi_phase_locked_phy4lanes    = ddr3_ila_rdpath[0+:12];
        assign dbg_pi_dqs_found_lanes_phy4lanes = ddr3_ila_rdpath[12+:12];
        assign dbg_rd_data_offset               = ddr3_ila_rdpath[24+:12];
        assign dbg_cal1_state_r                 = ddr3_ila_rdpath[40+:6];
        assign dbg_cal1_cnt_cpt_r               = ddr3_ila_rdpath[46+:4];
        assign dbg_mux_rd_rise0_r               = ddr3_ila_rdpath[50+:8];
        assign dbg_mux_rd_fall0_r               = ddr3_ila_rdpath[58+:8];
        assign dbg_mux_rd_rise1_r               = ddr3_ila_rdpath[66+:8];
        assign dbg_mux_rd_fall1_r               = ddr3_ila_rdpath[74+:8];
        assign dbg_mux_rd_rise2_r               = ddr3_ila_rdpath[82+:8];
        assign dbg_mux_rd_fall2_r               = ddr3_ila_rdpath[90+:8];
        assign dbg_mux_rd_rise3_r               = ddr3_ila_rdpath[98+:8];
        assign dbg_mux_rd_fall3_r               = ddr3_ila_rdpath[106+:8];
        assign dbg_rdlvl_pat_data_match_r       = ddr3_ila_rdpath[114];
        assign dbg_mux_rd_valid_r               = ddr3_ila_rdpath[115];
        assign dbg_cpt_first_edge_cnt_by_dqs    = ddr3_ila_rdpath[116+:6];
        assign dbg_cpt_second_edge_cnt_by_dqs   = ddr3_ila_rdpath[122+:6];
        assign dbg_cpt_tap_cnt_by_dqs           = ddr3_ila_rdpath[128+:6];
        assign dbg_dq_idelay_tap_cnt_by_dqs     = ddr3_ila_rdpath[134+:5];
        assign dbg_dbg_calib_rd_data_offset_1   = ddr3_ila_rdpath[164+:12];
        assign dbg_dbg_calib_rd_data_offset_2   = ddr3_ila_rdpath[176+:12];
        assign dbg_data_offset                  = ddr3_ila_rdpath[188+:6];
        assign dbg_data_offset_1                = ddr3_ila_rdpath[194+:6];
        assign dbg_data_offset_2                = ddr3_ila_rdpath[200+:6];
        assign dbg_cpt_first_edge_cnt           = ddr3_ila_rdpath[206+:108];
        assign dbg_cpt_second_edge_cnt          = ddr3_ila_rdpath[314+:108];
        assign dbg_cpt_tap_cnt                  = ddr3_ila_rdpath[422+:108];
        assign dbg_dq_idelay_tap_cnt            = ddr3_ila_rdpath[530+:90];
        assign dbg_prbs_rdlvl                   = ddr3_ila_rdpath[620+:255];

        ila_ddrx_axi u_ila_ddrx_axi(
          .clk     (clk),
          .probe0  (dbg_init_calib_complete),
          .probe1  (dbg_wrlvl_start),
          .probe2  (dbg_wrlvl_done),
          .probe3  (dbg_wrlvl_err),
          .probe4  (dbg_pi_phaselock_start),
          .probe5  (dbg_pi_phaselocked_done),
          .probe6  (dbg_pi_phaselock_err),
          .probe7  (dbg_pi_dqsfound_start),
          .probe8  (dbg_pi_dqsfound_done),
          .probe9  (dbg_pi_dqsfound_err),
          .probe10 (dbg_rdlvl_start),
          .probe11 (dbg_rdlvl_done),
          .probe12 (dbg_rdlvl_err),
          .probe13 (dbg_oclkdelay_calib_start),
          .probe14 (dbg_oclkdelay_calib_done),
          .probe15 (dbg_wrcal_start),
          .probe16 (dbg_wrcal_done),
          .probe17 (dbg_wrcal_err),
          .probe18 (dbg_phy_init_5_0),
          .probe19 (dbg_rddata_valid_r),
          .probe20 (dbg_rddata_r),
          .probe21 (dbg_fine_adjust_done_r),
          .probe22 (dbg_cmd_wdt_err_w),
          .probe23 (dbg_rd_wdt_err_w),
          .probe24 (dbg_wr_wdt_err_w),
          .probe25 (dbg_tg_compare_error),
          .probe26 (dbg_axi_cmp_data),
          .probe27 (dbg_axi_rdata_cmp),
          .probe28 (dbg_wl_state_r),
          .probe29 (dbg_dqs_cnt_r),
          .probe30 (dbg_wl_edge_detect_valid_r),
          .probe31 (dbg_rd_data_edge_detect_r_by_dqs),
          .probe32 (dbg_wl_po_fine_cnt_by_dqs),
          .probe33 (dbg_wl_po_coarse_cnt_by_dqs),
          .probe34 (dbg_ocal_tap_cnt_by_dqs),
          .probe35 (dbg_ocal_rise_edge1_found),
          .probe36 (dbg_ocal_rise_edge2_found),
          .probe37 (dbg_ocal_rise_edge1_taps),
          .probe38 (dbg_ocal_rise_edge2_taps),
          .probe39 (dbg_ocal_state_r),
          .probe40 (dbg_stg2_tap_cnt),
          .probe41 (dbg_wrcal_pat_data_match_r),
          .probe42 (dbg_wrcal_pat_data_match_valid_r),
          .probe43 (dbg_wrcal_dqs_cnt_r),
          .probe44 (cal2_state_r),
          .probe45 (not_empty_wait_cnt),
          .probe46 (dbg_early1_data),
          .probe47 (dbg_early2_data),
          .probe48 (dbg_phy_oclkdelay_cal_57_54),
          .probe49 (dbg_phy_wrlvl_128_75),
          .probe50 (dbg_phy_wrlvl_155_129),
          .probe51 (dbg_pi_phase_locked_phy4lanes),
          .probe52 (dbg_pi_dqs_found_lanes_phy4lanes),
          .probe53 (dbg_rd_data_offset),
          .probe54 (dbg_cal1_state_r),
          .probe55 (dbg_cal1_cnt_cpt_r),
          .probe56 (dbg_mux_rd_rise0_r),
          .probe57 (dbg_mux_rd_fall0_r),
          .probe58 (dbg_mux_rd_rise1_r),
          .probe59 (dbg_mux_rd_fall1_r),
          .probe60 (dbg_mux_rd_rise2_r),
          .probe61 (dbg_mux_rd_fall2_r),
          .probe62 (dbg_mux_rd_rise3_r),
          .probe63 (dbg_mux_rd_fall3_r),
          .probe64 (dbg_rdlvl_pat_data_match_r),
          .probe65 (dbg_mux_rd_valid_r),
          .probe66 (dbg_cpt_first_edge_cnt_by_dqs),
          .probe67 (dbg_cpt_second_edge_cnt_by_dqs),
          .probe68 (dbg_cpt_tap_cnt_by_dqs),
          .probe69 (dbg_dq_idelay_tap_cnt_by_dqs),
          .probe70 (dbg_dbg_calib_rd_data_offset_1),
          .probe71 (dbg_dbg_calib_rd_data_offset_2),
          .probe72 (dbg_data_offset),
          .probe73 (dbg_data_offset_1),
          .probe74 (dbg_data_offset_2),
          .probe75 (dbg_cpt_first_edge_cnt),
          .probe76 (dbg_cpt_second_edge_cnt),
          .probe77 (dbg_cpt_tap_cnt),
          .probe78 (dbg_dq_idelay_tap_cnt),
          .probe79 (dbg_prbs_rdlvl),
          .probe80 (dbg_ocal_fall_edge1_found),
          .probe81 (dbg_ocal_fall_edge2_found),
          .probe82 (dbg_ocal_fall_edge1_taps),
          .probe83 (dbg_ocal_fall_edge2_taps)
        );


       always @(posedge clk)
       begin
         app_rd_data_valid_r1  <= #TCQ app_rd_data_valid;
         app_rd_data_valid_r2  <= #TCQ app_rd_data_valid_r1;
         app_rd_data_valid_r3  <= #TCQ app_rd_data_valid_r2;
         app_rd_data_r1        <= app_rd_data;
         app_rd_data_r2        <= app_rd_data_r1;
         app_rd_data_r3        <= app_rd_data_r2;
       end

       always @(posedge clk)
         if (rst)
           win_byte_select <= #TCQ 'b0;
         else if (vio_win_byte_select_inc) begin
           if (win_byte_select == (DQ_WIDTH/DRAM_WIDTH))
             win_byte_select <= #TCQ 'b0;
           else
             win_byte_select <= #TCQ win_byte_select + 1;
         end else if (vio_win_byte_select_dec) begin
           if (win_byte_select == 0)
             win_byte_select <= #TCQ (DQ_WIDTH/DRAM_WIDTH) -1;
           else
             win_byte_select <= #TCQ win_byte_select - 1;
         end

       always @(posedge clk) begin
         if (rst)
           dbg_byte_sel_r <= #TCQ 'd0;
         else begin
           if (!win_active)
             dbg_byte_sel_r <= #TCQ vio_sel_mux_rdd;
           else
             dbg_byte_sel_r <= #TCQ win_current_byte;
         end
       end

       mig_7series_v2_0_chk_win #
         (
          .TCQ         (TCQ),
          .nCK_PER_CLK (nCK_PER_CLK),
          .DLY_WIDTH   (26),
          .DQ_PER_DQS  (DRAM_WIDTH),
          .DQ_WIDTH    (PAYLOAD_WIDTH),
          .SC_WIDTH    (3),
          .SDC_WIDTH   (5),
          .WIN_SIZE    (6),
          .SIM_OPTION  (SIMULATION)
          )
         u_chk_win
           (
            .clk                   (clk),
            .rst                   (rst),
            .mem_pattern_init_done (mem_pattern_init_done),
            .win_start             (win_start),
            .read_valid            (app_rd_data_valid_r2),
            .win_byte_select       (win_byte_select),
            .cmp_data              (cmp_data),
            .rd_data               (app_rd_data_r2),
            .win_sel_pi_pon        (win_sel_pi_pon),
            .pi_curr_tap_cnt       (dbg_pi_counter_read_val),
            .po_curr_tap_cnt       (dbg_po_counter_read_val),
            .pi_left_ram_out       (pi_win_left_ram_out),
            .pi_right_ram_out      (pi_win_right_ram_out),
            .po_left_ram_out       (po_win_left_ram_out),
            .po_right_ram_out      (po_win_right_ram_out),
            .win_active            (win_active),
            .win_clr_error         (win_clr_error),
            .pi_win_up             (pi_win_up),
            .pi_win_down           (pi_win_down),
            .po_win_up             (po_win_up),
            .po_stg23_sel          (po_stg23_sel),
            .po_win_down           (po_win_down),
            .po_win_tg_rst         (po_win_tg_rst),
            .win_current_bit       (win_current_bit),
            .win_current_byte      (win_current_byte[3:0]),
            .dbg_clear_error       (dbg_clear_error),
            .dbg_win_chk           (dbg_win_chk)
            );

    end
    else begin: NO_CHIPSCOPE
       assign vio_modify_enable     = 1'b0;
       assign vio_data_mode_value   = 4'b0010;
       assign vio_addr_mode_value   = 3'b011;
       assign vio_instr_mode_value  = 4'b0010;
       assign vio_bl_mode_value     = 2'b10;
       assign vio_fixed_bl_value    = 8'd16;
       assign vio_data_mask_gen     = 1'b0;
       assign vio_pause_traffic     = 1'b0;
       assign vio_fixed_instr_value = 3'b001;
       assign dbg_clear_error       = 1'b0;

       assign dbg_sel_pi_incdec       = 'b0;
       assign dbg_sel_po_incdec       = 'b0;
       assign manual_clear_error      = 'b0;
       assign dbg_pi_f_inc            = 'b0;
       assign dbg_pi_f_dec            = 'b0;
       assign dbg_po_f_inc            = 'b0;
       assign dbg_po_f_dec            = 'b0;
       assign dbg_po_f_stg23_sel      = 'b0;
       assign win_start               = 'b0;
       assign win_sel_pi_pon          = 'b0;

       assign vio_win_byte_select_inc = 'b0;
       assign vio_win_byte_select_dec = 'b0;
       assign vio_sel_mux_rdd         = 'b0;
       assign vio_tg_simple_data_sel  = 'b0;

    end
 endgenerate

       

endmodule
