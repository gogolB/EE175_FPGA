`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2018 9:22 AM
// Design Name: 
// Module Name: clk_div
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: This module takes in the clock source and outputs a divided clock
//              based on the chosen parameters
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module clk_div #(parameter DIVIDER = 10000)(
    input wire clk_in,
    output reg clk_out
    );
    
    reg [$clog2(DIVIDER):0] count = 0;
    reg reset = 1;
    
    always @(posedge clk_in) begin
        if(reset) begin
            reset <= 0;
            clk_out <= 0;
            count <= 0;
        end
        
        else begin
            if(count == DIVIDER-1) begin
                clk_out <= ~clk_out;
                count <= 0;
            end
            else begin
                count <= count + 1;
            end
        end
    end
endmodule 