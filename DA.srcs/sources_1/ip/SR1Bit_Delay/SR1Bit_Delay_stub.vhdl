-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Thu Sep 10 17:03:20 2020
-- Host        : KURO-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/OneDrive/Documents/Vivado/SIGNED/DA/DA.srcs/sources_1/ip/SR1Bit_Delay/SR1Bit_Delay_stub.vhdl
-- Design      : SR1Bit_Delay
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SR1Bit_Delay is
  Port ( 
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end SR1Bit_Delay;

architecture stub of SR1Bit_Delay is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "D[0:0],CLK,SCLR,Q[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_shift_ram_v12_0_14,Vivado 2019.2.1";
begin
end;
