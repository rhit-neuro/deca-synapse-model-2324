// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Feb  9 00:44:06 2024
// Host        : RHIT-R90XZ2SW running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/capstone/shared_mem/shared_mem.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48384)
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
