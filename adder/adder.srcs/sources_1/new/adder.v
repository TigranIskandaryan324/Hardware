`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2023 08:48:45 PM
// Design Name: 
// Module Name: adder
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


module adder
#(
    parameter WIDTH = 8 
)
(
    input [WIDTH-1:0] x, y,
    input carry_in,
    output [WIDTH-1:0] z,
    output carry_out
);

    assign {carry_out, z} = x + y + carry_in;
endmodule
