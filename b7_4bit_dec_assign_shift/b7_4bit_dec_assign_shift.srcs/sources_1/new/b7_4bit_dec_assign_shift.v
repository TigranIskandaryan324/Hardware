`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 01:07:26 PM
// Design Name: 
// Module Name: b7_4bit_dec_assign_shift
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


module b7_4bit_dec_assign_shift(
    input [3:0] binary_in,
    output wire [15:0] decoder_out,
    input enable
    );
    
    assign decoder_out = enable ? (1 << binary_in) : 16'b0;
endmodule
