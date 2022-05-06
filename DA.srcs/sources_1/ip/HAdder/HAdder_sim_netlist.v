// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Thu Sep 10 18:06:27 2020
// Host        : KURO-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/OneDrive/Documents/Vivado/SIGNED/DA/DA.srcs/sources_1/ip/HAdder/HAdder_sim_netlist.v
// Design      : HAdder
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HAdder,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module HAdder
   (A,
    B,
    C_OUT,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [0:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [0:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_out_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_out_intf, LAYERED_METADATA undef" *) output C_OUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [0:0]S;

  wire [0:0]A;
  wire [0:0]B;
  wire C_OUT;
  wire [0:0]S;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "1" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "0" *) 
  (* C_B_WIDTH = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "1" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  HAdder_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(C_OUT),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "1" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "0" *) 
(* C_B_WIDTH = "1" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "1" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module HAdder_c_addsub_v12_0_14
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [0:0]A;
  input [0:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [0:0]S;

  wire [0:0]A;
  wire [0:0]B;
  wire C_OUT;
  wire [0:0]S;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "1" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "0" *) 
  (* C_B_WIDTH = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "1" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  HAdder_c_addsub_v12_0_14_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(C_OUT),
        .S(S),
        .SCLR(1'b0),
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
ZeWaI1V646o3lfZMjPhfRiqH8yrcBHqB4Jp7GgWhFHtbq2FZEb45lF2y+4Z7Bo3p/Fon7Fuwxi+G
pfvZm/J78Q==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
U278GGzuHpvR71v2lk6OfCq3UHPLemHH7G5nzQnoPxdKrkBUaO2E2nmWqUhjw/5RQf4sL7AgK0YU
DTyR1Zy31V08/arF1j8tyQmnhukfOHqr8ZKmmlkjtKowN6K59DPDDYpttGbqfNTx6uO7nzk6l1lS
Rsl6q24TQbBd1uaLrws=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pi7LeG6/F+tmgR2mSEDwUOPg9J3vRSMXNe0HxNeRq8mOvIHmaT6ypbEm7FgHQuSGN5PoQE3fMyP5
X1YruG3K+v9yk+bGce8/ZGbvghS7lU1h4isgDJ3niH+ALesIsr+TgonGh0Ol+XSo12YtX94alzmU
tkyr2R4bVkkpBHvg01MOuYc7cUQmHMBcy0p73aiGohZR42Sd4JJE4Dpnes8bCg9WMANMmBRrKs71
iPhWfZ8+p+ZM8j87IIQBV3IkpuHOArxJWcVZ6gR2w03ClBv6IOrJWD/WF8NZt0cfVRUoDc2P1DKB
ipFw8lJbMCDmw0VV517a0HsUZBxeyn0muuNqAA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bbIwBeNnHf2J5T3ZQluXrXgPlj6m4gdwenpJz3huRnilAqUbGa1gu2UEyWxzy2E3PV89zzGxuQ4X
5cvz29rO4f7FEbO07WMfFUcpIbFvYSPlSxQYuI7XvOEQ9QYMYsv5GaPrTyG09kYnpcmfHVScrGq4
pn30wsMt3ZIgV3s27Use9okvsfsLsQIc5o/DZfpI1ylOLXmgQEMl8FjUBSUNK0n4n7Ejtg4spgqf
a2jc9hq8hDzC7ukBc+mK0rNoXxALIE8Vm25bBWNVfkuOFKYtQFBlk40sbLvePUn/8g5ycOo4+tvj
nxb/oaG7tMKbswgJQIf9YUQoBcX3nQbsQPYmNg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h2TYH1lUjXbalHf8TK5hkjlQ30ZvEXKbnsTIUDUriXGbkyZM7BifousSvZesivmr3O0Li1KtytUe
X8B6e5QJLh288DLxi2Feje/jBR9xUdfb7uRl0Zqc/mkhMhc6PlTYP8kRpJlFPVYiyLOb5/mR9bKC
hI8t1lTdQmI8JQS+ncVrVb2xNCZ/nSnUK+AOD+nS8AFXCCJ8fs7X4HdDlmZnjcvSJNzc2pceLJ7x
8ADHhzA7/Csf6km2ypCu6k1ULmaRXaMQJXIpn1haQW+TNmCz/vj0i4/KoiStAn8OMidEPBEyG4CA
KCJ7cbm42dK7pSPjFEJ2zxPizwmR86ozsi1aAQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
QlIHhNRjpFN4gXrZLn4iWrP6DODrKGhkK8sIm8VdwlCCNZhI6sNcceCfypEpeR1jiHjUiA5WpTiI
j4iJiEYtjpCbETgn9WkO3nceO2LgCE3RyuOgDABhkrAvDiNFeNUzgKquAEgEOo19rmp5ea/jLvYf
vE2VK8ql8jfwPNBfh90=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GF6UgWS1K/8tgAYNZd7orM2VWyBHqwif3OcunBF4fsKaVq8/BzcJgW0FVVikxOFOEP9MXjduR2kU
ECsJ8vPQoVz118Q5BfR27i/hgHlUKqw8/t2t9CZLbTAokB95982h3WFvO4mhHfqTwne/mCGbOVCF
VULMF7F3+LpRfYHMeplTyu6wSV+Tocz0+ohE9L2wTxo28h77pdziM4ECJnzlK0fdV02EbPj5Y3Cq
rAJHz3xHysVTuB5OFgs74lCJ10XKGk9d4jXBCMT9BJu03xDIgdbml/2DDg33uFpPPEWvO4ox+xim
HSGSORi0muLp9RWOGFqi6FFl6nW7A2EPETDA+g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KCmYBToXpkjbWHaI5FWDbAXmGo+FM7e0dkhJ+0ARnR9H6w2VEVRm4XH/krsJ7Z0ReGvxHW+eYCz4
fV+TxB5V0xo/1ByEcAJCqDietScNUOXBdb1CvV2rS/kgV3wF7gh806t8Dc1GLpw0uCax4AvMI/Ai
KbGWKs0b6XrAU9/d7z/MahC8ZFEDS3fr+P87oy1Z9dRlKEb1TzaGE1XcxtVoRbZ3e/4v9lnz82TY
r/f3iSMoRNf7X1S1UJWJJjOoMWxojPIesZ3Y6lYMgw5j+wBIfS4M19hlYakoPRXHEiJZVvyra2or
G/OIjuk6GNexumwfk+2MOEZ5ZooKFMxgjRxUbw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TexMb59mIYkyux1/4woz4ryJrrWsD9roc6ocx9d6nVkwyMhlZHFHquLOdVTrS57x3dXKu+2JBp5D
lHg8gx5iF+51gNffEPC/Rd0hF7j6go3/Z1q79kSmLBtOHsSVSFHsaYTLn97bBL+YIqS/TkJQWRSb
//E9+W//2V7pIZbzlj4BbU8MnNk59jHr+nyQHATlri18dMdA/fWSZNjkrrdfNYOmP7xDICnBrQqn
jUkLd1f5KYQoT7hAWIg0CXJgyj2LIHvQ3RUcu6NgwBAD5V2TaLZ3JwE7ZFxNHVrCI8Oush1sTebU
Xuap8Sxk2EObdPnvO3lPs2tg7/E3lzaj+xA9Ow==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
x0tiwm9D7QIuwoJ4rO7Gnq48GC2H3JSlwuiNfnRmwQVqy5jfU0OnE7EGdZTbhQ0gT6zBQp7LUKLk
n93TQDOF5BGIxRuyOQduZfYP2VWld4X3e0NcncQBuEyhkWIT2n75PrlpeuJZ+kFQd8v2bWYlWG+R
PoPpM0Bs5mn5fJKEdVbD2NBW8X9MvpN2VRx7OT0ZYt8jZ+TuoRpzPMK44d/Fp4g1g8p4R58Fa6sL
1vXfgIYn27rsFMV4M++wN18vUZ15bbqKnpKOr59lO0ReWAfgG4hlampl4YcGSDN3L+wIhQ9Pvb5V
sM4pV+abJu36ie6OVNpWOQtcMJPKkBCB73p5sA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3328)
`pragma protect data_block
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
fRbkOO0L6tV6ZdKVNJ3kJjH2qjwHsQ==
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
