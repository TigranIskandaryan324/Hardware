`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 01:56:27 PM
// Design Name: 
// Module Name: cnt_updown
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


module cnt_updown
#(
    parameter WIDTH = 16
)
(
    input clk,
    input rst_n,
    input up_down,
    output reg [WIDTH-1:0] cnt    
);

    always @(posedge clk or negedge rst_n)
    begin
        if (rst_n)
            cnt <= {WIDTH{1'b0}};
        else if (up_down)
            cnt <= cnt + 1'b1;
        else
            cnt <= cnt - 1'b1;
    end
endmodule
