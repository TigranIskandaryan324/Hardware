`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 10:33:03 AM
// Design Name: 
// Module Name: counter
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


module counter
#(
    parameter WIDTH = 8
)
(
    input clk,
    input rst_n,
    output reg [WIDTH-1:0] cnt
    );
    
    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n)
            cnt <= {WIDTH{1'b0}};
        else
            cnt <= cnt + 1'b1;
    end
endmodule
