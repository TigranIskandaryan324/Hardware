`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2023 07:46:45 PM
// Design Name: 
// Module Name: testbench
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


module testbench;
    reg [15:0] binary;
    reg enable;
    wire [3:0] binary_out;
    
    b1_enc_assign b1_enc_assign (binary, binary_out, enable);

    initial
    begin
        enable = 1;
        binary = 0;
        #1;
            binary = 16'b0000_0000_0000_0001;
        #1;
            binary = 16'b0000_0000_0000_0010;
        #1;
            binary = 16'b0000_0000_0000_0100;
        #1;
            binary = 16'b0000_0000_0000_1000;
        #1;
            binary = 16'b0000_0000_0001_0000;
        #1;
            binary = 16'b0000_0000_0010_0000;
        #1;
            binary = 16'b0000_0000_0100_0000;
        #1;
            binary = 16'b0000_0000_1000_0000;
        #1;
            binary = 16'b0000_0001_0000_0000;
        #1;
            binary = 16'b0000_0010_0000_0000;
        #1;
            binary = 16'b0000_0100_0000_0000;
        #1;
            binary = 16'b0000_1000_0000_0000;
        #1;
            binary = 16'b0001_0000_0000_0000;
        #1;
            binary = 16'b0010_0000_0000_0000;
        #1;
            binary = 16'b0100_0000_0000_0000;
        #1;
            binary = 16'b1000_0000_0000_0000;
        #1;
            binary = 16'b0100_0000_0000_0000;
            enable = 0;
    end
    
    initial
        $monitor ("enable = %b, binary = %b, binary_out = %b",
             enable, binary, binary_out);
    initial
        $dumpvars;



endmodule










