// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
// Date        : Wed Oct  7 14:44:23 2020
// Host        : LAPTOP-E8U8G5KN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/naufa/OneDrive/Documents/Vivado/SIGNED/DA/DA.srcs/sources_1/ip/SR_1bit/SR_1bit_sim_netlist.v
// Design      : SR_1bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SR_1bit,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module SR_1bit
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
  SR_1bit_c_shift_ram_v12_0_14 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module SR_1bit_c_shift_ram_v12_0_14
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
  SR_1bit_c_shift_ram_v12_0_14_viv i_synth
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
KkkqC34+YQMBmq2PA9bmR3Yn4l9+9MHJ2Hjc61HQMcVXllofnJIer6iXTJVurqDtc0CXuMY9+qnF
5uSJiRabh6F3kVV7C/if2j0elrc3FaU0aAk4dggU+eb/dnNbnfNbRZ7hQUc0u5AwQsuNZdKNqw1k
Eyd06okohrR0GU4r6bCeowKFlyxgMSKbyyyUQOw/bPbfYTfGeNTnTT6ASb4BkPbAFH7mnvh8oxoU
unZ6jdYEIGnQd3HAOwm38uSGmopkfrCJ7vhYOmbHc2aWyYII/WSwwxZ8qlJbuxp3wPfE1CZj5dKH
oNNmJgV8Zk09zGEG6i+55fqq8jWnLnf7GVm+yw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JQNJCwgGz2imCczlOHI2R+RHpN22/I6UzVKrLPUsGZzY3d61kFemXn+AwpfbrWHr9U8NmmeoRS85
mVgohQF9UBzu7dsY2eeqA171AAnyKHhvjA+ccBwHG/cXhEP2UTgcUiTUdVHosvjM2BV45PzO6SA7
HQyXdDM5deGTPqPonT/0x33Y8vwq2CEPTKZQv99flR9ihC+9PeX0uT5keIdxqufkVcmZVzTvTNFl
/vvKuuMoy5kzcg7nAqWwD58Nc3fwBuqDJEz4vBZI62lR6r8BCOS7FgnAVulm3NmwX44OmIGb8gHD
GUNra9F075xQyRFk6YSsGsKOnY/sZ7mEE75wSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4544)
`pragma protect data_block
N48FFSgRnKksjf2kfGtg9kG6zFaKmDIQq3tIuLkroYPyV1w2q0Z8lLlSl4nTQ9QWtJij//sXTe2p
oVLmKkuBIGo2WS1zMye1rJaHVk3+KocWLExn2SlCTy3M6O+pGonoUlyH6V0WHF3dvuN5gDjw5aaf
xOeiX/+ojOWkO+n+SefE4/pI2iB5BJ86lilAu3/ZVQzy5AmA0Y3O2DM2EoifapPCkE1xQ1tsjUgY
7mdnizmQ0ulZfqSiT3gEAnzoaxheUB1JdkcNhWJ/xTH25kXIPH4vTJaODTp36L93TXIyqw2a03g3
6YTEwIHP1lFTD2ygptSFalpyzR8De+4YXFj6JyLqEMfoTI5pfW+72u/la1ytjjhBmXul6O3up83a
evakEwxhAauKIER6EYOt75wbGmrB+KgR3/FIBqOJ7hG0pfrPKVOw6t13uUfpKPqY4HKvJUXfq/wO
goUw0dfBBuzNner5dH1Cni2rli5o8aOaBnZAstSKHhlqZwoVQrwKKSMQQAEnrQ1miKOwCezEAGMv
bgt0jFiwIHf5UVPpe8yf31LGEplbNLEr8mzMNBpawDT7sZxv9IAR4kLM0Ew4FSNJWhTQGo8tP4Oj
5soOpgRur5Me4E4uesoi5B/QBhLzweBX315PIE7qUvJV7SAAUfFUqfgum6HsuFEe78Ue6xy2UjKt
8cNvqqT/fE02QuV8HZK4FkV/IwYL0kZoE0qzNHakv+3msBD8JGBNV6ZCCTE+x3FDVwWQeFjDLDJv
kJ+yoVr/0KB8mgXVI6/XGzU5Rz4oTjJlge350kA6bvgh5hVaUsbnkiVw95GahtAQBswBP1FpNjFH
wBHNV04qRaUwLWcTVptF7RImOlw7mg2wMHverkobNuHR77OSs4hp2+YUtOJJpcpAOsoRqxkIKFHF
LwIvNt0yQ08OEJuvrZdgfmWyHTRCFhy2tXHBMksJY09AOIN4ClTt+fYlCSaDMivTWJSO7vzlBr8I
UY6M58bMNU1nhZ7fFJuT0GHRDQ+fUCBhSy7/BqFTnqfkJWuHVzBuo2e9pKCSg8Pep5+JRMXhb9y7
nZJ+MERmxNPQc99RDRmdfwX7Yzy497MwlhY3Fl2D6+XhZrtTdVqRJlPS6jbNPYNVUtharLveBWEW
KZb3IBTezk8qxIl/uwpKtxqUE9Yp4cZxQiKoCg2NhatZUYBHRtbmn8yb+3+NrTu2Q7x724CYBZK4
jZFg1saR7Ccq89NKJTfaiRxotmu6jJ7SNadwNodCwzN/ulGb/EqmEuPo2VMkL3bzE1xX8F0sVtkZ
wEElsGBGvf0epTLSd5+IqqdlTAdM2U/EeXCD6m8CcKBOG34WjHucAJOsR6u/mp2FjWxhlXJJhdoP
vZL7JoMvub/mOReM4odifYoPbZv58NjIya64mp0weK/obets+0GSOVriY49+3d6xKMvqgUp9wkBe
fwGlczvS4LovJfBuMNXxoaIZ2FvSC+uBfecmbk4EiCpTcqgWBIF4QsXVbvimhd1N+HVGPvr6bnwz
FLl8wdDPq93ZyVsBNP5GY/CcPpICILg7AviA5PQR13G1BLmxrXNzXMyQeGZl+LQJITz3gPV5sHKV
juTqSJ9iMe/HqKnjBNtVw0rHxjuuaqW0n++kCT8D/0ruDdtplgmFRruQQ7ki0RVDG4rI0rUTSSpr
K8gKseB4g1xL4tMkB0OaFj+FWcEDYcgGn5QY/M6dJCMpv2QD5Oee7Kza0G1AGmMnKp9fwWtRBo+K
9AHF6yKlLr3Q4gw2lisloLZ8nnlV/RQfJahZQuENKed8YhhgwXaJWjd0Y7lqVxHRroKiWdv9Dn3L
4nE0sheC8meJjjftanKV7uDTpCiVwCgjUtXYXIvDaa8RBRtHFWXv4mdO/+iVZjCs0akf9W+oMUAL
/8o1SmGZTn3w54+UtA8YqJdpa0yeXbRRzOJiOaoAOJXQqDOBRgqYWJ9+ScIFs5j+zi3jNMP+2Z0w
oZc2/5D73NzkEUR8ZCJLFZafkgEQntajhXy/Xqb5A5ajPQQ32h9przMGjY6pD8d2bLAAqq4FXWw+
K0+L5Sdgc4qURTiUNft0itMjS+TKIBPkMBC/KM30n/3j6ZmPO4i0azJegz6RWo0+GkHJJ0PAyqAZ
ZzbgR6rBLlLo0lTQKZBV/Qy5o5lVcFMQrLmwjuZ5bBxHBOjhExsR8YCwe4y6eZ9nIVDIqDS6TGNx
hrQ9Kc/FUvSJtnmLc37s6FenTtmt4U7qv5R1wlQS6rllCc0OkPJ+QRoqYcJ2YoVxg1Gii9mGfZ81
2L8ObsHafFikCoiwa22qK99i7TBD/kAnEAcI0QkRTYmgtMOkJMEr1B9Poyei87mRtDdgzh+udgRd
j0nt2Rhf/iHAV4t6jqSckGTBvMqrteIUb2TOBbNDHlyRmPLxbn5bgjr2P1803kerpRv7n3IzOIgc
sC3gHcXo5rl94zMPcX8NETsUqguRSY2kH5Dq5WqB+eyzRHLPSESlyPXLtnFwc+w347zn0buPJ1Lq
aysgFZgLtQzZXpnIy2IaJR2m4R3XFYcJDGlMwKb9puX91UEb6T5+Ygv/+9kpNA2AD3BCsr6GRAwJ
/GjakyFcarA9DMyIVFHY2JEJp1F9M5DSEvG9DRDkyEGvIc563ppJl/ZKZMxzPKcGBeAzN1hvfaGL
qBIuc1QP/ngta0bXZv77TJ9TzzuI1qHgyxkpLqBLiD14KJr4JszWcbif6UNA1HKFIO61tt/s11E5
3CPk+EbM3/aqfdy2NTKT5D+oQ5s2laQ7KnhI1lbu67j1WCBp7CJdiDepMgw4M68lFeHvSrG8Xr8U
petlyGAdJgeOib2+oYqu37LmflfZmI6uWaU4SpqSQAY5DuNBJpO5OiGFT7lC+8JivoU8I9YS+Ta/
Ynx3DPbBTt0wR3XMt4N94sN8IHWq4X5WFPSZ7S5OLZj3xjxuWyhXXOu5AGPtRKUhZrio0cWPIh5m
jRRpZAFCNWNPHK1qy/tiCAl7r2djGdPbeMAbaLneGsoLZD6aUcWK4n5GCdXH+EvXsYxRptm8kyX3
HkSN2wAeqS93RUOykvMeKzN8E5PFWGhDrg5238NA89K1itLMc/c+Ax0m9U+t/b/7XgDlRkiKLPJ/
0KdlRsm12DfwwozF/9VxPqiQ4lFt50hRYMegXNm9Ph8nTEZGIt+VcaXAMLyTg2wOhiOSg0NdTkdR
Olg47ipXueviMbdjOgvZ3jcD1qkX02H3vYGNd1HQNYfl1KMvkqzBwzUDXLfzu7fyGfYImPGRukuZ
O/L35ceNzNfV/Y6EZT550VwkDQyqC6OMGKTcGNx3mo6P2HtKk0/iBiY6/YOes1T6PnjfHaZGsluJ
uPWyKKP7KJvjXtRxlI1xL8JKSsnYlm57Jhb742prF+t4Mx1ZOk6bqNVeiki3inMqFVyWz7Vu/x9t
2qKKW4UP1YGLZZNV0HOtHCv/k4svS4ob6B2vzSDFxXGBKO+ue3A4pXrv8RxaGdkq+aoUUV6urQ7p
vUo1p71Zj53ZdXLbtFdrC0cKWOmmVdHPCPYNIY313iRwHp9vedoaOZlabMcu4MxnTy7bjV/OYgCM
NloNVW2nrxp0IAxU5eLIuJHnMwABcnoZSacoED2vZQlNsIhqoQ6BhnLpTg9PM2vaxz2Fz3fQCZ+t
jbF9+lKqWXYAwpc5PukBt9E8DjJxSvBg8zl3vjCQvFTT9U4Ca8nDOGKKtPitaNl4yUdYxoHrL4tv
nZn+v31Y3lxQDM541g12fp5GbTjNa0er3aEr7EHmw69Hr0+SjjsoLPVI9Lki5ryrYc2xEYayX6Dn
FjM8QwkPKfsz+YQE3CoO2jA+fjawE6zZrjgQFGDmEXDanJb/wGwvTjXiQ55ht8eQ/n9RJIw8Za06
W9OaRT8/o+2EVOX0UzHuNgW8exbtu/nsUXMNIa6p/Rl3Vfi7eF4HyIMQY1995TmCN/3PSF0l8Fet
kIliTrGFELPxbhrDhfPS8vtRamsVpwE9012w6fFT9YetKM3fg3Th5P3AAcpjhDkoluXAuAUsvkgH
NTBYoSTcMv0lpcUqambWak5wgA+mkFSh4hjRqmUJrxbAhzYNxSHoF+Y5W6EpRj6HHo7twXOZkDav
Kdch5yE7yq2y3tQbean5W/NUy/5wT6nujedKzVPo22fCrdGNkt47aZb+Ydj0SPgxQoHqUlNsPbP9
e4nRim17OVkpjXEdpswmGsYP6ayf3jxvdTFc0/+wjVo24M+R49LFXYLQ//1xEBId/LCUIRo3D8uU
kpk/ZquaqrlMDC/PmGxwv7CJ2STtDIwnphsvqcCAoG0wTOhBZz2XoYqOLFUAHQZAp/wEzu6U2tOP
R0MuKA4Iupw32WQ9uPH6p+iv7ljJE4f10+Y0fc/7TuBIPYFi1pIrniGd6Uq0Z3MwNThNf0SATn0z
b0hmF+6OR/AWwJotnEcaYZ73Z0NVGgWPjpivEHS4UdvRDffa+REGqoNIn9Iz96wLQH2sv/BwBu/L
4q67AonZ06Z7ERkHhTjRktGLZtHhTPaH0Winv+4Vl+0s6S5+fHdeycimFWeOYhpi94gL5di/Yh5D
rDRHPTzzHJOqY8gj9q0Io8FQ73lS8AO0v2Y6ak9vvsZziF3dp4V/BR9qt8+F9PmbgNlhj/OkNshY
JFBDyzFybM2DJf/5YGCLCP50CJWOsTSWVPljMAF1KVy3SixrteQobU/AsRlp+tQuTsz4axaiXdX+
bomnz5O3uVqUayprAnM1j12iUMgV2lHxHhXs2k3KVpLJkcDJ5OkG+wPU/CXSqmb4iA3xH1A8QRXE
XJwUEnA3WVfAVNBtVbqMvwNJYKJvcOL8kLAH2YHMgel+GxfLIfDxHU1LLqGA24ok8n2+XlVvycAL
2hZvSbsX0UJo6UumLuXcrMVLT7ampQaDKwX2p+fmGMWKI1ndMRlnejKhNp5BYFHpx4qdehG12Bfj
l+d5kywWM/mWqgXdW0GkKbDvIbNutZrORJ9ovMFrkCQKDy6FZz9VgAS+HdkHYZCgpuaTwFfcoCuY
FEOovwts5KzruFNjtg+u7idG+8cZXKJxaHjQ1snIH/PTzSSQ3sY3/sRrSycs9fNZpFNduK1lMeQM
Y3IqPiELjNLlrwYuYyN5vJeC75xNuBOIVedEkBOnjeEIrUHutdQkYQGP8BOy4pPrB8I/ftaFmjWL
TITVzuHFx1CDnvqLvarR0PtF8WJ7FRccxvt2Och8Y1Y2U8Rk20mIl5LZnA4DFVZCeChZDS6EdIKq
zfxyGV87Og1Jtsx+SYbWzOAxOsoYpWlGgrrMkvblDQcsk8S4WuaK4kZrbbzGUgmRO0uDoZKv+jhV
3JtW9mJ3ROz9mRZG9Svb1pDoarufHGCWnYx/IeKaRRwQo+cWQy+s0QsFPTvjy2LAFS/ashRE3kHt
nRNiC6sUbInHnpiOwkvxl7f1CJjD69pTKAZW45V9fXP+VchTny0ZulzazEI7pMhF2B4BwvK57c+c
UfcHGA6QH4mehdH5v6j6o18XLFhXkrKC7V34+2WbwGRMVgUjC/kEHN7Uns9CJ/jVWwTrQ+UlO5ss
avE1r1p/qflBZ1vR8Io6eYz0tgavbda+PtSF6EPL0G6PLeJpDksiJs4OEg+6BjSQPtiTNaleiBLm
yK4mWePndidt3AuxFreeWMulmQFo3UYTJMU6CPZz3KtPnuwMkSwFGmGe6/WdL8GPcICy7NuWxWJo
hOM/DBy8EsEbddtuv0C+Zs4zU34iUdOaQFSB/Vp5T/bt+94DO2ExCSXq1IVtJ6nNVcXoGTS453el
oBK6Lznh3oDOrQizRbF19YqaOkT7wk8cWMGZOHx2QWnadwqaLjEHoMFL7az0vfdnMbhFLC7SF/+p
1YEFFSZkHaAJ6z4KT+5RTNW7S8RzHZr3Q5I4hojVSlbk1mWxcK/TUN0ZInpW+2qbfa04henOTV9M
r+YgtDG+dPj2V3aQjG/Lr7L10eK2OKm38rS0fp0Y+XELAN2bU1nxauHWQF5Y8f9+ejx/sCSSyDgE
H3LMitbAtZUanyOI9cpk31bvCbaSshgzfwSYOnbBUf8Ht7lGfLigAY8=
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
