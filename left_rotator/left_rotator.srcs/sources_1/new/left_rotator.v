`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2023 11:45:34 AM
// Design Name: 
// Module Name: left_rotator
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


module left_rotator
#(
    parameter WIDTH = 8,
    parameter SHIFT = 3
)
(
    input [WIDTH-1:0] x,
    input [SHIFT-1:0] shamt,
    output [WIDTH-1:0] z
    );
    
    wire [2*WIDTH-1:0] temp;
    assign temp = {x,x} << shamt;
    assign z = temp[2 * WIDTH-1 : WIDTH];
endmodule
