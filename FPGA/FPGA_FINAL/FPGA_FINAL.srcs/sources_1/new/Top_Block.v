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
    
    // Camera 1
    // Camera 2
    // Camera 3
    
    // Local system clocks
    input sysClk,
    // Debug Variables
    output[3:0] STATE
    );
    
    assign ftdi_siwu = 1'b0;
    
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
    
    // Register to start the whole thing...
    reg startCameras;
     
    // This module interleaves the pixels from the camera.
    // eg: C1_Px1,C2_Px1,C3_Px1,C1_Px2,C2_Px2,C3_Px2
    Multiplexer_Packet_Former mpf(  // Output data
                                    .packetData(dataBus),
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
                                    
                                    
    reg[3:0] state;
    parameter WAIT_FOR_START = 12,STREAMING=1, READ_HOST_DATA=2,PROCESS_HOST_DATA=3,RESET=4;
    
    // Counter to control how long to wait for before Reset is complete.
    reg[9:0] counter;
    
    // For Debugging.
    assign STATE = state;
    
    always@(state) begin
            case(state)
                // Pull the global reset pin high
                RESET: begin
                    global_rst <= 1;
                    startCameras <= 0;
                    readHostData <= 0;
                end
                // Pull the global reset low and wait for start char.
                WAIT_FOR_START: begin
                    global_rst <= 0;
                    startCameras <= 0;
                    readHostData <= 0;
                end
                // Currently activly transmitting data.
                STREAMING: begin
                    global_rst <= 0;
                    startCameras <= 1;
                    readHostData <=0;
                end
                // Reading data from the host.
                READ_HOST_DATA: begin
                    readHostData <=1;
                end
                
                // Checking if our data matches the magic start bit.
                PROCESS_HOST_DATA: begin
                    readHostData <= 0;
                end
                
                // Default state, pull reset high.
                default: begin
                    global_rst <= 1;
                    startCameras <= 0;
                    readHostData <=0;
                end
            endcase
        end
       
        
        always@(posedge sysClk) begin
            case(state)
                // Put us in reset and clear the counter.
                default: begin
                    state = RESET;
                    counter = 0;
                end
                
                // If the Counter meets some amount, move to wait for start.
                RESET: begin
                    counter <= counter + 1;
                    if(counter >= 10'h030)
                        state = WAIT_FOR_START;
                end
                
                // Wait until we have data from the host.
                WAIT_FOR_START: begin
                    if(newHostData)
                        state = READ_HOST_DATA;
                    else
                        state = WAIT_FOR_START;
                end
                
                // We have data, lets read it.
                READ_HOST_DATA: begin
                    state = PROCESS_HOST_DATA;
                end
                
                // We read the data, lets see if it matches 0xAA, if it does, enter streaming mode, otherwise go back to waiting.
                PROCESS_HOST_DATA: begin
                    if (hostDataBus == 8'b10101010)
                        state = STREAMING;
                    else
                        state = WAIT_FOR_START;
                end
                
                // We are streaming. No way to leave currentlt.
                // TODO: Add a way to leave streaming mode.
                STREAMING: begin
                    state = STREAMING;
                end
                
            endcase
        
        end
    
endmodule
