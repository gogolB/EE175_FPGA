// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Feb 16 16:57:38 2018
// Host        : GOGOL-WORK running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Classwork/EE175/FPGA/USB/Sync245/FT232H/FT232H.sim/sim_1/impl/timing/xsim/Streamer_Test_Bench_time_impl.v
// Design      : Scaler_Streamer_Top_Block
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module IOBUF_UNIQ_BASE_
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD54
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD55
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD56
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD57
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD58
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD59
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD60
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD51
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD52
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD53
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

(* ECO_CHECKSUM = "59e7adf1" *) (* PROCESS_HOST_DATA = "3" *) (* READ_HOST_DATA = "2" *) 
(* RESET = "4" *) (* STREAMING = "1" *) (* WAIT_FOR_START = "0" *) 
(* NotValidForBitStream *)
module Scaler_Streamer_Top_Block
   (ftdi_d,
    ftdi_rxf,
    ftdi_txe,
    ftdi_wr,
    ftdi_rd,
    ftdi_oe,
    ftdi_clk,
    sys_clk);
  inout [7:0]ftdi_d;
  input ftdi_rxf;
  input ftdi_txe;
  output ftdi_wr;
  output ftdi_rd;
  output ftdi_oe;
  input ftdi_clk;
  input sys_clk;

  wire clk_36M;
  wire controller_n_3;
  wire controller_n_4;
  wire [7:0]dataBus;
  wire dataGood;
  wire ftdi_clk;
  wire ftdi_clk_IBUF;
  wire ftdi_clk_IBUF_BUFG;
  wire [7:0]ftdi_d;
  wire [7:0]ftdi_d_IBUF;
  wire [7:0]ftdi_d_OBUF;
  wire \ftdi_d_TRI[0] ;
  wire ftdi_oe;
  wire ftdi_oe_OBUF;
  wire ftdi_rd;
  wire ftdi_rd_OBUF;
  wire ftdi_rxf;
  wire ftdi_rxf_IBUF;
  wire ftdi_txe;
  wire ftdi_txe_IBUF;
  wire ftdi_wr;
  wire ftdi_wr_OBUF;
  wire [1:0]state;
  wire sys_clk;
  wire sys_clk_IBUF;
  wire sys_clk_IBUF_BUFG;

initial begin
 $sdf_annotate("Streamer_Test_Bench_time_impl.sdf",,,,"tool_control");
end
  clk_div clkDiv
       (.clk_36M(clk_36M),
        .sys_clk_IBUF_BUFG(sys_clk_IBUF_BUFG));
  Sync_245_Controller controller
       (.Q(dataBus),
        .clk_36M(clk_36M),
        .clk_out_reg(clk_36M),
        .dataGood(dataGood),
        .ftdi_clk(ftdi_clk_IBUF_BUFG),
        .ftdi_clk_IBUF_BUFG(ftdi_clk_IBUF_BUFG),
        .ftdi_d_IBUF(ftdi_d_IBUF),
        .\ftdi_d_TRI[0] (\ftdi_d_TRI[0] ),
        .ftdi_oe_OBUF(ftdi_oe_OBUF),
        .ftdi_rd_OBUF(ftdi_rd_OBUF),
        .ftdi_rxf_IBUF(ftdi_rxf_IBUF),
        .ftdi_txe_IBUF(ftdi_txe_IBUF),
        .ftdi_wr_OBUF(ftdi_wr_OBUF),
        .\outputData_reg[7] (ftdi_d_OBUF),
        .state(state),
        .\state_reg[0]_0 (controller_n_4),
        .\state_reg[1]_0 (controller_n_3),
        .sys_clk_IBUF_BUFG(sys_clk_IBUF_BUFG));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    dataGood_reg
       (.CLR(1'b0),
        .D(state[0]),
        .G(state[1]),
        .GE(1'b1),
        .Q(dataGood));
  BUFG ftdi_clk_IBUF_BUFG_inst
       (.I(ftdi_clk_IBUF),
        .O(ftdi_clk_IBUF_BUFG));
  IBUF ftdi_clk_IBUF_inst
       (.I(ftdi_clk),
        .O(ftdi_clk_IBUF));
  IOBUF_UNIQ_BASE_ \ftdi_d_IOBUF[0]_inst 
       (.I(ftdi_d_OBUF[0]),
        .IO(ftdi_d[0]),
        .O(ftdi_d_IBUF[0]),
        .T(\ftdi_d_TRI[0] ));
  IOBUF_HD54 \ftdi_d_IOBUF[1]_inst 
       (.I(ftdi_d_OBUF[1]),
        .IO(ftdi_d[1]),
        .O(ftdi_d_IBUF[1]),
        .T(\ftdi_d_TRI[0] ));
  IOBUF_HD55 \ftdi_d_IOBUF[2]_inst 
       (.I(ftdi_d_OBUF[2]),
        .IO(ftdi_d[2]),
        .O(ftdi_d_IBUF[2]),
        .T(\ftdi_d_TRI[0] ));
  IOBUF_HD56 \ftdi_d_IOBUF[3]_inst 
       (.I(ftdi_d_OBUF[3]),
        .IO(ftdi_d[3]),
        .O(ftdi_d_IBUF[3]),
        .T(\ftdi_d_TRI[0] ));
  IOBUF_HD57 \ftdi_d_IOBUF[4]_inst 
       (.I(ftdi_d_OBUF[4]),
        .IO(ftdi_d[4]),
        .O(ftdi_d_IBUF[4]),
        .T(\ftdi_d_TRI[0] ));
  IOBUF_HD58 \ftdi_d_IOBUF[5]_inst 
       (.I(ftdi_d_OBUF[5]),
        .IO(ftdi_d[5]),
        .O(ftdi_d_IBUF[5]),
        .T(\ftdi_d_TRI[0] ));
  IOBUF_HD59 \ftdi_d_IOBUF[6]_inst 
       (.I(ftdi_d_OBUF[6]),
        .IO(ftdi_d[6]),
        .O(ftdi_d_IBUF[6]),
        .T(\ftdi_d_TRI[0] ));
  IOBUF_HD60 \ftdi_d_IOBUF[7]_inst 
       (.I(ftdi_d_OBUF[7]),
        .IO(ftdi_d[7]),
        .O(ftdi_d_IBUF[7]),
        .T(\ftdi_d_TRI[0] ));
  OBUF ftdi_oe_OBUF_inst
       (.I(ftdi_oe_OBUF),
        .O(ftdi_oe));
  OBUF ftdi_rd_OBUF_inst
       (.I(ftdi_rd_OBUF),
        .O(ftdi_rd));
  IBUF ftdi_rxf_IBUF_inst
       (.I(ftdi_rxf),
        .O(ftdi_rxf_IBUF));
  IBUF ftdi_txe_IBUF_inst
       (.I(ftdi_txe),
        .O(ftdi_txe_IBUF));
  OBUF ftdi_wr_OBUF_inst
       (.I(ftdi_wr_OBUF),
        .O(ftdi_wr));
  TempImgCreator imgStreamer
       (.Q(dataBus),
        .clk_36M(clk_36M));
  (* FSM_ENCODED_STATES = "RESET:0100,WAIT_FOR_START:0000,READ_HOST_DATA:0010,PROCESS_HOST_DATA:0011,STREAMING:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(controller_n_4),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RESET:0100,WAIT_FOR_START:0000,READ_HOST_DATA:0010,PROCESS_HOST_DATA:0011,STREAMING:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(controller_n_3),
        .Q(state[1]),
        .R(1'b0));
  BUFG sys_clk_IBUF_BUFG_inst
       (.I(sys_clk_IBUF),
        .O(sys_clk_IBUF_BUFG));
  IBUF sys_clk_IBUF_inst
       (.I(sys_clk),
        .O(sys_clk_IBUF));
endmodule

module Sync_245_Controller
   (ftdi_wr_OBUF,
    ftdi_rd_OBUF,
    ftdi_oe_OBUF,
    \state_reg[1]_0 ,
    \state_reg[0]_0 ,
    \ftdi_d_TRI[0] ,
    \outputData_reg[7] ,
    clk_out_reg,
    Q,
    ftdi_clk,
    ftdi_d_IBUF,
    ftdi_clk_IBUF_BUFG,
    clk_36M,
    sys_clk_IBUF_BUFG,
    state,
    ftdi_txe_IBUF,
    ftdi_rxf_IBUF,
    dataGood);
  output ftdi_wr_OBUF;
  output ftdi_rd_OBUF;
  output ftdi_oe_OBUF;
  output \state_reg[1]_0 ;
  output \state_reg[0]_0 ;
  output \ftdi_d_TRI[0] ;
  output [7:0]\outputData_reg[7] ;
  input clk_out_reg;
  input [7:0]Q;
  input ftdi_clk;
  input [7:0]ftdi_d_IBUF;
  input ftdi_clk_IBUF_BUFG;
  input clk_36M;
  input sys_clk_IBUF_BUFG;
  input [1:0]state;
  input ftdi_txe_IBUF;
  input ftdi_rxf_IBUF;
  input dataGood;

  wire OE_reg_i_1_n_0;
  wire OE_reg_i_2_n_0;
  wire [7:0]Q;
  wire RD_reg_i_1_n_0;
  wire RD_reg_i_2_n_0;
  wire WR_reg_i_1_n_0;
  wire WR_reg_i_2_n_0;
  wire clk_36M;
  wire clk_out_reg;
  wire dataGood;
  wire dataRxFifo_n_2;
  wire dataRxFifo_n_3;
  wire dataRxFifo_n_4;
  wire dataTxFifo_n_0;
  wire dataTxFifo_n_1;
  wire ftdi_clk;
  wire ftdi_clk_IBUF_BUFG;
  wire [7:0]ftdi_d_IBUF;
  wire \ftdi_d_TRI[0] ;
  wire ftdi_oe_OBUF;
  wire ftdi_rd_OBUF;
  wire ftdi_rxf_IBUF;
  wire ftdi_txe_IBUF;
  wire ftdi_wr_OBUF;
  wire [7:0]\outputData_reg[7] ;
  wire recvData;
  wire recvData_reg_i_1_n_0;
  wire sendData;
  wire sendData_reg_i_1_n_0;
  wire sendData_reg_i_2_n_0;
  wire [1:0]state;
  wire state1__0;
  wire [3:0]state_0;
  wire \state_reg[0]_0 ;
  wire \state_reg[1]_0 ;
  wire sys_clk_IBUF_BUFG;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    OE_reg
       (.CLR(1'b0),
        .D(OE_reg_i_1_n_0),
        .G(OE_reg_i_2_n_0),
        .GE(1'b1),
        .Q(ftdi_oe_OBUF));
  LUT4 #(
    .INIT(16'hFFFD)) 
    OE_reg_i_1
       (.I0(state_0[0]),
        .I1(state_0[2]),
        .I2(state_0[3]),
        .I3(state_0[1]),
        .O(OE_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'hFE55)) 
    OE_reg_i_2
       (.I0(state_0[1]),
        .I1(state_0[0]),
        .I2(state_0[2]),
        .I3(state_0[3]),
        .O(OE_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    RD_reg
       (.CLR(1'b0),
        .D(RD_reg_i_1_n_0),
        .G(RD_reg_i_2_n_0),
        .GE(1'b1),
        .Q(ftdi_rd_OBUF));
  LUT4 #(
    .INIT(16'hFFF7)) 
    RD_reg_i_1
       (.I0(state_0[0]),
        .I1(state_0[1]),
        .I2(state_0[3]),
        .I3(state_0[2]),
        .O(RD_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'hFE19)) 
    RD_reg_i_2
       (.I0(state_0[0]),
        .I1(state_0[1]),
        .I2(state_0[2]),
        .I3(state_0[3]),
        .O(RD_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    WR_reg
       (.CLR(1'b0),
        .D(WR_reg_i_1_n_0),
        .G(WR_reg_i_2_n_0),
        .GE(1'b1),
        .Q(ftdi_wr_OBUF));
  LUT4 #(
    .INIT(16'hFFF7)) 
    WR_reg_i_1
       (.I0(state_0[1]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(state_0[3]),
        .O(WR_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'hAAEB)) 
    WR_reg_i_2
       (.I0(state_0[3]),
        .I1(state_0[1]),
        .I2(state_0[2]),
        .I3(state_0[0]),
        .O(WR_reg_i_2_n_0));
  async_fifo dataRxFifo
       (.D({dataRxFifo_n_2,dataRxFifo_n_3}),
        .Q(state_0),
        .ftdi_clk(ftdi_clk),
        .ftdi_clk_IBUF_BUFG(ftdi_clk_IBUF_BUFG),
        .ftdi_d_IBUF(ftdi_d_IBUF),
        .ftdi_rxf_IBUF(ftdi_rxf_IBUF),
        .recvData(recvData),
        .state(state),
        .state1__0(state1__0),
        .\state_reg[0] (\state_reg[0]_0 ),
        .\state_reg[1] (\state_reg[1]_0 ),
        .\state_reg[1]_0 (dataRxFifo_n_4),
        .sys_clk_IBUF_BUFG(sys_clk_IBUF_BUFG));
  async_fifo_0 dataTxFifo
       (.D({dataTxFifo_n_0,dataTxFifo_n_1}),
        .Q(Q),
        .clk_36M(clk_36M),
        .clk_out_reg(clk_out_reg),
        .dataGood(dataGood),
        .ftdi_clk_IBUF_BUFG(ftdi_clk_IBUF_BUFG),
        .ftdi_txe_IBUF(ftdi_txe_IBUF),
        .full_reg_0(dataRxFifo_n_4),
        .\outputData_reg[7]_0 (\outputData_reg[7] ),
        .sendData(sendData),
        .state1__0(state1__0),
        .\state_reg[3] (state_0));
  LUT1 #(
    .INIT(2'h1)) 
    \ftdi_d_IOBUF[7]_inst_i_1 
       (.I0(sendData),
        .O(\ftdi_d_TRI[0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    recvData_reg
       (.CLR(1'b0),
        .D(recvData_reg_i_1_n_0),
        .G(RD_reg_i_2_n_0),
        .GE(1'b1),
        .Q(recvData));
  LUT4 #(
    .INIT(16'h1000)) 
    recvData_reg_i_1
       (.I0(state_0[2]),
        .I1(state_0[3]),
        .I2(state_0[1]),
        .I3(state_0[0]),
        .O(recvData_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    sendData_reg
       (.CLR(1'b0),
        .D(sendData_reg_i_1_n_0),
        .G(sendData_reg_i_2_n_0),
        .GE(1'b1),
        .Q(sendData));
  LUT4 #(
    .INIT(16'h5400)) 
    sendData_reg_i_1
       (.I0(state_0[3]),
        .I1(state_0[0]),
        .I2(state_0[1]),
        .I3(state_0[2]),
        .O(sendData_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'hFAEB)) 
    sendData_reg_i_2
       (.I0(state_0[3]),
        .I1(state_0[1]),
        .I2(state_0[2]),
        .I3(state_0[0]),
        .O(sendData_reg_i_2_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_reg[0] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dataRxFifo_n_3),
        .Q(state_0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_reg[1] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dataTxFifo_n_1),
        .Q(state_0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_reg[2] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dataRxFifo_n_2),
        .Q(state_0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_reg[3] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dataTxFifo_n_0),
        .Q(state_0[3]),
        .R(1'b0));
endmodule

module TempImgCreator
   (Q,
    clk_36M);
  output [7:0]Q;
  input clk_36M;

  wire [7:0]Q;
  wire clk_36M;
  wire [7:0]p_0_in__0;
  wire \scaler[7]_i_2_n_0 ;
  wire [7:0]scaler_reg__0;

  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[0] 
       (.C(clk_36M),
        .CE(1'b1),
        .D(scaler_reg__0[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[1] 
       (.C(clk_36M),
        .CE(1'b1),
        .D(scaler_reg__0[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[2] 
       (.C(clk_36M),
        .CE(1'b1),
        .D(scaler_reg__0[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[3] 
       (.C(clk_36M),
        .CE(1'b1),
        .D(scaler_reg__0[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[4] 
       (.C(clk_36M),
        .CE(1'b1),
        .D(scaler_reg__0[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[5] 
       (.C(clk_36M),
        .CE(1'b1),
        .D(scaler_reg__0[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[6] 
       (.C(clk_36M),
        .CE(1'b1),
        .D(scaler_reg__0[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[7] 
       (.C(clk_36M),
        .CE(1'b1),
        .D(scaler_reg__0[7]),
        .Q(Q[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \scaler[0]_i_1 
       (.I0(scaler_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \scaler[1]_i_1 
       (.I0(scaler_reg__0[0]),
        .I1(scaler_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \scaler[2]_i_1 
       (.I0(scaler_reg__0[0]),
        .I1(scaler_reg__0[1]),
        .I2(scaler_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \scaler[3]_i_1 
       (.I0(scaler_reg__0[1]),
        .I1(scaler_reg__0[0]),
        .I2(scaler_reg__0[2]),
        .I3(scaler_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \scaler[4]_i_1 
       (.I0(scaler_reg__0[2]),
        .I1(scaler_reg__0[0]),
        .I2(scaler_reg__0[1]),
        .I3(scaler_reg__0[3]),
        .I4(scaler_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \scaler[5]_i_1 
       (.I0(scaler_reg__0[3]),
        .I1(scaler_reg__0[1]),
        .I2(scaler_reg__0[0]),
        .I3(scaler_reg__0[2]),
        .I4(scaler_reg__0[4]),
        .I5(scaler_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \scaler[6]_i_1 
       (.I0(\scaler[7]_i_2_n_0 ),
        .I1(scaler_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \scaler[7]_i_1 
       (.I0(\scaler[7]_i_2_n_0 ),
        .I1(scaler_reg__0[6]),
        .I2(scaler_reg__0[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \scaler[7]_i_2 
       (.I0(scaler_reg__0[5]),
        .I1(scaler_reg__0[3]),
        .I2(scaler_reg__0[1]),
        .I3(scaler_reg__0[0]),
        .I4(scaler_reg__0[2]),
        .I5(scaler_reg__0[4]),
        .O(\scaler[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scaler_reg[0] 
       (.C(clk_36M),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(scaler_reg__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scaler_reg[1] 
       (.C(clk_36M),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(scaler_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scaler_reg[2] 
       (.C(clk_36M),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(scaler_reg__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scaler_reg[3] 
       (.C(clk_36M),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(scaler_reg__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scaler_reg[4] 
       (.C(clk_36M),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(scaler_reg__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scaler_reg[5] 
       (.C(clk_36M),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(scaler_reg__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scaler_reg[6] 
       (.C(clk_36M),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(scaler_reg__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scaler_reg[7] 
       (.C(clk_36M),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(scaler_reg__0[7]),
        .R(1'b0));
endmodule

module async_fifo
   (\state_reg[1] ,
    \state_reg[0] ,
    D,
    \state_reg[1]_0 ,
    ftdi_clk,
    ftdi_d_IBUF,
    sys_clk_IBUF_BUFG,
    ftdi_clk_IBUF_BUFG,
    state,
    Q,
    state1__0,
    ftdi_rxf_IBUF,
    recvData);
  output \state_reg[1] ;
  output \state_reg[0] ;
  output [1:0]D;
  output \state_reg[1]_0 ;
  input ftdi_clk;
  input [7:0]ftdi_d_IBUF;
  input sys_clk_IBUF_BUFG;
  input ftdi_clk_IBUF_BUFG;
  input [1:0]state;
  input [3:0]Q;
  input state1__0;
  input ftdi_rxf_IBUF;
  input recvData;

  wire [1:0]D;
  wire [3:0]Q;
  wire ftdi_clk;
  wire ftdi_clk_IBUF_BUFG;
  wire [7:0]ftdi_d_IBUF;
  wire ftdi_rxf_IBUF;
  wire [7:0]hostDataBus;
  wire memory_reg_0_31_0_5_n_0;
  wire memory_reg_0_31_0_5_n_1;
  wire memory_reg_0_31_0_5_n_2;
  wire memory_reg_0_31_0_5_n_3;
  wire memory_reg_0_31_0_5_n_4;
  wire memory_reg_0_31_0_5_n_5;
  wire memory_reg_0_31_6_7_n_0;
  wire memory_reg_0_31_6_7_n_1;
  wire [4:0]pNextToRead;
  wire [4:0]pNextToWrite;
  wire pRead_counter_n_5;
  wire pRead_counter_n_7;
  wire pRead_counter_n_8;
  wire pRead_counter_n_9;
  wire pWrite_counter_n_5;
  wire presetFull;
  wire recvData;
  wire rxFIFOEmpty;
  wire rxFIFOFull;
  wire [1:0]state;
  wire state13_out;
  wire state1__0;
  wire \state[0]_i_2_n_0 ;
  wire \state_reg[0] ;
  wire \state_reg[1] ;
  wire \state_reg[1]_0 ;
  wire status;
  wire sys_clk_IBUF_BUFG;
  wire [1:0]NLW_memory_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_memory_reg_0_31_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_memory_reg_0_31_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_memory_reg_0_31_6_7_DOD_UNCONNECTED;

  FDPE #(
    .INIT(1'b1)) 
    empty_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(pRead_counter_n_9),
        .Q(rxFIFOEmpty));
  FDPE #(
    .INIT(1'b1)) 
    full_reg
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(presetFull),
        .Q(rxFIFOFull));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_UNIQ_BASE_ memory_reg_0_31_0_5
       (.ADDRA(pNextToRead),
        .ADDRB(pNextToRead),
        .ADDRC(pNextToRead),
        .ADDRD(pNextToWrite),
        .DIA(ftdi_d_IBUF[1:0]),
        .DIB(ftdi_d_IBUF[3:2]),
        .DIC(ftdi_d_IBUF[5:4]),
        .DID({1'b0,1'b0}),
        .DOA({memory_reg_0_31_0_5_n_0,memory_reg_0_31_0_5_n_1}),
        .DOB({memory_reg_0_31_0_5_n_2,memory_reg_0_31_0_5_n_3}),
        .DOC({memory_reg_0_31_0_5_n_4,memory_reg_0_31_0_5_n_5}),
        .DOD(NLW_memory_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(ftdi_clk),
        .WE(pWrite_counter_n_5));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD51 memory_reg_0_31_6_7
       (.ADDRA(pNextToRead),
        .ADDRB(pNextToRead),
        .ADDRC(pNextToRead),
        .ADDRD(pNextToWrite),
        .DIA(ftdi_d_IBUF[7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({memory_reg_0_31_6_7_n_0,memory_reg_0_31_6_7_n_1}),
        .DOB(NLW_memory_reg_0_31_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_memory_reg_0_31_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_memory_reg_0_31_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(ftdi_clk),
        .WE(pWrite_counter_n_5));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \outputData_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(pRead_counter_n_5),
        .D(memory_reg_0_31_0_5_n_1),
        .Q(hostDataBus[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \outputData_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(pRead_counter_n_5),
        .D(memory_reg_0_31_0_5_n_0),
        .Q(hostDataBus[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \outputData_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(pRead_counter_n_5),
        .D(memory_reg_0_31_0_5_n_3),
        .Q(hostDataBus[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \outputData_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(pRead_counter_n_5),
        .D(memory_reg_0_31_0_5_n_2),
        .Q(hostDataBus[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \outputData_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(pRead_counter_n_5),
        .D(memory_reg_0_31_0_5_n_5),
        .Q(hostDataBus[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \outputData_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(pRead_counter_n_5),
        .D(memory_reg_0_31_0_5_n_4),
        .Q(hostDataBus[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \outputData_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(pRead_counter_n_5),
        .D(memory_reg_0_31_6_7_n_1),
        .Q(hostDataBus[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \outputData_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(pRead_counter_n_5),
        .D(memory_reg_0_31_6_7_n_0),
        .Q(hostDataBus[7]),
        .R(1'b0));
  graycounter_2 pRead_counter
       (.\binary_count_reg[4]_0 (pRead_counter_n_5),
        .empty_reg(pRead_counter_n_9),
        .full_reg(pRead_counter_n_7),
        .full_reg_0(pRead_counter_n_8),
        .pNextToRead(pNextToRead),
        .pNextToWrite(pNextToWrite),
        .presetFull(presetFull),
        .rxFIFOEmpty(rxFIFOEmpty),
        .state(state),
        .status(status),
        .sys_clk_IBUF_BUFG(sys_clk_IBUF_BUFG));
  graycounter_3 pWrite_counter
       (.\binary_count_reg[4]_0 (pWrite_counter_n_5),
        .ftdi_clk_IBUF_BUFG(ftdi_clk_IBUF_BUFG),
        .pNextToWrite(pNextToWrite),
        .recvData(recvData),
        .rxFIFOFull(rxFIFOFull));
  LUT5 #(
    .INIT(32'h80FFFF00)) 
    \state[0]_i_1 
       (.I0(hostDataBus[7]),
        .I1(\state[0]_i_2_n_0 ),
        .I2(hostDataBus[5]),
        .I3(state[0]),
        .I4(state[1]),
        .O(\state_reg[0] ));
  LUT6 #(
    .INIT(64'h5242120271717170)) 
    \state[0]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(state13_out),
        .I4(state1__0),
        .I5(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \state[0]_i_2 
       (.I0(hostDataBus[1]),
        .I1(hostDataBus[2]),
        .I2(hostDataBus[0]),
        .I3(hostDataBus[4]),
        .I4(hostDataBus[6]),
        .I5(hostDataBus[3]),
        .O(\state[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \state[1]_i_1 
       (.I0(rxFIFOEmpty),
        .I1(state[1]),
        .I2(state[0]),
        .O(\state_reg[1] ));
  LUT3 #(
    .INIT(8'h1F)) 
    \state[1]_i_3 
       (.I0(rxFIFOFull),
        .I1(ftdi_rxf_IBUF),
        .I2(Q[0]),
        .O(\state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h4656061660616060)) 
    \state[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(state13_out),
        .I4(state1__0),
        .I5(Q[0]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_2 
       (.I0(ftdi_rxf_IBUF),
        .I1(rxFIFOFull),
        .O(state13_out));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    status_reg
       (.CLR(pRead_counter_n_7),
        .D(pRead_counter_n_8),
        .G(pRead_counter_n_8),
        .GE(1'b1),
        .Q(status));
endmodule

(* ORIG_REF_NAME = "async_fifo" *) 
module async_fifo_0
   (D,
    state1__0,
    \outputData_reg[7]_0 ,
    clk_out_reg,
    Q,
    ftdi_clk_IBUF_BUFG,
    clk_36M,
    \state_reg[3] ,
    full_reg_0,
    ftdi_txe_IBUF,
    sendData,
    dataGood);
  output [1:0]D;
  output state1__0;
  output [7:0]\outputData_reg[7]_0 ;
  input clk_out_reg;
  input [7:0]Q;
  input ftdi_clk_IBUF_BUFG;
  input clk_36M;
  input [3:0]\state_reg[3] ;
  input full_reg_0;
  input ftdi_txe_IBUF;
  input sendData;
  input dataGood;

  wire [1:0]D;
  wire [7:0]Q;
  wire clk_36M;
  wire clk_out_reg;
  wire dataGood;
  wire ftdi_clk_IBUF_BUFG;
  wire ftdi_txe_IBUF;
  wire full_reg_0;
  wire full_reg_n_0;
  wire memory_reg_0_31_0_5_n_0;
  wire memory_reg_0_31_0_5_n_1;
  wire memory_reg_0_31_0_5_n_2;
  wire memory_reg_0_31_0_5_n_3;
  wire memory_reg_0_31_0_5_n_4;
  wire memory_reg_0_31_0_5_n_5;
  wire memory_reg_0_31_6_7_n_0;
  wire memory_reg_0_31_6_7_n_1;
  wire [7:0]\outputData_reg[7]_0 ;
  wire [4:0]pNextToRead;
  wire [4:0]pNextToWrite;
  wire pRead_counter_n_5;
  wire pRead_counter_n_7;
  wire pRead_counter_n_8;
  wire pRead_counter_n_9;
  wire p_0_in;
  wire presetFull;
  wire sendData;
  wire state1__0;
  wire \state[1]_i_2_n_0 ;
  wire [3:0]\state_reg[3] ;
  wire status;
  wire txFIFOEmpty;
  wire [1:0]NLW_memory_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_memory_reg_0_31_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_memory_reg_0_31_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_memory_reg_0_31_6_7_DOD_UNCONNECTED;

  FDPE #(
    .INIT(1'b1)) 
    empty_reg
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(pRead_counter_n_9),
        .Q(txFIFOEmpty));
  FDPE #(
    .INIT(1'b1)) 
    full_reg
       (.C(clk_36M),
        .CE(1'b1),
        .D(1'b0),
        .PRE(presetFull),
        .Q(full_reg_n_0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD52 memory_reg_0_31_0_5
       (.ADDRA(pNextToRead),
        .ADDRB(pNextToRead),
        .ADDRC(pNextToRead),
        .ADDRD(pNextToWrite),
        .DIA(Q[1:0]),
        .DIB(Q[3:2]),
        .DIC(Q[5:4]),
        .DID({1'b0,1'b0}),
        .DOA({memory_reg_0_31_0_5_n_0,memory_reg_0_31_0_5_n_1}),
        .DOB({memory_reg_0_31_0_5_n_2,memory_reg_0_31_0_5_n_3}),
        .DOC({memory_reg_0_31_0_5_n_4,memory_reg_0_31_0_5_n_5}),
        .DOD(NLW_memory_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out_reg),
        .WE(p_0_in));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD53 memory_reg_0_31_6_7
       (.ADDRA(pNextToRead),
        .ADDRB(pNextToRead),
        .ADDRC(pNextToRead),
        .ADDRD(pNextToWrite),
        .DIA(Q[7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({memory_reg_0_31_6_7_n_0,memory_reg_0_31_6_7_n_1}),
        .DOB(NLW_memory_reg_0_31_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_memory_reg_0_31_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_memory_reg_0_31_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out_reg),
        .WE(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \outputData_reg[0] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(pRead_counter_n_5),
        .D(memory_reg_0_31_0_5_n_1),
        .Q(\outputData_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \outputData_reg[1] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(pRead_counter_n_5),
        .D(memory_reg_0_31_0_5_n_0),
        .Q(\outputData_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \outputData_reg[2] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(pRead_counter_n_5),
        .D(memory_reg_0_31_0_5_n_3),
        .Q(\outputData_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \outputData_reg[3] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(pRead_counter_n_5),
        .D(memory_reg_0_31_0_5_n_2),
        .Q(\outputData_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \outputData_reg[4] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(pRead_counter_n_5),
        .D(memory_reg_0_31_0_5_n_5),
        .Q(\outputData_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \outputData_reg[5] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(pRead_counter_n_5),
        .D(memory_reg_0_31_0_5_n_4),
        .Q(\outputData_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \outputData_reg[6] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(pRead_counter_n_5),
        .D(memory_reg_0_31_6_7_n_1),
        .Q(\outputData_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \outputData_reg[7] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(pRead_counter_n_5),
        .D(memory_reg_0_31_6_7_n_0),
        .Q(\outputData_reg[7]_0 [7]),
        .R(1'b0));
  graycounter pRead_counter
       (.\binary_count_reg[0]_0 (pRead_counter_n_5),
        .empty_reg(pRead_counter_n_9),
        .ftdi_clk_IBUF_BUFG(ftdi_clk_IBUF_BUFG),
        .full_reg(pRead_counter_n_7),
        .full_reg_0(pRead_counter_n_8),
        .pNextToRead(pNextToRead),
        .pNextToWrite(pNextToWrite),
        .presetFull(presetFull),
        .sendData(sendData),
        .status(status),
        .txFIFOEmpty(txFIFOEmpty));
  graycounter_1 pWrite_counter
       (.clk_36M(clk_36M),
        .dataGood(dataGood),
        .full_reg(full_reg_n_0),
        .pNextToWrite(pNextToWrite),
        .p_0_in(p_0_in));
  LUT6 #(
    .INIT(64'h45405F5F45400000)) 
    \state[1]_i_1__0 
       (.I0(\state_reg[3] [3]),
        .I1(\state[1]_i_2_n_0 ),
        .I2(\state_reg[3] [2]),
        .I3(full_reg_0),
        .I4(\state_reg[3] [1]),
        .I5(\state_reg[3] [0]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h1F)) 
    \state[1]_i_2 
       (.I0(txFIFOEmpty),
        .I1(ftdi_txe_IBUF),
        .I2(\state_reg[3] [0]),
        .O(\state[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_3 
       (.I0(ftdi_txe_IBUF),
        .I1(txFIFOEmpty),
        .O(state1__0));
  LUT6 #(
    .INIT(64'h00000000A8000000)) 
    \state[3]_i_1 
       (.I0(\state_reg[3] [1]),
        .I1(txFIFOEmpty),
        .I2(ftdi_txe_IBUF),
        .I3(\state_reg[3] [0]),
        .I4(\state_reg[3] [2]),
        .I5(\state_reg[3] [3]),
        .O(D[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    status_reg
       (.CLR(pRead_counter_n_7),
        .D(pRead_counter_n_8),
        .G(pRead_counter_n_8),
        .GE(1'b1),
        .Q(status));
endmodule

module clk_div
   (clk_36M,
    sys_clk_IBUF_BUFG);
  output clk_36M;
  input sys_clk_IBUF_BUFG;

  wire \^clk_36M ;
  wire clk_36M_BUFG;
  wire clk_out_i_1_n_0;
  wire [12:0]count;
  wire \count[12]_i_2_n_0 ;
  wire \count[12]_i_3_n_0 ;
  wire [12:0]count_0;
  wire \count_reg[12]_i_4_n_4 ;
  wire \count_reg[12]_i_4_n_5 ;
  wire \count_reg[12]_i_4_n_6 ;
  wire \count_reg[12]_i_4_n_7 ;
  wire \count_reg[4]_i_2_n_0 ;
  wire \count_reg[4]_i_2_n_4 ;
  wire \count_reg[4]_i_2_n_5 ;
  wire \count_reg[4]_i_2_n_6 ;
  wire \count_reg[4]_i_2_n_7 ;
  wire \count_reg[8]_i_2_n_0 ;
  wire \count_reg[8]_i_2_n_4 ;
  wire \count_reg[8]_i_2_n_5 ;
  wire \count_reg[8]_i_2_n_6 ;
  wire \count_reg[8]_i_2_n_7 ;
  wire reset;
  wire sys_clk_IBUF_BUFG;
  wire [3:0]\NLW_count_reg[12]_i_4_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_2_CO_UNCONNECTED ;

  assign clk_36M = clk_36M_BUFG;
  (* TOOL_INSERTED_CLOCKBUFG *) 
  BUFG clk_36M_BUFG_inst
       (.I(\^clk_36M ),
        .O(clk_36M_BUFG));
  LUT6 #(
    .INIT(64'hFDFFFFFF02000000)) 
    clk_out_i_1
       (.I0(\count[12]_i_2_n_0 ),
        .I1(\count[12]_i_3_n_0 ),
        .I2(count[3]),
        .I3(count[10]),
        .I4(count[6]),
        .I5(clk_36M_BUFG),
        .O(clk_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_out_i_1_n_0),
        .Q(\^clk_36M ),
        .R(reset));
  LUT6 #(
    .INIT(64'h00000000FDFFFFFF)) 
    \count[0]_i_1 
       (.I0(\count[12]_i_2_n_0 ),
        .I1(\count[12]_i_3_n_0 ),
        .I2(count[3]),
        .I3(count[10]),
        .I4(count[6]),
        .I5(count[0]),
        .O(count_0[0]));
  LUT6 #(
    .INIT(64'hFDFFFFFF00000000)) 
    \count[10]_i_1 
       (.I0(\count[12]_i_2_n_0 ),
        .I1(\count[12]_i_3_n_0 ),
        .I2(count[3]),
        .I3(count[10]),
        .I4(count[6]),
        .I5(\count_reg[12]_i_4_n_6 ),
        .O(count_0[10]));
  LUT6 #(
    .INIT(64'hFDFFFFFF00000000)) 
    \count[11]_i_1 
       (.I0(\count[12]_i_2_n_0 ),
        .I1(\count[12]_i_3_n_0 ),
        .I2(count[3]),
        .I3(count[10]),
        .I4(count[6]),
        .I5(\count_reg[12]_i_4_n_5 ),
        .O(count_0[11]));
  LUT6 #(
    .INIT(64'hFDFFFFFF00000000)) 
    \count[12]_i_1 
       (.I0(\count[12]_i_2_n_0 ),
        .I1(\count[12]_i_3_n_0 ),
        .I2(count[3]),
        .I3(count[10]),
        .I4(count[6]),
        .I5(\count_reg[12]_i_4_n_4 ),
        .O(count_0[12]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \count[12]_i_2 
       (.I0(count[0]),
        .I1(count[2]),
        .I2(count[9]),
        .I3(count[11]),
        .I4(count[12]),
        .I5(count[5]),
        .O(\count[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \count[12]_i_3 
       (.I0(count[8]),
        .I1(count[7]),
        .I2(count[1]),
        .I3(count[4]),
        .O(\count[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFFFF00000000)) 
    \count[1]_i_1 
       (.I0(\count[12]_i_2_n_0 ),
        .I1(\count[12]_i_3_n_0 ),
        .I2(count[3]),
        .I3(count[10]),
        .I4(count[6]),
        .I5(\count_reg[4]_i_2_n_7 ),
        .O(count_0[1]));
  LUT6 #(
    .INIT(64'hFDFFFFFF00000000)) 
    \count[2]_i_1 
       (.I0(\count[12]_i_2_n_0 ),
        .I1(\count[12]_i_3_n_0 ),
        .I2(count[3]),
        .I3(count[10]),
        .I4(count[6]),
        .I5(\count_reg[4]_i_2_n_6 ),
        .O(count_0[2]));
  LUT6 #(
    .INIT(64'hFDFFFFFF00000000)) 
    \count[3]_i_1 
       (.I0(\count[12]_i_2_n_0 ),
        .I1(\count[12]_i_3_n_0 ),
        .I2(count[3]),
        .I3(count[10]),
        .I4(count[6]),
        .I5(\count_reg[4]_i_2_n_5 ),
        .O(count_0[3]));
  LUT6 #(
    .INIT(64'hFDFFFFFF00000000)) 
    \count[4]_i_1 
       (.I0(\count[12]_i_2_n_0 ),
        .I1(\count[12]_i_3_n_0 ),
        .I2(count[3]),
        .I3(count[10]),
        .I4(count[6]),
        .I5(\count_reg[4]_i_2_n_4 ),
        .O(count_0[4]));
  LUT6 #(
    .INIT(64'hFDFFFFFF00000000)) 
    \count[5]_i_1 
       (.I0(\count[12]_i_2_n_0 ),
        .I1(\count[12]_i_3_n_0 ),
        .I2(count[3]),
        .I3(count[10]),
        .I4(count[6]),
        .I5(\count_reg[8]_i_2_n_7 ),
        .O(count_0[5]));
  LUT6 #(
    .INIT(64'hFDFFFFFF00000000)) 
    \count[6]_i_1 
       (.I0(\count[12]_i_2_n_0 ),
        .I1(\count[12]_i_3_n_0 ),
        .I2(count[3]),
        .I3(count[10]),
        .I4(count[6]),
        .I5(\count_reg[8]_i_2_n_6 ),
        .O(count_0[6]));
  LUT6 #(
    .INIT(64'hFDFFFFFF00000000)) 
    \count[7]_i_1 
       (.I0(\count[12]_i_2_n_0 ),
        .I1(\count[12]_i_3_n_0 ),
        .I2(count[3]),
        .I3(count[10]),
        .I4(count[6]),
        .I5(\count_reg[8]_i_2_n_5 ),
        .O(count_0[7]));
  LUT6 #(
    .INIT(64'hFDFFFFFF00000000)) 
    \count[8]_i_1 
       (.I0(\count[12]_i_2_n_0 ),
        .I1(\count[12]_i_3_n_0 ),
        .I2(count[3]),
        .I3(count[10]),
        .I4(count[6]),
        .I5(\count_reg[8]_i_2_n_4 ),
        .O(count_0[8]));
  LUT6 #(
    .INIT(64'hFDFFFFFF00000000)) 
    \count[9]_i_1 
       (.I0(\count[12]_i_2_n_0 ),
        .I1(\count[12]_i_3_n_0 ),
        .I2(count[3]),
        .I3(count[10]),
        .I4(count[6]),
        .I5(\count_reg[12]_i_4_n_7 ),
        .O(count_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count_0[0]),
        .Q(count[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count_0[10]),
        .Q(count[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count_0[11]),
        .Q(count[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count_0[12]),
        .Q(count[12]),
        .R(reset));
  CARRY4 \count_reg[12]_i_4 
       (.CI(\count_reg[8]_i_2_n_0 ),
        .CO(\NLW_count_reg[12]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_4_n_4 ,\count_reg[12]_i_4_n_5 ,\count_reg[12]_i_4_n_6 ,\count_reg[12]_i_4_n_7 }),
        .S(count[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count_0[1]),
        .Q(count[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count_0[2]),
        .Q(count[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count_0[3]),
        .Q(count[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count_0[4]),
        .Q(count[4]),
        .R(reset));
  CARRY4 \count_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[4]_i_2_n_0 ,\NLW_count_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_2_n_4 ,\count_reg[4]_i_2_n_5 ,\count_reg[4]_i_2_n_6 ,\count_reg[4]_i_2_n_7 }),
        .S(count[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count_0[5]),
        .Q(count[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count_0[6]),
        .Q(count[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count_0[7]),
        .Q(count[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count_0[8]),
        .Q(count[8]),
        .R(reset));
  CARRY4 \count_reg[8]_i_2 
       (.CI(\count_reg[4]_i_2_n_0 ),
        .CO({\count_reg[8]_i_2_n_0 ,\NLW_count_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_2_n_4 ,\count_reg[8]_i_2_n_5 ,\count_reg[8]_i_2_n_6 ,\count_reg[8]_i_2_n_7 }),
        .S(count[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(count_0[9]),
        .Q(count[9]),
        .R(reset));
  FDRE #(
    .INIT(1'b1)) 
    reset_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(reset),
        .R(1'b0));
endmodule

module graycounter
   (pNextToRead,
    \binary_count_reg[0]_0 ,
    presetFull,
    full_reg,
    full_reg_0,
    empty_reg,
    ftdi_clk_IBUF_BUFG,
    status,
    pNextToWrite,
    sendData,
    txFIFOEmpty);
  output [4:0]pNextToRead;
  output \binary_count_reg[0]_0 ;
  output presetFull;
  output full_reg;
  output full_reg_0;
  output empty_reg;
  input ftdi_clk_IBUF_BUFG;
  input status;
  input [4:0]pNextToWrite;
  input sendData;
  input txFIFOEmpty;

  wire [4:0]binary_count0__0;
  wire \binary_count_reg[0]_0 ;
  wire [4:4]binary_count_reg__0;
  wire [3:0]binary_count_reg__1;
  wire empty_i_2_n_0;
  wire empty_reg;
  wire ftdi_clk_IBUF_BUFG;
  wire full_reg;
  wire full_reg_0;
  wire [4:0]pNextToRead;
  wire [4:0]pNextToWrite;
  wire [3:0]p_0_out;
  wire presetFull;
  wire sendData;
  wire status;
  wire txFIFOEmpty;

  LUT1 #(
    .INIT(2'h1)) 
    \binary_count[0]_i_1__0 
       (.I0(binary_count_reg__1[0]),
        .O(binary_count0__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[2]_i_1__0 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToRead[0]),
        .I2(binary_count_reg__1[2]),
        .O(binary_count0__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \binary_count[3]_i_1__0 
       (.I0(pNextToRead[0]),
        .I1(binary_count_reg__1[0]),
        .I2(binary_count_reg__1[2]),
        .I3(binary_count_reg__1[3]),
        .O(binary_count0__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \binary_count[4]_i_1__0 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[0]),
        .I2(pNextToRead[0]),
        .I3(binary_count_reg__1[3]),
        .I4(binary_count_reg__0),
        .O(binary_count0__0[4]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[0] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(binary_count0__0[0]),
        .Q(binary_count_reg__1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[2] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(binary_count0__0[2]),
        .Q(binary_count_reg__1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[3] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(binary_count0__0[3]),
        .Q(binary_count_reg__1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[4] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(binary_count0__0[4]),
        .Q(binary_count_reg__0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000090000090)) 
    empty_i_1
       (.I0(pNextToRead[4]),
        .I1(pNextToWrite[4]),
        .I2(empty_i_2_n_0),
        .I3(pNextToWrite[3]),
        .I4(pNextToRead[3]),
        .I5(status),
        .O(empty_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_i_2
       (.I0(pNextToRead[0]),
        .I1(pNextToWrite[0]),
        .I2(pNextToWrite[2]),
        .I3(pNextToRead[2]),
        .I4(pNextToWrite[1]),
        .I5(pNextToRead[1]),
        .O(empty_i_2_n_0));
  LUT6 #(
    .INIT(64'h8200000000008200)) 
    full_i_1
       (.I0(status),
        .I1(pNextToRead[4]),
        .I2(pNextToWrite[4]),
        .I3(empty_i_2_n_0),
        .I4(pNextToWrite[3]),
        .I5(pNextToRead[3]),
        .O(presetFull));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[0]_i_1 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToRead[0]),
        .O(p_0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[1]_i_1__0 
       (.I0(pNextToRead[0]),
        .I1(binary_count_reg__1[2]),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[2]_i_1__0 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[3]),
        .O(p_0_out[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[3]_i_1__0 
       (.I0(binary_count_reg__1[3]),
        .I1(binary_count_reg__0),
        .O(p_0_out[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \graycount[4]_i_1__0 
       (.I0(sendData),
        .I1(txFIFOEmpty),
        .O(\binary_count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[0] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_out[0]),
        .Q(pNextToRead[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[1] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_out[1]),
        .Q(pNextToRead[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[2] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_out[2]),
        .Q(pNextToRead[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[3] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_out[3]),
        .Q(pNextToRead[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[4] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(binary_count_reg__0),
        .Q(pNextToRead[4]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6006)) 
    status_reg_i_1
       (.I0(pNextToRead[3]),
        .I1(pNextToWrite[4]),
        .I2(pNextToRead[4]),
        .I3(pNextToWrite[3]),
        .O(full_reg_0));
  LUT4 #(
    .INIT(16'h6006)) 
    status_reg_i_2
       (.I0(pNextToRead[4]),
        .I1(pNextToWrite[3]),
        .I2(pNextToWrite[4]),
        .I3(pNextToRead[3]),
        .O(full_reg));
endmodule

(* ORIG_REF_NAME = "graycounter" *) 
module graycounter_1
   (pNextToWrite,
    p_0_in,
    clk_36M,
    dataGood,
    full_reg);
  output [4:0]pNextToWrite;
  output p_0_in;
  input clk_36M;
  input dataGood;
  input full_reg;

  wire [4:0]binary_count0;
  wire [4:4]binary_count_reg__0;
  wire [3:0]binary_count_reg__1;
  wire clk_36M;
  wire dataGood;
  wire full_reg;
  wire [4:0]pNextToWrite;
  wire p_0_in;
  wire [3:0]p_0_out;

  LUT1 #(
    .INIT(2'h1)) 
    \binary_count[0]_i_1 
       (.I0(binary_count_reg__1[0]),
        .O(binary_count0[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[2]_i_1 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToWrite[0]),
        .I2(binary_count_reg__1[2]),
        .O(binary_count0[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \binary_count[3]_i_1 
       (.I0(pNextToWrite[0]),
        .I1(binary_count_reg__1[0]),
        .I2(binary_count_reg__1[2]),
        .I3(binary_count_reg__1[3]),
        .O(binary_count0[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \binary_count[4]_i_1 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[0]),
        .I2(pNextToWrite[0]),
        .I3(binary_count_reg__1[3]),
        .I4(binary_count_reg__0),
        .O(binary_count0[4]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[0] 
       (.C(clk_36M),
        .CE(p_0_in),
        .D(binary_count0[0]),
        .Q(binary_count_reg__1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[2] 
       (.C(clk_36M),
        .CE(p_0_in),
        .D(binary_count0[2]),
        .Q(binary_count_reg__1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[3] 
       (.C(clk_36M),
        .CE(p_0_in),
        .D(binary_count0[3]),
        .Q(binary_count_reg__1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[4] 
       (.C(clk_36M),
        .CE(p_0_in),
        .D(binary_count0[4]),
        .Q(binary_count_reg__0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[0]_i_1__0 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToWrite[0]),
        .O(p_0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[1]_i_1 
       (.I0(pNextToWrite[0]),
        .I1(binary_count_reg__1[2]),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[2]_i_1 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[3]),
        .O(p_0_out[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[3]_i_1 
       (.I0(binary_count_reg__1[3]),
        .I1(binary_count_reg__0),
        .O(p_0_out[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \graycount[4]_i_1__2 
       (.I0(dataGood),
        .I1(full_reg),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[0] 
       (.C(clk_36M),
        .CE(p_0_in),
        .D(p_0_out[0]),
        .Q(pNextToWrite[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[1] 
       (.C(clk_36M),
        .CE(p_0_in),
        .D(p_0_out[1]),
        .Q(pNextToWrite[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[2] 
       (.C(clk_36M),
        .CE(p_0_in),
        .D(p_0_out[2]),
        .Q(pNextToWrite[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[3] 
       (.C(clk_36M),
        .CE(p_0_in),
        .D(p_0_out[3]),
        .Q(pNextToWrite[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[4] 
       (.C(clk_36M),
        .CE(p_0_in),
        .D(binary_count_reg__0),
        .Q(pNextToWrite[4]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "graycounter" *) 
module graycounter_2
   (pNextToRead,
    \binary_count_reg[4]_0 ,
    presetFull,
    full_reg,
    full_reg_0,
    empty_reg,
    sys_clk_IBUF_BUFG,
    status,
    pNextToWrite,
    state,
    rxFIFOEmpty);
  output [4:0]pNextToRead;
  output \binary_count_reg[4]_0 ;
  output presetFull;
  output full_reg;
  output full_reg_0;
  output empty_reg;
  input sys_clk_IBUF_BUFG;
  input status;
  input [4:0]pNextToWrite;
  input [1:0]state;
  input rxFIFOEmpty;

  wire [4:0]binary_count0__2;
  wire \binary_count_reg[4]_0 ;
  wire [4:4]binary_count_reg__0;
  wire [3:0]binary_count_reg__1;
  wire empty_i_2__0_n_0;
  wire empty_reg;
  wire full_reg;
  wire full_reg_0;
  wire [4:0]pNextToRead;
  wire [4:0]pNextToWrite;
  wire [3:0]p_0_out;
  wire presetFull;
  wire rxFIFOEmpty;
  wire [1:0]state;
  wire status;
  wire sys_clk_IBUF_BUFG;

  LUT1 #(
    .INIT(2'h1)) 
    \binary_count[0]_i_1__2 
       (.I0(binary_count_reg__1[0]),
        .O(binary_count0__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[2]_i_1__2 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToRead[0]),
        .I2(binary_count_reg__1[2]),
        .O(binary_count0__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \binary_count[3]_i_1__2 
       (.I0(pNextToRead[0]),
        .I1(binary_count_reg__1[0]),
        .I2(binary_count_reg__1[2]),
        .I3(binary_count_reg__1[3]),
        .O(binary_count0__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \binary_count[4]_i_1__2 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[0]),
        .I2(pNextToRead[0]),
        .I3(binary_count_reg__1[3]),
        .I4(binary_count_reg__0),
        .O(binary_count0__2[4]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\binary_count_reg[4]_0 ),
        .D(binary_count0__2[0]),
        .Q(binary_count_reg__1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\binary_count_reg[4]_0 ),
        .D(binary_count0__2[2]),
        .Q(binary_count_reg__1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\binary_count_reg[4]_0 ),
        .D(binary_count0__2[3]),
        .Q(binary_count_reg__1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\binary_count_reg[4]_0 ),
        .D(binary_count0__2[4]),
        .Q(binary_count_reg__0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000090000090)) 
    empty_i_1__0
       (.I0(pNextToRead[4]),
        .I1(pNextToWrite[4]),
        .I2(empty_i_2__0_n_0),
        .I3(pNextToWrite[3]),
        .I4(pNextToRead[3]),
        .I5(status),
        .O(empty_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_i_2__0
       (.I0(pNextToRead[0]),
        .I1(pNextToWrite[0]),
        .I2(pNextToWrite[2]),
        .I3(pNextToRead[2]),
        .I4(pNextToWrite[1]),
        .I5(pNextToRead[1]),
        .O(empty_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h8200000000008200)) 
    full_i_1__0
       (.I0(status),
        .I1(pNextToRead[4]),
        .I2(pNextToWrite[4]),
        .I3(empty_i_2__0_n_0),
        .I4(pNextToWrite[3]),
        .I5(pNextToRead[3]),
        .O(presetFull));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[0]_i_1__1 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToRead[0]),
        .O(p_0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[1]_i_1__2 
       (.I0(pNextToRead[0]),
        .I1(binary_count_reg__1[2]),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[2]_i_1__2 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[3]),
        .O(p_0_out[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[3]_i_1__2 
       (.I0(binary_count_reg__1[3]),
        .I1(binary_count_reg__0),
        .O(p_0_out[3]));
  LUT3 #(
    .INIT(8'h04)) 
    \graycount[4]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(rxFIFOEmpty),
        .O(\binary_count_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\binary_count_reg[4]_0 ),
        .D(p_0_out[0]),
        .Q(pNextToRead[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\binary_count_reg[4]_0 ),
        .D(p_0_out[1]),
        .Q(pNextToRead[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\binary_count_reg[4]_0 ),
        .D(p_0_out[2]),
        .Q(pNextToRead[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\binary_count_reg[4]_0 ),
        .D(p_0_out[3]),
        .Q(pNextToRead[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\binary_count_reg[4]_0 ),
        .D(binary_count_reg__0),
        .Q(pNextToRead[4]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6006)) 
    status_reg_i_1__0
       (.I0(pNextToRead[3]),
        .I1(pNextToWrite[4]),
        .I2(pNextToRead[4]),
        .I3(pNextToWrite[3]),
        .O(full_reg_0));
  LUT4 #(
    .INIT(16'h6006)) 
    status_reg_i_2__0
       (.I0(pNextToRead[4]),
        .I1(pNextToWrite[3]),
        .I2(pNextToWrite[4]),
        .I3(pNextToRead[3]),
        .O(full_reg));
endmodule

(* ORIG_REF_NAME = "graycounter" *) 
module graycounter_3
   (pNextToWrite,
    \binary_count_reg[4]_0 ,
    ftdi_clk_IBUF_BUFG,
    recvData,
    rxFIFOFull);
  output [4:0]pNextToWrite;
  output \binary_count_reg[4]_0 ;
  input ftdi_clk_IBUF_BUFG;
  input recvData;
  input rxFIFOFull;

  wire [4:0]binary_count0__1;
  wire \binary_count_reg[4]_0 ;
  wire [4:4]binary_count_reg__0;
  wire [3:0]binary_count_reg__1;
  wire ftdi_clk_IBUF_BUFG;
  wire [4:0]pNextToWrite;
  wire [3:0]p_0_out;
  wire recvData;
  wire rxFIFOFull;

  LUT1 #(
    .INIT(2'h1)) 
    \binary_count[0]_i_1__1 
       (.I0(binary_count_reg__1[0]),
        .O(binary_count0__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[2]_i_1__1 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToWrite[0]),
        .I2(binary_count_reg__1[2]),
        .O(binary_count0__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \binary_count[3]_i_1__1 
       (.I0(pNextToWrite[0]),
        .I1(binary_count_reg__1[0]),
        .I2(binary_count_reg__1[2]),
        .I3(binary_count_reg__1[3]),
        .O(binary_count0__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \binary_count[4]_i_1__1 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[0]),
        .I2(pNextToWrite[0]),
        .I3(binary_count_reg__1[3]),
        .I4(binary_count_reg__0),
        .O(binary_count0__1[4]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[0] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[4]_0 ),
        .D(binary_count0__1[0]),
        .Q(binary_count_reg__1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[2] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[4]_0 ),
        .D(binary_count0__1[2]),
        .Q(binary_count_reg__1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[3] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[4]_0 ),
        .D(binary_count0__1[3]),
        .Q(binary_count_reg__1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[4] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[4]_0 ),
        .D(binary_count0__1[4]),
        .Q(binary_count_reg__0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[0]_i_1__2 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToWrite[0]),
        .O(p_0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[1]_i_1__1 
       (.I0(pNextToWrite[0]),
        .I1(binary_count_reg__1[2]),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[2]_i_1__1 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[3]),
        .O(p_0_out[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[3]_i_1__1 
       (.I0(binary_count_reg__1[3]),
        .I1(binary_count_reg__0),
        .O(p_0_out[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \graycount[4]_i_1__1 
       (.I0(recvData),
        .I1(rxFIFOFull),
        .O(\binary_count_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[0] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[4]_0 ),
        .D(p_0_out[0]),
        .Q(pNextToWrite[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[1] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[4]_0 ),
        .D(p_0_out[1]),
        .Q(pNextToWrite[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[2] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[4]_0 ),
        .D(p_0_out[2]),
        .Q(pNextToWrite[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[3] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[4]_0 ),
        .D(p_0_out[3]),
        .Q(pNextToWrite[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[4] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[4]_0 ),
        .D(binary_count_reg__0),
        .Q(pNextToWrite[4]),
        .R(1'b0));
endmodule
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
