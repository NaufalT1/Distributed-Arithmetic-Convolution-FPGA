// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
// Date        : Thu Oct 22 11:52:44 2020
// Host        : KURO-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adder_DA_sim_netlist.v
// Design      : adder_DA
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_DA,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2020.1.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14_viv xst_addsub
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
p7I7+q/q0NHKx2qCuFxsZFHZLB6/aHfi5NllVi6l2ck5XgkWy8svt7BBY5u5UtJaqXWvYmRtlde+
XyY7PNn8MNOQz4ur155JYysi6kRu5zV1uOEscAJWlk/8btaPc0aWFVv6NlEs2JCCwIYjO3rujIuI
uEZ/vviDG4FyOmwQnogQxD/8nQztp5jFsyCPBBwX18WGHV04WT3qyw34TxwVBBuKVRPZ+JP0LFia
GE88LIHQRKnMYDCwOZO/lgEld7ScqO930wIDAvDfPGFuy64sPyvuKvtrmkVaWNs52ATfr7CzkDso
SLK2wwlYfvTprWeVuxbwOdeQNWjwE9yPgzGt9A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zCEYH0sxeV9GVeUjIWEqxUZV7b9sX/6J4xOCf6Aq93UcWtX25ycf4PE/7pJOsfQmaqKKkWmYE16F
Sqc4Mz/nfb7zvepTiGNaGj8+jJJi0rLHkGKvzl20ppIx20WuchBRPNV2m5XmDsplHEGpVXBqmRqK
3OK3ybxOZLyekXBYSB2SJ0BwH3ifn6HTndbPBfEsV1LjgVU38XbGlwwwxarPSZwDRHpuD7Z/dtQ7
jtpSDC6RstmGw4Q4qFsf2GuET6X4BRvnKF661eagBnct+cl0CzNtrWcXsoLiYqVyPMaRxpGHoQZo
rgn/eoYk268ges1v4HCln1scvjEP27ViytstBA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6400)
`pragma protect data_block
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
9nBQLPDoyYDh/DF9UHbWmw==
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
