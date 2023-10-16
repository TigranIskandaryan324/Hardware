`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2023 06:05:45 PM
// Design Name: 
// Module Name: b1_demux_1_4_shift
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


module b1_demux_1_4_shift(
    input din,
    input [1:0] sel,
    output reg dout0,
    output reg dout1,
    output reg dout2,
    output reg dout3
    );
    always @(*)
        {dout3, dout2, dout1, dout0} = din << sel;
endmodule
