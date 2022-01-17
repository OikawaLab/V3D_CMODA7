// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jan 17 21:32:39 2022
// Host        : Parasha running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/proj_VolumeDisplay/2021/V3D_CMODA7/V3D_CMODA7.srcs/sources_1/ip/CLKGEN/CLKGEN_stub.v
// Design      : CLKGEN
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module CLKGEN(OCLK100, OCLK50, OCLK10, OLOCKED, ICLKREF)
/* synthesis syn_black_box black_box_pad_pin="OCLK100,OCLK50,OCLK10,OLOCKED,ICLKREF" */;
  output OCLK100;
  output OCLK50;
  output OCLK10;
  output OLOCKED;
  input ICLKREF;
endmodule
