-------------------------------------------------------------------------------
-- axi_datamover_dre_mux4_1_x_n.vhd
-------------------------------------------------------------------------------
--
-- *************************************************************************
--                                                                      
--  (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
--
--  This file contains confidential and proprietary information
--  of Xilinx, Inc. and is protected under U.S. and
--  international copyright and other intellectual property
--  laws.
--
--  DISCLAIMER
--  This disclaimer is not a license and does not grant any
--  rights to the materials distributed herewith. Except as
--  otherwise provided in a valid license issued to you by
--  Xilinx, and to the maximum extent permitted by applicable
--  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
--  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
--  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
--  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
--  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
--  (2) Xilinx shall not be liable (whether in contract or tort,
--  including negligence, or under any other theory of
--  liability) for any loss or damage of any kind or nature
--  related to, arising under or in connection with these
--  materials, including for any direct, or any indirect,
--  special, incidental, or consequential loss or damage
--  (including loss of data, profits, goodwill, or any type of
--  loss or damage suffered as a result of any action brought
--  by a third party) even if such damage or loss was
--  reasonably foreseeable or Xilinx had been advised of the
--  possibility of the same.
--
--  CRITICAL APPLICATIONS
--  Xilinx products are not designed or intended to be fail-
--  safe, or for use in any application requiring fail-safe
--  performance, such as life-support or safety devices or
--  systems, Class III medical devices, nuclear facilities,
--  applications related to the deployment of airbags, or any
--  other applications that could lead to death, personal
--  injury, or severe property or environmental damage
--  (individually and collectively, "Critical
--  Applications"). Customer assumes the sole risk and
--  liability of any use of Xilinx products in Critical
--  Applications, subject only to applicable laws and
--  regulations governing limitations on product liability.
--
--  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
--  PART OF THIS FILE AT ALL TIMES. 
--
-- *************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:        axi_datamover_dre_mux4_1_x_n.vhd
--
-- Description:     
--                  
--  This VHDL file provides a 4 to 1 by N bits wide mux for the AXI Data Realignment 
--  Engine (DRE).                  
--                  
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              axi_datamover_dre_mux4_1_x_n.vhd
--
-------------------------------------------------------------------------------
-- Revision History:
--
--
-- Author:          DET
--
-- History:
--   DET   04/19/2011       Initial Version for EDK 13.3
--  
--
------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.std_logic_arith.all;

         
         
-------------------------------------------------------------------------------
-- Start 4 to 1 xN Mux
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------  
Entity axi_datamover_dre_mux4_1_x_n is
   generic (
      
      C_WIDTH : Integer := 8
        -- Sets the bit width of the 4x Mux slice
      
      ); 
   port ( 
       Sel    : In  std_logic_vector(1 downto 0);
         -- Mux select control
       
       I0     : In  std_logic_vector(C_WIDTH-1 downto 0);
         -- Select 0 input
       
       I1     : In  std_logic_vector(C_WIDTH-1 downto 0);
         -- Select 1 input
       
       I2     : In  std_logic_vector(C_WIDTH-1 downto 0);
         -- Select 2 input
       
       I3     : In  std_logic_vector(C_WIDTH-1 downto 0);
         -- Select 3 input
       
       Y      : Out std_logic_vector(C_WIDTH-1 downto 0)
         -- Mux output value
       
      );
end entity axi_datamover_dre_mux4_1_x_n; --  

Architecture implementation of axi_datamover_dre_mux4_1_x_n is

begin
    
   -------------------------------------------------------------
   -- Combinational Process
   --
   -- Label: SELECT4_1
   --
   -- Process Description:
   --   This process implements an 4 to 1 mux.
   --
   -------------------------------------------------------------
   SELECT4_1 : process (Sel, I0, I1, I2, I3)
      begin
   
         case Sel is

           when "00" =>
               Y <= I0;
               
           when "01" =>
               Y <= I1;
               
           when "10" =>
               Y <= I2;
               
           when "11" =>
               Y <= I3;
               
           when others =>
               Y <= I0;
               
         end case;
         
      end process SELECT4_1; 

end implementation; -- axi_datamover_dre_mux4_1_x_n
 
 
-------------------------------------------------------------------------------
-- End 4 to 1 xN Mux
-------------------------------------------------------------------------------
      



