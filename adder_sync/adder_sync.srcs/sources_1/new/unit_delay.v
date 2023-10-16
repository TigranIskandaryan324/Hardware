`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2023 03:24:22 PM
// Design Name: 
// Module Name: unit_delay
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


module unit_delay
#(
    parameter WIDTH = 1
)
(
    input clock,
    input [WIDTH - 1:0] data_in,
    output reg [WIDTH - 1:0] data_out
);
    always @ (posedge clock)
    begin
        data_out <= data_in; 
    end    
endmodule
