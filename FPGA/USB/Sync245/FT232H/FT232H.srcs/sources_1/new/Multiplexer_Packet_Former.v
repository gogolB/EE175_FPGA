`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2018 01:06:58 PM
// Design Name: 
// Module Name: Multiplexer_Packet_Former
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
    
    wire fifoReadClock;
    
    assign fifoReadClock = sys_clk;
    assign packetDataClk = fifoReadClock;
    
    // Camera 1 Pixel FIFO
    reg camera1ReadData;
    wire [7:0] camera1Data;
    wire camera1FIFOFull;
    wire camera1FIFOEmpty;
    async_fifo#(.DATADEPTH(256),.addresswidth(8)) camera1FIFO( .reset(reset),
                            .write_clk(camera1PixelDataClk),
                            .write_en(camera1PixelDataGood),
                            .inputData(camera1PixelData),
                            .read_clk(fifoReadClock),
                            .read_en(camera1ReadData),
                            .outputData(camera1Data),
                            .full(camera1FIFOFull),
                            .empty(camera1FIFOEmpty));
    
    // Camera 2 Pixel FIFO
    reg camera2ReadData;
    wire [7:0] camera2Data;
    wire camera2FIFOFull;
    wire camera2FIFOEmpty;
    async_fifo#(.DATADEPTH(256),.addresswidth(8)) camera2FIFO( .reset(reset),
                            .write_clk(camera2PixelDataClk),
                            .write_en(camera2PixelDataGood),
                            .inputData(camera2PixelData),
                            .read_clk(fifoReadClock),
                            .read_en(camera2ReadData),
                            .outputData(camera2Data),
                            .full(camera2FIFOFull),
                            .empty(camera2FIFOEmpty));
                            
    // Camera 3 Pixel FIFO
    reg camera3ReadData;
    wire [7:0] camera3Data;
    wire camera3FIFOFull;
    wire camera3FIFOEmpty;
    async_fifo#(.DATADEPTH(256),.addresswidth(8)) camera3FIFO( .reset(reset),
                            .write_clk(camera3PixelDataClk),
                            .write_en(camera3PixelDataGood),
                            .inputData(camera3PixelData),
                            .read_clk(fifoReadClock),
                            .read_en(camera3ReadData),
                            .outputData(camera3Data),
                            .full(camera3FIFOFull),
                            .empty(camera3FIFOEmpty));      
                            
                            
    // Output Packet FIFO
    reg outputPacketWriteData;
    reg outputPacketReadData;
    reg [7:0] outputPacketData;
    wire outputPacketFIFOFull;
    reg outputPacketGood;
    

    assign packetDataGood = outputPacketGood;
    assign packetData = outputPacketData;                                                              
                                    
    reg[3:0] state;
    reg[3:0] nextState; 
    parameter IDLE = 0, READ_CAMERA_1 = 1, READ_CAMERA_2 = 2, READ_CAMERA_3 = 3, WAIT_CAMERA_1 = 4, WAIT_CAMERA_2 = 5, WAIT_CAMERA_3 = 6;
    
    always @(state) begin
        case(state)
            IDLE: begin
                outputPacketWriteData <= 0;
                outputPacketData <= 8'hAA;
            end
            
            READ_CAMERA_1: begin
                outputPacketWriteData <= 1;
                camera1ReadData <= 1;
                camera2ReadData <= 0;
                camera3ReadData <= 0;
                outputPacketData <= camera1Data;
                outputPacketGood <= 1;
            end
            
            READ_CAMERA_2: begin
                outputPacketWriteData <= 1;
                camera1ReadData <= 0;
                camera2ReadData <= 1;
                camera3ReadData <= 0;
                outputPacketData <= camera2Data;
                outputPacketGood <= 1;
            end
            
            READ_CAMERA_3: begin
                outputPacketWriteData <= 1;
                camera1ReadData <= 0;
                camera2ReadData <= 0;
                camera3ReadData <= 1;
                outputPacketData <= camera3Data;
                outputPacketGood <= 1;
            end
            
            WAIT_CAMERA_1: begin
                outputPacketWriteData <= 0;
                camera1ReadData <= 0;
                camera2ReadData <= 0;
                camera3ReadData <= 0;
                outputPacketData <= 8'h11;
                outputPacketGood <= 0;
            end
            
            WAIT_CAMERA_2: begin
                outputPacketWriteData <= 0;
                camera1ReadData <= 0;
                camera2ReadData <= 0;
                camera3ReadData <= 0;
                outputPacketData <= 8'h22;
                outputPacketGood <= 0;
            end 
            
            WAIT_CAMERA_3: begin
                outputPacketWriteData <= 0;
                camera1ReadData <= 0;
                camera2ReadData <= 0;
                camera3ReadData <= 0;
                outputPacketData <= 8'h33;
                outputPacketGood <= 0;
            end                                                               
        endcase
    end
    
    
    always@(posedge sys_clk) begin
        if(reset)
            state <= IDLE;
        if(readData) begin
            case(state)
                IDLE: begin
                    if(~camera1FIFOEmpty) begin
                        state <= READ_CAMERA_1;
                    end else begin
                        state <= IDLE;
                    end
                end
                
                READ_CAMERA_1: begin
                    if(~camera2FIFOEmpty) begin
                        state <= READ_CAMERA_2;
                    end else begin
                        state <= WAIT_CAMERA_2;
                    end
                end
                
                WAIT_CAMERA_2: begin
                    if(~camera2FIFOEmpty) begin
                        state <= READ_CAMERA_2;
                    end else begin
                        state <= WAIT_CAMERA_2;
                    end
                end
    
                READ_CAMERA_2: begin
                    if(~camera3FIFOEmpty) begin
                        state <= READ_CAMERA_3;
                    end else begin
                        state <= WAIT_CAMERA_3;
                    end
                end
                
                WAIT_CAMERA_3: begin
                    if(~camera3FIFOEmpty) begin
                        state <= READ_CAMERA_3;
                    end else begin
                        state <= WAIT_CAMERA_3;
                    end
                end
    
                READ_CAMERA_3: begin
                    if(~camera1FIFOEmpty) begin
                        state <= READ_CAMERA_1;
                    end else begin
                        state <= WAIT_CAMERA_1;
                    end
                end
                
                WAIT_CAMERA_1: begin
                    if(~camera1FIFOEmpty) begin
                        state <= READ_CAMERA_1;
                    end else begin
                        state <= WAIT_CAMERA_1;
                    end
                end
                
                default: begin
                    state <= IDLE;
                end
            endcase
        end
       
    end                                                                                                                       
    
    
    
    
endmodule
