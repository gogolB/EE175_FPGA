`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2018 09:25:25 PM
// Design Name: 
// Module Name: MPF_Test_Bench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MPF_Test_Bench(

    );
    
    reg sysCLK;
    
    
    reg[7:0] C1Data;
    reg C1Good;
    reg C1CLK;
    reg[7:0] C2Data;
    reg C2Good;
    reg C2CLK;
    reg[7:0] C3Data;
    reg C3Good;
    reg C3CLK;
    
    wire[7:0] pktData;
    wire pktCLK;
    wire pktGood;
    reg pktRead;
    
    reg rst;
    
    // Set up intial values
    initial begin
        C1Data = 8'h00;
        C2Data = 8'h11;
        C3Data = 8'h22;
        C1Good = 0;
        C2Good = 0;
        C3Good = 0;
        pktRead = 0;
        rst = 0;
    end
    
    
    // Set up clocks.
    initial begin 
        sysCLK = 0;
        forever begin
            #5 sysCLK = ~sysCLK;
        end 
     end
    
    initial begin 
        C1CLK = 0;
        forever begin
            #42 C1CLK = ~C1CLK;
        end 
     end
    
    initial begin 
         C2CLK = 0;
         forever begin
             #42 C2CLK = ~C2CLK;
         end 
      end
    
    initial begin 
       C3CLK = 0;
       forever begin
           #42 C3CLK = ~C3CLK;
       end 
    end
    
    // Set up incrementers for the CLK Data.
    always@(posedge C1CLK) begin
        C1Data <= C1Data + 1;
    end
    
    always@(posedge C2CLK) begin
        C2Data <= C2Data + 1;
    end
    
    always@(posedge C3CLK) begin
        C3Data <= C3Data + 1;
    end
    
    /*
    module Multiplexer_Packet_Former(
        // Packet Data Output
        output [7:0] packetData,
        output packetDataGood,
        input packetDataClk,
        input readPacketData,
        
        // Camera 1 Input
        input [7:0] camera1PixelData,
        input camera1PixelDataGood,
        input camera1PixelDataClk,
        
        // Camera 2 Input
        input [7:0] camera2PixelData,
        input camera2PixelDataGood,
        input camera2PixelDataClk,
        
        // Camera 3 Input
        input [7:0] camera3PixelData,
        input camera3PixelDataGood,
        input camera3PixelDataClk,
        
        input sys_clk,
        input reset
        ); 
    */
    
    Multiplexer_Packet_Former uut(  .packetData(pktData), .packetDataGood(pktGood), .packetDataClk(pktCLK), .readPacketData(pktRead),
                                    .camera1PixelData(C1Data), .camera1PixelDataGood(C1Good), .camera1PixelDataClk(C1CLK),
                                    .camera2PixelData(C2Data), .camera2PixelDataGood(C2Good), .camera2PixelDataClk(C2CLK),
                                    .camera3PixelData(C3Data), .camera3PixelDataGood(C3Good), .camera3PixelDataClk(C3CLK),
                                    .sys_clk(sysCLK), .reset(rst));
                                    
    initial begin
    $display("Starting test");
    rst = 1;
    #20;
    rst = 0;
    #10;
    C1Good = 1;
    C2Good = 1;
    C3Good = 1;    
    pktRead = 1;
    
    #1000000;
    $finish;
    end
    
    
    
endmodule
