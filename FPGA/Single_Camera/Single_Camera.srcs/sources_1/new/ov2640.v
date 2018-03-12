`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2018 02:15:00 PM
// Design Name: 
// Module Name: ov2640
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


module ov2640(
    input sysclk,
    input rst,
    input start,
    
    // SCCB interface
    output scl,
    inout sda,
    
    // Main interface
    output xclk,
    input pclk,
    input href,
    input vsync,
    input [7:0] data,
    output rst_cm,
    
    // Data output
    output new_frame,
    output new_line,
    output new_pixel,
    output [15:0] pixel,
    output [3:0] state
    );
    
   reg [3:0] xclk_ctr_d, xclk_ctr_q;
 
     assign rst_cm = 1'b1; // active low
 
     assign xclk = xclk_ctr_q[3]; // clk div 8 = 12.5MHz
 
     localparam REG_COUNT = 9'd195;
 
     localparam STATE_SIZE = 3;
     localparam WAIT_RESET = 0,
                RESET_CAMERA = 1,
                WAIT_SETUP = 2,
                PROG_CAMERA = 3,
                DONE = 4;
                
     
 
     reg [STATE_SIZE-1:0] state_d, state_q;
 
     assign state = state_d;
     wire [7:0] reg_addr, reg_value;
     wire busy, ack;
 
     reg [7:0] rom_addr_d, rom_addr_q;
     reg write;
     reg [17:0] cam_dly_d, cam_dly_q;
 
     reg new_frame_d, new_frame_q;
     reg new_line_d, new_line_q;
     reg new_pixel_d, new_pixel_q;
     reg [15:0] pixel_d, pixel_q;
     reg [2:0] href_d, href_q;
     reg [2:0] vsync_d, vsync_q;
     reg [2:0] pclk_d, pclk_q;
     reg [7:0] data_d[2:0], data_q[2:0];
     reg byte_ct_d, byte_ct_q;
 
     assign pixel = pixel_q;
     assign new_frame = new_frame_q;
     assign new_line = new_line_q;
     assign new_pixel = new_pixel_q;
 
     sccb sccb (
             .clk(sysclk),
             .rst(rst),
             .scl(scl),
             .sda(sda),
             .addr(reg_addr),
             .value(reg_value),
             .write(write),
             .ack(ack),
             .busy(busy)
         );
 
     ov2640_reg reg_rom (
             .clk(sysclk),
             .addr(rom_addr_q),
             .reg_addr(reg_addr),
             .value(reg_value)
         );
 
     // Camera initalization block
     always @(*) begin
         xclk_ctr_d = xclk_ctr_q + 1'b1;
         rom_addr_d = rom_addr_q;
         write = 1'b0;
         cam_dly_d = 17'd0;
         state_d = state_q;
 
         case (state_q)
             WAIT_RESET: begin
                 cam_dly_d = cam_dly_q + 1'b1;
                 if (&cam_dly_q && start) //maxed
                     state_d = RESET_CAMERA;
             end
             RESET_CAMERA: begin
                 if (!busy) begin
                     if (rom_addr_q != 2) begin
                         rom_addr_d = rom_addr_q + 1'b1;
                         write = 1'b1;
                     end else begin
                         state_d = WAIT_SETUP;
                     end
                 end
             end
             WAIT_SETUP: begin
                 cam_dly_d = cam_dly_q + 1'b1;
                 if (&cam_dly_q) //maxed
                     state_d = PROG_CAMERA;
             end
             PROG_CAMERA: begin
                 if (!busy) begin
                     if (rom_addr_q != REG_COUNT) begin
                         rom_addr_d = rom_addr_q + 1'b1;
                         write = 1'b1;
                     end else begin
                         state_d = DONE;
                     end
                 end
             end
             DONE: begin
                 // do nothing
             end
             default: state_d = WAIT_RESET;
         endcase
 
         // Data capture
         href_d[0] = href;
         href_d[1] = href_q[0];
         href_d[2] = href_q[1];
         vsync_d[0] = vsync;
         vsync_d[1] = vsync_q[0];
         vsync_d[2] =vsync_q[1];
         pclk_d[0] = pclk;
         pclk_d[1] = pclk_q[0];
         pclk_d[2] = pclk_q[1];
         data_d[0] = data;
         data_d[1] = data_q[0];
         data_d[2] = data_q[1];
 
         new_frame_d = 1'b0;
         new_line_d = 1'b0;
         new_pixel_d = 1'b0;
         pixel_d = pixel_q;
         byte_ct_d = byte_ct_q;
 
         if (vsync_q[2:1] == 2'b01)
             new_frame_d = 1'b1;
 
         if (href_q[2:1] == 2'b01)
             new_line_d = 1'b1;
 
         if (!vsync_q[2] || !href_q[2])
             byte_ct_d = 1'b0;
 
         if (pclk_q[2:1] == 2'b01 && href_q[1] && vsync_q[1]) begin
             pixel_d = {pixel_q[7:0], data_q[2]};
             byte_ct_d = ~byte_ct_q;
             if (byte_ct_q)
                 new_pixel_d = 1'b1;
         end
     end
 
     always @(posedge sysclk) begin
         if (rst) begin
             rom_addr_q <= 8'h00;
             cam_dly_q <= 1'b0;
             state_q <= WAIT_RESET;
         end else begin
             rom_addr_q <= rom_addr_d;
             cam_dly_q <= cam_dly_d;
             state_q <= state_d;
         end
 
         xclk_ctr_q <= xclk_ctr_d;
 
         new_frame_q <= new_frame_d;
         new_line_q <= new_line_d;
         new_pixel_q <= new_pixel_d;
         pixel_q <= pixel_d;
         href_q <= href_d;
         vsync_q <= vsync_d;
         data_q[0] <= data_d[0];
         data_q[1] <= data_d[1];
         data_q[2] <= data_d[2];
         byte_ct_q <= byte_ct_d;
         pclk_q <= pclk_d;
     end
 
 endmodule    
