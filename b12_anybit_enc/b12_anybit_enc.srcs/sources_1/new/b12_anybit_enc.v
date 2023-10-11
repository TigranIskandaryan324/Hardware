`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2023 07:34:13 PM
// Design Name: 
// Module Name: b12_anybit_enc
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


module b12_anybit_enc(
    in,
    enc_out,
    enable
    );
    
    parameter OUT_SIZE = 4;
    parameter IN_SIZE = 1<<OUT_SIZE;
    
    input wire [IN_SIZE-1:0] in;
    output wire [OUT_SIZE-1:0] enc_out;
    reg [OUT_SIZE-1:0] out;
    assign enc_out = out;
    input enable;
    
    integer i;
    always @(in)
    begin
        if(enable)
        begin
            i = 0;
            while(i < IN_SIZE-1 && !in[i])
            begin
                i = i + 1;
            end
            out <= i;
        end
        else
        begin
            out <= 0;
        end
    end 
endmodule
