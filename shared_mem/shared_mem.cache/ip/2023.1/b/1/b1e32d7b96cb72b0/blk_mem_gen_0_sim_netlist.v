// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Feb  9 00:44:06 2024
// Host        : RHIT-R90XZ2SW running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.698 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48528)
`pragma protect data_block
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
Q9Ohpmw6qLLS9rQIs4nLr3mNxfcC
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
