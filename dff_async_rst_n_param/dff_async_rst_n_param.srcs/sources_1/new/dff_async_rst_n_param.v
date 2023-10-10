`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2023 03:22:48 PM
// Design Name: 
// Module Name: dff_async_rst_n_param
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


module dff_async_rst_n_param
#(
    parameter WIDTH = 8,
              RESET = 8'b0
)
(
    input clk,
    input rst_n,
    input [WIDTH - 1 : 0] d,
    output reg [WIDTH - 1 : 0] q
);

    always @ (posedge clk or negedge rst_n)
        if (!rst_n)
            q <= RESET;
        else
            q <= d;
endmodule
