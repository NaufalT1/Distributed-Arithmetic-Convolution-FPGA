// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Thu Sep 10 17:03:20 2020
// Host        : KURO-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/OneDrive/Documents/Vivado/SIGNED/DA/DA.srcs/sources_1/ip/SR1Bit_Delay/SR1Bit_Delay_stub.v
// Design      : SR1Bit_Delay
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_shift_ram_v12_0_14,Vivado 2019.2.1" *)
module SR1Bit_Delay(D, CLK, SCLR, Q)
/* synthesis syn_black_box black_box_pad_pin="D[0:0],CLK,SCLR,Q[0:0]" */;
  input [0:0]D;
  input CLK;
  input SCLR;
  output [0:0]Q;
endmodule
