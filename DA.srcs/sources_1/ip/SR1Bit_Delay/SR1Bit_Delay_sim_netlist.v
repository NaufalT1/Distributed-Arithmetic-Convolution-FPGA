// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Thu Sep 10 17:03:20 2020
// Host        : KURO-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/OneDrive/Documents/Vivado/SIGNED/DA/DA.srcs/sources_1/ip/SR1Bit_Delay/SR1Bit_Delay_sim_netlist.v
// Design      : SR1Bit_Delay
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SR1Bit_Delay,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module SR1Bit_Delay
   (D,
    CLK,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "2" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  SR1Bit_Delay_c_shift_ram_v12_0_14 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "2" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module SR1Bit_Delay_c_shift_ram_v12_0_14
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "2" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  SR1Bit_Delay_c_shift_ram_v12_0_14_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
TzqTWzVLLXocOg3up6rNft4bohjJcXyx5Czce07G9z8MNQ+t4/kAN+nY1jVADeFtec4dkdZh45H7
dpcDQQdQTw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z3AIpLDjUuaEQmH82FVi2zLywElh7iOAf1iLbsH/YfB5BOyx+3wfmVCJ6Zjar0dfRtQcv0eQfDcu
bSYBTssSuSkuCYCY0rBpM+Xkdyc7/Xpr3LQA/00f0DEGwnxc4k0YsovbPLFcIRhvP6FJgb/UGXjN
GeLE3Nuj/DFsjPWAUWA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
seLkBZQbnIZh8mBM0T8s4G+scEHnQv3scD/jzq5LdHSnBvJ7KWwKEYrQa5ly3MWqO8Vb8VGHVung
MRPCKAbHQm2xgx/Uvhde0GLcfxIVTgX3kJm/0+Bv2q76aFQujYtAgg7uFAAwhyAkkfnHJ/A/aBIW
xh9lJdgtdUmQAT6Z6KA8XqCpsm/DWgKArIz634L2J0CrcyCo46iU6hGrAn45XPYZZBox9ahEUs6r
5mKy0gW0d0uleyI0ZrTMugAxjdGKCjei/AExoShQrKErb8/wnmsGgiTVh28z4pEFqLq+SZuHd2sv
jeLtUGm9TJ9bxz5LprsO5WCPvzdNC3OYYbnpgw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DiPRLFQlcSB/5cG25z0ajZZB3DoqPLpKoD0KRMKxlyW4WsaFtkBrkokE9RoW2RgsVy/ZaoiS/E7R
jJu4KreD9pe8InxBB7i9EvvgY0v4ddCszu6rnbqeYPCZz6IbdT+ymjZWCr36E0XT66t5NuRpERbP
df/Q7vjXkz48MiNmr0HCKN93gTwJDzxzOFLPlKJlxV/KmdZ91J7J9T7g5u/aIqPzQE6e2+gEAtN/
Iur9tKgBhdlZ8rNYJwBZTKs/cn2fp3TNG6eYzzw/goWVr55yC48vjFpXrKH0QX5HIlk1VIS+P5Jo
Ovttt6MLNHbEBD8FH0DnWdF9nKLTNQtZ/AE6Ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VQJvMecUTSyfwFPpZYbnyS8ZLP9HSCVo0KZIrrWWgmtNSfxCEVxc1wJA9rQctCqMtTSrapXwP1TL
imlvt4vq+5WfFdAzpSS+XRfcRciD1B/o96Brzbf2d6h2S8/Q2ZQbUolX8p/4kLawMrL84Mtncm9C
4bIrtZmPOMxCa4HtYP/go4c7SJpV2gTOGY7zY4SXPIA2VXGMDF47OruyLpiXgEWfJXR64iZO2f9g
R+v1qeda455LtzSv7VaEnbTNJLcTsZksj/jzZrjJKXFFZ5oBftTJpoA037hbCJPEti6nXeqO8kf4
dJPK/ghG+jCFoeUk8LYz/L8xKEoOzOrCjmYsCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
C/BT22ARqkup8t9IdChI5dvaOZ9kZM4efppnEoskwNGXu/0HBwEKIB4bPBAXgoBFlTJQgAC4eXI0
MnSH47MSH4Btm4q7hJFjTef3V1YbSOJma1DYl9f4GGud6Mw3AiPAacUsu2LRpCvvaIXx3o4nIOFH
p90yAimODI6d7n3gdSo=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZV/QKk3FV4ZMZVfsG/Zb/2t/+6f8be2xqgHelh3OLiRzE963in81thjQvazEc5zc1n4owsRx2ORb
K9UNCgfm8uzAjqZI0Know2dOFLKV4yifU15QXwPabJad8KkfNxch8e42iWkDU1gM3pX9TZU2M/B7
W5EjY212YGfIOUSbz4t3AEv+s6mIe8+Pj3rEp0TJi0i3qPsoTlcfOYWGrMdedLLbgGCk9g+X9sCF
ipC6cYcKQUt6O5BHVpjngy2zzVQvWDTAIWRjQURcKGK7/mfaw+87vhuQxxeTq0Uduc6NZOFXy7hf
zCHbqhG86f7kX+A+VUQCO7ZEXtiIDlYbJy+ZWg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JnlR9DnVIpJP1LXCzYrM6mdoqOotbn9RJxUMSn1U1dN+qeyzM1JLPN3WvXAzafxhzQfg/b2OXS0b
VljW/hZBWuyGad8AOSTqi68oMMaZmPtGJn8WbGsVdpCeHHDkeXU4+qtlc6w9LYzICJuZrYZrAGAw
bT0PjT0r0lgHw0FNdlXxlfOCYwl31LKHexS9ZtJjMYI4wO09BS9OLEjzaWQT92IcBA6IhcAKk4lv
+KJ9Hditqjb0QuKzSPTcREM0V4QSTXJP0lW81M7G/XEVwTx82QoTrk8AhHQhJFLPRmIrfoF7DTc9
sOhtub+eZJMrCoTjpWVjYj01gaq5H4jUlDblXw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Gk3NB3QwANHqCpNdBGoRJ41fMqK0QrCjl4zMsHibOCFm8tzucUvOUKmio+XLuAFviSbwPblxPeI0
9KCByH8ZlJ4cflBdWju16F50huPOI4rfHe+CkbMmoV2SPZkTKCFuNYCj8NV5vxWdmDmn3Dw7US5C
uCcx68/e4dSHBM6Zf9qYpbaaKWN34LrliMX9+kslVLAnXelYkxU4N6X/to7uHB4b/wAnIhezhThe
dcLjQsgMoGQSrM9keQaP7+cCbrINXVLLcG/4noIdy13ImB42s2GFHK0jXF96OndEM+/w7t8uYCos
lANtnMMWe78YCptzN3jK+19kaw9PjgF6VroevA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pksKhRHENGg/IWohoJ2pMPp730wUJS4zzJQnChdCJT0wuocuGqr1QsiKX/XLrZzVQK65U/1LfRjm
A2r+MXV5RqDQNfLiwCKbSdWLjDj5tbAlNdwKchNWNjjb+6RN3RRooUxhFfGLzHch5CQi+t0afpxT
uplKiA11+XAQ6D9rzBN/LHcOHrLDAfyAh1IiPz01bStw8HdasgTPOlDTlrETwUzPRx7yAQCl+n+0
IlBbcV+ZnO93DaZCSJz0VGHYuvqmbAQZx4Sp3DMZ4qXfmc0cBP5yfFJNik55U5e12NB4MC5Zu08m
jRRxne4GoeQ0vp4rMQQjpURqEO0xhO1h0vO3cQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4768)
`pragma protect data_block
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
`pragma protect end_protected
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
