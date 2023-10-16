`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2023 09:30:18 PM
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
    input d0,
    input d1,
    input sel,
    output y_comb,
    output y_sel,
    output y_if,
    output y_case
    );

    
    b1_mux_2_1_comb b1_mux_2_1_comb (d0, d1, sel, y_comb);
    b1_mux_2_1_sel b1_mux_2_1_sel (d0, d1, sel, y_sel);
    b1_mux_2_1_if b1_mux_2_1_if (d0, d1, sel, y_if);
    b1_mux_2_1_case b1_mux_2_1_case (d0, d1, sel, y_case);
endmodule



