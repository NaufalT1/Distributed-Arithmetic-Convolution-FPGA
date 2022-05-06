// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
// Date        : Wed Oct  7 14:44:21 2020
// Host        : LAPTOP-E8U8G5KN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SR_1bit_sim_netlist.v
// Design      : SR_1bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SR_1bit,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_14 U0
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
(* C_DEPTH = "1" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_14
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
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_14_viv i_synth
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
LAs66+x2DMAqKxoTZ/TQMwBorVOc+W+tRkcjQO3aLHWzsZI3SVpN63+VVcDrAjWs2tHfg8DMD6C2
qY/9b68LcZThfElLyWe7Sosyl8hta4rmLJ6yLXt9a/Zx9xrE+zhGwT3Th08/DPxLeytjfXmsak0/
FvMGVvkWO27XWBguuMI6sByTB4bg9Tv5YYWc224FhYq+uwo89I2WcGPkIff42r0nGGR7pay3u/oE
5wfyoFWAXZUNr+4ojXSder4z1f4ZqwqYQZf5+Q1EUfMdknUpc0ffqIHy5t1XJkN1rJOJ27XW7xed
eGLZAJsa4iXW3Ma0Ub6+9/SEPzuKzwQgJdD1bQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bGrn/Aajb4/K4xeK7xIWlLlXkRUISamS605uo8oJqICpOvKAkKDkgaydW9JoVh6OiWo1sfsCBBkx
rb9FVxbs/u8VGivnM0oCxXkifqPsmcPf0KTkbCTHc4MzNhmEFBvtsfCQi99tKeTTWxKpcx43JuF+
f1wef1DGUnlrvIb9aWsOT0l3P3NVgzJbKfSaPwk3w4MYGEaqm8Skuh8fjF6r8SKbUi9EVM2cKr4K
fP9wipWEnqNPson2FVHETZoQBEyvsc/V2yFr+S19fINDLZvb6fBL7QxeF5jkjJtPtpTkV3xh0lGA
32BC6P2512ax6U3IyafcikaPxGDERXm1LR6Kwg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4576)
`pragma protect data_block
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
v4ajgQn0ME5DSygZwo7QgA==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
