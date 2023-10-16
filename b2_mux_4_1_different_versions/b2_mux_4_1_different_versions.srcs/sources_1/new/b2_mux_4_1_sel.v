`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2023 02:50:56 PM
// Design Name: 
// Module Name: b2_mux_4_1_case
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

module b2_mux_4_1_sel (
    input [1:0] d0, d1, d2, d3,
    input [1:0] sel,
    output [1:0] y
    );
    assign y = sel[1] ? ( sel[0] ? d3 : d2)
                : (sel[0] ? d1 : d0);
endmodule