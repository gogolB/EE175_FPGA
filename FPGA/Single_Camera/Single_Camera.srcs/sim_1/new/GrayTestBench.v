`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2018 01:47:46 PM
// Design Name: 
// Module Name: GrayTestBench
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


module GrayTestBench(

    );
    
    reg clk_out;
    reg[15:0] pixel_data;
    reg pixel_valid;
    reg frame_done;
    
    wire[7:0] gray_pixel;
    wire frame_done_out;
    wire pixel_valid_out;
    wire gray_clk_out;
    
    wire[7:0] R;
    wire[7:0] B;
    wire[7:0] G;
    
        // Apply MSB to top bits
    assign R = {pixel_data[15:11], 3'b00};
    // Append MSB of R pixel Data to LSB of Red
//    assign red[2:0] = 0;
    
    // Now do the green
    assign B = {pixel_data[10:5], 2'b00};
//    assign green[1:0] = 0;
    
    // Now the blue
    assign G = {pixel_data[4:0], 3'b000}; 
    
    wire[15:0] total;
    
    assign total = R + G + B;
    
    rgb2gray uut
        (.clk_in(clk_out),
         .pixel_data_in(pixel_data),
         .pixel_valid(pixel_valid),
         .frame_done(frame_done),
        
         .gray(gray_pixel),
         .frame_done_out(frame_done_out),
         .pixel_valid_out(pixel_valid_out),
    //    output reg new_gray_pixel,
        .clk_out(gray_clk_out)
        );
        
        initial begin
            clk_out = 0;
            pixel_data = 0;
            pixel_valid = 0;
            frame_done = 0;
            forever begin
               #1 clk_out = ~clk_out;
               #1 pixel_data = pixel_data + 1;
            end
        end
        
        initial begin
        #1000;
        pixel_valid = 1;
        #1000;
        frame_done = 1;
        $finish;
        end
    
endmodule
