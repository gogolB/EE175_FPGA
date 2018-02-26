`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2018 11:10:45 PM
// Design Name: 
// Module Name: Sync_245_Controller
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


module Sync_245_Controller(
    // FT232 Facing
    inout wire [7:0] D,
    input wire RXF,
    input wire TXE,
    output reg WR,
    output reg RD,
    output reg OE,
    input wire CLKOUT,
    
    // Internal Implementation Facing
    // Data going out to the host.
    input wire [7:0] inputData,
    input wire inputClock,
    input wire inputDataGood,
    
    // Data that came in to the FPGA from the host.
    output [7:0] hostData,
    input wire outputClock,
    input  wire readData,
    output hasData,
    
    input reset,
    output [7:0] dataSent,
    output txFULL,
    output txEMPTY,
    output[3:0] _state
    );
    
    reg sendData;
    reg recvData;
    wire txFIFOFull;
    wire txFIFOEmpty;
    wire rxFIFOFull;
    wire rxFIFOEmpty;
    
    wire[7:0] dataToSend;
    
    assign D = sendData ? dataToSend:8'hz;
    
    assign dataSent = dataToSend;
    
    assign hasData = ~rxFIFOEmpty;
    
    assign txFULL = txFIFOFull;
    assign txEMPTY = txFIFOEmpty;
    
    
    initial begin
        WR <= 1;
        RD <= 1;
        OE <= 0;
        sendData = 0;
        recvData = 0;
    end
    
    async_fifo dataTxFifo(.reset(reset),
                          .write_clk(inputClock),
                          .write_en(inputDataGood),
                          .inputData(inputData),
                          .read_clk(CLKOUT),
                          .read_en(sendData),
                          .outputData(dataToSend),
                          .full(txFIFOFull),
                          .empty(txFIFOEmpty));
                          
    async_fifo dataRxFifo(.reset(reset),
                            .write_clk(CLKOUT),
                            .write_en(recvData),
                            .inputData(D),
                            .read_clk(outputClock),
                            .read_en(readData),
                            .outputData(hostData),
                            .full(rxFIFOFull),
                            .empty(rxFIFOEmpty));
                            
     reg[3:0] state;
     parameter IDLE=0, PRE_RD_START=1, RD_START=2, READ_DATA=3, RD_STOP=4, WR_START=5, WR_START_POST= 6, WRITE_DATA=7, WR_STOP=8, WR_POST_2=9, WR_START_PRE=10, WR_WAIT=11;
     
     //reg[3:0] nextState;
     
     assign _state = state;
     
     //always @(negedge CLKOUT) begin
     //   state <= nextState;
     //end
     
     // State Actions
     always @(state) begin
        case(state)
            PRE_RD_START: begin
                OE <= 0;
            end
            
            RD_START: begin
                
            end
            
            READ_DATA: begin
                RD <= 0;
                recvData <= 1;
            end
            
            RD_STOP: begin
                recvData <= 0;
                RD <= 1;
                OE <= 1;
            end
            
            WR_START: begin
                OE <=1;
                sendData <=1;
            end
            
            WR_START_POST: begin
                WR <=0;
                sendData <=1;
            end
            
            WRITE_DATA: begin
                sendData <= 1;
                WR <=0;
            end
            
            WR_STOP: begin
                sendData <= 0;
                WR <=1;
            end
        
            IDLE: begin
                WR = 1;
                RD = 1;
                OE = 1;
        
                sendData = 0;
                recvData = 0;
            end
            
            WR_WAIT: begin
                sendData <= 0;
                WR <=1;
            end
            default: begin
                 WR = 1;
                 RD = 1;
                 OE = 1;
                 
                 sendData = 0;
                 recvData = 0;
            end
        endcase
     end
     
     
     always@(negedge CLKOUT) begin
        if (reset)
            state = IDLE;

            case(state)
                default: begin
                    state = IDLE;
                end
                
                IDLE: begin
                    if(~RXF & ~rxFIFOFull) begin
                       state = PRE_RD_START;
                     end
                     else if(~TXE & ~txFIFOEmpty)begin
                        state = WR_START;
                     end
                end
                
                PRE_RD_START: begin
                    state = RD_START;
                end
                
                RD_START: begin
                    state = READ_DATA;
                end
                
                READ_DATA: begin
                    if(~RXF && ~rxFIFOFull) begin
                        state = READ_DATA;
                    end
                    else begin
                        state = RD_STOP;
                    end
                end
                
                RD_STOP: begin
                    state = IDLE;
                end
                
                WR_START_PRE: begin
                    state = WR_START;
                end
                
                WR_START: begin
                    state = WR_START_POST;
                end
                
                WR_START_POST: begin
                    state = WRITE_DATA;
                end
                
                WR_POST_2: begin
                    state = WRITE_DATA;
                end
                
                WRITE_DATA: begin
                    if(~TXE && ~txFIFOEmpty) begin
                        state = WRITE_DATA;
                    end
                    else if(TXE && ~txFIFOEmpty) begin
                        state = WR_WAIT;
                    end
                    else if(txFIFOEmpty && ~TXE) begin
                        state = WR_STOP;
                    end
                    else begin
                        state = WR_STOP;
                    end 
                end
                
                WR_WAIT: begin
                    if(~TXE) begin
                        state = WRITE_DATA;
                    end
                    
                end
                
                WR_STOP: begin
                    state = IDLE;
                end
            
            endcase
     end
     
endmodule
