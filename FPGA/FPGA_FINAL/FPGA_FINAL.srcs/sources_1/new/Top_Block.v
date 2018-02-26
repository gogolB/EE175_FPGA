`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2018 01:19:33 PM
// Design Name: 
// Module Name: Top_Block
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


module Top_Block(
    // FTDI Chip.
    inout wire[7:0] ftdi_d,
    input wire ftdi_rxf,
    input wire ftdi_txe,
    output wire ftdi_wr,
    output wire ftdi_rd,
    output wire ftdi_oe,
    input wire ftdi_clk,
    output wire ftdi_siwu,
    
    // Local system clocks
    input sysClk,
    // Debug Variables
    output[3:0] STATE
    );
    
    // Global reset register. Pull all resets high for a while.
    reg global_rst;
    
    // This will contain the data from the multiplexer to the Sync245Controller
    wire[7:0] dataBus;
    // This is the clock signal upon which the data is being generated.
    wire mpfClkOut;
    // This is an indicator if the data is good or not.
    wire mpfDataGood;
    // This is an indicator if if we should read data from the MPF.
    wire mpfReadData;
    
    // Data from the host computer.
    wire[7:0] hostDataBus;
    // If we have new data from the host computer.
    wire newHostData;
    // If we should read the data from the host computer.
    reg readHostData;
    
    // Is the transmit buffer of the SyncSM full?
    wire txF;
    
    // Is the transmit buffer of the SyncSM empty?
    wire txE;
    
    // What is the state of the Sync Controller FSM?
    wire[3:0] sync_state;
    // What did we actually send over the buss
    wire[7:0] outData;
    
    // We should only read data from the MPF if the tx buffer in the Sync245 Controller isn't full
    assign mpfReadData = ~txF;
    
    // Sync 245 Controller.
    Sync_245_Controller controller(.D(ftdi_d),
                                   .RXF(ftdi_rxf),
                                   .TXE(ftdi_txe),
                                   .WR(ftdi_wr),
                                   .RD(ftdi_rd),
                                   .OE(ftdi_oe),
                                   .CLKOUT(ftdi_clk),
                                   
                                   .inputData(dataBus),
                                   .inputClock(mpfClkOut),
                                   .inputDataGood(mpfDataGood),
                                   
                                   .hostData(hostDataBus),
                                   .outputClock(sysClk),
                                   .readData(readHostData),
                                   .hasData(newHostData),
                                   
                                   .reset(global_rst),
                                   .dataSent(outData),
                                   .txFULL(txF),
                                   .txEMPTY(txE),
                                   ._state(sync_state)
                                   );
                                   
    /*
    module Multiplexer_Packet_Former(
        // Packet Data Output
        output [7:0] packetData,
        output packetDataGood,
        output packetDataClk,
        input readData,
        
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
    
    // Camera 1 Wires
    wire [7:0] camera1DataBus;
    wire camera1DataGood;
    wire camera1DataClk;
    
    // Camera 2 Wire
    wire [7:0] camera2DataBus;
    wire camera2DataGood;
    wire camera2DataClk;

    // Camera 3 Wire
    wire [7:0] camera3DataBus;
    wire camera3DataGood;
    wire camera3DataClk;
     
    Multiplexer_Packet_Former mpf(  .packetData(dataBus),
                                    .packetDataGood(mpfDataGood),
                                    .packetDataClk(mpfClkOut),
                                    .readData(mpfReadData),
                                    
                                    // Camera 1
                                    .camera1PixelData(camera1DataBus),
                                    .camera1PixelDataGood(camera1DataGood),
                                    .camera1PixelDataClk(camera1DataClk),
                                    
                                    // Camera 2
                                    .camera2PixelData(camera2DataBus),
                                    .camera2PixelDataGood(camera2DataGood),
                                    .camera2PixelDataClk(camera2DataClk),
                                    
                                    // Camera 3
                                    .camera3PixelData(camera3DataBus),
                                    .camera3PixelDataGood(camera3DataGood),
                                    .camera3PixelDataClk(camera3DataClk),
                                    
                                    .sys_clk(sysClk),
                                    .reset(global_rst)
                                    );
endmodule
