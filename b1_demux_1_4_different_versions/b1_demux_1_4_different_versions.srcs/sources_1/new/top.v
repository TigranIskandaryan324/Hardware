`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2023 06:19:58 PM
// Design Name: 
// Module Name: top
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


module top(
    input din,
    input [1:0] sel,
    output dout0_c,
    output dout1_c,
    output dout2_c,
    output dout3_c,
    output dout0_s,
    output dout1_s,
    output dout2_s,
    output dout3_s
    );
    b1_demux_1_4_case b1_demux_1_4_case (.din(din), .sel(sel), .dout0(dout0_c), .dout1(dout1_c), .dout2(dout2_c), .dout3(dout3_c));
    b1_demux_1_4_shift b1_demux_1_4_shift (.din(din), .sel(sel), .dout0(dout0_s), .dout1(dout1_s), .dout2(dout2_s), .dout3(dout3_s));
endmodule
