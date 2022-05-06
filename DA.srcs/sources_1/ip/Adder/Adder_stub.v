// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Wed Sep  2 18:48:50 2020
// Host        : KURO-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/OneDrive/Documents/Vivado/DA/DA.srcs/sources_1/ip/Adder/Adder_stub.v
// Design      : Adder
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2.1" *)
module Adder(A, B, C_IN, C_OUT, S)
/* synthesis syn_black_box black_box_pad_pin="A[0:0],B[0:0],C_IN,C_OUT,S[0:0]" */;
  input [0:0]A;
  input [0:0]B;
  input C_IN;
  output C_OUT;
  output [0:0]S;
endmodule
