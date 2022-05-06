// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Wed Mar 18 12:04:45 2020
// Host        : KURO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/OneDrive/Documents/Vivado/DA/DA.srcs/sources_1/ip/SR_16bit/SR_16bit_sim_netlist.v
// Design      : SR_16bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SR_16bit,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module SR_16bit
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
  (* c_depth = "16" *) 
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
  SR_16bit_c_shift_ram_v12_0_14 U0
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
(* C_DEPTH = "16" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module SR_16bit_c_shift_ram_v12_0_14
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
  (* c_depth = "16" *) 
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
  SR_16bit_c_shift_ram_v12_0_14_viv i_synth
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
JWag5raPhNAeiqY5EAdqm8jU2tU9e3BIcQvHwTpquCU35Gg7HtgoO0OmbYr7uE7U+gHPSGLRyslX
KaDA03iBVynUAvwdcnR/t4x2u6rslZLMDAPnyvus/a+PCgUo2tyR+ThF283dTPTN3SgOr/kZ/fd0
Q7CJn5+xwRabtlvqp9H0T0CSGmk66sRxwg8Q8Qcp4yrPVtPpQfUcBTiqindwL3VwxUiiNWTLz3TT
Cgdt2a791GBrVMViVF2OxyVW19A13kRy+WvMJWe7MEZCzvz8m+uW0iMbrDqKO0scZ5TCB66Jamzs
pSnLbrnN9wZY/czr6lI+PJBtNZV1uPZpF6FYfQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DQ/JN9UKBgmLV9ru+2yTFpNDBTuBFJSnnlh2fACZCjB3XpiUKlkjr5Kxcfg/oytmJMpJn+kRD3Sj
ifSmb7oXQ8wEpcAq6wjkGZKHvIcoWTgjVZgbutYNOXT3YWhLIZPfKk0XOkzyYrU6Qdp65gzH3Oet
b2qjFiH7itMoF5pMz0jCVL9MGM6yDWhkXlDcnKgqRg8L0t/1kiAk7zvo3a5HRo719aS//e9/Xra1
+fUEajJNJ2ziQ72DRpc3cu7vMyu//0WFGHoVSiWWidmLgoUK50S2QmPWCoz5yVJTajjjseuOJ3Cn
8rSBv8O4beygNAt4s5UnexcJ5ycG8HL7k5EGjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5440)
`pragma protect data_block
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
TJ94B80AR498qHsFw0bEQL9IuFf11emLAQ==
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
