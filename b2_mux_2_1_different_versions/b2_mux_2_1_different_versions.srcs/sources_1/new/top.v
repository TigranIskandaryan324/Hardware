`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2023 10:22:30 PM
// Design Name: 
// Module Name: top
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


module top(
    input [1:0] d0,
    input [1:0] d1,
    input sel,
    output [1:0] y_comb_c,
    output [1:0] y_comb_i,
    output [1:0] y_sel,
    output [1:0] y_if,
    output [1:0] y_case
    );
    
    b2_mux_2_1_comb_correct1 b2_mux_2_1_comb_correct1 (d0, d1, sel, y_comb_c);
    b2_mux_2_1_comb_incorrect b2_mux_2_1_comb_incorrect (d0, d1, sel, y_comb_i);
    b2_mux_2_1_sel b2_mux_2_1_sel (d0, d1, sel, y_sel);
    b2_mux_2_1_if b2_mux_2_1_if (d0, d1, sel, y_if);
    b2_mux_2_1_case b2_mux_2_1_case (d0, d1, sel, y_case);
endmodule
