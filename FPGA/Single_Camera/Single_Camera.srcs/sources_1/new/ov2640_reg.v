`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2018 02:23:06 PM
// Design Name: 
// Module Name: ov2640_reg
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

module ov2640_reg (
        input clk,
        input [7:0] addr,
        output reg [7:0] reg_addr,
        output reg [7:0] value
    );

    wire [15:0] rom[194:0];

    always @(posedge clk) begin
        {reg_addr, value} = rom[addr];
    end

	assign rom[0] = {8'hff, 8'h1};
	assign rom[1] = {8'h12, 8'h80};
	/* Sleep for 1 ms */
	assign rom[2] = {8'hff, 8'h0};
	assign rom[3] = {8'h2c, 8'hff};
	assign rom[4] = {8'h2e, 8'hdf};
	assign rom[5] = {8'hff, 8'h1};
	assign rom[6] = {8'h3c, 8'h32};
	assign rom[7] = {8'h11, 8'h0};
	assign rom[8] = {8'h9, 8'h2};
	assign rom[9] = {8'h4, 8'h28};
	assign rom[10] = {8'h13, 8'he5};
	assign rom[11] = {8'h14, 8'h48};
	assign rom[12] = {8'h2c, 8'hc};
	assign rom[13] = {8'h33, 8'h78};
	assign rom[14] = {8'h3a, 8'h33};
	assign rom[15] = {8'h3b, 8'hfb};
	assign rom[16] = {8'h3e, 8'h0};
	assign rom[17] = {8'h43, 8'h11};
	assign rom[18] = {8'h16, 8'h10};
	assign rom[19] = {8'h39, 8'h2};
	assign rom[20] = {8'h35, 8'h88};
	assign rom[21] = {8'h22, 8'ha};
	assign rom[22] = {8'h37, 8'h40};
	assign rom[23] = {8'h23, 8'h0};
	assign rom[24] = {8'h34, 8'ha0};
	assign rom[25] = {8'h6, 8'h2};
	assign rom[26] = {8'h6, 8'h88};
	assign rom[27] = {8'h7, 8'hc0};
	assign rom[28] = {8'hd, 8'hb7};
	assign rom[29] = {8'he, 8'h1};
	assign rom[30] = {8'h4c, 8'h0};
	assign rom[31] = {8'h4a, 8'h81};
	assign rom[32] = {8'h21, 8'h99};
	assign rom[33] = {8'h24, 8'h40};
	assign rom[34] = {8'h25, 8'h38};
	assign rom[35] = {8'h26, 8'h82};
	assign rom[36] = {8'h5c, 8'h0};
	assign rom[37] = {8'h63, 8'h0};
	assign rom[38] = {8'h46, 8'h22};
	assign rom[39] = {8'hc, 8'h3a};
	assign rom[40] = {8'h5d, 8'h55};
	assign rom[41] = {8'h5e, 8'h7d};
	assign rom[42] = {8'h5f, 8'h7d};
	assign rom[43] = {8'h60, 8'h55};
	assign rom[44] = {8'h61, 8'h70};
	assign rom[45] = {8'h62, 8'h80};
	assign rom[46] = {8'h7c, 8'h5};
	assign rom[47] = {8'h20, 8'h80};
	assign rom[48] = {8'h28, 8'h30};
	assign rom[49] = {8'h6c, 8'h0};
	assign rom[50] = {8'h6d, 8'h80};
	assign rom[51] = {8'h6e, 8'h0};
	assign rom[52] = {8'h70, 8'h2};
	assign rom[53] = {8'h71, 8'h94};
	assign rom[54] = {8'h73, 8'hc1};
	assign rom[55] = {8'h3d, 8'h34};
	assign rom[56] = {8'h12, 8'h4};
	assign rom[57] = {8'h5a, 8'h57};
	assign rom[58] = {8'h4f, 8'hbb};
	assign rom[59] = {8'h50, 8'h9c};
	assign rom[60] = {8'hff, 8'h0};
	assign rom[61] = {8'he5, 8'h7f};
	assign rom[62] = {8'hf9, 8'hc0};
	assign rom[63] = {8'h41, 8'h24};
	assign rom[64] = {8'he0, 8'h14};
	assign rom[65] = {8'h76, 8'hff};
	assign rom[66] = {8'h33, 8'ha0};
	assign rom[67] = {8'h42, 8'h20};
	assign rom[68] = {8'h43, 8'h18};
	assign rom[69] = {8'h4c, 8'h0};
	assign rom[70] = {8'h87, 8'hd0};
	assign rom[71] = {8'h88, 8'h3f};
	assign rom[72] = {8'hd7, 8'h3};
	assign rom[73] = {8'hd9, 8'h10};
	assign rom[74] = {8'hd3, 8'h82};
	assign rom[75] = {8'hc8, 8'h8};
	assign rom[76] = {8'hc9, 8'h80};
	assign rom[77] = {8'h7c, 8'h0};
	assign rom[78] = {8'h7d, 8'h0};
	assign rom[79] = {8'h7c, 8'h3};
	assign rom[80] = {8'h7d, 8'h48};
	assign rom[81] = {8'h7d, 8'h48};
	assign rom[82] = {8'h7c, 8'h8};
	assign rom[83] = {8'h7d, 8'h20};
	assign rom[84] = {8'h7d, 8'h10};
	assign rom[85] = {8'h7d, 8'he};
	assign rom[86] = {8'h90, 8'h0};
	assign rom[87] = {8'h91, 8'he};
	assign rom[88] = {8'h91, 8'h1a};
	assign rom[89] = {8'h91, 8'h31};
	assign rom[90] = {8'h91, 8'h5a};
	assign rom[91] = {8'h91, 8'h69};
	assign rom[92] = {8'h91, 8'h75};
	assign rom[93] = {8'h91, 8'h7e};
	assign rom[94] = {8'h91, 8'h88};
	assign rom[95] = {8'h91, 8'h8f};
	assign rom[96] = {8'h91, 8'h96};
	assign rom[97] = {8'h91, 8'ha3};
	assign rom[98] = {8'h91, 8'haf};
	assign rom[99] = {8'h91, 8'hc4};
	assign rom[100] = {8'h91, 8'hd7};
	assign rom[101] = {8'h91, 8'he8};
	assign rom[102] = {8'h91, 8'h20};
	assign rom[103] = {8'h92, 8'h0};
	assign rom[104] = {8'h93, 8'h6};
	assign rom[105] = {8'h93, 8'he3};
	assign rom[106] = {8'h93, 8'h3};
	assign rom[107] = {8'h93, 8'h3};
	assign rom[108] = {8'h93, 8'h0};
	assign rom[109] = {8'h93, 8'h2};
	assign rom[110] = {8'h93, 8'h0};
	assign rom[111] = {8'h93, 8'h0};
	assign rom[112] = {8'h93, 8'h0};
	assign rom[113] = {8'h93, 8'h0};
	assign rom[114] = {8'h93, 8'h0};
	assign rom[115] = {8'h93, 8'h0};
	assign rom[116] = {8'h93, 8'h0};
	assign rom[117] = {8'h96, 8'h0};
	assign rom[118] = {8'h97, 8'h8};
	assign rom[119] = {8'h97, 8'h19};
	assign rom[120] = {8'h97, 8'h2};
	assign rom[121] = {8'h97, 8'hc};
	assign rom[122] = {8'h97, 8'h24};
	assign rom[123] = {8'h97, 8'h30};
	assign rom[124] = {8'h97, 8'h28};
	assign rom[125] = {8'h97, 8'h26};
	assign rom[126] = {8'h97, 8'h2};
	assign rom[127] = {8'h97, 8'h98};
	assign rom[128] = {8'h97, 8'h80};
	assign rom[129] = {8'h97, 8'h0};
	assign rom[130] = {8'h97, 8'h0};
	assign rom[131] = {8'ha4, 8'h0};
	assign rom[132] = {8'ha8, 8'h0};
	assign rom[133] = {8'hc5, 8'h11};
	assign rom[134] = {8'hc6, 8'h51};
	assign rom[135] = {8'hbf, 8'h80};
	assign rom[136] = {8'hc7, 8'h10};
	assign rom[137] = {8'hb6, 8'h66};
	assign rom[138] = {8'hb8, 8'ha5};
	assign rom[139] = {8'hb7, 8'h64};
	assign rom[140] = {8'hb9, 8'h7c};
	assign rom[141] = {8'hb3, 8'haf};
	assign rom[142] = {8'hb4, 8'h97};
	assign rom[143] = {8'hb5, 8'hff};
	assign rom[144] = {8'hb0, 8'hc5};
	assign rom[145] = {8'hb1, 8'h94};
	assign rom[146] = {8'hb2, 8'hf};
	assign rom[147] = {8'hc4, 8'h5c};
	assign rom[148] = {8'ha6, 8'h0};
	assign rom[149] = {8'ha7, 8'h20};
	assign rom[150] = {8'ha7, 8'hd8};
	assign rom[151] = {8'ha7, 8'h1b};
	assign rom[152] = {8'ha7, 8'h31};
	assign rom[153] = {8'ha7, 8'h0};
	assign rom[154] = {8'ha7, 8'h18};
	assign rom[155] = {8'ha7, 8'h20};
	assign rom[156] = {8'ha7, 8'hd8};
	assign rom[157] = {8'ha7, 8'h19};
	assign rom[158] = {8'ha7, 8'h31};
	assign rom[159] = {8'ha7, 8'h0};
	assign rom[160] = {8'ha7, 8'h18};
	assign rom[161] = {8'ha7, 8'h20};
	assign rom[162] = {8'ha7, 8'hd8};
	assign rom[163] = {8'ha7, 8'h19};
	assign rom[164] = {8'ha7, 8'h31};
	assign rom[165] = {8'ha7, 8'h0};
	assign rom[166] = {8'ha7, 8'h18};
	assign rom[167] = {8'h7f, 8'h0};
	assign rom[168] = {8'he5, 8'h1f};
	assign rom[169] = {8'he1, 8'h77};
	assign rom[170] = {8'hdd, 8'h7f};
	assign rom[171] = {8'hc2, 8'he};
	/* change size preamble */
	assign rom[172] = {8'hff, 8'h0};
	assign rom[173] = {8'he0, 8'h4};
	assign rom[174] = {8'hc0, 8'hc8};
	assign rom[175] = {8'hc1, 8'h96};
	assign rom[176] = {8'h86, 8'h3d};
	assign rom[177] = {8'h51, 8'h90};
	assign rom[178] = {8'h52, 8'h2c};
	assign rom[179] = {8'h53, 8'h0};
	assign rom[180] = {8'h54, 8'h0};
	assign rom[181] = {8'h55, 8'h88};
	assign rom[182] = {8'h57, 8'h0};
	/* change size vga 640x480 */
	assign rom[183] = {8'h50, 8'h80};
	assign rom[184] = {8'h5a, 8'ha0};
	assign rom[185] = {8'h5b, 8'h78};
	assign rom[186] = {8'h5c, 8'h0};
	assign rom[187] = {8'hd3, 8'h2};
	assign rom[188] = {8'he0, 8'h0};
	/* change format preamble */
	assign rom[189] = {8'hff, 8'h0};
	assign rom[190] = {8'h5, 8'h0};
	/* change format RGB565 */
	assign rom[191] = {8'hda, 8'h8};
	assign rom[192] = {8'hd7, 8'h3};
	assign rom[193] = {8'he0, 8'h0};
	assign rom[194] = {8'h5, 8'h0};


endmodule
