// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
// Date        : Wed Oct  7 14:44:23 2020
// Host        : LAPTOP-E8U8G5KN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/naufa/OneDrive/Documents/Vivado/SIGNED/DA/DA.srcs/sources_1/ip/SR_1bit/SR_1bit_stub.v
// Design      : SR_1bit
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_shift_ram_v12_0_14,Vivado 2019.2.1" *)
module SR_1bit(D, CLK, SCLR, Q)
/* synthesis syn_black_box black_box_pad_pin="D[0:0],CLK,SCLR,Q[0:0]" */;
  input [0:0]D;
  input CLK;
  input SCLR;
  output [0:0]Q;
endmodule
