`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2023 09:52:02 PM
// Design Name: 
// Module Name: b2_mux_2_1_comb_correct1
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


module b2_mux_2_1_comb_correct1(
    input [1:0] d0,
    input [1:0] d1,
    input sel,
    output [1:0] y
    );
    assign y[0] = (sel & d1[0]) | ((~sel) & d0[0]);
    assign y[1] = (sel & d1[1]) | ((~sel) & d0[1]);
endmodule
