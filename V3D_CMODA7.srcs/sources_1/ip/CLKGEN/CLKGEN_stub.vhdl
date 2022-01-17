-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Mon Jan 17 21:32:39 2022
-- Host        : Parasha running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/proj_VolumeDisplay/2021/V3D_CMODA7/V3D_CMODA7.srcs/sources_1/ip/CLKGEN/CLKGEN_stub.vhdl
-- Design      : CLKGEN
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CLKGEN is
  Port ( 
    OCLK100 : out STD_LOGIC;
    OCLK50 : out STD_LOGIC;
    OCLK10 : out STD_LOGIC;
    OLOCKED : out STD_LOGIC;
    ICLKREF : in STD_LOGIC
  );

end CLKGEN;

architecture stub of CLKGEN is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "OCLK100,OCLK50,OCLK10,OLOCKED,ICLKREF";
begin
end;
