`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 02:44:01 PM
// Design Name: 
// Module Name: left_shifter
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


module left_shifter
#(
    parameter WIDTH = 8,
    parameter SHIFT = 3
)
(
    input [WIDTH-1:0] x,
    input [SHIFT-1:0] shamt,
    output [WIDTH-1:0] z
);

    assign z = x << shamt;
endmodule
