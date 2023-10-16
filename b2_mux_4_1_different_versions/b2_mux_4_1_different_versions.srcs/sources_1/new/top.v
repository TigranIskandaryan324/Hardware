`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2023 03:01:37 PM
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


module top;
    reg [1:0] d0, d1, d2, d3;
    reg [1:0] sel;
    wire [1:0] y_case;
    wire [1:0] y_sel;
    b2_mux_4_1_case b2_mux_4_1_case (d0, d1, d2, d3, sel, y_case);
    b2_mux_4_1_sel b2_mux_4_1_sel (d0, d1, d2, d3, sel, y_sel);
endmodule
