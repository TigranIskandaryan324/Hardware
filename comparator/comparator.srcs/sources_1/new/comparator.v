`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 01:27:25 PM
// Design Name: 
// Module Name: comparator
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


module comparator
#(
    parameter WIDTH = 8
)
(
    input [WIDTH - 1:0] x,y,
    output eq, neq, lt, lte, gt, gte
);
    assign eq = (x == y);
    assign neq = (x != y);
    assign lt = (x < y);
    assign lte = (x <= y);
    assign gt = (x > y);
    assign gte = (x >= y); 
endmodule
