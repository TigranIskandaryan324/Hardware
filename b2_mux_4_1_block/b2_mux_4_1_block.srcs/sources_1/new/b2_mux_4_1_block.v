`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2023 03:22:51 PM
// Design Name: 
// Module Name: b2_mux_4_1_block
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


module b2_mux_4_1_block(
    input [1:0] d0, d1, d2, d3,
    input [1:0] sel,
    output [1:0] y
    );
    wire [1:0] w01, w23;
    b2_mux_2_1_sel mux0 (.d0(d0), .d1(d1), .sel(sel[0]), .y(w01));
    b2_mux_2_1_sel mux1 (.d0(d2), .d1(d3), .sel(sel[0]), .y(w23));
    b2_mux_2_1_sel mux2 (.d0(w01), .d1(w23), .sel(sel[1]), .y(y));
endmodule
