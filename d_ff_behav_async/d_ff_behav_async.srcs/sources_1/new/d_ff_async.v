`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2023 12:43:58 AM
// Design Name: 
// Module Name: d_ff_async
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


module d_ff_async(
    input clk,
    input rst_n,
    input d,
    output reg q
    );
    
    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n)
            q <= 0;
        else
            q <= d;
    end
endmodule
