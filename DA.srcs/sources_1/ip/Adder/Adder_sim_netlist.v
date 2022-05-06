// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Wed Sep  2 18:48:50 2020
// Host        : KURO-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/OneDrive/Documents/Vivado/DA/DA.srcs/sources_1/ip/Adder/Adder_sim_netlist.v
// Design      : Adder
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Adder,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module Adder
   (A,
    B,
    C_IN,
    C_OUT,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [0:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [0:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_in_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_in_intf, LAYERED_METADATA undef" *) input C_IN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_out_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_out_intf, LAYERED_METADATA undef" *) output C_OUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [0:0]S;

  wire [0:0]A;
  wire [0:0]B;
  wire C_IN;
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
  (* C_HAS_C_IN = "1" *) 
  (* C_HAS_C_OUT = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "1" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "1" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Adder_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(1'b0),
        .C_IN(C_IN),
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
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "1" *) 
(* C_HAS_C_OUT = "1" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "1" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module Adder_c_addsub_v12_0_14
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
  wire C_IN;
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
  (* C_HAS_C_IN = "1" *) 
  (* C_HAS_C_OUT = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "1" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "1" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Adder_c_addsub_v12_0_14_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(1'b0),
        .C_IN(C_IN),
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
PdO7DsrAZdtpuDvOSVIDlRhqwF0iMi2fkXTs7SSMoS1DIzB9sb00o4lSlRBGkTk+ATcnj+D83AWx
tMk+yyMt2RUYVsxwzIGQluJfkKNJ9tF3HLRDpSqEOXSrEcAE7WKwl6YuIt98G2QjhPTpFBOH9Znz
ZaFwmcJzRQhIFTcs9EVzooucAA5KYSOKqLEIZJilcCQL272wK2u2z60EPtg3eH+hJy0ccQgNSeLo
mWp1t3vYDoKZd92XvIdIQlPK8sBWkD1zVMOQWEgxcqWUFDKDQULDBSl4SZ6qlPldY/D4NXm4k6tA
d9VorQZhkAR3EmKBoVdJP169bvoXuiZ1jEykHA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DtLlkcHg9wk8dpSDrrp/QTJ4aoFMBI6kDK7weU0AAiTTrCxjDJrp01eBb4o1mLE/7UR7GXUXdybB
6sgXm+4vgHZVSysxXFr7wfzVz0zzBkQvN1lj6HRZ/rkYlKsj8V7gHIiVSqC7XEOOTqYP+cOxuWb/
wwbB9BzkxoWPmcW//S8OTDv/XIaRHgkOP8aIOBwgWLriGV0BNJzP+nX3lRc7XbSu1wyfU8mZnvrn
gGtLsjHMKhqQBdKCzaiwyS8yiSJ+F/EqcaQdERCoN19zPFnWRY7WZPIZ9Gcw1WMEdEgtE+ot8Iby
w6qpV4tLF0dH1TUf+tMq5ibbEWU+6aEX2YGR4A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3504)
`pragma protect data_block
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
WGFVISxymFIpf3BrziURY8/EKm/cGaDsWyBs
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
