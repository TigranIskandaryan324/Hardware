`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 01:55:35 PM
// Design Name: 
// Module Name: b7_anybit_dec_assign_shift
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


module b7_anybit_dec_assign_shift(
    binary_in,
    decoder_out,
    enable
    );
    
    parameter IN_SIZE = 4;
    parameter OUT_SIZE = 2 << IN_SIZE;
    
    input wire [IN_SIZE-1:0] binary_in;
    output wire [OUT_SIZE-1:0] decoder_out;
    input enable;
    
    assign decoder_out = (enable) ? (1 << binary_in) : 0; 
endmodule
