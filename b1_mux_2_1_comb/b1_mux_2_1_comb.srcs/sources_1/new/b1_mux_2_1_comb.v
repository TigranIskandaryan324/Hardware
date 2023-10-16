`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2023 08:54:09 PM
// Design Name: 
// Module Name: b1_mux_2_1_comb
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


module b1_mux_2_1_comb(
    input d0,
    input d1,
    input sel,
    output y
    );
    assign y = (sel & d1) | ((~sel) & d0); 
endmodule
