`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2018 02:19:28 PM
// Design Name: 
// Module Name: sccb
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


module sccb #(
        parameter CLK_DIV_SIZE = 10,
        parameter WRITE_ADDR = 8'h60
    )(
        input clk,
        input rst,

        // to camera
        output scl,
        inout sda,

        // user interface
        input [7:0] addr,
        input [7:0] value,
        input write,
        output ack,
        output busy
    );

    localparam STATE_SIZE = 3;
    localparam IDLE = 0,
               START = 1,
               DEV_ADDR = 2,
               REG_ADDR = 3,
               REG_WRITE = 4,
               STOP = 5,
               DELAY = 6,
               SEND_DATA = 7;

    reg [STATE_SIZE-1:0] state_d, state_q;
    reg [STATE_SIZE-1:0] next_state_d, next_state_q;
    reg [CLK_DIV_SIZE-1:0] clk_div_ct_d, clk_div_ct_q;
    reg [3:0] bit_ctr_d, bit_ctr_q;

    reg [7:0] value_d, value_q;
    reg [7:0] addr_d, addr_q;
    reg [7:0] data_d, data_q;

    reg sda_d, sda_q;
    reg sda_en_d, sda_en_q;
    reg scl_d, scl_q;

    reg ack_d, ack_q;

    assign scl = scl_q;
    assign sda = sda_en_q ? sda_q : 1'bZ;
    assign ack = ack_q;
    assign busy = state_q != IDLE;

    always @(*) begin
        state_d = state_q;
        next_state_d = next_state_q;
        clk_div_ct_d = clk_div_ct_q;
        value_d = value_q;
        addr_d = addr_q;

        sda_en_d = 1'b1;
        sda_d = sda_q;
        scl_d = scl_q;
        ack_d = ack_q;
        data_d = data_q;

        bit_ctr_d = bit_ctr_q;

        case (state_q)
            IDLE: begin
                clk_div_ct_d = 1'd0;
                sda_d = 1'b1;
                scl_d = 1'b1;
                bit_ctr_d = 4'b0;
                ack_d = 1'b0;
                if (write) begin
                    value_d = value;
                    addr_d = addr;
                    state_d = START;
                end
            end
            START: begin
                clk_div_ct_d = clk_div_ct_q + 1'b1;
                if (clk_div_ct_q == {1'b1,{CLK_DIV_SIZE-1{1'b0}}})
                    sda_d = 1'b0;
                if (clk_div_ct_q == {CLK_DIV_SIZE{1'b1}}) begin
                    scl_d = 1'b0;
                    state_d = DEV_ADDR;
                end
            end
            DEV_ADDR: begin
                data_d = WRITE_ADDR;
                next_state_d = REG_ADDR;
                state_d = SEND_DATA;
            end
            REG_ADDR: begin
                sda_d = addr_q[7];
                data_d = addr_q;
                next_state_d = REG_WRITE;
                state_d = SEND_DATA;
            end
            REG_WRITE: begin
                sda_d = value_q[7];
                data_d = value_q;
                next_state_d = STOP;
                state_d = SEND_DATA;
            end
            STOP: begin
                sda_d = 1'b0;
                clk_div_ct_d = clk_div_ct_q + 1'b1;
                if (clk_div_ct_q == {1'b1,{CLK_DIV_SIZE-1{1'b0}}})
                    scl_d = 1'b1;
                if (clk_div_ct_q == {CLK_DIV_SIZE{1'b1}}) begin
                    sda_d = 1'b1;
                    state_d = DELAY;
                end
            end
            DELAY: begin
                clk_div_ct_d = clk_div_ct_q + 1'b1;
                if (clk_div_ct_q == {CLK_DIV_SIZE{1'b1}})
                    state_d = IDLE;
            end
            SEND_DATA: begin
                clk_div_ct_d = clk_div_ct_q + 1'b1;
                scl_d = clk_div_ct_q[CLK_DIV_SIZE-1];

                if (clk_div_ct_q[CLK_DIV_SIZE-1] && !scl_q) begin //rising clk
                    if (bit_ctr_q[3]) begin
                        ack_d = sda | ack_q; // read ack bit
                    end
                end

                if (!clk_div_ct_q[CLK_DIV_SIZE-1] && scl_q) begin //falling clk
                    bit_ctr_d = bit_ctr_q + 1'b1;

                    if (bit_ctr_q[3]) begin
                        state_d = next_state_q;
                        bit_ctr_d = 4'd0;
                        clk_div_ct_d = 1'b0;
                        scl_d = 1'b0;
                    end
                end

                if (clk_div_ct_q == {2'b01,{CLK_DIV_SIZE-2{1'b0}}}) begin
                    if (!bit_ctr_q[3]) begin
                        sda_d = data_q[7];
                        data_d = {data_q[6:0], 1'b0};
                    end
                end

                if (bit_ctr_q[3]) begin
                    sda_en_d = 1'b0; //disable output
                end
            end
            default: state_d = IDLE;
        endcase
    end

    always @(posedge clk) begin
        if (rst) begin
            state_q <= IDLE;
        end else begin
            state_q <= state_d;
        end

        clk_div_ct_q <= clk_div_ct_d;
        value_q <= value_d;
        addr_q <= addr_d;
        sda_q <= sda_d;
        sda_en_q <= sda_en_d;
        scl_q <= scl_d;
        bit_ctr_q <= bit_ctr_d;
        ack_q <= ack_d;
        data_q <= data_d;
        next_state_q <= next_state_d;
    end

endmodule
