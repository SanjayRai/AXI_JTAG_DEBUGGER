-- Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2013.3 (lin64) Build 329390 Wed Oct 16 18:26:55 MDT 2013
-- Date        : Thu Nov 14 09:21:06 2013
-- Host        : centosMC running 64-bit CentOS release 6.4 (Final)
-- Command     : write_vhdl -force -mode funcsim
--               /home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/IP/RAMB_AXI_256x256/RAMB_AXI_256x256_funcsim.vhdl
-- Design      : RAMB_AXI_256x256
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity RAMB_AXI_256x256blk_mem_axi_read_fsm is
  port (
    s_axi_arready : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    O1 : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    O9 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    O10 : out STD_LOGIC;
    O11 : out STD_LOGIC;
    O12 : out STD_LOGIC;
    O13 : out STD_LOGIC;
    O14 : out STD_LOGIC;
    O15 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    O16 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O17 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O18 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O19 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O20 : out STD_LOGIC;
    O21 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O22 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O23 : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    axis_address_full_r : in STD_LOGIC_VECTOR ( 12 downto 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    I2 : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC;
    incr_en_r : in STD_LOGIC;
    p_0_in3_in : in STD_LOGIC;
    I10 : in STD_LOGIC;
    I11 : in STD_LOGIC;
    I12 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I13 : in STD_LOGIC;
    I14 : in STD_LOGIC;
    I15 : in STD_LOGIC;
    I16 : in STD_LOGIC;
    I17 : in STD_LOGIC;
    I18 : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_aresetn : in STD_LOGIC
  );
end RAMB_AXI_256x256blk_mem_axi_read_fsm;

architecture STRUCTURE of RAMB_AXI_256x256blk_mem_axi_read_fsm is
  signal \<const1>\ : STD_LOGIC;
  signal \^addrardaddr\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^o1\ : STD_LOGIC;
  signal \^o13\ : STD_LOGIC;
  signal \^o20\ : STD_LOGIC;
  signal \^o4\ : STD_LOGIC;
  signal \^o5\ : STD_LOGIC;
  signal \^o6\ : STD_LOGIC;
  signal \^o7\ : STD_LOGIC;
  signal \^o8\ : STD_LOGIC;
  signal \^o9\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ar_ready_c : STD_LOGIC;
  signal \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.S_AXI_RLAST_i_1\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.ar_ready_r_i_2\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.ar_ready_r_i_3\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.ar_ready_r_i_4\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.ar_ready_r_i_5\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.arlen_cntr[2]_i_2\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.arlen_cntr[3]_i_2\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.arlen_cntr[3]_i_3\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.arlen_cntr[4]_i_2\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.arlen_cntr[5]_i_2\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.arlen_cntr[7]_i_4\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.arlen_cntr[7]_i_5\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.arlen_cntr[7]_i_6\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.arlen_cntr[7]_i_7\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.arlen_cntr[7]_i_8\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.arlen_cntr[7]_i_9\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_5\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_6\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_7\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_8\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_9\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_5\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_6\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_7\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_2\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_3\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_4\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_10\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_11\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_12\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_5\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_6\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_7\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_8\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_9\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.outstanding_read_r_i_1\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.r_valid_r_i_1\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.r_valid_r_i_2\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal outstanding_read_r : STD_LOGIC;
  signal present_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal r_last_c : STD_LOGIC;
  signal \^s_axi_rlast\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gaxi_full_sm.S_AXI_RLAST_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gaxi_full_sm.ar_ready_r_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[7]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[7]_i_6\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[7]_i_7\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[7]_i_8\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[7]_i_9\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[12]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_9\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_12\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \grid.S_AXI_RID[3]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \grid.ar_id_r[3]_i_1\ : label is "soft_lutpair4";
begin
  ADDRARDADDR(7 downto 0) <= \^addrardaddr\(7 downto 0);
  AR(0) <= \^ar\(0);
  O1 <= \^o1\;
  O13 <= \^o13\;
  O20 <= \^o20\;
  O4 <= \^o4\;
  O5 <= \^o5\;
  O6 <= \^o6\;
  O7 <= \^o7\;
  O8 <= \^o8\;
  O9(8 downto 0) <= \^o9\(8 downto 0);
  Q(0) <= \^q\(0);
  s_axi_rlast <= \^s_axi_rlast\;
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAC0404FCACFCAC"
    )
    port map (
      I0 => present_state(0),
      I1 => s_axi_arvalid,
      I2 => \^q\(0),
      I3 => outstanding_read_r,
      I4 => s_axi_rready,
      I5 => \^o1\,
      O => \^o20\
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9CCCDDDD9CCC8888"
    )
    port map (
      I0 => I6(4),
      I1 => axis_address_full_r(5),
      I2 => incr_en_r,
      I3 => p_0_in3_in,
      I4 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20\,
      I5 => s_axi_araddr(5),
      O => \^addrardaddr\(0)
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA08"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^o1\,
      I2 => s_axi_rready,
      I3 => outstanding_read_r,
      I4 => present_state(0),
      O => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20\
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9CCCDDDD9CCC8888"
    )
    port map (
      I0 => I6(11),
      I1 => axis_address_full_r(12),
      I2 => I7,
      I3 => axis_address_full_r(11),
      I4 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20\,
      I5 => s_axi_araddr(12),
      O => \^addrardaddr\(7)
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9CDD9C88"
    )
    port map (
      I0 => I6(10),
      I1 => axis_address_full_r(11),
      I2 => I7,
      I3 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20\,
      I4 => s_axi_araddr(11),
      O => \^addrardaddr\(6)
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9CCCDDDD9CCC8888"
    )
    port map (
      I0 => I6(9),
      I1 => axis_address_full_r(10),
      I2 => I8,
      I3 => axis_address_full_r(9),
      I4 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20\,
      I5 => s_axi_araddr(10),
      O => \^addrardaddr\(5)
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9CDD9C88"
    )
    port map (
      I0 => I6(8),
      I1 => axis_address_full_r(9),
      I2 => I8,
      I3 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20\,
      I4 => s_axi_araddr(9),
      O => \^addrardaddr\(4)
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9CDD9C88"
    )
    port map (
      I0 => I6(7),
      I1 => axis_address_full_r(8),
      I2 => I9,
      I3 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20\,
      I4 => s_axi_araddr(8),
      O => \^addrardaddr\(3)
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9CDD9C88"
    )
    port map (
      I0 => I6(6),
      I1 => axis_address_full_r(7),
      I2 => I11,
      I3 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20\,
      I4 => s_axi_araddr(7),
      O => \^addrardaddr\(2)
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9CCCDDDD9CCC8888"
    )
    port map (
      I0 => I6(5),
      I1 => axis_address_full_r(6),
      I2 => I10,
      I3 => axis_address_full_r(5),
      I4 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20\,
      I5 => s_axi_araddr(6),
      O => \^addrardaddr\(1)
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
\gaxi_full_sm.S_AXI_RLAST_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => r_last_c,
      I1 => s_axi_rready,
      I2 => \^o1\,
      I3 => \^s_axi_rlast\,
      O => \n_0_gaxi_full_sm.S_AXI_RLAST_i_1\
    );
\gaxi_full_sm.S_AXI_RLAST_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B833FF88B80000"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.ar_ready_r_i_2\,
      I1 => present_state(0),
      I2 => outstanding_read_r,
      I3 => \n_0_gaxi_full_sm.ar_ready_r_i_3\,
      I4 => \^q\(0),
      I5 => \n_0_gaxi_full_sm.r_valid_r_i_2\,
      O => r_last_c
    );
\gaxi_full_sm.S_AXI_RLAST_reg\: unisim.vcomponents.FDCE
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => \^ar\(0),
      D => \n_0_gaxi_full_sm.S_AXI_RLAST_i_1\,
      Q => \^s_axi_rlast\
    );
\gaxi_full_sm.ar_ready_r_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA030000"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.ar_ready_r_i_2\,
      I1 => \n_0_gaxi_full_sm.ar_ready_r_i_3\,
      I2 => outstanding_read_r,
      I3 => present_state(0),
      I4 => \^q\(0),
      I5 => \n_0_gaxi_full_sm.ar_ready_r_i_4\,
      O => ar_ready_c
    );
\gaxi_full_sm.ar_ready_r_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => I3(0),
      I1 => I3(1),
      I2 => I3(2),
      I3 => \n_0_gaxi_full_sm.ar_ready_r_i_5\,
      O => \n_0_gaxi_full_sm.ar_ready_r_i_2\
    );
\gaxi_full_sm.ar_ready_r_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o1\,
      I1 => s_axi_rready,
      O => \n_0_gaxi_full_sm.ar_ready_r_i_3\
    );
\gaxi_full_sm.ar_ready_r_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030100033331133"
    )
    port map (
      I0 => \^o1\,
      I1 => \^q\(0),
      I2 => \n_0_gaxi_full_sm.r_valid_r_i_2\,
      I3 => present_state(0),
      I4 => s_axi_rready,
      I5 => s_axi_arvalid,
      O => \n_0_gaxi_full_sm.ar_ready_r_i_4\
    );
\gaxi_full_sm.ar_ready_r_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
    port map (
      I0 => I3(7),
      I1 => I3(3),
      I2 => s_axi_rready,
      I3 => I3(5),
      I4 => I3(6),
      I5 => I3(4),
      O => \n_0_gaxi_full_sm.ar_ready_r_i_5\
    );
\gaxi_full_sm.ar_ready_r_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => \^ar\(0),
      D => ar_ready_c,
      Q => s_axi_arready
    );
\gaxi_full_sm.arlen_cntr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33335C55"
    )
    port map (
      I0 => I3(0),
      I1 => s_axi_arlen(0),
      I2 => \^q\(0),
      I3 => s_axi_arvalid,
      I4 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      O => O15(0)
    );
\gaxi_full_sm.arlen_cntr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1E0E0F13D2C2C3D"
    )
    port map (
      I0 => \^o8\,
      I1 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I2 => s_axi_arlen(1),
      I3 => I3(1),
      I4 => I3(0),
      I5 => s_axi_arlen(0),
      O => O15(1)
    );
\gaxi_full_sm.arlen_cntr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FF0FF4F00BFB00"
    )
    port map (
      I0 => \^q\(0),
      I1 => s_axi_arvalid,
      I2 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I3 => \n_0_gaxi_full_sm.arlen_cntr[2]_i_2\,
      I4 => I3(2),
      I5 => s_axi_arlen(2),
      O => O15(2)
    );
\gaxi_full_sm.arlen_cntr[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00035503"
    )
    port map (
      I0 => s_axi_arlen(1),
      I1 => I3(1),
      I2 => I3(0),
      I3 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I4 => s_axi_arlen(0),
      O => \n_0_gaxi_full_sm.arlen_cntr[2]_i_2\
    );
\gaxi_full_sm.arlen_cntr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FF0FF4F00BFB00"
    )
    port map (
      I0 => \^q\(0),
      I1 => s_axi_arvalid,
      I2 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I3 => \n_0_gaxi_full_sm.arlen_cntr[3]_i_2\,
      I4 => I3(3),
      I5 => s_axi_arlen(3),
      O => O15(3)
    );
\gaxi_full_sm.arlen_cntr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001105050011"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.arlen_cntr[3]_i_3\,
      I1 => I3(1),
      I2 => s_axi_arlen(1),
      I3 => I3(2),
      I4 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I5 => s_axi_arlen(2),
      O => \n_0_gaxi_full_sm.arlen_cntr[3]_i_2\
    );
\gaxi_full_sm.arlen_cntr[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_arlen(0),
      I1 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I2 => I3(0),
      O => \n_0_gaxi_full_sm.arlen_cntr[3]_i_3\
    );
\gaxi_full_sm.arlen_cntr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FF0FF4F00BFB00"
    )
    port map (
      I0 => \^q\(0),
      I1 => s_axi_arvalid,
      I2 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I3 => \n_0_gaxi_full_sm.arlen_cntr[4]_i_2\,
      I4 => I3(4),
      I5 => s_axi_arlen(4),
      O => O15(4)
    );
\gaxi_full_sm.arlen_cntr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
    port map (
      I0 => s_axi_arlen(2),
      I1 => I3(2),
      I2 => \n_0_gaxi_full_sm.arlen_cntr[2]_i_2\,
      I3 => I3(3),
      I4 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I5 => s_axi_arlen(3),
      O => \n_0_gaxi_full_sm.arlen_cntr[4]_i_2\
    );
\gaxi_full_sm.arlen_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FF0FF4F00BFB00"
    )
    port map (
      I0 => \^q\(0),
      I1 => s_axi_arvalid,
      I2 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I3 => \n_0_gaxi_full_sm.arlen_cntr[5]_i_2\,
      I4 => I3(5),
      I5 => s_axi_arlen(5),
      O => O15(5)
    );
\gaxi_full_sm.arlen_cntr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000044404"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_8\,
      I1 => \n_0_gaxi_full_sm.arlen_cntr[2]_i_2\,
      I2 => I3(2),
      I3 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I4 => s_axi_arlen(2),
      I5 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_6\,
      O => \n_0_gaxi_full_sm.arlen_cntr[5]_i_2\
    );
\gaxi_full_sm.arlen_cntr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FF0FF4F00BFB00"
    )
    port map (
      I0 => \^q\(0),
      I1 => s_axi_arvalid,
      I2 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I3 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_5\,
      I4 => I3(6),
      I5 => s_axi_arlen(6),
      O => O15(6)
    );
\gaxi_full_sm.arlen_cntr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
    port map (
      I0 => \^q\(0),
      I1 => s_axi_arvalid,
      I2 => \^o13\,
      I3 => \n_0_gaxi_full_sm.ar_ready_r_i_2\,
      O => E(0)
    );
\gaxi_full_sm.arlen_cntr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2FFE3EE1C110D00"
    )
    port map (
      I0 => \^o8\,
      I1 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I2 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_4\,
      I3 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_5\,
      I4 => I3(7),
      I5 => s_axi_arlen(7),
      O => O15(7)
    );
\gaxi_full_sm.arlen_cntr[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3\,
      I1 => \^o13\,
      O => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\
    );
\gaxi_full_sm.arlen_cntr[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_arlen(6),
      I1 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I2 => I3(6),
      O => \n_0_gaxi_full_sm.arlen_cntr[7]_i_4\
    );
\gaxi_full_sm.arlen_cntr[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_6\,
      I1 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_7\,
      I2 => \n_0_gaxi_full_sm.arlen_cntr[2]_i_2\,
      I3 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_8\,
      I4 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_9\,
      O => \n_0_gaxi_full_sm.arlen_cntr[7]_i_5\
    );
\gaxi_full_sm.arlen_cntr[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_arlen(4),
      I1 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I2 => I3(4),
      O => \n_0_gaxi_full_sm.arlen_cntr[7]_i_6\
    );
\gaxi_full_sm.arlen_cntr[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_arlen(2),
      I1 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I2 => I3(2),
      O => \n_0_gaxi_full_sm.arlen_cntr[7]_i_7\
    );
\gaxi_full_sm.arlen_cntr[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_arlen(3),
      I1 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I2 => I3(3),
      O => \n_0_gaxi_full_sm.arlen_cntr[7]_i_8\
    );
\gaxi_full_sm.arlen_cntr[7]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_arlen(5),
      I1 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I2 => I3(5),
      O => \n_0_gaxi_full_sm.arlen_cntr[7]_i_9\
    );
\gaxi_full_sm.aw_ready_r_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s_aresetn,
      O => \^ar\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \^o9\(8),
      I1 => r_last_c,
      O => O18(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3\,
      I1 => s_axi_arburst(1),
      I2 => s_axi_arburst(0),
      O => \^o9\(8)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => \^q\(0),
      I1 => s_axi_arvalid,
      I2 => \n_0_gaxi_full_sm.r_valid_r_i_2\,
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => \^o9\(8),
      I1 => I18,
      I2 => I5,
      I3 => s_axi_arlen(2),
      I4 => s_axi_arlen(1),
      O => \^o9\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002A00000000"
    )
    port map (
      I0 => \^o9\(8),
      I1 => s_axi_arlen(1),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arsize(2),
      I5 => I17,
      O => \^o9\(1)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
    port map (
      I0 => I16,
      I1 => \^o9\(8),
      I2 => \^o7\,
      I3 => s_axi_arlen(0),
      I4 => s_axi_arlen(3),
      O => \^o9\(2)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => s_axi_arlen(5),
      I1 => s_axi_arlen(4),
      I2 => s_axi_arlen(6),
      I3 => s_axi_arlen(7),
      O => \^o7\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o9\(8),
      I1 => I15,
      O => \^o9\(3)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o9\(8),
      I1 => I14,
      O => \^o9\(4)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o9\(8),
      I1 => I13,
      O => \^o9\(5)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444440CCC44CC"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => \^o9\(8),
      I2 => I4,
      I3 => s_axi_arlen(2),
      I4 => s_axi_arlen(1),
      I5 => I5,
      O => \^o9\(6)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0AAA2A"
    )
    port map (
      I0 => \^o9\(8),
      I1 => s_axi_arlen(2),
      I2 => I4,
      I3 => s_axi_arlen(1),
      I4 => I5,
      O => \^o9\(7)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
    port map (
      I0 => s_axi_araddr(10),
      I1 => s_axi_arvalid,
      I2 => \^q\(0),
      I3 => \^addrardaddr\(5),
      O => O17(5)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
    port map (
      I0 => s_axi_araddr(11),
      I1 => s_axi_arvalid,
      I2 => \^q\(0),
      I3 => \^addrardaddr\(6),
      O => O17(6)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => \^q\(0),
      I1 => s_axi_arvalid,
      I2 => \^o13\,
      O => O16(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
    port map (
      I0 => s_axi_araddr(12),
      I1 => s_axi_arvalid,
      I2 => \^q\(0),
      I3 => \^addrardaddr\(7),
      O => O17(7)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
    port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_arvalid,
      I2 => \^q\(0),
      I3 => \^addrardaddr\(0),
      O => O17(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
    port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_arvalid,
      I2 => \^q\(0),
      I3 => \^addrardaddr\(1),
      O => O17(1)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
    port map (
      I0 => s_axi_araddr(7),
      I1 => s_axi_arvalid,
      I2 => \^q\(0),
      I3 => \^addrardaddr\(2),
      O => O17(2)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
    port map (
      I0 => s_axi_araddr(8),
      I1 => s_axi_arvalid,
      I2 => \^q\(0),
      I3 => \^addrardaddr\(3),
      O => O17(3)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
    port map (
      I0 => s_axi_araddr(9),
      I1 => s_axi_arvalid,
      I2 => \^q\(0),
      I3 => \^addrardaddr\(4),
      O => O17(4)
    );
\gaxi_full_sm.gaxifull_mem_slave.incr_en_r_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF00E0"
    )
    port map (
      I0 => s_axi_arburst(0),
      I1 => s_axi_arburst(1),
      I2 => s_axi_arvalid,
      I3 => \^q\(0),
      I4 => incr_en_r,
      O => O23
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAABFFA8AAA800"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_5\,
      I1 => present_state(0),
      I2 => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3\,
      I3 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_6\,
      I4 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_7\,
      I5 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_8\,
      O => \^o5\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F7B080"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3\,
      I1 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_6\,
      I2 => D(0),
      I3 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_9\,
      I4 => I1(0),
      O => \^o6\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => \^q\(0),
      I1 => s_axi_arvalid,
      I2 => \^o13\,
      O => O14
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFFAAAAA800AAAA"
    )
    port map (
      I0 => s_axi_araddr(0),
      I1 => I2,
      I2 => \^o7\,
      I3 => \^o8\,
      I4 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20\,
      I5 => axis_address_full_r(0),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_5\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4404440477074404"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.ar_ready_r_i_2\,
      I1 => \^q\(0),
      I2 => \^o1\,
      I3 => s_axi_rready,
      I4 => s_axi_arvalid,
      I5 => \n_0_gaxi_full_sm.r_valid_r_i_2\,
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_6\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E0"
    )
    port map (
      I0 => \^o7\,
      I1 => I2,
      I2 => s_axi_arvalid,
      I3 => \^q\(0),
      I4 => present_state(0),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_7\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => s_axi_araddr(0),
      I1 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20\,
      I2 => axis_address_full_r(0),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_8\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E0"
    )
    port map (
      I0 => I2,
      I1 => \^o7\,
      I2 => s_axi_arvalid,
      I3 => \^q\(0),
      I4 => present_state(0),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_9\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B8BB88B"
    )
    port map (
      I0 => s_axi_araddr(1),
      I1 => \^o4\,
      I2 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3\,
      I3 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4\,
      I4 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_5\,
      O => O11
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3737303F3037303F"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_6\,
      I1 => s_axi_araddr(1),
      I2 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_7\,
      I3 => axis_address_full_r(1),
      I4 => \^o13\,
      I5 => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3\,
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => \^o6\,
      I1 => \^o5\,
      I2 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_11\,
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => \^o5\,
      I1 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_11\,
      I2 => \^o6\,
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_5\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
    port map (
      I0 => \^o8\,
      I1 => s_axi_arlen(5),
      I2 => s_axi_arlen(4),
      I3 => s_axi_arlen(6),
      I4 => s_axi_arlen(7),
      I5 => I2,
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_6\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010155555555"
    )
    port map (
      I0 => I6(0),
      I1 => present_state(0),
      I2 => outstanding_read_r,
      I3 => s_axi_rready,
      I4 => \^o1\,
      I5 => \^q\(0),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_7\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88B8BB8"
    )
    port map (
      I0 => s_axi_araddr(2),
      I1 => \^o4\,
      I2 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3\,
      I3 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4\,
      I4 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5\,
      O => O12
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2ABF"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3\,
      I1 => \^o6\,
      I2 => \^o5\,
      I3 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_11\,
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555501FD01FD01FD"
    )
    port map (
      I0 => s_axi_araddr(2),
      I1 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20\,
      I2 => I6(1),
      I3 => axis_address_full_r(2),
      I4 => \^o13\,
      I5 => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3\,
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FFFFFF04000000"
    )
    port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      I3 => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3\,
      I4 => \^o13\,
      I5 => I1(2),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88B8BB8"
    )
    port map (
      I0 => s_axi_araddr(3),
      I1 => \^o4\,
      I2 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_7\,
      I3 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_5\,
      I4 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_6\,
      O => O10
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C5CAFFFFC5CA0000"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_2\,
      I1 => s_axi_araddr(4),
      I2 => \^o4\,
      I3 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_3\,
      I4 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_4\,
      I5 => axis_address_full_r(4),
      O => O3
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_5\,
      I1 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_6\,
      I2 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_7\,
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_2\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA999A55559995"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_8\,
      I1 => axis_address_full_r(4),
      I2 => I6(3),
      I3 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20\,
      I4 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I5 => s_axi_araddr(4),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_3\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => \^q\(0),
      I1 => s_axi_arvalid,
      I2 => \^o13\,
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[4]_i_4\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4000"
    )
    port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(2),
      I3 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I4 => I1(5),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_10\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F7B080"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3\,
      I1 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_6\,
      I2 => D(1),
      I3 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_12\,
      I4 => I1(1),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_11\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E0"
    )
    port map (
      I0 => I2,
      I1 => \^o7\,
      I2 => s_axi_arvalid,
      I3 => \^q\(0),
      I4 => present_state(0),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_12\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2FF00B24D00FF4D"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_5\,
      I1 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_6\,
      I2 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_7\,
      I3 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_8\,
      I4 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_9\,
      I5 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_10\,
      O => O2
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => \^q\(0),
      I1 => s_axi_arvalid,
      I2 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      O => \^o4\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10001000103F1000"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.ar_ready_r_i_2\,
      I1 => \n_0_gaxi_full_sm.ar_ready_r_i_3\,
      I2 => present_state(0),
      I3 => \^q\(0),
      I4 => s_axi_arvalid,
      I5 => \n_0_gaxi_full_sm.r_valid_r_i_2\,
      O => \^o13\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555501FD01FD01FD"
    )
    port map (
      I0 => s_axi_araddr(3),
      I1 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20\,
      I2 => I6(2),
      I3 => axis_address_full_r(3),
      I4 => \^o13\,
      I5 => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[12]_i_3\,
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_5\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0800"
    )
    port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      I3 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I4 => I1(3),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_6\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8E8EAF8E8EAFAF"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4\,
      I1 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3\,
      I2 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5\,
      I3 => \^o5\,
      I4 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_11\,
      I5 => \^o6\,
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_7\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      I3 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I4 => I1(4),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_8\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44457775"
    )
    port map (
      I0 => s_axi_araddr(4),
      I1 => \n_0_gaxi_full_sm.arlen_cntr[7]_i_3\,
      I2 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_20\,
      I3 => I6(3),
      I4 => axis_address_full_r(4),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_9\
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_axi_arvalid,
      I1 => \^q\(0),
      O => O22(0)
    );
\gaxi_full_sm.outstanding_read_r_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000008080C000000"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.r_valid_r_i_2\,
      I1 => \^o1\,
      I2 => s_axi_rready,
      I3 => outstanding_read_r,
      I4 => \^q\(0),
      I5 => present_state(0),
      O => \n_0_gaxi_full_sm.outstanding_read_r_i_1\
    );
\gaxi_full_sm.outstanding_read_r_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => \^ar\(0),
      D => \n_0_gaxi_full_sm.outstanding_read_r_i_1\,
      Q => outstanding_read_r
    );
\gaxi_full_sm.present_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCFF4F0000"
    )
    port map (
      I0 => \^o1\,
      I1 => present_state(0),
      I2 => \n_0_gaxi_full_sm.r_valid_r_i_2\,
      I3 => s_axi_rready,
      I4 => s_axi_arvalid,
      I5 => \^q\(0),
      O => next_state(0)
    );
\gaxi_full_sm.present_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055FCFFFF"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.ar_ready_r_i_2\,
      I1 => \n_0_gaxi_full_sm.ar_ready_r_i_3\,
      I2 => outstanding_read_r,
      I3 => present_state(0),
      I4 => \^q\(0),
      I5 => \n_0_gaxi_full_sm.ar_ready_r_i_4\,
      O => next_state(1)
    );
\gaxi_full_sm.present_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => \^ar\(0),
      D => next_state(0),
      Q => present_state(0)
    );
\gaxi_full_sm.present_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => \^ar\(0),
      D => next_state(1),
      Q => \^q\(0)
    );
\gaxi_full_sm.r_valid_r_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAFFFFAAEAAAEA"
    )
    port map (
      I0 => \^o20\,
      I1 => present_state(0),
      I2 => \n_0_gaxi_full_sm.r_valid_r_i_2\,
      I3 => \^q\(0),
      I4 => s_axi_rready,
      I5 => \^o1\,
      O => \n_0_gaxi_full_sm.r_valid_r_i_1\
    );
\gaxi_full_sm.r_valid_r_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => \^o7\,
      I1 => s_axi_arlen(1),
      I2 => s_axi_arlen(2),
      I3 => s_axi_arlen(0),
      I4 => s_axi_arvalid,
      I5 => s_axi_arlen(3),
      O => \n_0_gaxi_full_sm.r_valid_r_i_2\
    );
\gaxi_full_sm.r_valid_r_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => \^ar\(0),
      D => \n_0_gaxi_full_sm.r_valid_r_i_1\,
      Q => \^o1\
    );
\grid.S_AXI_RID[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
    port map (
      I0 => I12(0),
      I1 => \^q\(0),
      I2 => s_axi_arvalid,
      I3 => \^o20\,
      I4 => s_axi_arid(0),
      O => O19(0)
    );
\grid.S_AXI_RID[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
    port map (
      I0 => I12(1),
      I1 => \^q\(0),
      I2 => s_axi_arvalid,
      I3 => \^o20\,
      I4 => s_axi_arid(1),
      O => O19(1)
    );
\grid.S_AXI_RID[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
    port map (
      I0 => I12(2),
      I1 => \^q\(0),
      I2 => s_axi_arvalid,
      I3 => \^o20\,
      I4 => s_axi_arid(2),
      O => O19(2)
    );
\grid.S_AXI_RID[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAC0404FCACFCAC"
    )
    port map (
      I0 => present_state(0),
      I1 => s_axi_arvalid,
      I2 => \^q\(0),
      I3 => outstanding_read_r,
      I4 => s_axi_rready,
      I5 => \^o1\,
      O => O21(0)
    );
\grid.S_AXI_RID[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
    port map (
      I0 => I12(3),
      I1 => \^q\(0),
      I2 => s_axi_arvalid,
      I3 => \^o20\,
      I4 => s_axi_arid(3),
      O => O19(3)
    );
\grid.ar_id_r[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_axi_arvalid,
      I1 => \^q\(0),
      O => \^o8\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity RAMB_AXI_256x256blk_mem_axi_write_fsm is
  port (
    O1 : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    addr_en_c : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    O6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O7 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O8 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O9 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O10 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O11 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O12 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I4 : in STD_LOGIC;
    s_axi_awsize : in STD_LOGIC_VECTOR ( 0 to 0 );
    I5 : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I6 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I9 : in STD_LOGIC;
    I10 : in STD_LOGIC;
    I11 : in STD_LOGIC;
    I12 : in STD_LOGIC;
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_0_in_0 : in STD_LOGIC;
    incr_en_r : in STD_LOGIC;
    I13 : in STD_LOGIC;
    I14 : in STD_LOGIC;
    I15 : in STD_LOGIC
  );
end RAMB_AXI_256x256blk_mem_axi_write_fsm;

architecture STRUCTURE of RAMB_AXI_256x256blk_mem_axi_write_fsm is
  signal \<const1>\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal \^o5\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^addr_en_c\ : STD_LOGIC;
  signal aw_ready_c : STD_LOGIC;
  signal \n_0_gaxi_full_sm.aw_ready_r_i_3\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.present_state[1]_i_2\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.present_state[1]_i_3\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.w_ready_r_i_2\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.w_ready_r_i_3\ : STD_LOGIC;
  signal \n_0_gaxif_wlast_gen.awlen_cntr_r[7]_i_3\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal present_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal w_ready_c : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gaxi_bid_gen.axi_bid_array[0][3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gaxi_bid_gen.axi_bid_array[1][3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gaxi_bid_gen.axi_bid_array[2][3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gaxi_bid_gen.axi_bid_array[3][3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gaxi_bvalid_id_r.bvalid_d1_c_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gaxi_full_sm.aw_ready_r_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gaxi_full_sm.aw_ready_r_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \gaxi_full_sm.present_state[1]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \gaxi_full_sm.w_ready_r_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gaxi_full_sm.w_ready_r_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \gaxi_full_sm.w_ready_r_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.addr_cnt_enb[12]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.addr_cnt_enb[12]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.addr_cnt_enb[5]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.bmg_address_r[11]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.bmg_address_r[12]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.bmg_address_r[12]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.bmg_address_r[7]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.incr_en_r_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gaxif_wlast_gen.awlen_cntr_r[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \gaxif_wlast_gen.awlen_cntr_r[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \gaxif_wlast_gen.awlen_cntr_r[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gaxif_wlast_gen.awlen_cntr_r[7]_i_1\ : label is "soft_lutpair32";
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
  O5(4 downto 0) <= \^o5\(4 downto 0);
  addr_en_c <= \^addr_en_c\;
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
    port map (
      I0 => present_state(0),
      I1 => present_state(1),
      I2 => s_axi_wvalid,
      O => O3
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
\gaxi_bid_gen.axi_bid_array[0][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => \^o1\,
      I1 => s_axi_awvalid,
      I2 => I7,
      I3 => I8,
      O => O6(0)
    );
\gaxi_bid_gen.axi_bid_array[1][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => \^o1\,
      I1 => s_axi_awvalid,
      I2 => I7,
      I3 => I8,
      O => O9(0)
    );
\gaxi_bid_gen.axi_bid_array[2][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => \^o1\,
      I1 => s_axi_awvalid,
      I2 => I8,
      I3 => I7,
      O => O8(0)
    );
\gaxi_bid_gen.axi_bid_array[3][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => \^o1\,
      I1 => s_axi_awvalid,
      I2 => I7,
      I3 => I8,
      O => O7(0)
    );
\gaxi_bvalid_id_r.bvalid_d1_c_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.w_ready_r_i_3\,
      I1 => present_state(0),
      I2 => present_state(1),
      O => O4
    );
\gaxi_full_sm.aw_ready_r_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB88CF03"
    )
    port map (
      I0 => s_axi_bready,
      I1 => present_state(0),
      I2 => s_axi_awvalid,
      I3 => \n_0_gaxi_full_sm.aw_ready_r_i_3\,
      I4 => present_state(1),
      O => aw_ready_c
    );
\gaxi_full_sm.aw_ready_r_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.w_ready_r_i_3\,
      I1 => I13,
      I2 => I14,
      I3 => I15,
      O => \n_0_gaxi_full_sm.aw_ready_r_i_3\
    );
\gaxi_full_sm.aw_ready_r_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => AS(0),
      D => aw_ready_c,
      Q => \^o1\
    );
\gaxi_full_sm.present_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55CF55CF0FCC0000"
    )
    port map (
      I0 => s_axi_bready,
      I1 => s_axi_awvalid,
      I2 => \n_0_gaxi_full_sm.aw_ready_r_i_3\,
      I3 => present_state(1),
      I4 => s_axi_wvalid,
      I5 => present_state(0),
      O => next_state(0)
    );
\gaxi_full_sm.present_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4000EA00"
    )
    port map (
      I0 => present_state(1),
      I1 => \n_0_gaxi_full_sm.w_ready_r_i_2\,
      I2 => \n_0_gaxi_full_sm.w_ready_r_i_3\,
      I3 => present_state(0),
      I4 => s_axi_bready,
      I5 => \n_0_gaxi_full_sm.present_state[1]_i_2\,
      O => next_state(1)
    );
\gaxi_full_sm.present_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002272"
    )
    port map (
      I0 => present_state(1),
      I1 => \n_0_gaxi_full_sm.aw_ready_r_i_3\,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => \n_0_gaxi_full_sm.present_state[1]_i_3\,
      I5 => present_state(0),
      O => \n_0_gaxi_full_sm.present_state[1]_i_2\
    );
\gaxi_full_sm.present_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD00"
    )
    port map (
      I0 => \n_0_gaxif_wlast_gen.awlen_cntr_r[7]_i_3\,
      I1 => Q(6),
      I2 => Q(7),
      I3 => s_axi_wvalid,
      O => \n_0_gaxi_full_sm.present_state[1]_i_3\
    );
\gaxi_full_sm.present_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => AS(0),
      D => next_state(0),
      Q => present_state(0)
    );
\gaxi_full_sm.present_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => AS(0),
      D => next_state(1),
      Q => present_state(1)
    );
\gaxi_full_sm.w_ready_r_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"003370FC"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.w_ready_r_i_2\,
      I1 => present_state(0),
      I2 => s_axi_awvalid,
      I3 => \n_0_gaxi_full_sm.w_ready_r_i_3\,
      I4 => present_state(1),
      O => w_ready_c
    );
\gaxi_full_sm.w_ready_r_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => I15,
      I1 => I14,
      I2 => I13,
      O => \n_0_gaxi_full_sm.w_ready_r_i_2\
    );
\gaxi_full_sm.w_ready_r_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => s_axi_wvalid,
      I1 => \n_0_gaxif_wlast_gen.awlen_cntr_r[7]_i_3\,
      I2 => Q(6),
      I3 => Q(7),
      O => \n_0_gaxi_full_sm.w_ready_r_i_3\
    );
\gaxi_full_sm.w_ready_r_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => AS(0),
      D => w_ready_c,
      Q => s_axi_wready
    );
\gaxif_ms_addr_gen.addr_cnt_enb[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAAA"
    )
    port map (
      I0 => \n_0_gaxi_full_sm.w_ready_r_i_3\,
      I1 => s_axi_awburst(0),
      I2 => s_axi_awburst(1),
      I3 => \^addr_en_c\,
      O => O12(0)
    );
\gaxif_ms_addr_gen.addr_cnt_enb[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => \^addr_en_c\,
      I1 => s_axi_awburst(1),
      I2 => s_axi_awburst(0),
      O => \^o5\(4)
    );
\gaxif_ms_addr_gen.addr_cnt_enb[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => s_axi_awburst(0),
      I1 => s_axi_awburst(1),
      I2 => \^addr_en_c\,
      I3 => I10,
      O => \^o5\(0)
    );
\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => s_axi_awburst(0),
      I1 => s_axi_awburst(1),
      I2 => \^addr_en_c\,
      I3 => I9,
      O => \^o5\(1)
    );
\gaxif_ms_addr_gen.addr_cnt_enb[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444440CCC44CC"
    )
    port map (
      I0 => s_axi_awsize(0),
      I1 => \^o5\(4),
      I2 => I5,
      I3 => s_axi_awlen(2),
      I4 => s_axi_awlen(1),
      I5 => I6,
      O => \^o5\(2)
    );
\gaxif_ms_addr_gen.addr_cnt_enb[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2022AAAA"
    )
    port map (
      I0 => \^o5\(4),
      I1 => I6,
      I2 => s_axi_awlen(1),
      I3 => s_axi_awlen(2),
      I4 => I5,
      O => \^o5\(3)
    );
\gaxif_ms_addr_gen.bmg_address_r[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AA9AAA9A"
    )
    port map (
      I0 => I1(3),
      I1 => I4,
      I2 => I1(2),
      I3 => I3(3),
      I4 => s_axi_awaddr(5),
      I5 => \^addr_en_c\,
      O => D(5)
    );
\gaxif_ms_addr_gen.bmg_address_r[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_awaddr(6),
      I1 => \^addr_en_c\,
      I2 => ADDRBWRADDR(2),
      O => D(6)
    );
\gaxif_ms_addr_gen.bmg_address_r[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \^addr_en_c\,
      I1 => \^o2\,
      O => O10(0)
    );
\gaxif_ms_addr_gen.bmg_address_r[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_awaddr(7),
      I1 => \^addr_en_c\,
      I2 => ADDRBWRADDR(3),
      O => D(7)
    );
\gaxif_ms_addr_gen.bmg_address_r[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B88BB8B8B8"
    )
    port map (
      I0 => s_axi_awaddr(0),
      I1 => \^addr_en_c\,
      I2 => I1(0),
      I3 => p_0_in_0,
      I4 => incr_en_r,
      I5 => I3(0),
      O => D(0)
    );
\gaxif_ms_addr_gen.bmg_address_r[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_awaddr(1),
      I1 => \^addr_en_c\,
      I2 => ADDRBWRADDR(0),
      O => D(1)
    );
\gaxif_ms_addr_gen.bmg_address_r[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axi_awaddr(2),
      I1 => \^addr_en_c\,
      I2 => ADDRBWRADDR(1),
      O => D(2)
    );
\gaxif_ms_addr_gen.bmg_address_r[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00A9A9"
    )
    port map (
      I0 => I1(1),
      I1 => I2,
      I2 => I3(1),
      I3 => s_axi_awaddr(3),
      I4 => \^addr_en_c\,
      O => D(3)
    );
\gaxif_ms_addr_gen.bmg_address_r[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00A9A9"
    )
    port map (
      I0 => I1(2),
      I1 => I4,
      I2 => I3(2),
      I3 => s_axi_awaddr(4),
      I4 => \^addr_en_c\,
      O => D(4)
    );
\gaxif_ms_addr_gen.incr_en_r_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
    port map (
      I0 => present_state(1),
      I1 => s_axi_awvalid,
      I2 => \n_0_gaxi_full_sm.aw_ready_r_i_3\,
      I3 => present_state(0),
      O => \^addr_en_c\
    );
\gaxif_ms_addr_gen.next_address_r[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A8AAA8AA0000"
    )
    port map (
      I0 => s_axi_wvalid,
      I1 => Q(7),
      I2 => Q(6),
      I3 => \n_0_gaxif_wlast_gen.awlen_cntr_r[7]_i_3\,
      I4 => present_state(0),
      I5 => present_state(1),
      O => \^o2\
    );
\gaxif_wlast_gen.awlen_cntr_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
    port map (
      I0 => s_axi_awlen(0),
      I1 => \^addr_en_c\,
      I2 => Q(0),
      O => O11(0)
    );
\gaxif_wlast_gen.awlen_cntr_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
    port map (
      I0 => s_axi_awlen(1),
      I1 => \^addr_en_c\,
      I2 => Q(0),
      I3 => Q(1),
      O => O11(1)
    );
\gaxif_wlast_gen.awlen_cntr_r[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B88B"
    )
    port map (
      I0 => s_axi_awlen(2),
      I1 => \^addr_en_c\,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      O => O11(2)
    );
\gaxif_wlast_gen.awlen_cntr_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
    port map (
      I0 => s_axi_awlen(3),
      I1 => \^addr_en_c\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => O11(3)
    );
\gaxif_wlast_gen.awlen_cntr_r[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
    port map (
      I0 => s_axi_awlen(4),
      I1 => \^addr_en_c\,
      I2 => Q(4),
      I3 => I12,
      O => O11(4)
    );
\gaxif_wlast_gen.awlen_cntr_r[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
    port map (
      I0 => s_axi_awlen(5),
      I1 => \^addr_en_c\,
      I2 => Q(5),
      I3 => I11,
      O => O11(5)
    );
\gaxif_wlast_gen.awlen_cntr_r[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
    port map (
      I0 => s_axi_awlen(6),
      I1 => \^addr_en_c\,
      I2 => Q(6),
      I3 => \n_0_gaxif_wlast_gen.awlen_cntr_r[7]_i_3\,
      O => O11(6)
    );
\gaxif_wlast_gen.awlen_cntr_r[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \^addr_en_c\,
      I1 => \^o2\,
      I2 => \n_0_gaxi_full_sm.w_ready_r_i_3\,
      O => E(0)
    );
\gaxif_wlast_gen.awlen_cntr_r[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88BB8B8"
    )
    port map (
      I0 => s_axi_awlen(7),
      I1 => \^addr_en_c\,
      I2 => Q(7),
      I3 => Q(6),
      I4 => \n_0_gaxif_wlast_gen.awlen_cntr_r[7]_i_3\,
      O => O11(7)
    );
\gaxif_wlast_gen.awlen_cntr_r[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(4),
      I5 => Q(5),
      O => \n_0_gaxif_wlast_gen.awlen_cntr_r[7]_i_3\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6 is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rd_en_c : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ENA : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6;

architecture STRUCTURE of RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \n_68_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_69_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_70_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_71_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_72_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_73_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_74_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_75_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEAREGCE_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
    port map (
      ADDRARDADDR(15) => \<const1>\,
      ADDRARDADDR(14) => \<const0>\,
      ADDRARDADDR(13 downto 6) => ADDRARDADDR(7 downto 0),
      ADDRARDADDR(5) => \<const1>\,
      ADDRARDADDR(4) => \<const1>\,
      ADDRARDADDR(3) => \<const1>\,
      ADDRARDADDR(2) => \<const1>\,
      ADDRARDADDR(1) => \<const1>\,
      ADDRARDADDR(0) => \<const1>\,
      ADDRBWRADDR(15) => \<const1>\,
      ADDRBWRADDR(14) => \<const0>\,
      ADDRBWRADDR(13 downto 6) => ADDRBWRADDR(7 downto 0),
      ADDRBWRADDR(5) => \<const1>\,
      ADDRBWRADDR(4) => \<const1>\,
      ADDRBWRADDR(3) => \<const1>\,
      ADDRBWRADDR(2) => \<const1>\,
      ADDRBWRADDR(1) => \<const1>\,
      ADDRBWRADDR(0) => \<const1>\,
      CASCADEINA => \<const0>\,
      CASCADEINB => \<const0>\,
      CASCADEOUTA => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => s_aclk,
      CLKBWRCLK => s_aclk,
      DBITERR => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => s_axi_wdata(31 downto 0),
      DIBDI(31 downto 0) => s_axi_wdata(63 downto 32),
      DIPADIP(3) => \<const0>\,
      DIPADIP(2) => \<const0>\,
      DIPADIP(1) => \<const0>\,
      DIPADIP(0) => \<const0>\,
      DIPBDIP(3) => \<const0>\,
      DIPBDIP(2) => \<const0>\,
      DIPBDIP(1) => \<const0>\,
      DIPBDIP(0) => \<const0>\,
      DOADO(31 downto 0) => s_axi_rdata(31 downto 0),
      DOBDO(31 downto 0) => s_axi_rdata(63 downto 32),
      DOPADOP(3) => \n_68_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPADOP(2) => \n_69_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPADOP(1) => \n_70_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPADOP(0) => \n_71_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPBDOP(3) => \n_72_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPBDOP(2) => \n_73_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPBDOP(1) => \n_74_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPBDOP(0) => \n_75_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      ECCPARITY(7 downto 0) => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => s_axi_rd_en_c,
      ENBWREN => ENA,
      INJECTDBITERR => \<const0>\,
      INJECTSBITERR => \<const0>\,
      RDADDRECC(8 downto 0) => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEAREGCE_UNCONNECTED\,
      REGCEB => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEB_UNCONNECTED\,
      RSTRAMARSTRAM => AS(0),
      RSTRAMB => \<const0>\,
      RSTREGARSTREG => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED\,
      RSTREGB => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGB_UNCONNECTED\,
      SBITERR => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => \<const0>\,
      WEA(2) => \<const0>\,
      WEA(1) => \<const0>\,
      WEA(0) => \<const0>\,
      WEBWE(7 downto 0) => s_axi_wstrb(7 downto 0)
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6__parameterized0\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rd_en_c : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ENA : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6__parameterized0\ : entity is "blk_mem_gen_prim_wrapper_v6";
end \RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6__parameterized0\;

architecture STRUCTURE of \RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \n_68_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_69_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_70_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_71_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_72_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_73_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_74_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_75_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEAREGCE_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
    port map (
      ADDRARDADDR(15) => \<const1>\,
      ADDRARDADDR(14) => \<const0>\,
      ADDRARDADDR(13 downto 6) => ADDRARDADDR(7 downto 0),
      ADDRARDADDR(5) => \<const1>\,
      ADDRARDADDR(4) => \<const1>\,
      ADDRARDADDR(3) => \<const1>\,
      ADDRARDADDR(2) => \<const1>\,
      ADDRARDADDR(1) => \<const1>\,
      ADDRARDADDR(0) => \<const1>\,
      ADDRBWRADDR(15) => \<const1>\,
      ADDRBWRADDR(14) => \<const0>\,
      ADDRBWRADDR(13 downto 6) => ADDRBWRADDR(7 downto 0),
      ADDRBWRADDR(5) => \<const1>\,
      ADDRBWRADDR(4) => \<const1>\,
      ADDRBWRADDR(3) => \<const1>\,
      ADDRBWRADDR(2) => \<const1>\,
      ADDRBWRADDR(1) => \<const1>\,
      ADDRBWRADDR(0) => \<const1>\,
      CASCADEINA => \<const0>\,
      CASCADEINB => \<const0>\,
      CASCADEOUTA => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => s_aclk,
      CLKBWRCLK => s_aclk,
      DBITERR => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => s_axi_wdata(31 downto 0),
      DIBDI(31 downto 0) => s_axi_wdata(63 downto 32),
      DIPADIP(3) => \<const0>\,
      DIPADIP(2) => \<const0>\,
      DIPADIP(1) => \<const0>\,
      DIPADIP(0) => \<const0>\,
      DIPBDIP(3) => \<const0>\,
      DIPBDIP(2) => \<const0>\,
      DIPBDIP(1) => \<const0>\,
      DIPBDIP(0) => \<const0>\,
      DOADO(31 downto 0) => s_axi_rdata(31 downto 0),
      DOBDO(31 downto 0) => s_axi_rdata(63 downto 32),
      DOPADOP(3) => \n_68_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPADOP(2) => \n_69_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPADOP(1) => \n_70_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPADOP(0) => \n_71_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPBDOP(3) => \n_72_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPBDOP(2) => \n_73_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPBDOP(1) => \n_74_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPBDOP(0) => \n_75_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      ECCPARITY(7 downto 0) => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => s_axi_rd_en_c,
      ENBWREN => ENA,
      INJECTDBITERR => \<const0>\,
      INJECTSBITERR => \<const0>\,
      RDADDRECC(8 downto 0) => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEAREGCE_UNCONNECTED\,
      REGCEB => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEB_UNCONNECTED\,
      RSTRAMARSTRAM => AS(0),
      RSTRAMB => \<const0>\,
      RSTREGARSTREG => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED\,
      RSTREGB => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGB_UNCONNECTED\,
      SBITERR => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => \<const0>\,
      WEA(2) => \<const0>\,
      WEA(1) => \<const0>\,
      WEA(0) => \<const0>\,
      WEBWE(7 downto 0) => s_axi_wstrb(7 downto 0)
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6__parameterized1\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rd_en_c : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ENA : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6__parameterized1\ : entity is "blk_mem_gen_prim_wrapper_v6";
end \RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6__parameterized1\;

architecture STRUCTURE of \RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6__parameterized1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \n_68_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_69_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_70_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_71_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_72_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_73_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_74_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_75_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEAREGCE_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
    port map (
      ADDRARDADDR(15) => \<const1>\,
      ADDRARDADDR(14) => \<const0>\,
      ADDRARDADDR(13 downto 6) => ADDRARDADDR(7 downto 0),
      ADDRARDADDR(5) => \<const1>\,
      ADDRARDADDR(4) => \<const1>\,
      ADDRARDADDR(3) => \<const1>\,
      ADDRARDADDR(2) => \<const1>\,
      ADDRARDADDR(1) => \<const1>\,
      ADDRARDADDR(0) => \<const1>\,
      ADDRBWRADDR(15) => \<const1>\,
      ADDRBWRADDR(14) => \<const0>\,
      ADDRBWRADDR(13 downto 6) => ADDRBWRADDR(7 downto 0),
      ADDRBWRADDR(5) => \<const1>\,
      ADDRBWRADDR(4) => \<const1>\,
      ADDRBWRADDR(3) => \<const1>\,
      ADDRBWRADDR(2) => \<const1>\,
      ADDRBWRADDR(1) => \<const1>\,
      ADDRBWRADDR(0) => \<const1>\,
      CASCADEINA => \<const0>\,
      CASCADEINB => \<const0>\,
      CASCADEOUTA => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => s_aclk,
      CLKBWRCLK => s_aclk,
      DBITERR => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => s_axi_wdata(31 downto 0),
      DIBDI(31 downto 0) => s_axi_wdata(63 downto 32),
      DIPADIP(3) => \<const0>\,
      DIPADIP(2) => \<const0>\,
      DIPADIP(1) => \<const0>\,
      DIPADIP(0) => \<const0>\,
      DIPBDIP(3) => \<const0>\,
      DIPBDIP(2) => \<const0>\,
      DIPBDIP(1) => \<const0>\,
      DIPBDIP(0) => \<const0>\,
      DOADO(31 downto 0) => s_axi_rdata(31 downto 0),
      DOBDO(31 downto 0) => s_axi_rdata(63 downto 32),
      DOPADOP(3) => \n_68_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPADOP(2) => \n_69_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPADOP(1) => \n_70_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPADOP(0) => \n_71_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPBDOP(3) => \n_72_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPBDOP(2) => \n_73_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPBDOP(1) => \n_74_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPBDOP(0) => \n_75_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      ECCPARITY(7 downto 0) => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => s_axi_rd_en_c,
      ENBWREN => ENA,
      INJECTDBITERR => \<const0>\,
      INJECTSBITERR => \<const0>\,
      RDADDRECC(8 downto 0) => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEAREGCE_UNCONNECTED\,
      REGCEB => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEB_UNCONNECTED\,
      RSTRAMARSTRAM => AS(0),
      RSTRAMB => \<const0>\,
      RSTREGARSTREG => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED\,
      RSTREGB => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGB_UNCONNECTED\,
      SBITERR => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => \<const0>\,
      WEA(2) => \<const0>\,
      WEA(1) => \<const0>\,
      WEA(0) => \<const0>\,
      WEBWE(7 downto 0) => s_axi_wstrb(7 downto 0)
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6__parameterized2\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rd_en_c : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ENA : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6__parameterized2\ : entity is "blk_mem_gen_prim_wrapper_v6";
end \RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6__parameterized2\;

architecture STRUCTURE of \RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6__parameterized2\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \n_68_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_69_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_70_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_71_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_72_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_73_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_74_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \n_75_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEAREGCE_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \NO_BMM_INFO.SDP.WIDE_PRIM36.ram\ : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
    port map (
      ADDRARDADDR(15) => \<const1>\,
      ADDRARDADDR(14) => \<const0>\,
      ADDRARDADDR(13 downto 6) => ADDRARDADDR(7 downto 0),
      ADDRARDADDR(5) => \<const1>\,
      ADDRARDADDR(4) => \<const1>\,
      ADDRARDADDR(3) => \<const1>\,
      ADDRARDADDR(2) => \<const1>\,
      ADDRARDADDR(1) => \<const1>\,
      ADDRARDADDR(0) => \<const1>\,
      ADDRBWRADDR(15) => \<const1>\,
      ADDRBWRADDR(14) => \<const0>\,
      ADDRBWRADDR(13 downto 6) => ADDRBWRADDR(7 downto 0),
      ADDRBWRADDR(5) => \<const1>\,
      ADDRBWRADDR(4) => \<const1>\,
      ADDRBWRADDR(3) => \<const1>\,
      ADDRBWRADDR(2) => \<const1>\,
      ADDRBWRADDR(1) => \<const1>\,
      ADDRBWRADDR(0) => \<const1>\,
      CASCADEINA => \<const0>\,
      CASCADEINB => \<const0>\,
      CASCADEOUTA => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => s_aclk,
      CLKBWRCLK => s_aclk,
      DBITERR => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => s_axi_wdata(31 downto 0),
      DIBDI(31 downto 0) => s_axi_wdata(63 downto 32),
      DIPADIP(3) => \<const0>\,
      DIPADIP(2) => \<const0>\,
      DIPADIP(1) => \<const0>\,
      DIPADIP(0) => \<const0>\,
      DIPBDIP(3) => \<const0>\,
      DIPBDIP(2) => \<const0>\,
      DIPBDIP(1) => \<const0>\,
      DIPBDIP(0) => \<const0>\,
      DOADO(31 downto 0) => s_axi_rdata(31 downto 0),
      DOBDO(31 downto 0) => s_axi_rdata(63 downto 32),
      DOPADOP(3) => \n_68_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPADOP(2) => \n_69_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPADOP(1) => \n_70_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPADOP(0) => \n_71_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPBDOP(3) => \n_72_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPBDOP(2) => \n_73_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPBDOP(1) => \n_74_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      DOPBDOP(0) => \n_75_NO_BMM_INFO.SDP.WIDE_PRIM36.ram\,
      ECCPARITY(7 downto 0) => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => s_axi_rd_en_c,
      ENBWREN => ENA,
      INJECTDBITERR => \<const0>\,
      INJECTSBITERR => \<const0>\,
      RDADDRECC(8 downto 0) => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEAREGCE_UNCONNECTED\,
      REGCEB => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_REGCEB_UNCONNECTED\,
      RSTRAMARSTRAM => AS(0),
      RSTRAMB => \<const0>\,
      RSTREGARSTREG => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED\,
      RSTREGB => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RSTREGB_UNCONNECTED\,
      SBITERR => \NLW_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => \<const0>\,
      WEA(2) => \<const0>\,
      WEA(1) => \<const0>\,
      WEA(0) => \<const0>\,
      WEBWE(7 downto 0) => s_axi_wstrb(7 downto 0)
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity RAMB_AXI_256x256blk_mem_axi_read_wrapper is
  port (
    s_axi_arready : out STD_LOGIC;
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    O1 : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rd_en_c : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aclk : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_aresetn : in STD_LOGIC
  );
end RAMB_AXI_256x256blk_mem_axi_read_wrapper;

architecture STRUCTURE of RAMB_AXI_256x256blk_mem_axi_read_wrapper is
  signal \<const1>\ : STD_LOGIC;
  signal \^as\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ar_id_r : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axis_address_full_r : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal incr_en_r : STD_LOGIC;
  signal \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_19\ : STD_LOGIC;
  signal \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_21\ : STD_LOGIC;
  signal \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_22\ : STD_LOGIC;
  signal \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_23\ : STD_LOGIC;
  signal \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_24\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.arlen_cntr_reg[0]\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.arlen_cntr_reg[1]\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.arlen_cntr_reg[2]\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.arlen_cntr_reg[3]\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.arlen_cntr_reg[4]\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.arlen_cntr_reg[5]\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.arlen_cntr_reg[6]\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.arlen_cntr_reg[7]\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_2\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_2\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_2\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_2\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_2\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_2\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_2\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_3\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[10]\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[12]\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[1]\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[2]\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[3]\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[4]\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[5]\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[6]\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[7]\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[8]\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[9]\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_1\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_10\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_1\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[3]_i_1\ : STD_LOGIC;
  signal \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_1\ : STD_LOGIC;
  signal n_10_axi_read_fsm : STD_LOGIC;
  signal n_11_axi_read_fsm : STD_LOGIC;
  signal n_12_axi_read_fsm : STD_LOGIC;
  signal n_13_axi_read_fsm : STD_LOGIC;
  signal n_14_axi_read_fsm : STD_LOGIC;
  signal n_15_axi_read_fsm : STD_LOGIC;
  signal n_16_axi_read_fsm : STD_LOGIC;
  signal n_17_axi_read_fsm : STD_LOGIC;
  signal n_18_axi_read_fsm : STD_LOGIC;
  signal n_19_axi_read_fsm : STD_LOGIC;
  signal n_20_axi_read_fsm : STD_LOGIC;
  signal n_21_axi_read_fsm : STD_LOGIC;
  signal n_22_axi_read_fsm : STD_LOGIC;
  signal n_23_axi_read_fsm : STD_LOGIC;
  signal n_24_axi_read_fsm : STD_LOGIC;
  signal n_25_axi_read_fsm : STD_LOGIC;
  signal n_26_axi_read_fsm : STD_LOGIC;
  signal n_27_axi_read_fsm : STD_LOGIC;
  signal n_28_axi_read_fsm : STD_LOGIC;
  signal n_29_axi_read_fsm : STD_LOGIC;
  signal n_30_axi_read_fsm : STD_LOGIC;
  signal n_31_axi_read_fsm : STD_LOGIC;
  signal n_32_axi_read_fsm : STD_LOGIC;
  signal n_33_axi_read_fsm : STD_LOGIC;
  signal n_34_axi_read_fsm : STD_LOGIC;
  signal n_35_axi_read_fsm : STD_LOGIC;
  signal n_36_axi_read_fsm : STD_LOGIC;
  signal n_37_axi_read_fsm : STD_LOGIC;
  signal n_38_axi_read_fsm : STD_LOGIC;
  signal n_39_axi_read_fsm : STD_LOGIC;
  signal n_40_axi_read_fsm : STD_LOGIC;
  signal n_41_axi_read_fsm : STD_LOGIC;
  signal n_42_axi_read_fsm : STD_LOGIC;
  signal n_43_axi_read_fsm : STD_LOGIC;
  signal n_4_axi_read_fsm : STD_LOGIC;
  signal n_52_axi_read_fsm : STD_LOGIC;
  signal n_53_axi_read_fsm : STD_LOGIC;
  signal n_54_axi_read_fsm : STD_LOGIC;
  signal n_55_axi_read_fsm : STD_LOGIC;
  signal n_56_axi_read_fsm : STD_LOGIC;
  signal n_58_axi_read_fsm : STD_LOGIC;
  signal n_59_axi_read_fsm : STD_LOGIC;
  signal n_5_axi_read_fsm : STD_LOGIC;
  signal n_60_axi_read_fsm : STD_LOGIC;
  signal n_6_axi_read_fsm : STD_LOGIC;
  signal n_7_axi_read_fsm : STD_LOGIC;
  signal n_8_axi_read_fsm : STD_LOGIC;
  signal num_of_bytes_c : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal num_of_bytes_r : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_0_in3_in : STD_LOGIC;
  signal present_state : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_22\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_23\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[5]_i_2\ : label is "soft_lutpair18";
begin
  AS(0) <= \^as\(0);
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => axis_address_full_r(10),
      I1 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_21\,
      I2 => axis_address_full_r(9),
      O => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_19\
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => axis_address_full_r(8),
      I1 => axis_address_full_r(6),
      I2 => axis_address_full_r(5),
      I3 => p_0_in3_in,
      I4 => incr_en_r,
      I5 => axis_address_full_r(7),
      O => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_21\
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => axis_address_full_r(7),
      I1 => incr_en_r,
      I2 => p_0_in3_in,
      I3 => axis_address_full_r(5),
      I4 => axis_address_full_r(6),
      O => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_22\
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => axis_address_full_r(6),
      I1 => axis_address_full_r(5),
      I2 => p_0_in3_in,
      I3 => incr_en_r,
      O => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_23\
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => p_0_in3_in,
      I1 => incr_en_r,
      O => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_24\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
axi_read_fsm: entity work.RAMB_AXI_256x256blk_mem_axi_read_fsm
    port map (
      ADDRARDADDR(7 downto 0) => ADDRARDADDR(7 downto 0),
      AR(0) => \^as\(0),
      D(1 downto 0) => num_of_bytes_c(1 downto 0),
      E(0) => n_34_axi_read_fsm,
      I1(5 downto 0) => num_of_bytes_r(5 downto 0),
      I10 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_24\,
      I11 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_23\,
      I12(3 downto 0) => ar_id_r(3 downto 0),
      I13 => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_2\,
      I14 => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_2\,
      I15 => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_2\,
      I16 => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_2\,
      I17 => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_2\,
      I18 => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_2\,
      I2 => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_10\,
      I3(7) => \n_0_gaxi_full_sm.arlen_cntr_reg[7]\,
      I3(6) => \n_0_gaxi_full_sm.arlen_cntr_reg[6]\,
      I3(5) => \n_0_gaxi_full_sm.arlen_cntr_reg[5]\,
      I3(4) => \n_0_gaxi_full_sm.arlen_cntr_reg[4]\,
      I3(3) => \n_0_gaxi_full_sm.arlen_cntr_reg[3]\,
      I3(2) => \n_0_gaxi_full_sm.arlen_cntr_reg[2]\,
      I3(1) => \n_0_gaxi_full_sm.arlen_cntr_reg[1]\,
      I3(0) => \n_0_gaxi_full_sm.arlen_cntr_reg[0]\,
      I4 => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_2\,
      I5 => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_3\,
      I6(11) => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[12]\,
      I6(10) => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\,
      I6(9) => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[10]\,
      I6(8) => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[9]\,
      I6(7) => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[8]\,
      I6(6) => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[7]\,
      I6(5) => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[6]\,
      I6(4) => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[5]\,
      I6(3) => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[4]\,
      I6(2) => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[3]\,
      I6(1) => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[2]\,
      I6(0) => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[1]\,
      I7 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_19\,
      I8 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_21\,
      I9 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_22\,
      O1 => O1,
      O10 => n_21_axi_read_fsm,
      O11 => n_22_axi_read_fsm,
      O12 => n_23_axi_read_fsm,
      O13 => n_24_axi_read_fsm,
      O14 => n_25_axi_read_fsm,
      O15(7) => n_26_axi_read_fsm,
      O15(6) => n_27_axi_read_fsm,
      O15(5) => n_28_axi_read_fsm,
      O15(4) => n_29_axi_read_fsm,
      O15(3) => n_30_axi_read_fsm,
      O15(2) => n_31_axi_read_fsm,
      O15(1) => n_32_axi_read_fsm,
      O15(0) => n_33_axi_read_fsm,
      O16(0) => n_35_axi_read_fsm,
      O17(7) => n_36_axi_read_fsm,
      O17(6) => n_37_axi_read_fsm,
      O17(5) => n_38_axi_read_fsm,
      O17(4) => n_39_axi_read_fsm,
      O17(3) => n_40_axi_read_fsm,
      O17(2) => n_41_axi_read_fsm,
      O17(1) => n_42_axi_read_fsm,
      O17(0) => n_43_axi_read_fsm,
      O18(0) => n_52_axi_read_fsm,
      O19(3) => n_53_axi_read_fsm,
      O19(2) => n_54_axi_read_fsm,
      O19(1) => n_55_axi_read_fsm,
      O19(0) => n_56_axi_read_fsm,
      O2 => n_4_axi_read_fsm,
      O20 => s_axi_rd_en_c,
      O21(0) => n_58_axi_read_fsm,
      O22(0) => n_59_axi_read_fsm,
      O23 => n_60_axi_read_fsm,
      O3 => n_5_axi_read_fsm,
      O4 => n_6_axi_read_fsm,
      O5 => n_7_axi_read_fsm,
      O6 => n_8_axi_read_fsm,
      O7 => n_10_axi_read_fsm,
      O8 => n_11_axi_read_fsm,
      O9(8) => n_12_axi_read_fsm,
      O9(7) => n_13_axi_read_fsm,
      O9(6) => n_14_axi_read_fsm,
      O9(5) => n_15_axi_read_fsm,
      O9(4) => n_16_axi_read_fsm,
      O9(3) => n_17_axi_read_fsm,
      O9(2) => n_18_axi_read_fsm,
      O9(1) => n_19_axi_read_fsm,
      O9(0) => n_20_axi_read_fsm,
      Q(0) => present_state(1),
      axis_address_full_r(12 downto 0) => axis_address_full_r(12 downto 0),
      incr_en_r => incr_en_r,
      p_0_in3_in => p_0_in3_in,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_araddr(12 downto 0) => s_axi_araddr(12 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready
    );
\gaxi_full_sm.arlen_cntr_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_aclk,
      CE => n_34_axi_read_fsm,
      D => n_33_axi_read_fsm,
      PRE => \^as\(0),
      Q => \n_0_gaxi_full_sm.arlen_cntr_reg[0]\
    );
\gaxi_full_sm.arlen_cntr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_34_axi_read_fsm,
      CLR => \^as\(0),
      D => n_32_axi_read_fsm,
      Q => \n_0_gaxi_full_sm.arlen_cntr_reg[1]\
    );
\gaxi_full_sm.arlen_cntr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_34_axi_read_fsm,
      CLR => \^as\(0),
      D => n_31_axi_read_fsm,
      Q => \n_0_gaxi_full_sm.arlen_cntr_reg[2]\
    );
\gaxi_full_sm.arlen_cntr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_34_axi_read_fsm,
      CLR => \^as\(0),
      D => n_30_axi_read_fsm,
      Q => \n_0_gaxi_full_sm.arlen_cntr_reg[3]\
    );
\gaxi_full_sm.arlen_cntr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_34_axi_read_fsm,
      CLR => \^as\(0),
      D => n_29_axi_read_fsm,
      Q => \n_0_gaxi_full_sm.arlen_cntr_reg[4]\
    );
\gaxi_full_sm.arlen_cntr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_34_axi_read_fsm,
      CLR => \^as\(0),
      D => n_28_axi_read_fsm,
      Q => \n_0_gaxi_full_sm.arlen_cntr_reg[5]\
    );
\gaxi_full_sm.arlen_cntr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_34_axi_read_fsm,
      CLR => \^as\(0),
      D => n_27_axi_read_fsm,
      Q => \n_0_gaxi_full_sm.arlen_cntr_reg[6]\
    );
\gaxi_full_sm.arlen_cntr_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_34_axi_read_fsm,
      CLR => \^as\(0),
      D => n_26_axi_read_fsm,
      Q => \n_0_gaxi_full_sm.arlen_cntr_reg[7]\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_2\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => s_axi_arlen(2),
      I1 => s_axi_arlen(3),
      I2 => s_axi_arlen(0),
      I3 => n_10_axi_read_fsm,
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_2\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000013B"
    )
    port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arlen(2),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arsize(2),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_2\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFCEFFEEFF00"
    )
    port map (
      I0 => s_axi_arlen(2),
      I1 => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_3\,
      I2 => s_axi_arlen(1),
      I3 => s_axi_arsize(2),
      I4 => s_axi_arsize(1),
      I5 => s_axi_arsize(0),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_2\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEFF00FFCEFE00"
    )
    port map (
      I0 => s_axi_arlen(2),
      I1 => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_3\,
      I2 => s_axi_arlen(1),
      I3 => s_axi_arsize(2),
      I4 => s_axi_arsize(1),
      I5 => s_axi_arsize(0),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_2\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFE00FE00EE00"
    )
    port map (
      I0 => s_axi_arlen(2),
      I1 => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_3\,
      I2 => s_axi_arlen(1),
      I3 => s_axi_arsize(2),
      I4 => s_axi_arsize(1),
      I5 => s_axi_arsize(0),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_2\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_2\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
    port map (
      I0 => s_axi_arlen(7),
      I1 => s_axi_arlen(6),
      I2 => s_axi_arlen(4),
      I3 => s_axi_arlen(5),
      I4 => s_axi_arlen(0),
      I5 => s_axi_arlen(3),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[8]_i_3\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_52_axi_read_fsm,
      CLR => \^as\(0),
      D => n_12_axi_read_fsm,
      Q => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[10]\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_52_axi_read_fsm,
      CLR => \^as\(0),
      D => n_12_axi_read_fsm,
      Q => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_52_axi_read_fsm,
      CLR => \^as\(0),
      D => n_12_axi_read_fsm,
      Q => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[12]\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_52_axi_read_fsm,
      CLR => \^as\(0),
      D => n_20_axi_read_fsm,
      Q => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[1]\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_52_axi_read_fsm,
      CLR => \^as\(0),
      D => n_19_axi_read_fsm,
      Q => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[2]\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_52_axi_read_fsm,
      CLR => \^as\(0),
      D => n_18_axi_read_fsm,
      Q => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[3]\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_52_axi_read_fsm,
      CLR => \^as\(0),
      D => n_17_axi_read_fsm,
      Q => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[4]\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_52_axi_read_fsm,
      CLR => \^as\(0),
      D => n_16_axi_read_fsm,
      Q => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[5]\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_52_axi_read_fsm,
      CLR => \^as\(0),
      D => n_15_axi_read_fsm,
      Q => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[6]\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_52_axi_read_fsm,
      CLR => \^as\(0),
      D => n_14_axi_read_fsm,
      Q => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[7]\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_52_axi_read_fsm,
      CLR => \^as\(0),
      D => n_13_axi_read_fsm,
      Q => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[8]\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_52_axi_read_fsm,
      CLR => \^as\(0),
      D => n_12_axi_read_fsm,
      Q => \n_0_gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[9]\
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_35_axi_read_fsm,
      CLR => \^as\(0),
      D => n_38_axi_read_fsm,
      Q => axis_address_full_r(10)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_35_axi_read_fsm,
      CLR => \^as\(0),
      D => n_37_axi_read_fsm,
      Q => axis_address_full_r(11)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_35_axi_read_fsm,
      CLR => \^as\(0),
      D => n_36_axi_read_fsm,
      Q => axis_address_full_r(12)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_35_axi_read_fsm,
      CLR => \^as\(0),
      D => n_43_axi_read_fsm,
      Q => axis_address_full_r(5)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_35_axi_read_fsm,
      CLR => \^as\(0),
      D => n_42_axi_read_fsm,
      Q => axis_address_full_r(6)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_35_axi_read_fsm,
      CLR => \^as\(0),
      D => n_41_axi_read_fsm,
      Q => axis_address_full_r(7)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_35_axi_read_fsm,
      CLR => \^as\(0),
      D => n_40_axi_read_fsm,
      Q => axis_address_full_r(8)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_35_axi_read_fsm,
      CLR => \^as\(0),
      D => n_39_axi_read_fsm,
      Q => axis_address_full_r(9)
    );
\gaxi_full_sm.gaxifull_mem_slave.incr_en_r_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => \^as\(0),
      D => n_60_axi_read_fsm,
      Q => incr_en_r
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8FFFF8BB80000"
    )
    port map (
      I0 => s_axi_araddr(0),
      I1 => n_6_axi_read_fsm,
      I2 => n_7_axi_read_fsm,
      I3 => n_8_axi_read_fsm,
      I4 => n_25_axi_read_fsm,
      I5 => axis_address_full_r(0),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_1\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
    port map (
      I0 => s_axi_arlen(3),
      I1 => s_axi_arvalid,
      I2 => s_axi_arlen(0),
      I3 => s_axi_arlen(2),
      I4 => s_axi_arlen(1),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_10\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
    port map (
      I0 => n_22_axi_read_fsm,
      I1 => present_state(1),
      I2 => s_axi_arvalid,
      I3 => n_24_axi_read_fsm,
      I4 => axis_address_full_r(1),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_1\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
    port map (
      I0 => n_23_axi_read_fsm,
      I1 => present_state(1),
      I2 => s_axi_arvalid,
      I3 => n_24_axi_read_fsm,
      I4 => axis_address_full_r(2),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_1\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
    port map (
      I0 => n_21_axi_read_fsm,
      I1 => present_state(1),
      I2 => s_axi_arvalid,
      I3 => n_24_axi_read_fsm,
      I4 => axis_address_full_r(3),
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[3]_i_1\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222F2FF22220200"
    )
    port map (
      I0 => n_4_axi_read_fsm,
      I1 => n_6_axi_read_fsm,
      I2 => present_state(1),
      I3 => s_axi_arvalid,
      I4 => n_24_axi_read_fsm,
      I5 => p_0_in3_in,
      O => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_1\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => \^as\(0),
      D => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_1\,
      Q => axis_address_full_r(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => \^as\(0),
      D => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_1\,
      Q => axis_address_full_r(1)
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => \^as\(0),
      D => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_1\,
      Q => axis_address_full_r(2)
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => \^as\(0),
      D => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[3]_i_1\,
      Q => axis_address_full_r(3)
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => \^as\(0),
      D => n_5_axi_read_fsm,
      Q => axis_address_full_r(4)
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => \^as\(0),
      D => \n_0_gaxi_full_sm.gaxifull_mem_slave.next_address_r[5]_i_1\,
      Q => p_0_in3_in
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      O => num_of_bytes_c(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      O => num_of_bytes_c(1)
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      O => num_of_bytes_c(2)
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      O => num_of_bytes_c(3)
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      O => num_of_bytes_c(4)
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(2),
      O => num_of_bytes_c(5)
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_59_axi_read_fsm,
      CLR => \^as\(0),
      D => num_of_bytes_c(0),
      Q => num_of_bytes_r(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_59_axi_read_fsm,
      CLR => \^as\(0),
      D => num_of_bytes_c(1),
      Q => num_of_bytes_r(1)
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_59_axi_read_fsm,
      CLR => \^as\(0),
      D => num_of_bytes_c(2),
      Q => num_of_bytes_r(2)
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_59_axi_read_fsm,
      CLR => \^as\(0),
      D => num_of_bytes_c(3),
      Q => num_of_bytes_r(3)
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_59_axi_read_fsm,
      CLR => \^as\(0),
      D => num_of_bytes_c(4),
      Q => num_of_bytes_r(4)
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_59_axi_read_fsm,
      CLR => \^as\(0),
      D => num_of_bytes_c(5),
      Q => num_of_bytes_r(5)
    );
\grid.S_AXI_RID_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_58_axi_read_fsm,
      CLR => \^as\(0),
      D => n_56_axi_read_fsm,
      Q => s_axi_rid(0)
    );
\grid.S_AXI_RID_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_58_axi_read_fsm,
      CLR => \^as\(0),
      D => n_55_axi_read_fsm,
      Q => s_axi_rid(1)
    );
\grid.S_AXI_RID_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_58_axi_read_fsm,
      CLR => \^as\(0),
      D => n_54_axi_read_fsm,
      Q => s_axi_rid(2)
    );
\grid.S_AXI_RID_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_58_axi_read_fsm,
      CLR => \^as\(0),
      D => n_53_axi_read_fsm,
      Q => s_axi_rid(3)
    );
\grid.ar_id_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_11_axi_read_fsm,
      CLR => \^as\(0),
      D => s_axi_arid(0),
      Q => ar_id_r(0)
    );
\grid.ar_id_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_11_axi_read_fsm,
      CLR => \^as\(0),
      D => s_axi_arid(1),
      Q => ar_id_r(1)
    );
\grid.ar_id_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_11_axi_read_fsm,
      CLR => \^as\(0),
      D => s_axi_arid(2),
      Q => ar_id_r(2)
    );
\grid.ar_id_r_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_11_axi_read_fsm,
      CLR => \^as\(0),
      D => s_axi_arid(3),
      Q => ar_id_r(3)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity RAMB_AXI_256x256blk_mem_axi_write_wrapper is
  port (
    O1 : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aresetn : in STD_LOGIC
  );
end RAMB_AXI_256x256blk_mem_axi_write_wrapper;

architecture STRUCTURE of RAMB_AXI_256x256blk_mem_axi_write_wrapper is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^addrbwraddr\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^o2\ : STD_LOGIC;
  signal addr_en_c : STD_LOGIC;
  signal axi_addr_full_r : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal bvalid_d1_c : STD_LOGIC;
  signal bvalid_rd_cnt_c : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal bvalid_rd_cnt_r : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gaxif_wlast_gen.awlen_cntr_r_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal incr_en_r : STD_LOGIC;
  signal \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_25\ : STD_LOGIC;
  signal \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_26\ : STD_LOGIC;
  signal \n_0_bvalid_count_r[0]_i_1\ : STD_LOGIC;
  signal \n_0_bvalid_count_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_bvalid_count_r[2]_i_1\ : STD_LOGIC;
  signal \n_0_bvalid_count_r_reg[0]\ : STD_LOGIC;
  signal \n_0_bvalid_count_r_reg[1]\ : STD_LOGIC;
  signal \n_0_bvalid_count_r_reg[2]\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.S_AXI_BID[0]_i_1\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.S_AXI_BID[1]_i_1\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.S_AXI_BID[2]_i_1\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.S_AXI_BID[3]_i_1\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.axi_bid_array_reg[0][0]\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.axi_bid_array_reg[0][1]\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.axi_bid_array_reg[0][2]\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.axi_bid_array_reg[0][3]\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.axi_bid_array_reg[1][0]\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.axi_bid_array_reg[1][1]\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.axi_bid_array_reg[1][2]\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.axi_bid_array_reg[1][3]\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.axi_bid_array_reg[2][0]\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.axi_bid_array_reg[2][1]\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.axi_bid_array_reg[2][2]\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.axi_bid_array_reg[2][3]\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.axi_bid_array_reg[3][0]\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.axi_bid_array_reg[3][1]\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.axi_bid_array_reg[3][2]\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.axi_bid_array_reg[3][3]\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]\ : STD_LOGIC;
  signal \n_0_gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\ : STD_LOGIC;
  signal \n_0_gaxi_bvalid_id_r.bvalid_r_i_1\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.addr_cnt_enb[5]_i_2\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.addr_cnt_enb[6]_i_2\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.addr_cnt_enb[8]_i_2\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.addr_cnt_enb[8]_i_3\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[10]\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[11]\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[12]\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[5]\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[6]\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[7]\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[8]\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[9]\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.incr_en_r_i_2\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.next_address_r[0]_i_1\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.next_address_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.next_address_r[1]_i_2\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.next_address_r[2]_i_1\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.next_address_r[2]_i_2\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.next_address_r[3]_i_1\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.next_address_r[3]_i_2\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.next_address_r[4]_i_1\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.next_address_r[4]_i_2\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.next_address_r[5]_i_1\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.next_address_r[5]_i_2\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[0]\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[1]\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[2]\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[3]\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[4]\ : STD_LOGIC;
  signal \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[5]\ : STD_LOGIC;
  signal \n_0_gaxif_wlast_gen.awlen_cntr_r[4]_i_2\ : STD_LOGIC;
  signal \n_0_gaxif_wlast_gen.awlen_cntr_r[5]_i_2\ : STD_LOGIC;
  signal n_10_axi_wr_fsm : STD_LOGIC;
  signal n_11_axi_wr_fsm : STD_LOGIC;
  signal n_12_axi_wr_fsm : STD_LOGIC;
  signal n_13_axi_wr_fsm : STD_LOGIC;
  signal n_14_axi_wr_fsm : STD_LOGIC;
  signal n_15_axi_wr_fsm : STD_LOGIC;
  signal n_16_axi_wr_fsm : STD_LOGIC;
  signal n_17_axi_wr_fsm : STD_LOGIC;
  signal n_18_axi_wr_fsm : STD_LOGIC;
  signal n_19_axi_wr_fsm : STD_LOGIC;
  signal n_20_axi_wr_fsm : STD_LOGIC;
  signal n_21_axi_wr_fsm : STD_LOGIC;
  signal n_22_axi_wr_fsm : STD_LOGIC;
  signal n_23_axi_wr_fsm : STD_LOGIC;
  signal n_24_axi_wr_fsm : STD_LOGIC;
  signal n_33_axi_wr_fsm : STD_LOGIC;
  signal n_3_axi_wr_fsm : STD_LOGIC;
  signal n_4_axi_wr_fsm : STD_LOGIC;
  signal n_5_axi_wr_fsm : STD_LOGIC;
  signal n_7_axi_wr_fsm : STD_LOGIC;
  signal n_8_axi_wr_fsm : STD_LOGIC;
  signal n_9_axi_wr_fsm : STD_LOGIC;
  signal num_of_bytes_c : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in_0 : STD_LOGIC;
  attribute RAM_STYLE : string;
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[0][0]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[0][1]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[0][2]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[0][3]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[1][0]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[1][1]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[1][2]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[1][3]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[2][0]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[2][1]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[2][2]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[2][3]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[3][0]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[3][1]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[3][2]\ : label is "pipe_distributed";
  attribute RAM_STYLE of \gaxi_bid_gen.axi_bid_array_reg[3][3]\ : label is "pipe_distributed";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gaxi_bid_gen.bvalid_rd_cnt_r[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gaxi_bid_gen.bvalid_rd_cnt_r[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.addr_cnt_enb[8]_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.next_address_r[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.next_address_r[1]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.num_of_bytes_r[0]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.num_of_bytes_r[1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.num_of_bytes_r[2]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.num_of_bytes_r[4]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.num_of_bytes_r[5]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \gaxif_wlast_gen.awlen_cntr_r[4]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \gaxif_wlast_gen.awlen_cntr_r[5]_i_2\ : label is "soft_lutpair34";
  attribute counter : integer;
  attribute counter of \gaxif_wlast_gen.awlen_cntr_r_reg[0]\ : label is 1;
  attribute counter of \gaxif_wlast_gen.awlen_cntr_r_reg[1]\ : label is 1;
  attribute counter of \gaxif_wlast_gen.awlen_cntr_r_reg[2]\ : label is 1;
  attribute counter of \gaxif_wlast_gen.awlen_cntr_r_reg[3]\ : label is 1;
  attribute counter of \gaxif_wlast_gen.awlen_cntr_r_reg[4]\ : label is 1;
  attribute counter of \gaxif_wlast_gen.awlen_cntr_r_reg[5]\ : label is 1;
  attribute counter of \gaxif_wlast_gen.awlen_cntr_r_reg[6]\ : label is 1;
  attribute counter of \gaxif_wlast_gen.awlen_cntr_r_reg[7]\ : label is 1;
begin
  ADDRBWRADDR(7 downto 0) <= \^addrbwraddr\(7 downto 0);
  O2 <= \^o2\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA9AAAAAAA"
    )
    port map (
      I0 => axi_addr_full_r(12),
      I1 => \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[12]\,
      I2 => axi_addr_full_r(11),
      I3 => axi_addr_full_r(10),
      I4 => axi_addr_full_r(9),
      I5 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_25\,
      O => \^addrbwraddr\(7)
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA9AAA"
    )
    port map (
      I0 => axi_addr_full_r(11),
      I1 => \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[11]\,
      I2 => axi_addr_full_r(10),
      I3 => axi_addr_full_r(9),
      I4 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_25\,
      O => \^addrbwraddr\(6)
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA9A"
    )
    port map (
      I0 => axi_addr_full_r(10),
      I1 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_25\,
      I2 => axi_addr_full_r(9),
      I3 => \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[10]\,
      O => \^addrbwraddr\(5)
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => axi_addr_full_r(9),
      I1 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_25\,
      I2 => \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[9]\,
      O => \^addrbwraddr\(4)
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => axi_addr_full_r(8),
      I1 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_26\,
      I2 => \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[8]\,
      O => \^addrbwraddr\(3)
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
    port map (
      I0 => axi_addr_full_r(7),
      I1 => axi_addr_full_r(5),
      I2 => p_0_in_0,
      I3 => incr_en_r,
      I4 => axi_addr_full_r(6),
      I5 => \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[7]\,
      O => \^addrbwraddr\(2)
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
    port map (
      I0 => axi_addr_full_r(6),
      I1 => incr_en_r,
      I2 => p_0_in_0,
      I3 => axi_addr_full_r(5),
      I4 => \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[6]\,
      O => \^addrbwraddr\(1)
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
    port map (
      I0 => axi_addr_full_r(5),
      I1 => p_0_in_0,
      I2 => incr_en_r,
      I3 => \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[5]\,
      O => \^addrbwraddr\(0)
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => axi_addr_full_r(7),
      I1 => axi_addr_full_r(5),
      I2 => p_0_in_0,
      I3 => incr_en_r,
      I4 => axi_addr_full_r(6),
      I5 => axi_addr_full_r(8),
      O => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_25\
    );
\NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
    port map (
      I0 => axi_addr_full_r(6),
      I1 => incr_en_r,
      I2 => p_0_in_0,
      I3 => axi_addr_full_r(5),
      I4 => axi_addr_full_r(7),
      O => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_26\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
axi_wr_fsm: entity work.RAMB_AXI_256x256blk_mem_axi_write_fsm
    port map (
      ADDRBWRADDR(3 downto 2) => \^addrbwraddr\(7 downto 6),
      ADDRBWRADDR(1 downto 0) => \^addrbwraddr\(2 downto 1),
      AS(0) => AS(0),
      D(7) => n_7_axi_wr_fsm,
      D(6) => n_8_axi_wr_fsm,
      D(5) => n_9_axi_wr_fsm,
      D(4) => n_10_axi_wr_fsm,
      D(3) => n_11_axi_wr_fsm,
      D(2) => n_12_axi_wr_fsm,
      D(1) => n_13_axi_wr_fsm,
      D(0) => n_14_axi_wr_fsm,
      E(0) => n_5_axi_wr_fsm,
      I1(3 downto 1) => axi_addr_full_r(10 downto 8),
      I1(0) => axi_addr_full_r(5),
      I10 => \n_0_gaxif_ms_addr_gen.addr_cnt_enb[5]_i_2\,
      I11 => \n_0_gaxif_wlast_gen.awlen_cntr_r[5]_i_2\,
      I12 => \n_0_gaxif_wlast_gen.awlen_cntr_r[4]_i_2\,
      I13 => \n_0_bvalid_count_r_reg[1]\,
      I14 => \n_0_bvalid_count_r_reg[2]\,
      I15 => \n_0_bvalid_count_r_reg[0]\,
      I2 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_26\,
      I3(3) => \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[10]\,
      I3(2) => \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[9]\,
      I3(1) => \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[8]\,
      I3(0) => \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[5]\,
      I4 => \n_0_NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_25\,
      I5 => \n_0_gaxif_ms_addr_gen.addr_cnt_enb[8]_i_3\,
      I6 => \n_0_gaxif_ms_addr_gen.addr_cnt_enb[8]_i_2\,
      I7 => \n_0_gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]\,
      I8 => \n_0_gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\,
      I9 => \n_0_gaxif_ms_addr_gen.addr_cnt_enb[6]_i_2\,
      O1 => O1,
      O10(0) => n_24_axi_wr_fsm,
      O11(7 downto 0) => p_0_in(7 downto 0),
      O12(0) => n_33_axi_wr_fsm,
      O2 => n_3_axi_wr_fsm,
      O3 => O3,
      O4 => n_4_axi_wr_fsm,
      O5(4) => n_15_axi_wr_fsm,
      O5(3) => n_16_axi_wr_fsm,
      O5(2) => n_17_axi_wr_fsm,
      O5(1) => n_18_axi_wr_fsm,
      O5(0) => n_19_axi_wr_fsm,
      O6(0) => n_20_axi_wr_fsm,
      O7(0) => n_21_axi_wr_fsm,
      O8(0) => n_22_axi_wr_fsm,
      O9(0) => n_23_axi_wr_fsm,
      Q(7 downto 0) => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(7 downto 0),
      addr_en_c => addr_en_c,
      incr_en_r => incr_en_r,
      p_0_in_0 => p_0_in_0,
      s_aclk => s_aclk,
      s_axi_awaddr(7 downto 0) => s_axi_awaddr(12 downto 5),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awsize(0) => s_axi_awsize(2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
\bvalid_count_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00F0F0F0EF0F0F0"
    )
    port map (
      I0 => \n_0_bvalid_count_r_reg[1]\,
      I1 => \n_0_bvalid_count_r_reg[2]\,
      I2 => \n_0_bvalid_count_r_reg[0]\,
      I3 => s_axi_bready,
      I4 => \^o2\,
      I5 => n_4_axi_wr_fsm,
      O => \n_0_bvalid_count_r[0]_i_1\
    );
\bvalid_count_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA5A5A5AA4AAAAAA"
    )
    port map (
      I0 => \n_0_bvalid_count_r_reg[1]\,
      I1 => \n_0_bvalid_count_r_reg[2]\,
      I2 => \n_0_bvalid_count_r_reg[0]\,
      I3 => s_axi_bready,
      I4 => \^o2\,
      I5 => n_4_axi_wr_fsm,
      O => \n_0_bvalid_count_r[1]_i_1\
    );
\bvalid_count_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC6C6C6CC8CCCCCC"
    )
    port map (
      I0 => \n_0_bvalid_count_r_reg[1]\,
      I1 => \n_0_bvalid_count_r_reg[2]\,
      I2 => \n_0_bvalid_count_r_reg[0]\,
      I3 => s_axi_bready,
      I4 => \^o2\,
      I5 => n_4_axi_wr_fsm,
      O => \n_0_bvalid_count_r[2]_i_1\
    );
\bvalid_count_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => AS(0),
      D => \n_0_bvalid_count_r[0]_i_1\,
      Q => \n_0_bvalid_count_r_reg[0]\
    );
\bvalid_count_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => AS(0),
      D => \n_0_bvalid_count_r[1]_i_1\,
      Q => \n_0_bvalid_count_r_reg[1]\
    );
\bvalid_count_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => AS(0),
      D => \n_0_bvalid_count_r[2]_i_1\,
      Q => \n_0_bvalid_count_r_reg[2]\
    );
\gaxi_bid_gen.S_AXI_BID[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \n_0_gaxi_bid_gen.axi_bid_array_reg[3][0]\,
      I1 => \n_0_gaxi_bid_gen.axi_bid_array_reg[1][0]\,
      I2 => bvalid_rd_cnt_c(0),
      I3 => \n_0_gaxi_bid_gen.axi_bid_array_reg[2][0]\,
      I4 => bvalid_rd_cnt_c(1),
      I5 => \n_0_gaxi_bid_gen.axi_bid_array_reg[0][0]\,
      O => \n_0_gaxi_bid_gen.S_AXI_BID[0]_i_1\
    );
\gaxi_bid_gen.S_AXI_BID[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \n_0_gaxi_bid_gen.axi_bid_array_reg[3][1]\,
      I1 => \n_0_gaxi_bid_gen.axi_bid_array_reg[1][1]\,
      I2 => bvalid_rd_cnt_c(0),
      I3 => \n_0_gaxi_bid_gen.axi_bid_array_reg[2][1]\,
      I4 => bvalid_rd_cnt_c(1),
      I5 => \n_0_gaxi_bid_gen.axi_bid_array_reg[0][1]\,
      O => \n_0_gaxi_bid_gen.S_AXI_BID[1]_i_1\
    );
\gaxi_bid_gen.S_AXI_BID[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \n_0_gaxi_bid_gen.axi_bid_array_reg[3][2]\,
      I1 => \n_0_gaxi_bid_gen.axi_bid_array_reg[1][2]\,
      I2 => bvalid_rd_cnt_c(0),
      I3 => \n_0_gaxi_bid_gen.axi_bid_array_reg[2][2]\,
      I4 => bvalid_rd_cnt_c(1),
      I5 => \n_0_gaxi_bid_gen.axi_bid_array_reg[0][2]\,
      O => \n_0_gaxi_bid_gen.S_AXI_BID[2]_i_1\
    );
\gaxi_bid_gen.S_AXI_BID[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \n_0_gaxi_bid_gen.axi_bid_array_reg[3][3]\,
      I1 => \n_0_gaxi_bid_gen.axi_bid_array_reg[1][3]\,
      I2 => bvalid_rd_cnt_c(0),
      I3 => \n_0_gaxi_bid_gen.axi_bid_array_reg[2][3]\,
      I4 => bvalid_rd_cnt_c(1),
      I5 => \n_0_gaxi_bid_gen.axi_bid_array_reg[0][3]\,
      O => \n_0_gaxi_bid_gen.S_AXI_BID[3]_i_1\
    );
\gaxi_bid_gen.S_AXI_BID_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => s_aresetn,
      D => \n_0_gaxi_bid_gen.S_AXI_BID[0]_i_1\,
      Q => s_axi_bid(0),
      R => \<const0>\
    );
\gaxi_bid_gen.S_AXI_BID_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => s_aresetn,
      D => \n_0_gaxi_bid_gen.S_AXI_BID[1]_i_1\,
      Q => s_axi_bid(1),
      R => \<const0>\
    );
\gaxi_bid_gen.S_AXI_BID_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => s_aresetn,
      D => \n_0_gaxi_bid_gen.S_AXI_BID[2]_i_1\,
      Q => s_axi_bid(2),
      R => \<const0>\
    );
\gaxi_bid_gen.S_AXI_BID_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => s_aresetn,
      D => \n_0_gaxi_bid_gen.S_AXI_BID[3]_i_1\,
      Q => s_axi_bid(3),
      R => \<const0>\
    );
\gaxi_bid_gen.axi_bid_array_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_20_axi_wr_fsm,
      D => s_axi_awid(0),
      Q => \n_0_gaxi_bid_gen.axi_bid_array_reg[0][0]\,
      R => \<const0>\
    );
\gaxi_bid_gen.axi_bid_array_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_20_axi_wr_fsm,
      D => s_axi_awid(1),
      Q => \n_0_gaxi_bid_gen.axi_bid_array_reg[0][1]\,
      R => \<const0>\
    );
\gaxi_bid_gen.axi_bid_array_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_20_axi_wr_fsm,
      D => s_axi_awid(2),
      Q => \n_0_gaxi_bid_gen.axi_bid_array_reg[0][2]\,
      R => \<const0>\
    );
\gaxi_bid_gen.axi_bid_array_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_20_axi_wr_fsm,
      D => s_axi_awid(3),
      Q => \n_0_gaxi_bid_gen.axi_bid_array_reg[0][3]\,
      R => \<const0>\
    );
\gaxi_bid_gen.axi_bid_array_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_23_axi_wr_fsm,
      D => s_axi_awid(0),
      Q => \n_0_gaxi_bid_gen.axi_bid_array_reg[1][0]\,
      R => \<const0>\
    );
\gaxi_bid_gen.axi_bid_array_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_23_axi_wr_fsm,
      D => s_axi_awid(1),
      Q => \n_0_gaxi_bid_gen.axi_bid_array_reg[1][1]\,
      R => \<const0>\
    );
\gaxi_bid_gen.axi_bid_array_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_23_axi_wr_fsm,
      D => s_axi_awid(2),
      Q => \n_0_gaxi_bid_gen.axi_bid_array_reg[1][2]\,
      R => \<const0>\
    );
\gaxi_bid_gen.axi_bid_array_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_23_axi_wr_fsm,
      D => s_axi_awid(3),
      Q => \n_0_gaxi_bid_gen.axi_bid_array_reg[1][3]\,
      R => \<const0>\
    );
\gaxi_bid_gen.axi_bid_array_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_22_axi_wr_fsm,
      D => s_axi_awid(0),
      Q => \n_0_gaxi_bid_gen.axi_bid_array_reg[2][0]\,
      R => \<const0>\
    );
\gaxi_bid_gen.axi_bid_array_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_22_axi_wr_fsm,
      D => s_axi_awid(1),
      Q => \n_0_gaxi_bid_gen.axi_bid_array_reg[2][1]\,
      R => \<const0>\
    );
\gaxi_bid_gen.axi_bid_array_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_22_axi_wr_fsm,
      D => s_axi_awid(2),
      Q => \n_0_gaxi_bid_gen.axi_bid_array_reg[2][2]\,
      R => \<const0>\
    );
\gaxi_bid_gen.axi_bid_array_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_22_axi_wr_fsm,
      D => s_axi_awid(3),
      Q => \n_0_gaxi_bid_gen.axi_bid_array_reg[2][3]\,
      R => \<const0>\
    );
\gaxi_bid_gen.axi_bid_array_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_21_axi_wr_fsm,
      D => s_axi_awid(0),
      Q => \n_0_gaxi_bid_gen.axi_bid_array_reg[3][0]\,
      R => \<const0>\
    );
\gaxi_bid_gen.axi_bid_array_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_21_axi_wr_fsm,
      D => s_axi_awid(1),
      Q => \n_0_gaxi_bid_gen.axi_bid_array_reg[3][1]\,
      R => \<const0>\
    );
\gaxi_bid_gen.axi_bid_array_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_21_axi_wr_fsm,
      D => s_axi_awid(2),
      Q => \n_0_gaxi_bid_gen.axi_bid_array_reg[3][2]\,
      R => \<const0>\
    );
\gaxi_bid_gen.axi_bid_array_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_21_axi_wr_fsm,
      D => s_axi_awid(3),
      Q => \n_0_gaxi_bid_gen.axi_bid_array_reg[3][3]\,
      R => \<const0>\
    );
\gaxi_bid_gen.bvalid_rd_cnt_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => bvalid_rd_cnt_r(0),
      I1 => \^o2\,
      I2 => s_axi_bready,
      O => bvalid_rd_cnt_c(0)
    );
\gaxi_bid_gen.bvalid_rd_cnt_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => bvalid_rd_cnt_r(1),
      I1 => s_axi_bready,
      I2 => \^o2\,
      I3 => bvalid_rd_cnt_r(0),
      O => bvalid_rd_cnt_c(1)
    );
\gaxi_bid_gen.bvalid_rd_cnt_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => AS(0),
      D => bvalid_rd_cnt_c(0),
      Q => bvalid_rd_cnt_r(0)
    );
\gaxi_bid_gen.bvalid_rd_cnt_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => AS(0),
      D => bvalid_rd_cnt_c(1),
      Q => bvalid_rd_cnt_r(1)
    );
\gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => n_4_axi_wr_fsm,
      I1 => \n_0_gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]\,
      O => \n_0_gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1\
    );
\gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \n_0_gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]\,
      I1 => n_4_axi_wr_fsm,
      I2 => \n_0_gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\,
      O => \n_0_gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1\
    );
\gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => AS(0),
      D => \n_0_gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1\,
      Q => \n_0_gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]\
    );
\gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => AS(0),
      D => \n_0_gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1\,
      Q => \n_0_gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\
    );
\gaxi_bvalid_id_r.bvalid_d1_c_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => AS(0),
      D => n_4_axi_wr_fsm,
      Q => bvalid_d1_c
    );
\gaxi_bvalid_id_r.bvalid_r_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFAAAA"
    )
    port map (
      I0 => bvalid_d1_c,
      I1 => \n_0_bvalid_count_r_reg[1]\,
      I2 => \n_0_bvalid_count_r_reg[2]\,
      I3 => s_axi_bready,
      I4 => \^o2\,
      O => \n_0_gaxi_bvalid_id_r.bvalid_r_i_1\
    );
\gaxi_bvalid_id_r.bvalid_r_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => AS(0),
      D => \n_0_gaxi_bvalid_id_r.bvalid_r_i_1\,
      Q => \^o2\
    );
\gaxif_ms_addr_gen.addr_cnt_enb[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEEECE0000"
    )
    port map (
      I0 => s_axi_awlen(2),
      I1 => \n_0_gaxif_ms_addr_gen.addr_cnt_enb[8]_i_2\,
      I2 => s_axi_awlen(1),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awsize(1),
      I5 => s_axi_awsize(2),
      O => \n_0_gaxif_ms_addr_gen.addr_cnt_enb[5]_i_2\
    );
\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEEECE000000"
    )
    port map (
      I0 => s_axi_awlen(2),
      I1 => \n_0_gaxif_ms_addr_gen.addr_cnt_enb[8]_i_2\,
      I2 => s_axi_awlen(1),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awsize(1),
      I5 => s_axi_awsize(2),
      O => \n_0_gaxif_ms_addr_gen.addr_cnt_enb[6]_i_2\
    );
\gaxif_ms_addr_gen.addr_cnt_enb[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
    port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awlen(5),
      I2 => s_axi_awlen(6),
      I3 => s_axi_awlen(7),
      I4 => s_axi_awlen(3),
      I5 => s_axi_awlen(4),
      O => \n_0_gaxif_ms_addr_gen.addr_cnt_enb[8]_i_2\
    );
\gaxif_ms_addr_gen.addr_cnt_enb[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      O => \n_0_gaxif_ms_addr_gen.addr_cnt_enb[8]_i_3\
    );
\gaxif_ms_addr_gen.addr_cnt_enb_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_33_axi_wr_fsm,
      CLR => AS(0),
      D => n_15_axi_wr_fsm,
      Q => \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[10]\
    );
\gaxif_ms_addr_gen.addr_cnt_enb_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_33_axi_wr_fsm,
      CLR => AS(0),
      D => n_15_axi_wr_fsm,
      Q => \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[11]\
    );
\gaxif_ms_addr_gen.addr_cnt_enb_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_33_axi_wr_fsm,
      CLR => AS(0),
      D => n_15_axi_wr_fsm,
      Q => \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[12]\
    );
\gaxif_ms_addr_gen.addr_cnt_enb_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_33_axi_wr_fsm,
      CLR => AS(0),
      D => n_19_axi_wr_fsm,
      Q => \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[5]\
    );
\gaxif_ms_addr_gen.addr_cnt_enb_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_33_axi_wr_fsm,
      CLR => AS(0),
      D => n_18_axi_wr_fsm,
      Q => \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[6]\
    );
\gaxif_ms_addr_gen.addr_cnt_enb_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_33_axi_wr_fsm,
      CLR => AS(0),
      D => n_17_axi_wr_fsm,
      Q => \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[7]\
    );
\gaxif_ms_addr_gen.addr_cnt_enb_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_33_axi_wr_fsm,
      CLR => AS(0),
      D => n_16_axi_wr_fsm,
      Q => \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[8]\
    );
\gaxif_ms_addr_gen.addr_cnt_enb_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_33_axi_wr_fsm,
      CLR => AS(0),
      D => n_15_axi_wr_fsm,
      Q => \n_0_gaxif_ms_addr_gen.addr_cnt_enb_reg[9]\
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_24_axi_wr_fsm,
      CLR => AS(0),
      D => n_9_axi_wr_fsm,
      Q => axi_addr_full_r(10)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_24_axi_wr_fsm,
      CLR => AS(0),
      D => n_8_axi_wr_fsm,
      Q => axi_addr_full_r(11)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_24_axi_wr_fsm,
      CLR => AS(0),
      D => n_7_axi_wr_fsm,
      Q => axi_addr_full_r(12)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_24_axi_wr_fsm,
      CLR => AS(0),
      D => n_14_axi_wr_fsm,
      Q => axi_addr_full_r(5)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_24_axi_wr_fsm,
      CLR => AS(0),
      D => n_13_axi_wr_fsm,
      Q => axi_addr_full_r(6)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_24_axi_wr_fsm,
      CLR => AS(0),
      D => n_12_axi_wr_fsm,
      Q => axi_addr_full_r(7)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_24_axi_wr_fsm,
      CLR => AS(0),
      D => n_11_axi_wr_fsm,
      Q => axi_addr_full_r(8)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => n_24_axi_wr_fsm,
      CLR => AS(0),
      D => n_10_axi_wr_fsm,
      Q => axi_addr_full_r(9)
    );
\gaxif_ms_addr_gen.incr_en_r_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => s_axi_awburst(0),
      I1 => s_axi_awburst(1),
      O => \n_0_gaxif_ms_addr_gen.incr_en_r_i_2\
    );
\gaxif_ms_addr_gen.incr_en_r_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => addr_en_c,
      CLR => AS(0),
      D => \n_0_gaxif_ms_addr_gen.incr_en_r_i_2\,
      Q => incr_en_r
    );
\gaxif_ms_addr_gen.next_address_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A3AFACA0"
    )
    port map (
      I0 => s_axi_awaddr(0),
      I1 => \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[0]\,
      I2 => addr_en_c,
      I3 => n_3_axi_wr_fsm,
      I4 => axi_addr_full_r(0),
      O => \n_0_gaxif_ms_addr_gen.next_address_r[0]_i_1\
    );
\gaxif_ms_addr_gen.next_address_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC3AAFFAA3CAA00"
    )
    port map (
      I0 => s_axi_awaddr(1),
      I1 => \n_0_gaxif_ms_addr_gen.next_address_r[1]_i_2\,
      I2 => \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[1]\,
      I3 => addr_en_c,
      I4 => n_3_axi_wr_fsm,
      I5 => axi_addr_full_r(1),
      O => \n_0_gaxif_ms_addr_gen.next_address_r[1]_i_1\
    );
\gaxif_ms_addr_gen.next_address_r[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => axi_addr_full_r(0),
      I1 => \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[0]\,
      O => \n_0_gaxif_ms_addr_gen.next_address_r[1]_i_2\
    );
\gaxif_ms_addr_gen.next_address_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA3CAAFFAAC3AA00"
    )
    port map (
      I0 => s_axi_awaddr(2),
      I1 => \n_0_gaxif_ms_addr_gen.next_address_r[2]_i_2\,
      I2 => \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[2]\,
      I3 => addr_en_c,
      I4 => n_3_axi_wr_fsm,
      I5 => axi_addr_full_r(2),
      O => \n_0_gaxif_ms_addr_gen.next_address_r[2]_i_1\
    );
\gaxif_ms_addr_gen.next_address_r[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"157F"
    )
    port map (
      I0 => axi_addr_full_r(1),
      I1 => \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[0]\,
      I2 => axi_addr_full_r(0),
      I3 => \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[1]\,
      O => \n_0_gaxif_ms_addr_gen.next_address_r[2]_i_2\
    );
\gaxif_ms_addr_gen.next_address_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC3AAFFAA3CAA00"
    )
    port map (
      I0 => s_axi_awaddr(3),
      I1 => \n_0_gaxif_ms_addr_gen.next_address_r[3]_i_2\,
      I2 => \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[3]\,
      I3 => addr_en_c,
      I4 => n_3_axi_wr_fsm,
      I5 => axi_addr_full_r(3),
      O => \n_0_gaxif_ms_addr_gen.next_address_r[3]_i_1\
    );
\gaxif_ms_addr_gen.next_address_r[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEAAAA8888000"
    )
    port map (
      I0 => \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[2]\,
      I1 => \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[1]\,
      I2 => axi_addr_full_r(0),
      I3 => \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[0]\,
      I4 => axi_addr_full_r(1),
      I5 => axi_addr_full_r(2),
      O => \n_0_gaxif_ms_addr_gen.next_address_r[3]_i_2\
    );
\gaxif_ms_addr_gen.next_address_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA3CAAFFAAC3AA00"
    )
    port map (
      I0 => s_axi_awaddr(4),
      I1 => \n_0_gaxif_ms_addr_gen.next_address_r[4]_i_2\,
      I2 => \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[4]\,
      I3 => addr_en_c,
      I4 => n_3_axi_wr_fsm,
      I5 => axi_addr_full_r(4),
      O => \n_0_gaxif_ms_addr_gen.next_address_r[4]_i_1\
    );
\gaxif_ms_addr_gen.next_address_r[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
    port map (
      I0 => axi_addr_full_r(3),
      I1 => \n_0_gaxif_ms_addr_gen.next_address_r[3]_i_2\,
      I2 => \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[3]\,
      O => \n_0_gaxif_ms_addr_gen.next_address_r[4]_i_2\
    );
\gaxif_ms_addr_gen.next_address_r[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
    port map (
      I0 => \n_0_gaxif_ms_addr_gen.next_address_r[5]_i_2\,
      I1 => addr_en_c,
      I2 => n_3_axi_wr_fsm,
      I3 => p_0_in_0,
      O => \n_0_gaxif_ms_addr_gen.next_address_r[5]_i_1\
    );
\gaxif_ms_addr_gen.next_address_r[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55565666666A6AAA"
    )
    port map (
      I0 => \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[5]\,
      I1 => axi_addr_full_r(4),
      I2 => axi_addr_full_r(3),
      I3 => \n_0_gaxif_ms_addr_gen.next_address_r[3]_i_2\,
      I4 => \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[3]\,
      I5 => \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[4]\,
      O => \n_0_gaxif_ms_addr_gen.next_address_r[5]_i_2\
    );
\gaxif_ms_addr_gen.next_address_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => AS(0),
      D => \n_0_gaxif_ms_addr_gen.next_address_r[0]_i_1\,
      Q => axi_addr_full_r(0)
    );
\gaxif_ms_addr_gen.next_address_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => AS(0),
      D => \n_0_gaxif_ms_addr_gen.next_address_r[1]_i_1\,
      Q => axi_addr_full_r(1)
    );
\gaxif_ms_addr_gen.next_address_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => AS(0),
      D => \n_0_gaxif_ms_addr_gen.next_address_r[2]_i_1\,
      Q => axi_addr_full_r(2)
    );
\gaxif_ms_addr_gen.next_address_r_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => AS(0),
      D => \n_0_gaxif_ms_addr_gen.next_address_r[3]_i_1\,
      Q => axi_addr_full_r(3)
    );
\gaxif_ms_addr_gen.next_address_r_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => AS(0),
      D => \n_0_gaxif_ms_addr_gen.next_address_r[4]_i_1\,
      Q => axi_addr_full_r(4)
    );
\gaxif_ms_addr_gen.next_address_r_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => \<const1>\,
      CLR => AS(0),
      D => \n_0_gaxif_ms_addr_gen.next_address_r[5]_i_1\,
      Q => p_0_in_0
    );
\gaxif_ms_addr_gen.num_of_bytes_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      O => num_of_bytes_c(0)
    );
\gaxif_ms_addr_gen.num_of_bytes_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      O => num_of_bytes_c(1)
    );
\gaxif_ms_addr_gen.num_of_bytes_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      O => num_of_bytes_c(2)
    );
\gaxif_ms_addr_gen.num_of_bytes_r[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      O => num_of_bytes_c(3)
    );
\gaxif_ms_addr_gen.num_of_bytes_r[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      O => num_of_bytes_c(4)
    );
\gaxif_ms_addr_gen.num_of_bytes_r[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      O => num_of_bytes_c(5)
    );
\gaxif_ms_addr_gen.num_of_bytes_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => addr_en_c,
      CLR => AS(0),
      D => num_of_bytes_c(0),
      Q => \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[0]\
    );
\gaxif_ms_addr_gen.num_of_bytes_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => addr_en_c,
      CLR => AS(0),
      D => num_of_bytes_c(1),
      Q => \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[1]\
    );
\gaxif_ms_addr_gen.num_of_bytes_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => addr_en_c,
      CLR => AS(0),
      D => num_of_bytes_c(2),
      Q => \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[2]\
    );
\gaxif_ms_addr_gen.num_of_bytes_r_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => addr_en_c,
      CLR => AS(0),
      D => num_of_bytes_c(3),
      Q => \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[3]\
    );
\gaxif_ms_addr_gen.num_of_bytes_r_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => addr_en_c,
      CLR => AS(0),
      D => num_of_bytes_c(4),
      Q => \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[4]\
    );
\gaxif_ms_addr_gen.num_of_bytes_r_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_aclk,
      CE => addr_en_c,
      CLR => AS(0),
      D => num_of_bytes_c(5),
      Q => \n_0_gaxif_ms_addr_gen.num_of_bytes_r_reg[5]\
    );
\gaxif_wlast_gen.awlen_cntr_r[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(3),
      I1 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(2),
      I2 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(0),
      I3 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(1),
      O => \n_0_gaxif_wlast_gen.awlen_cntr_r[4]_i_2\
    );
\gaxif_wlast_gen.awlen_cntr_r[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(4),
      I1 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(1),
      I2 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(0),
      I3 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(2),
      I4 => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(3),
      O => \n_0_gaxif_wlast_gen.awlen_cntr_r[5]_i_2\
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_aclk,
      CE => n_5_axi_wr_fsm,
      D => p_0_in(0),
      PRE => AS(0),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(0)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_aclk,
      CE => n_5_axi_wr_fsm,
      D => p_0_in(1),
      PRE => AS(0),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(1)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_aclk,
      CE => n_5_axi_wr_fsm,
      D => p_0_in(2),
      PRE => AS(0),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(2)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_aclk,
      CE => n_5_axi_wr_fsm,
      D => p_0_in(3),
      PRE => AS(0),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(3)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_aclk,
      CE => n_5_axi_wr_fsm,
      D => p_0_in(4),
      PRE => AS(0),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(4)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_aclk,
      CE => n_5_axi_wr_fsm,
      D => p_0_in(5),
      PRE => AS(0),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(5)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_aclk,
      CE => n_5_axi_wr_fsm,
      D => p_0_in(6),
      PRE => AS(0),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(6)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[7]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_aclk,
      CE => n_5_axi_wr_fsm,
      D => p_0_in(7),
      PRE => AS(0),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg__0\(7)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity RAMB_AXI_256x256blk_mem_gen_prim_width is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rd_en_c : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ENA : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end RAMB_AXI_256x256blk_mem_gen_prim_width;

architecture STRUCTURE of RAMB_AXI_256x256blk_mem_gen_prim_width is
begin
\v6_noinit.ram\: entity work.RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6
    port map (
      ADDRARDADDR(7 downto 0) => ADDRARDADDR(7 downto 0),
      ADDRBWRADDR(7 downto 0) => ADDRBWRADDR(7 downto 0),
      AS(0) => AS(0),
      ENA => ENA,
      s_aclk => s_aclk,
      s_axi_rd_en_c => s_axi_rd_en_c,
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \RAMB_AXI_256x256blk_mem_gen_prim_width__parameterized0\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rd_en_c : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ENA : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \RAMB_AXI_256x256blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \RAMB_AXI_256x256blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \RAMB_AXI_256x256blk_mem_gen_prim_width__parameterized0\ is
begin
\v6_noinit.ram\: entity work.\RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6__parameterized0\
    port map (
      ADDRARDADDR(7 downto 0) => ADDRARDADDR(7 downto 0),
      ADDRBWRADDR(7 downto 0) => ADDRBWRADDR(7 downto 0),
      AS(0) => AS(0),
      ENA => ENA,
      s_aclk => s_aclk,
      s_axi_rd_en_c => s_axi_rd_en_c,
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \RAMB_AXI_256x256blk_mem_gen_prim_width__parameterized1\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rd_en_c : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ENA : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \RAMB_AXI_256x256blk_mem_gen_prim_width__parameterized1\ : entity is "blk_mem_gen_prim_width";
end \RAMB_AXI_256x256blk_mem_gen_prim_width__parameterized1\;

architecture STRUCTURE of \RAMB_AXI_256x256blk_mem_gen_prim_width__parameterized1\ is
begin
\v6_noinit.ram\: entity work.\RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6__parameterized1\
    port map (
      ADDRARDADDR(7 downto 0) => ADDRARDADDR(7 downto 0),
      ADDRBWRADDR(7 downto 0) => ADDRBWRADDR(7 downto 0),
      AS(0) => AS(0),
      ENA => ENA,
      s_aclk => s_aclk,
      s_axi_rd_en_c => s_axi_rd_en_c,
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \RAMB_AXI_256x256blk_mem_gen_prim_width__parameterized2\ is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rd_en_c : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ENA : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \RAMB_AXI_256x256blk_mem_gen_prim_width__parameterized2\ : entity is "blk_mem_gen_prim_width";
end \RAMB_AXI_256x256blk_mem_gen_prim_width__parameterized2\;

architecture STRUCTURE of \RAMB_AXI_256x256blk_mem_gen_prim_width__parameterized2\ is
begin
\v6_noinit.ram\: entity work.\RAMB_AXI_256x256blk_mem_gen_prim_wrapper_v6__parameterized2\
    port map (
      ADDRARDADDR(7 downto 0) => ADDRARDADDR(7 downto 0),
      ADDRBWRADDR(7 downto 0) => ADDRBWRADDR(7 downto 0),
      AS(0) => AS(0),
      ENA => ENA,
      s_aclk => s_aclk,
      s_axi_rd_en_c => s_axi_rd_en_c,
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity RAMB_AXI_256x256blk_mem_gen_generic_cstr is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rd_en_c : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ENA : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end RAMB_AXI_256x256blk_mem_gen_generic_cstr;

architecture STRUCTURE of RAMB_AXI_256x256blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.RAMB_AXI_256x256blk_mem_gen_prim_width
    port map (
      ADDRARDADDR(7 downto 0) => ADDRARDADDR(7 downto 0),
      ADDRBWRADDR(7 downto 0) => ADDRBWRADDR(7 downto 0),
      AS(0) => AS(0),
      ENA => ENA,
      s_aclk => s_aclk,
      s_axi_rd_en_c => s_axi_rd_en_c,
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0)
    );
\ramloop[1].ram.r\: entity work.\RAMB_AXI_256x256blk_mem_gen_prim_width__parameterized0\
    port map (
      ADDRARDADDR(7 downto 0) => ADDRARDADDR(7 downto 0),
      ADDRBWRADDR(7 downto 0) => ADDRBWRADDR(7 downto 0),
      AS(0) => AS(0),
      ENA => ENA,
      s_aclk => s_aclk,
      s_axi_rd_en_c => s_axi_rd_en_c,
      s_axi_rdata(63 downto 0) => s_axi_rdata(127 downto 64),
      s_axi_wdata(63 downto 0) => s_axi_wdata(127 downto 64),
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(15 downto 8)
    );
\ramloop[2].ram.r\: entity work.\RAMB_AXI_256x256blk_mem_gen_prim_width__parameterized1\
    port map (
      ADDRARDADDR(7 downto 0) => ADDRARDADDR(7 downto 0),
      ADDRBWRADDR(7 downto 0) => ADDRBWRADDR(7 downto 0),
      AS(0) => AS(0),
      ENA => ENA,
      s_aclk => s_aclk,
      s_axi_rd_en_c => s_axi_rd_en_c,
      s_axi_rdata(63 downto 0) => s_axi_rdata(191 downto 128),
      s_axi_wdata(63 downto 0) => s_axi_wdata(191 downto 128),
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(23 downto 16)
    );
\ramloop[3].ram.r\: entity work.\RAMB_AXI_256x256blk_mem_gen_prim_width__parameterized2\
    port map (
      ADDRARDADDR(7 downto 0) => ADDRARDADDR(7 downto 0),
      ADDRBWRADDR(7 downto 0) => ADDRBWRADDR(7 downto 0),
      AS(0) => AS(0),
      ENA => ENA,
      s_aclk => s_aclk,
      s_axi_rd_en_c => s_axi_rd_en_c,
      s_axi_rdata(63 downto 0) => s_axi_rdata(255 downto 192),
      s_axi_wdata(63 downto 0) => s_axi_wdata(255 downto 192),
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(31 downto 24)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity RAMB_AXI_256x256blk_mem_gen_top is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rd_en_c : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ENA : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end RAMB_AXI_256x256blk_mem_gen_top;

architecture STRUCTURE of RAMB_AXI_256x256blk_mem_gen_top is
begin
\valid.cstr\: entity work.RAMB_AXI_256x256blk_mem_gen_generic_cstr
    port map (
      ADDRARDADDR(7 downto 0) => ADDRARDADDR(7 downto 0),
      ADDRBWRADDR(7 downto 0) => ADDRBWRADDR(7 downto 0),
      AS(0) => AS(0),
      ENA => ENA,
      s_aclk => s_aclk,
      s_axi_rd_en_c => s_axi_rd_en_c,
      s_axi_rdata(255 downto 0) => s_axi_rdata(255 downto 0),
      s_axi_wdata(255 downto 0) => s_axi_wdata(255 downto 0),
      s_axi_wstrb(31 downto 0) => s_axi_wstrb(31 downto 0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity RAMB_AXI_256x256blk_mem_gen_v8_0_synth is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    O1 : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O2 : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aresetn : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end RAMB_AXI_256x256blk_mem_gen_v8_0_synth;

architecture STRUCTURE of RAMB_AXI_256x256blk_mem_gen_v8_0_synth is
  signal \n_3_gaxibmg.axi_wr_fsm\ : STD_LOGIC;
  signal s_aresetn_a_c : STD_LOGIC;
  signal s_axi_araddr_out_c : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_axi_awaddr_out_c : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_axi_rd_en_c : STD_LOGIC;
begin
\gaxibmg.axi_blk_mem_gen\: entity work.RAMB_AXI_256x256blk_mem_gen_top
    port map (
      ADDRARDADDR(7 downto 0) => s_axi_araddr_out_c(7 downto 0),
      ADDRBWRADDR(7 downto 0) => s_axi_awaddr_out_c(7 downto 0),
      AS(0) => s_aresetn_a_c,
      ENA => \n_3_gaxibmg.axi_wr_fsm\,
      s_aclk => s_aclk,
      s_axi_rd_en_c => s_axi_rd_en_c,
      s_axi_rdata(255 downto 0) => s_axi_rdata(255 downto 0),
      s_axi_wdata(255 downto 0) => s_axi_wdata(255 downto 0),
      s_axi_wstrb(31 downto 0) => s_axi_wstrb(31 downto 0)
    );
\gaxibmg.axi_rd_sm\: entity work.RAMB_AXI_256x256blk_mem_axi_read_wrapper
    port map (
      ADDRARDADDR(7 downto 0) => s_axi_araddr_out_c(7 downto 0),
      AS(0) => s_aresetn_a_c,
      O1 => O2,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_araddr(12 downto 0) => s_axi_araddr(12 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rd_en_c => s_axi_rd_en_c,
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready
    );
\gaxibmg.axi_wr_fsm\: entity work.RAMB_AXI_256x256blk_mem_axi_write_wrapper
    port map (
      ADDRBWRADDR(7 downto 0) => s_axi_awaddr_out_c(7 downto 0),
      AS(0) => s_aresetn_a_c,
      O1 => S_AXI_AWREADY,
      O2 => O1,
      O3 => \n_3_gaxibmg.axi_wr_fsm\,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_awaddr(12 downto 0) => s_axi_awaddr(12 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity RAMB_AXI_256x256blk_mem_gen_v8_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 255 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 255 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 255 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 255 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute C_FAMILY : string;
  attribute C_FAMILY of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is "virtex7";
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is "virtex7";
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is "./";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 1;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is "NONE";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 4;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 8;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 1;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 1;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is "no_coe_file_loaded";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is "RAMB_AXI_256x256.mem";
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is "0";
  attribute C_RST_TYPE : string;
  attribute C_RST_TYPE of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is "ASYNC";
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is "CE";
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is "0";
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 1;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 1;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 32;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is "READ_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 256;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 256;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 256;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 256;
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 8;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 1;
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is "CE";
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is "0";
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 1;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 32;
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is "READ_FIRST";
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 256;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 256;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 256;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 256;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 8;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is "ALL";
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 1;
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of RAMB_AXI_256x256blk_mem_gen_v8_0 : entity is "yes";
end RAMB_AXI_256x256blk_mem_gen_v8_0;

architecture STRUCTURE of RAMB_AXI_256x256blk_mem_gen_v8_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  douta(255) <= \<const0>\;
  douta(254) <= \<const0>\;
  douta(253) <= \<const0>\;
  douta(252) <= \<const0>\;
  douta(251) <= \<const0>\;
  douta(250) <= \<const0>\;
  douta(249) <= \<const0>\;
  douta(248) <= \<const0>\;
  douta(247) <= \<const0>\;
  douta(246) <= \<const0>\;
  douta(245) <= \<const0>\;
  douta(244) <= \<const0>\;
  douta(243) <= \<const0>\;
  douta(242) <= \<const0>\;
  douta(241) <= \<const0>\;
  douta(240) <= \<const0>\;
  douta(239) <= \<const0>\;
  douta(238) <= \<const0>\;
  douta(237) <= \<const0>\;
  douta(236) <= \<const0>\;
  douta(235) <= \<const0>\;
  douta(234) <= \<const0>\;
  douta(233) <= \<const0>\;
  douta(232) <= \<const0>\;
  douta(231) <= \<const0>\;
  douta(230) <= \<const0>\;
  douta(229) <= \<const0>\;
  douta(228) <= \<const0>\;
  douta(227) <= \<const0>\;
  douta(226) <= \<const0>\;
  douta(225) <= \<const0>\;
  douta(224) <= \<const0>\;
  douta(223) <= \<const0>\;
  douta(222) <= \<const0>\;
  douta(221) <= \<const0>\;
  douta(220) <= \<const0>\;
  douta(219) <= \<const0>\;
  douta(218) <= \<const0>\;
  douta(217) <= \<const0>\;
  douta(216) <= \<const0>\;
  douta(215) <= \<const0>\;
  douta(214) <= \<const0>\;
  douta(213) <= \<const0>\;
  douta(212) <= \<const0>\;
  douta(211) <= \<const0>\;
  douta(210) <= \<const0>\;
  douta(209) <= \<const0>\;
  douta(208) <= \<const0>\;
  douta(207) <= \<const0>\;
  douta(206) <= \<const0>\;
  douta(205) <= \<const0>\;
  douta(204) <= \<const0>\;
  douta(203) <= \<const0>\;
  douta(202) <= \<const0>\;
  douta(201) <= \<const0>\;
  douta(200) <= \<const0>\;
  douta(199) <= \<const0>\;
  douta(198) <= \<const0>\;
  douta(197) <= \<const0>\;
  douta(196) <= \<const0>\;
  douta(195) <= \<const0>\;
  douta(194) <= \<const0>\;
  douta(193) <= \<const0>\;
  douta(192) <= \<const0>\;
  douta(191) <= \<const0>\;
  douta(190) <= \<const0>\;
  douta(189) <= \<const0>\;
  douta(188) <= \<const0>\;
  douta(187) <= \<const0>\;
  douta(186) <= \<const0>\;
  douta(185) <= \<const0>\;
  douta(184) <= \<const0>\;
  douta(183) <= \<const0>\;
  douta(182) <= \<const0>\;
  douta(181) <= \<const0>\;
  douta(180) <= \<const0>\;
  douta(179) <= \<const0>\;
  douta(178) <= \<const0>\;
  douta(177) <= \<const0>\;
  douta(176) <= \<const0>\;
  douta(175) <= \<const0>\;
  douta(174) <= \<const0>\;
  douta(173) <= \<const0>\;
  douta(172) <= \<const0>\;
  douta(171) <= \<const0>\;
  douta(170) <= \<const0>\;
  douta(169) <= \<const0>\;
  douta(168) <= \<const0>\;
  douta(167) <= \<const0>\;
  douta(166) <= \<const0>\;
  douta(165) <= \<const0>\;
  douta(164) <= \<const0>\;
  douta(163) <= \<const0>\;
  douta(162) <= \<const0>\;
  douta(161) <= \<const0>\;
  douta(160) <= \<const0>\;
  douta(159) <= \<const0>\;
  douta(158) <= \<const0>\;
  douta(157) <= \<const0>\;
  douta(156) <= \<const0>\;
  douta(155) <= \<const0>\;
  douta(154) <= \<const0>\;
  douta(153) <= \<const0>\;
  douta(152) <= \<const0>\;
  douta(151) <= \<const0>\;
  douta(150) <= \<const0>\;
  douta(149) <= \<const0>\;
  douta(148) <= \<const0>\;
  douta(147) <= \<const0>\;
  douta(146) <= \<const0>\;
  douta(145) <= \<const0>\;
  douta(144) <= \<const0>\;
  douta(143) <= \<const0>\;
  douta(142) <= \<const0>\;
  douta(141) <= \<const0>\;
  douta(140) <= \<const0>\;
  douta(139) <= \<const0>\;
  douta(138) <= \<const0>\;
  douta(137) <= \<const0>\;
  douta(136) <= \<const0>\;
  douta(135) <= \<const0>\;
  douta(134) <= \<const0>\;
  douta(133) <= \<const0>\;
  douta(132) <= \<const0>\;
  douta(131) <= \<const0>\;
  douta(130) <= \<const0>\;
  douta(129) <= \<const0>\;
  douta(128) <= \<const0>\;
  douta(127) <= \<const0>\;
  douta(126) <= \<const0>\;
  douta(125) <= \<const0>\;
  douta(124) <= \<const0>\;
  douta(123) <= \<const0>\;
  douta(122) <= \<const0>\;
  douta(121) <= \<const0>\;
  douta(120) <= \<const0>\;
  douta(119) <= \<const0>\;
  douta(118) <= \<const0>\;
  douta(117) <= \<const0>\;
  douta(116) <= \<const0>\;
  douta(115) <= \<const0>\;
  douta(114) <= \<const0>\;
  douta(113) <= \<const0>\;
  douta(112) <= \<const0>\;
  douta(111) <= \<const0>\;
  douta(110) <= \<const0>\;
  douta(109) <= \<const0>\;
  douta(108) <= \<const0>\;
  douta(107) <= \<const0>\;
  douta(106) <= \<const0>\;
  douta(105) <= \<const0>\;
  douta(104) <= \<const0>\;
  douta(103) <= \<const0>\;
  douta(102) <= \<const0>\;
  douta(101) <= \<const0>\;
  douta(100) <= \<const0>\;
  douta(99) <= \<const0>\;
  douta(98) <= \<const0>\;
  douta(97) <= \<const0>\;
  douta(96) <= \<const0>\;
  douta(95) <= \<const0>\;
  douta(94) <= \<const0>\;
  douta(93) <= \<const0>\;
  douta(92) <= \<const0>\;
  douta(91) <= \<const0>\;
  douta(90) <= \<const0>\;
  douta(89) <= \<const0>\;
  douta(88) <= \<const0>\;
  douta(87) <= \<const0>\;
  douta(86) <= \<const0>\;
  douta(85) <= \<const0>\;
  douta(84) <= \<const0>\;
  douta(83) <= \<const0>\;
  douta(82) <= \<const0>\;
  douta(81) <= \<const0>\;
  douta(80) <= \<const0>\;
  douta(79) <= \<const0>\;
  douta(78) <= \<const0>\;
  douta(77) <= \<const0>\;
  douta(76) <= \<const0>\;
  douta(75) <= \<const0>\;
  douta(74) <= \<const0>\;
  douta(73) <= \<const0>\;
  douta(72) <= \<const0>\;
  douta(71) <= \<const0>\;
  douta(70) <= \<const0>\;
  douta(69) <= \<const0>\;
  douta(68) <= \<const0>\;
  douta(67) <= \<const0>\;
  douta(66) <= \<const0>\;
  douta(65) <= \<const0>\;
  douta(64) <= \<const0>\;
  douta(63) <= \<const0>\;
  douta(62) <= \<const0>\;
  douta(61) <= \<const0>\;
  douta(60) <= \<const0>\;
  douta(59) <= \<const0>\;
  douta(58) <= \<const0>\;
  douta(57) <= \<const0>\;
  douta(56) <= \<const0>\;
  douta(55) <= \<const0>\;
  douta(54) <= \<const0>\;
  douta(53) <= \<const0>\;
  douta(52) <= \<const0>\;
  douta(51) <= \<const0>\;
  douta(50) <= \<const0>\;
  douta(49) <= \<const0>\;
  douta(48) <= \<const0>\;
  douta(47) <= \<const0>\;
  douta(46) <= \<const0>\;
  douta(45) <= \<const0>\;
  douta(44) <= \<const0>\;
  douta(43) <= \<const0>\;
  douta(42) <= \<const0>\;
  douta(41) <= \<const0>\;
  douta(40) <= \<const0>\;
  douta(39) <= \<const0>\;
  douta(38) <= \<const0>\;
  douta(37) <= \<const0>\;
  douta(36) <= \<const0>\;
  douta(35) <= \<const0>\;
  douta(34) <= \<const0>\;
  douta(33) <= \<const0>\;
  douta(32) <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  doutb(255) <= \<const0>\;
  doutb(254) <= \<const0>\;
  doutb(253) <= \<const0>\;
  doutb(252) <= \<const0>\;
  doutb(251) <= \<const0>\;
  doutb(250) <= \<const0>\;
  doutb(249) <= \<const0>\;
  doutb(248) <= \<const0>\;
  doutb(247) <= \<const0>\;
  doutb(246) <= \<const0>\;
  doutb(245) <= \<const0>\;
  doutb(244) <= \<const0>\;
  doutb(243) <= \<const0>\;
  doutb(242) <= \<const0>\;
  doutb(241) <= \<const0>\;
  doutb(240) <= \<const0>\;
  doutb(239) <= \<const0>\;
  doutb(238) <= \<const0>\;
  doutb(237) <= \<const0>\;
  doutb(236) <= \<const0>\;
  doutb(235) <= \<const0>\;
  doutb(234) <= \<const0>\;
  doutb(233) <= \<const0>\;
  doutb(232) <= \<const0>\;
  doutb(231) <= \<const0>\;
  doutb(230) <= \<const0>\;
  doutb(229) <= \<const0>\;
  doutb(228) <= \<const0>\;
  doutb(227) <= \<const0>\;
  doutb(226) <= \<const0>\;
  doutb(225) <= \<const0>\;
  doutb(224) <= \<const0>\;
  doutb(223) <= \<const0>\;
  doutb(222) <= \<const0>\;
  doutb(221) <= \<const0>\;
  doutb(220) <= \<const0>\;
  doutb(219) <= \<const0>\;
  doutb(218) <= \<const0>\;
  doutb(217) <= \<const0>\;
  doutb(216) <= \<const0>\;
  doutb(215) <= \<const0>\;
  doutb(214) <= \<const0>\;
  doutb(213) <= \<const0>\;
  doutb(212) <= \<const0>\;
  doutb(211) <= \<const0>\;
  doutb(210) <= \<const0>\;
  doutb(209) <= \<const0>\;
  doutb(208) <= \<const0>\;
  doutb(207) <= \<const0>\;
  doutb(206) <= \<const0>\;
  doutb(205) <= \<const0>\;
  doutb(204) <= \<const0>\;
  doutb(203) <= \<const0>\;
  doutb(202) <= \<const0>\;
  doutb(201) <= \<const0>\;
  doutb(200) <= \<const0>\;
  doutb(199) <= \<const0>\;
  doutb(198) <= \<const0>\;
  doutb(197) <= \<const0>\;
  doutb(196) <= \<const0>\;
  doutb(195) <= \<const0>\;
  doutb(194) <= \<const0>\;
  doutb(193) <= \<const0>\;
  doutb(192) <= \<const0>\;
  doutb(191) <= \<const0>\;
  doutb(190) <= \<const0>\;
  doutb(189) <= \<const0>\;
  doutb(188) <= \<const0>\;
  doutb(187) <= \<const0>\;
  doutb(186) <= \<const0>\;
  doutb(185) <= \<const0>\;
  doutb(184) <= \<const0>\;
  doutb(183) <= \<const0>\;
  doutb(182) <= \<const0>\;
  doutb(181) <= \<const0>\;
  doutb(180) <= \<const0>\;
  doutb(179) <= \<const0>\;
  doutb(178) <= \<const0>\;
  doutb(177) <= \<const0>\;
  doutb(176) <= \<const0>\;
  doutb(175) <= \<const0>\;
  doutb(174) <= \<const0>\;
  doutb(173) <= \<const0>\;
  doutb(172) <= \<const0>\;
  doutb(171) <= \<const0>\;
  doutb(170) <= \<const0>\;
  doutb(169) <= \<const0>\;
  doutb(168) <= \<const0>\;
  doutb(167) <= \<const0>\;
  doutb(166) <= \<const0>\;
  doutb(165) <= \<const0>\;
  doutb(164) <= \<const0>\;
  doutb(163) <= \<const0>\;
  doutb(162) <= \<const0>\;
  doutb(161) <= \<const0>\;
  doutb(160) <= \<const0>\;
  doutb(159) <= \<const0>\;
  doutb(158) <= \<const0>\;
  doutb(157) <= \<const0>\;
  doutb(156) <= \<const0>\;
  doutb(155) <= \<const0>\;
  doutb(154) <= \<const0>\;
  doutb(153) <= \<const0>\;
  doutb(152) <= \<const0>\;
  doutb(151) <= \<const0>\;
  doutb(150) <= \<const0>\;
  doutb(149) <= \<const0>\;
  doutb(148) <= \<const0>\;
  doutb(147) <= \<const0>\;
  doutb(146) <= \<const0>\;
  doutb(145) <= \<const0>\;
  doutb(144) <= \<const0>\;
  doutb(143) <= \<const0>\;
  doutb(142) <= \<const0>\;
  doutb(141) <= \<const0>\;
  doutb(140) <= \<const0>\;
  doutb(139) <= \<const0>\;
  doutb(138) <= \<const0>\;
  doutb(137) <= \<const0>\;
  doutb(136) <= \<const0>\;
  doutb(135) <= \<const0>\;
  doutb(134) <= \<const0>\;
  doutb(133) <= \<const0>\;
  doutb(132) <= \<const0>\;
  doutb(131) <= \<const0>\;
  doutb(130) <= \<const0>\;
  doutb(129) <= \<const0>\;
  doutb(128) <= \<const0>\;
  doutb(127) <= \<const0>\;
  doutb(126) <= \<const0>\;
  doutb(125) <= \<const0>\;
  doutb(124) <= \<const0>\;
  doutb(123) <= \<const0>\;
  doutb(122) <= \<const0>\;
  doutb(121) <= \<const0>\;
  doutb(120) <= \<const0>\;
  doutb(119) <= \<const0>\;
  doutb(118) <= \<const0>\;
  doutb(117) <= \<const0>\;
  doutb(116) <= \<const0>\;
  doutb(115) <= \<const0>\;
  doutb(114) <= \<const0>\;
  doutb(113) <= \<const0>\;
  doutb(112) <= \<const0>\;
  doutb(111) <= \<const0>\;
  doutb(110) <= \<const0>\;
  doutb(109) <= \<const0>\;
  doutb(108) <= \<const0>\;
  doutb(107) <= \<const0>\;
  doutb(106) <= \<const0>\;
  doutb(105) <= \<const0>\;
  doutb(104) <= \<const0>\;
  doutb(103) <= \<const0>\;
  doutb(102) <= \<const0>\;
  doutb(101) <= \<const0>\;
  doutb(100) <= \<const0>\;
  doutb(99) <= \<const0>\;
  doutb(98) <= \<const0>\;
  doutb(97) <= \<const0>\;
  doutb(96) <= \<const0>\;
  doutb(95) <= \<const0>\;
  doutb(94) <= \<const0>\;
  doutb(93) <= \<const0>\;
  doutb(92) <= \<const0>\;
  doutb(91) <= \<const0>\;
  doutb(90) <= \<const0>\;
  doutb(89) <= \<const0>\;
  doutb(88) <= \<const0>\;
  doutb(87) <= \<const0>\;
  doutb(86) <= \<const0>\;
  doutb(85) <= \<const0>\;
  doutb(84) <= \<const0>\;
  doutb(83) <= \<const0>\;
  doutb(82) <= \<const0>\;
  doutb(81) <= \<const0>\;
  doutb(80) <= \<const0>\;
  doutb(79) <= \<const0>\;
  doutb(78) <= \<const0>\;
  doutb(77) <= \<const0>\;
  doutb(76) <= \<const0>\;
  doutb(75) <= \<const0>\;
  doutb(74) <= \<const0>\;
  doutb(73) <= \<const0>\;
  doutb(72) <= \<const0>\;
  doutb(71) <= \<const0>\;
  doutb(70) <= \<const0>\;
  doutb(69) <= \<const0>\;
  doutb(68) <= \<const0>\;
  doutb(67) <= \<const0>\;
  doutb(66) <= \<const0>\;
  doutb(65) <= \<const0>\;
  doutb(64) <= \<const0>\;
  doutb(63) <= \<const0>\;
  doutb(62) <= \<const0>\;
  doutb(61) <= \<const0>\;
  doutb(60) <= \<const0>\;
  doutb(59) <= \<const0>\;
  doutb(58) <= \<const0>\;
  doutb(57) <= \<const0>\;
  doutb(56) <= \<const0>\;
  doutb(55) <= \<const0>\;
  doutb(54) <= \<const0>\;
  doutb(53) <= \<const0>\;
  doutb(52) <= \<const0>\;
  doutb(51) <= \<const0>\;
  doutb(50) <= \<const0>\;
  doutb(49) <= \<const0>\;
  doutb(48) <= \<const0>\;
  doutb(47) <= \<const0>\;
  doutb(46) <= \<const0>\;
  doutb(45) <= \<const0>\;
  doutb(44) <= \<const0>\;
  doutb(43) <= \<const0>\;
  doutb(42) <= \<const0>\;
  doutb(41) <= \<const0>\;
  doutb(40) <= \<const0>\;
  doutb(39) <= \<const0>\;
  doutb(38) <= \<const0>\;
  doutb(37) <= \<const0>\;
  doutb(36) <= \<const0>\;
  doutb(35) <= \<const0>\;
  doutb(34) <= \<const0>\;
  doutb(33) <= \<const0>\;
  doutb(32) <= \<const0>\;
  doutb(31) <= \<const0>\;
  doutb(30) <= \<const0>\;
  doutb(29) <= \<const0>\;
  doutb(28) <= \<const0>\;
  doutb(27) <= \<const0>\;
  doutb(26) <= \<const0>\;
  doutb(25) <= \<const0>\;
  doutb(24) <= \<const0>\;
  doutb(23) <= \<const0>\;
  doutb(22) <= \<const0>\;
  doutb(21) <= \<const0>\;
  doutb(20) <= \<const0>\;
  doutb(19) <= \<const0>\;
  doutb(18) <= \<const0>\;
  doutb(17) <= \<const0>\;
  doutb(16) <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.RAMB_AXI_256x256blk_mem_gen_v8_0_synth
    port map (
      O1 => s_axi_bvalid,
      O2 => s_axi_rvalid,
      S_AXI_AWREADY => s_axi_awready,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_araddr(12 downto 0) => s_axi_araddr(12 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(12 downto 0) => s_axi_awaddr(12 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_rdata(255 downto 0) => s_axi_rdata(255 downto 0),
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_wdata(255 downto 0) => s_axi_wdata(255 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(31 downto 0) => s_axi_wstrb(31 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity RAMB_AXI_256x256 is
  port (
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RAMB_AXI_256x256 : entity is true;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of RAMB_AXI_256x256 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of RAMB_AXI_256x256 : entity is "blk_mem_gen_v8_0,Vivado 2013.3";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RAMB_AXI_256x256 : entity is "RAMB_AXI_256x256,blk_mem_gen_v8_0,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of RAMB_AXI_256x256 : entity is "RAMB_AXI_256x256,blk_mem_gen_v8_0,{x_ipProduct=Vivado 2013.3,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=blk_mem_gen,x_ipVersion=8.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,C_FAMILY=virtex7,C_XDEVICEFAMILY=virtex7,C_ELABORATION_DIR=./,C_INTERFACE_TYPE=1,C_AXI_TYPE=1,C_AXI_SLAVE_TYPE=0,C_HAS_AXI_ID=1,C_AXI_ID_WIDTH=4,C_MEM_TYPE=1,C_BYTE_SIZE=8,C_ALGORITHM=1,C_PRIM_TYPE=1,C_LOAD_INIT_FILE=0,C_INIT_FILE_NAME=no_coe_file_loaded,C_INIT_FILE=RAMB_AXI_256x256.mem,C_USE_DEFAULT_DATA=0,C_DEFAULT_DATA=0,C_RST_TYPE=ASYNC,C_HAS_RSTA=0,C_RST_PRIORITY_A=CE,C_RSTRAM_A=0,C_INITA_VAL=0,C_HAS_ENA=1,C_HAS_REGCEA=0,C_USE_BYTE_WEA=1,C_WEA_WIDTH=32,C_WRITE_MODE_A=READ_FIRST,C_WRITE_WIDTH_A=256,C_READ_WIDTH_A=256,C_WRITE_DEPTH_A=256,C_READ_DEPTH_A=256,C_ADDRA_WIDTH=8,C_HAS_RSTB=1,C_RST_PRIORITY_B=CE,C_RSTRAM_B=0,C_INITB_VAL=0,C_HAS_ENB=1,C_HAS_REGCEB=0,C_USE_BYTE_WEB=1,C_WEB_WIDTH=32,C_WRITE_MODE_B=READ_FIRST,C_WRITE_WIDTH_B=256,C_READ_WIDTH_B=256,C_WRITE_DEPTH_B=256,C_READ_DEPTH_B=256,C_ADDRB_WIDTH=8,C_HAS_MEM_OUTPUT_REGS_A=0,C_HAS_MEM_OUTPUT_REGS_B=0,C_HAS_MUX_OUTPUT_REGS_A=0,C_HAS_MUX_OUTPUT_REGS_B=0,C_MUX_PIPELINE_STAGES=0,C_HAS_SOFTECC_INPUT_REGS_A=0,C_HAS_SOFTECC_OUTPUT_REGS_B=0,C_USE_SOFTECC=0,C_USE_ECC=0,C_HAS_INJECTERR=0,C_SIM_COLLISION_CHECK=ALL,C_COMMON_CLK=1,C_ENABLE_32BIT_ADDRESS=0,C_DISABLE_WARN_BHV_COLL=0,C_DISABLE_WARN_BHV_RANGE=0,C_USE_BRAM_BLOCK=0,C_CTRL_ECC_ALGO=NONE}";
end RAMB_AXI_256x256;

architecture STRUCTURE of RAMB_AXI_256x256 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_douta_UNCONNECTED : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 8;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 8;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 8;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 1;
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "virtex7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 1;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 1;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 1;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "RAMB_AXI_256x256.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 1;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 1;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 256;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 256;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 256;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 256;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_RST_TYPE : string;
  attribute C_RST_TYPE of U0 : label is "ASYNC";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 1;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 1;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 32;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 32;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 256;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 256;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "READ_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "READ_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 256;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 256;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "virtex7";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of U0 : label is true;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
U0: entity work.RAMB_AXI_256x256blk_mem_gen_v8_0
    port map (
      addra(7) => \<const0>\,
      addra(6) => \<const0>\,
      addra(5) => \<const0>\,
      addra(4) => \<const0>\,
      addra(3) => \<const0>\,
      addra(2) => \<const0>\,
      addra(1) => \<const0>\,
      addra(0) => \<const0>\,
      addrb(7) => \<const0>\,
      addrb(6) => \<const0>\,
      addrb(5) => \<const0>\,
      addrb(4) => \<const0>\,
      addrb(3) => \<const0>\,
      addrb(2) => \<const0>\,
      addrb(1) => \<const0>\,
      addrb(0) => \<const0>\,
      clka => \<const0>\,
      clkb => \<const0>\,
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      dina(255) => \<const0>\,
      dina(254) => \<const0>\,
      dina(253) => \<const0>\,
      dina(252) => \<const0>\,
      dina(251) => \<const0>\,
      dina(250) => \<const0>\,
      dina(249) => \<const0>\,
      dina(248) => \<const0>\,
      dina(247) => \<const0>\,
      dina(246) => \<const0>\,
      dina(245) => \<const0>\,
      dina(244) => \<const0>\,
      dina(243) => \<const0>\,
      dina(242) => \<const0>\,
      dina(241) => \<const0>\,
      dina(240) => \<const0>\,
      dina(239) => \<const0>\,
      dina(238) => \<const0>\,
      dina(237) => \<const0>\,
      dina(236) => \<const0>\,
      dina(235) => \<const0>\,
      dina(234) => \<const0>\,
      dina(233) => \<const0>\,
      dina(232) => \<const0>\,
      dina(231) => \<const0>\,
      dina(230) => \<const0>\,
      dina(229) => \<const0>\,
      dina(228) => \<const0>\,
      dina(227) => \<const0>\,
      dina(226) => \<const0>\,
      dina(225) => \<const0>\,
      dina(224) => \<const0>\,
      dina(223) => \<const0>\,
      dina(222) => \<const0>\,
      dina(221) => \<const0>\,
      dina(220) => \<const0>\,
      dina(219) => \<const0>\,
      dina(218) => \<const0>\,
      dina(217) => \<const0>\,
      dina(216) => \<const0>\,
      dina(215) => \<const0>\,
      dina(214) => \<const0>\,
      dina(213) => \<const0>\,
      dina(212) => \<const0>\,
      dina(211) => \<const0>\,
      dina(210) => \<const0>\,
      dina(209) => \<const0>\,
      dina(208) => \<const0>\,
      dina(207) => \<const0>\,
      dina(206) => \<const0>\,
      dina(205) => \<const0>\,
      dina(204) => \<const0>\,
      dina(203) => \<const0>\,
      dina(202) => \<const0>\,
      dina(201) => \<const0>\,
      dina(200) => \<const0>\,
      dina(199) => \<const0>\,
      dina(198) => \<const0>\,
      dina(197) => \<const0>\,
      dina(196) => \<const0>\,
      dina(195) => \<const0>\,
      dina(194) => \<const0>\,
      dina(193) => \<const0>\,
      dina(192) => \<const0>\,
      dina(191) => \<const0>\,
      dina(190) => \<const0>\,
      dina(189) => \<const0>\,
      dina(188) => \<const0>\,
      dina(187) => \<const0>\,
      dina(186) => \<const0>\,
      dina(185) => \<const0>\,
      dina(184) => \<const0>\,
      dina(183) => \<const0>\,
      dina(182) => \<const0>\,
      dina(181) => \<const0>\,
      dina(180) => \<const0>\,
      dina(179) => \<const0>\,
      dina(178) => \<const0>\,
      dina(177) => \<const0>\,
      dina(176) => \<const0>\,
      dina(175) => \<const0>\,
      dina(174) => \<const0>\,
      dina(173) => \<const0>\,
      dina(172) => \<const0>\,
      dina(171) => \<const0>\,
      dina(170) => \<const0>\,
      dina(169) => \<const0>\,
      dina(168) => \<const0>\,
      dina(167) => \<const0>\,
      dina(166) => \<const0>\,
      dina(165) => \<const0>\,
      dina(164) => \<const0>\,
      dina(163) => \<const0>\,
      dina(162) => \<const0>\,
      dina(161) => \<const0>\,
      dina(160) => \<const0>\,
      dina(159) => \<const0>\,
      dina(158) => \<const0>\,
      dina(157) => \<const0>\,
      dina(156) => \<const0>\,
      dina(155) => \<const0>\,
      dina(154) => \<const0>\,
      dina(153) => \<const0>\,
      dina(152) => \<const0>\,
      dina(151) => \<const0>\,
      dina(150) => \<const0>\,
      dina(149) => \<const0>\,
      dina(148) => \<const0>\,
      dina(147) => \<const0>\,
      dina(146) => \<const0>\,
      dina(145) => \<const0>\,
      dina(144) => \<const0>\,
      dina(143) => \<const0>\,
      dina(142) => \<const0>\,
      dina(141) => \<const0>\,
      dina(140) => \<const0>\,
      dina(139) => \<const0>\,
      dina(138) => \<const0>\,
      dina(137) => \<const0>\,
      dina(136) => \<const0>\,
      dina(135) => \<const0>\,
      dina(134) => \<const0>\,
      dina(133) => \<const0>\,
      dina(132) => \<const0>\,
      dina(131) => \<const0>\,
      dina(130) => \<const0>\,
      dina(129) => \<const0>\,
      dina(128) => \<const0>\,
      dina(127) => \<const0>\,
      dina(126) => \<const0>\,
      dina(125) => \<const0>\,
      dina(124) => \<const0>\,
      dina(123) => \<const0>\,
      dina(122) => \<const0>\,
      dina(121) => \<const0>\,
      dina(120) => \<const0>\,
      dina(119) => \<const0>\,
      dina(118) => \<const0>\,
      dina(117) => \<const0>\,
      dina(116) => \<const0>\,
      dina(115) => \<const0>\,
      dina(114) => \<const0>\,
      dina(113) => \<const0>\,
      dina(112) => \<const0>\,
      dina(111) => \<const0>\,
      dina(110) => \<const0>\,
      dina(109) => \<const0>\,
      dina(108) => \<const0>\,
      dina(107) => \<const0>\,
      dina(106) => \<const0>\,
      dina(105) => \<const0>\,
      dina(104) => \<const0>\,
      dina(103) => \<const0>\,
      dina(102) => \<const0>\,
      dina(101) => \<const0>\,
      dina(100) => \<const0>\,
      dina(99) => \<const0>\,
      dina(98) => \<const0>\,
      dina(97) => \<const0>\,
      dina(96) => \<const0>\,
      dina(95) => \<const0>\,
      dina(94) => \<const0>\,
      dina(93) => \<const0>\,
      dina(92) => \<const0>\,
      dina(91) => \<const0>\,
      dina(90) => \<const0>\,
      dina(89) => \<const0>\,
      dina(88) => \<const0>\,
      dina(87) => \<const0>\,
      dina(86) => \<const0>\,
      dina(85) => \<const0>\,
      dina(84) => \<const0>\,
      dina(83) => \<const0>\,
      dina(82) => \<const0>\,
      dina(81) => \<const0>\,
      dina(80) => \<const0>\,
      dina(79) => \<const0>\,
      dina(78) => \<const0>\,
      dina(77) => \<const0>\,
      dina(76) => \<const0>\,
      dina(75) => \<const0>\,
      dina(74) => \<const0>\,
      dina(73) => \<const0>\,
      dina(72) => \<const0>\,
      dina(71) => \<const0>\,
      dina(70) => \<const0>\,
      dina(69) => \<const0>\,
      dina(68) => \<const0>\,
      dina(67) => \<const0>\,
      dina(66) => \<const0>\,
      dina(65) => \<const0>\,
      dina(64) => \<const0>\,
      dina(63) => \<const0>\,
      dina(62) => \<const0>\,
      dina(61) => \<const0>\,
      dina(60) => \<const0>\,
      dina(59) => \<const0>\,
      dina(58) => \<const0>\,
      dina(57) => \<const0>\,
      dina(56) => \<const0>\,
      dina(55) => \<const0>\,
      dina(54) => \<const0>\,
      dina(53) => \<const0>\,
      dina(52) => \<const0>\,
      dina(51) => \<const0>\,
      dina(50) => \<const0>\,
      dina(49) => \<const0>\,
      dina(48) => \<const0>\,
      dina(47) => \<const0>\,
      dina(46) => \<const0>\,
      dina(45) => \<const0>\,
      dina(44) => \<const0>\,
      dina(43) => \<const0>\,
      dina(42) => \<const0>\,
      dina(41) => \<const0>\,
      dina(40) => \<const0>\,
      dina(39) => \<const0>\,
      dina(38) => \<const0>\,
      dina(37) => \<const0>\,
      dina(36) => \<const0>\,
      dina(35) => \<const0>\,
      dina(34) => \<const0>\,
      dina(33) => \<const0>\,
      dina(32) => \<const0>\,
      dina(31) => \<const0>\,
      dina(30) => \<const0>\,
      dina(29) => \<const0>\,
      dina(28) => \<const0>\,
      dina(27) => \<const0>\,
      dina(26) => \<const0>\,
      dina(25) => \<const0>\,
      dina(24) => \<const0>\,
      dina(23) => \<const0>\,
      dina(22) => \<const0>\,
      dina(21) => \<const0>\,
      dina(20) => \<const0>\,
      dina(19) => \<const0>\,
      dina(18) => \<const0>\,
      dina(17) => \<const0>\,
      dina(16) => \<const0>\,
      dina(15) => \<const0>\,
      dina(14) => \<const0>\,
      dina(13) => \<const0>\,
      dina(12) => \<const0>\,
      dina(11) => \<const0>\,
      dina(10) => \<const0>\,
      dina(9) => \<const0>\,
      dina(8) => \<const0>\,
      dina(7) => \<const0>\,
      dina(6) => \<const0>\,
      dina(5) => \<const0>\,
      dina(4) => \<const0>\,
      dina(3) => \<const0>\,
      dina(2) => \<const0>\,
      dina(1) => \<const0>\,
      dina(0) => \<const0>\,
      dinb(255) => \<const0>\,
      dinb(254) => \<const0>\,
      dinb(253) => \<const0>\,
      dinb(252) => \<const0>\,
      dinb(251) => \<const0>\,
      dinb(250) => \<const0>\,
      dinb(249) => \<const0>\,
      dinb(248) => \<const0>\,
      dinb(247) => \<const0>\,
      dinb(246) => \<const0>\,
      dinb(245) => \<const0>\,
      dinb(244) => \<const0>\,
      dinb(243) => \<const0>\,
      dinb(242) => \<const0>\,
      dinb(241) => \<const0>\,
      dinb(240) => \<const0>\,
      dinb(239) => \<const0>\,
      dinb(238) => \<const0>\,
      dinb(237) => \<const0>\,
      dinb(236) => \<const0>\,
      dinb(235) => \<const0>\,
      dinb(234) => \<const0>\,
      dinb(233) => \<const0>\,
      dinb(232) => \<const0>\,
      dinb(231) => \<const0>\,
      dinb(230) => \<const0>\,
      dinb(229) => \<const0>\,
      dinb(228) => \<const0>\,
      dinb(227) => \<const0>\,
      dinb(226) => \<const0>\,
      dinb(225) => \<const0>\,
      dinb(224) => \<const0>\,
      dinb(223) => \<const0>\,
      dinb(222) => \<const0>\,
      dinb(221) => \<const0>\,
      dinb(220) => \<const0>\,
      dinb(219) => \<const0>\,
      dinb(218) => \<const0>\,
      dinb(217) => \<const0>\,
      dinb(216) => \<const0>\,
      dinb(215) => \<const0>\,
      dinb(214) => \<const0>\,
      dinb(213) => \<const0>\,
      dinb(212) => \<const0>\,
      dinb(211) => \<const0>\,
      dinb(210) => \<const0>\,
      dinb(209) => \<const0>\,
      dinb(208) => \<const0>\,
      dinb(207) => \<const0>\,
      dinb(206) => \<const0>\,
      dinb(205) => \<const0>\,
      dinb(204) => \<const0>\,
      dinb(203) => \<const0>\,
      dinb(202) => \<const0>\,
      dinb(201) => \<const0>\,
      dinb(200) => \<const0>\,
      dinb(199) => \<const0>\,
      dinb(198) => \<const0>\,
      dinb(197) => \<const0>\,
      dinb(196) => \<const0>\,
      dinb(195) => \<const0>\,
      dinb(194) => \<const0>\,
      dinb(193) => \<const0>\,
      dinb(192) => \<const0>\,
      dinb(191) => \<const0>\,
      dinb(190) => \<const0>\,
      dinb(189) => \<const0>\,
      dinb(188) => \<const0>\,
      dinb(187) => \<const0>\,
      dinb(186) => \<const0>\,
      dinb(185) => \<const0>\,
      dinb(184) => \<const0>\,
      dinb(183) => \<const0>\,
      dinb(182) => \<const0>\,
      dinb(181) => \<const0>\,
      dinb(180) => \<const0>\,
      dinb(179) => \<const0>\,
      dinb(178) => \<const0>\,
      dinb(177) => \<const0>\,
      dinb(176) => \<const0>\,
      dinb(175) => \<const0>\,
      dinb(174) => \<const0>\,
      dinb(173) => \<const0>\,
      dinb(172) => \<const0>\,
      dinb(171) => \<const0>\,
      dinb(170) => \<const0>\,
      dinb(169) => \<const0>\,
      dinb(168) => \<const0>\,
      dinb(167) => \<const0>\,
      dinb(166) => \<const0>\,
      dinb(165) => \<const0>\,
      dinb(164) => \<const0>\,
      dinb(163) => \<const0>\,
      dinb(162) => \<const0>\,
      dinb(161) => \<const0>\,
      dinb(160) => \<const0>\,
      dinb(159) => \<const0>\,
      dinb(158) => \<const0>\,
      dinb(157) => \<const0>\,
      dinb(156) => \<const0>\,
      dinb(155) => \<const0>\,
      dinb(154) => \<const0>\,
      dinb(153) => \<const0>\,
      dinb(152) => \<const0>\,
      dinb(151) => \<const0>\,
      dinb(150) => \<const0>\,
      dinb(149) => \<const0>\,
      dinb(148) => \<const0>\,
      dinb(147) => \<const0>\,
      dinb(146) => \<const0>\,
      dinb(145) => \<const0>\,
      dinb(144) => \<const0>\,
      dinb(143) => \<const0>\,
      dinb(142) => \<const0>\,
      dinb(141) => \<const0>\,
      dinb(140) => \<const0>\,
      dinb(139) => \<const0>\,
      dinb(138) => \<const0>\,
      dinb(137) => \<const0>\,
      dinb(136) => \<const0>\,
      dinb(135) => \<const0>\,
      dinb(134) => \<const0>\,
      dinb(133) => \<const0>\,
      dinb(132) => \<const0>\,
      dinb(131) => \<const0>\,
      dinb(130) => \<const0>\,
      dinb(129) => \<const0>\,
      dinb(128) => \<const0>\,
      dinb(127) => \<const0>\,
      dinb(126) => \<const0>\,
      dinb(125) => \<const0>\,
      dinb(124) => \<const0>\,
      dinb(123) => \<const0>\,
      dinb(122) => \<const0>\,
      dinb(121) => \<const0>\,
      dinb(120) => \<const0>\,
      dinb(119) => \<const0>\,
      dinb(118) => \<const0>\,
      dinb(117) => \<const0>\,
      dinb(116) => \<const0>\,
      dinb(115) => \<const0>\,
      dinb(114) => \<const0>\,
      dinb(113) => \<const0>\,
      dinb(112) => \<const0>\,
      dinb(111) => \<const0>\,
      dinb(110) => \<const0>\,
      dinb(109) => \<const0>\,
      dinb(108) => \<const0>\,
      dinb(107) => \<const0>\,
      dinb(106) => \<const0>\,
      dinb(105) => \<const0>\,
      dinb(104) => \<const0>\,
      dinb(103) => \<const0>\,
      dinb(102) => \<const0>\,
      dinb(101) => \<const0>\,
      dinb(100) => \<const0>\,
      dinb(99) => \<const0>\,
      dinb(98) => \<const0>\,
      dinb(97) => \<const0>\,
      dinb(96) => \<const0>\,
      dinb(95) => \<const0>\,
      dinb(94) => \<const0>\,
      dinb(93) => \<const0>\,
      dinb(92) => \<const0>\,
      dinb(91) => \<const0>\,
      dinb(90) => \<const0>\,
      dinb(89) => \<const0>\,
      dinb(88) => \<const0>\,
      dinb(87) => \<const0>\,
      dinb(86) => \<const0>\,
      dinb(85) => \<const0>\,
      dinb(84) => \<const0>\,
      dinb(83) => \<const0>\,
      dinb(82) => \<const0>\,
      dinb(81) => \<const0>\,
      dinb(80) => \<const0>\,
      dinb(79) => \<const0>\,
      dinb(78) => \<const0>\,
      dinb(77) => \<const0>\,
      dinb(76) => \<const0>\,
      dinb(75) => \<const0>\,
      dinb(74) => \<const0>\,
      dinb(73) => \<const0>\,
      dinb(72) => \<const0>\,
      dinb(71) => \<const0>\,
      dinb(70) => \<const0>\,
      dinb(69) => \<const0>\,
      dinb(68) => \<const0>\,
      dinb(67) => \<const0>\,
      dinb(66) => \<const0>\,
      dinb(65) => \<const0>\,
      dinb(64) => \<const0>\,
      dinb(63) => \<const0>\,
      dinb(62) => \<const0>\,
      dinb(61) => \<const0>\,
      dinb(60) => \<const0>\,
      dinb(59) => \<const0>\,
      dinb(58) => \<const0>\,
      dinb(57) => \<const0>\,
      dinb(56) => \<const0>\,
      dinb(55) => \<const0>\,
      dinb(54) => \<const0>\,
      dinb(53) => \<const0>\,
      dinb(52) => \<const0>\,
      dinb(51) => \<const0>\,
      dinb(50) => \<const0>\,
      dinb(49) => \<const0>\,
      dinb(48) => \<const0>\,
      dinb(47) => \<const0>\,
      dinb(46) => \<const0>\,
      dinb(45) => \<const0>\,
      dinb(44) => \<const0>\,
      dinb(43) => \<const0>\,
      dinb(42) => \<const0>\,
      dinb(41) => \<const0>\,
      dinb(40) => \<const0>\,
      dinb(39) => \<const0>\,
      dinb(38) => \<const0>\,
      dinb(37) => \<const0>\,
      dinb(36) => \<const0>\,
      dinb(35) => \<const0>\,
      dinb(34) => \<const0>\,
      dinb(33) => \<const0>\,
      dinb(32) => \<const0>\,
      dinb(31) => \<const0>\,
      dinb(30) => \<const0>\,
      dinb(29) => \<const0>\,
      dinb(28) => \<const0>\,
      dinb(27) => \<const0>\,
      dinb(26) => \<const0>\,
      dinb(25) => \<const0>\,
      dinb(24) => \<const0>\,
      dinb(23) => \<const0>\,
      dinb(22) => \<const0>\,
      dinb(21) => \<const0>\,
      dinb(20) => \<const0>\,
      dinb(19) => \<const0>\,
      dinb(18) => \<const0>\,
      dinb(17) => \<const0>\,
      dinb(16) => \<const0>\,
      dinb(15) => \<const0>\,
      dinb(14) => \<const0>\,
      dinb(13) => \<const0>\,
      dinb(12) => \<const0>\,
      dinb(11) => \<const0>\,
      dinb(10) => \<const0>\,
      dinb(9) => \<const0>\,
      dinb(8) => \<const0>\,
      dinb(7) => \<const0>\,
      dinb(6) => \<const0>\,
      dinb(5) => \<const0>\,
      dinb(4) => \<const0>\,
      dinb(3) => \<const0>\,
      dinb(2) => \<const0>\,
      dinb(1) => \<const0>\,
      dinb(0) => \<const0>\,
      douta(255 downto 0) => NLW_U0_douta_UNCONNECTED(255 downto 0),
      doutb(255 downto 0) => NLW_U0_doutb_UNCONNECTED(255 downto 0),
      ena => \<const0>\,
      enb => \<const0>\,
      injectdbiterr => \<const0>\,
      injectsbiterr => \<const0>\,
      rdaddrecc(7 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(7 downto 0),
      regcea => \<const0>\,
      regceb => \<const0>\,
      rsta => \<const0>\,
      rstb => \<const0>\,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => \<const0>\,
      s_axi_injectsbiterr => \<const0>\,
      s_axi_rdaddrecc(7 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(7 downto 0),
      s_axi_rdata(255 downto 0) => s_axi_rdata(255 downto 0),
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(255 downto 0) => s_axi_wdata(255 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(31 downto 0) => s_axi_wstrb(31 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      wea(31) => \<const0>\,
      wea(30) => \<const0>\,
      wea(29) => \<const0>\,
      wea(28) => \<const0>\,
      wea(27) => \<const0>\,
      wea(26) => \<const0>\,
      wea(25) => \<const0>\,
      wea(24) => \<const0>\,
      wea(23) => \<const0>\,
      wea(22) => \<const0>\,
      wea(21) => \<const0>\,
      wea(20) => \<const0>\,
      wea(19) => \<const0>\,
      wea(18) => \<const0>\,
      wea(17) => \<const0>\,
      wea(16) => \<const0>\,
      wea(15) => \<const0>\,
      wea(14) => \<const0>\,
      wea(13) => \<const0>\,
      wea(12) => \<const0>\,
      wea(11) => \<const0>\,
      wea(10) => \<const0>\,
      wea(9) => \<const0>\,
      wea(8) => \<const0>\,
      wea(7) => \<const0>\,
      wea(6) => \<const0>\,
      wea(5) => \<const0>\,
      wea(4) => \<const0>\,
      wea(3) => \<const0>\,
      wea(2) => \<const0>\,
      wea(1) => \<const0>\,
      wea(0) => \<const0>\,
      web(31) => \<const0>\,
      web(30) => \<const0>\,
      web(29) => \<const0>\,
      web(28) => \<const0>\,
      web(27) => \<const0>\,
      web(26) => \<const0>\,
      web(25) => \<const0>\,
      web(24) => \<const0>\,
      web(23) => \<const0>\,
      web(22) => \<const0>\,
      web(21) => \<const0>\,
      web(20) => \<const0>\,
      web(19) => \<const0>\,
      web(18) => \<const0>\,
      web(17) => \<const0>\,
      web(16) => \<const0>\,
      web(15) => \<const0>\,
      web(14) => \<const0>\,
      web(13) => \<const0>\,
      web(12) => \<const0>\,
      web(11) => \<const0>\,
      web(10) => \<const0>\,
      web(9) => \<const0>\,
      web(8) => \<const0>\,
      web(7) => \<const0>\,
      web(6) => \<const0>\,
      web(5) => \<const0>\,
      web(4) => \<const0>\,
      web(3) => \<const0>\,
      web(2) => \<const0>\,
      web(1) => \<const0>\,
      web(0) => \<const0>\
    );
end STRUCTURE;
