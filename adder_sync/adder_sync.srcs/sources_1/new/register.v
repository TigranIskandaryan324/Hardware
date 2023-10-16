`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2023 03:28:19 PM
// Design Name: 
// Module Name: register
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


module register
#(
    parameter WIDTH = 8
)
(
    input clock,
    input reset,
    input load,
    input [WIDTH - 1:0] data_in,
    output reg [WIDTH - 1:0] data_out
);
    always @ (posedge clock, negedge reset)
    begin
        if (~reset)
        begin
            data_out <= {WIDTH {1'b0}};
        end
        else if (load)
        begin
            data_out <= data_in;
        end
    end
endmodule
