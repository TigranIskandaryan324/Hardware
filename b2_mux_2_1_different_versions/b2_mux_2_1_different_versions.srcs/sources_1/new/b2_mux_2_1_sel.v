`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2023 09:52:02 PM
// Design Name: 
// Module Name: b2_mux_2_1_sel
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


module b2_mux_2_1_sel(
    input [1:0] d0,
    input [1:0] d1,
    input sel,
    output [1:0] y
    );
    
    assign y = sel ? d1 : d0;
endmodule
