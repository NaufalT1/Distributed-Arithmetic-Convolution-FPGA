// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
// Date        : Thu Oct 22 11:52:45 2020
// Host        : KURO-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/OneDrive/Documents/Vivado/SIGNED/DA/DA.srcs/sources_1/ip/adder_DA/adder_DA_sim_netlist.v
// Design      : adder_DA
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_DA,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2020.1.1" *) 
(* NotValidForBitStream *)
module adder_DA
   (A,
    B,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [11:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [11:0]S;

  wire [7:0]A;
  wire [11:0]B;
  wire [11:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "000000000000" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "12" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_DA_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "8" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "000000000000" *) 
(* C_B_WIDTH = "12" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "12" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module adder_DA_c_addsub_v12_0_14
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
  input [7:0]A;
  input [11:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [11:0]S;

  wire \<const0> ;
  wire [7:0]A;
  wire [11:0]B;
  wire [11:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "000000000000" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "12" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_DA_c_addsub_v12_0_14_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.1.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
K7tEE7FVCN68q13VyANjoGlntg8JqMyTr1ni8kvOUuR1SVK8XP1CkVSEzWpsbA4hCOmk6cNJ2FVF
jCSse7kBuA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
QYMtjDs3cGd6CXD7fMnhhIOHaa4GS8lxXlVMdpWxNMvCob/pNzUedolmBuKPFVZVyZUalz9+PfCP
i57Lr7ze8y3312SJEU0lAp4LaPi0QB+mbw4ooa6j3kPXtnPTce2AnJPl/rTo08tNitYrb6SfnaqZ
bE0HXJbrv3Uq2JXYc58=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AH2NLzfl5AbvJug+Z1MFfV0qyttfSaYCRvEW3GtkljpzMOOo8v3HYp1zw0QZhcotEdtjZ/k7PDTz
t0URnF421czKEjT/3qdzkxwtV3YEAMJTK1JNIR0WditisJNtylCzIsmytFhnfEg6uPSqpeJW8225
sPLHSzPp8FtwpwU2Pe03YQL9ESq5VV5un2H/arZgSwAslUe3n8UI4d4VOJuFCMIlVbtEB+/UbxUC
1bXTcCsidoGjljaNTblFVnFQ2qzvxvpeSJgCvPrM780ECmWGFuMgRBlo0xwyuzWn3tDT1x7k6ic6
prRVXvHfU/AjxZ8pVIaTHrKhDPmiO3+1gbNa0g==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OpspLsf8eb92xZ93S/Un7rt4P5W8Z9R+CqssR3j4zdUWDr4xM8A8TzsKnaseqJB+Sc6sRzJnpRLk
Q5hqNjmUOK0CQv+5ZdjyxGirF6KmB0a9xEyN4M4/ZNjgVyRaei9LbcdP5yluKZdqG/kcmJ7XMhlv
x/rEsWNMJvzJ2Sk4UdD/4kEs5dQuXVREvBZSXig5+lakBp2Mzuk9mlIlE9If1w8aaJvZJpwinr3x
Y3G0G1vgeBh2SnyvMA4MIn+WcJGnjeHJdGHBzPTB8n/81CGNFx8AfHnTXWftOgqEhLl02TEcRS1y
1J22rgDbi8rBO9oOlH68k4NFaKAW5BGiP19CMQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MWBclV2mQEteAfp6CFb3mKdoM+zSD7ChhmicvpvJ4yJIr9THXIAgTJPVK7rgJZCspviT+F1QPIUV
zLxshVAFhxPEM9XWgCcqI489DhrcMxQou+TntmMVf+aKd+o09xt0Mf2SULTz+KRjmLAGsQGjEqtv
k0ErSAfyUwKJNTrb8FY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rXBEscygyW4HoqDHP2wvdXS3PlqS6kGHp6awCRkEDR66+tkO0yFlMfe1Oyd3U0fxKoR0sBuhIM7w
eoxlSGoGUjsiglFAYl0v3vZDBlQPsMGMD/m/UonEm6Udx+8IcPHaNiPVjK6CFq/jjvWLA9rwYE0d
uxQ8F9lfTr0gqijoq+z0ESyOCuIAQaz1it1872tYal3JshbLH17Kt7adHNIoEfVE4ELNe6Yz5QwE
clwb+/zvOsQixyXae//s79YW6gicD5mn1R+88/3+hWkYoD4s0sHQrbL6AjHdNhWQpt6BbkgR8ANv
cO8w50U6l68E05h2+UbReV0mcQ8/n1SSl9W1Ag==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
m8th9knynCqRhpm8snKN8D7pcTTXQlU6GSGEwCaNOtWCtDsjbvq//RlbWrBJTsP+GQilQVDWWEfv
7Lxm8oLBjEikwdyOzlhzkAXuDy2XtlKlpaeM/WIqtkBuOYvO7Nri4Ok7CV5ZKQO7UGpPBBGKHtZB
TjQo+/PFxKb1S5AYzVGLwQoGdSyPvFaW8fdIqa/gr9FauHPRGS3WVlh3SI0U7lF5jjM+lASIK/5v
lALjWYqt1mYrSPI2eSKZgbMdhQfVmCVoCfrzzSQ1VJ5dNIwklG0bfZhCPO+fdOv2K1v037xSPKzQ
q2Mxhfg/BClezL4zM5f2HXFlmbFi0lbaYPHUKA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XCdKBoZpFTogSSSe/y42XUKHl4Aj6U56Pf1vdoNS383lPBFzD/qIsLa2UymIzdzRYFxDmDlZzADV
3sqXjyNgB7WYlgnJJPAvqG3TcXguMnqJpybPKqF6OntlAoC3ECRPdu3e5ez4BvMoj196UttzzzMY
RY1aM0WiSzbi4+cpoOK2cPE3CXeOSe4PHW0GmPsXTXaT+8/PSRtOHcsC69IYVh7K4rYJaa0ofQYK
FS85RGARwyJ2PzyuYrOe67Uc955omRkgGlHnNFmfh7SsNN2qq7dIKjvHhJCqe/k8tNcNs5XOPSes
/wuag9Rbuk5zyQMLxpwVAfvJ+GPBtpiEOF6bFQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a2O8zLm+oA5Wcw6IcI3inZ+jxdJIAepc/EoJToV6kxuerXDpz2zl77JCaC8DeBFwZSLZ6wuooMJ3
n0M8NdZeIATK9CKWenPEewgRFM1WputQh5ibb0OUilpog/+dAYd+WBorEB5RkYUwo5SL8rYuXk5O
/PWZNYJJHHn60vx5a6aj9cUJkehBYYZP5LQrm3Xns9p9VRCmLi+5B1CAeHqdlHEYVRLxEl/0SOAX
5xoy3gjYSF7SwPrgHltv42rwKmj5gnkZWcMbLQL44C1qGziEpnbhkIP5jPWgGMkbot4VXZbH3Mhy
J2A0ixmTK66Rsd15aBj9rWpt+2qU6EByMOzJGw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
q4kD0nrNNewBBxkReydbHvdie6W4CgWlv9Udtfqboj1m353568Ike3NTQVB7QWQVEW5Xpg8IzbRA
+ZtdyFLeUUcer/wCeSQDp90wPTBFUSeIVBiyNa4qWOzCIiU3pM+0BuUCULZ+Hwil167Iw7SP/7+x
D7rV+7q8JQSQDq2yAPqc0/QrD8pOV79ywyhce8MJsRyaWFasTLKk8qwZl53B95x3rNF1WVvYN2iY
Qmg9dGN2Q0SvtEmSxmY/heptGqd6DMU5V/3yqkrkvuCtfcQjnoYud3tgYeL9N/QOWoDtvlyX1x2Z
5A1g8ykAXNhGFo9AlfdA/KH9nzqz0ivmlOGeeQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
J4T8jUVutFA4gH6wxnWTDpCB3QOSnS9jsbOd+Ff/6+STNxdZXgR8Hy9GJblMwIn8J+i0u6N0pmYr
AyD+/RsJc/dTpu307eKPZaP871QRziNi7gjGOLwGlNkqHrbJx+bAB2GujydSjJ6axhF1f5dQaVoq
j9gQQC0iX98ZSnypfUxQ8B2ubQpyCsqZolXTSIqJ0y246kiACL8KmgI/2kGNQDwyPYxvhgWDH8nu
JY086dUzyR7GL0zhpixoloUbvOEdov62Ts98m3zLnNukuyIwcgRlFHsdHreFl9O/wpfr0haAEYVe
LK5goRlVxzUGLyLGONJygedhS3Uvw4qUcZtx6A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6368)
`pragma protect data_block
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
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
