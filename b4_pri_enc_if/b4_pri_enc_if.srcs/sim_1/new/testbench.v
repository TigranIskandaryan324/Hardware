`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2023 10:02:17 PM
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
    // input and output test signals
   	reg  enable;

    reg [15:0] binary;

    wire [3:0] binary_out;
 
   // creating the instance of the module we want to test
	b4_pri_enc_if b4_pri_enc_if(binary,binary_out,enable);
	
	initial 
    begin
        // set inital values of signal
        enable = 1;
        binary = 0;
		
        #1;
           binary=16'b0000000000000001;
        #1;
           binary=16'b0000000000000010;
        #1;
           binary=16'b0000000000000100;
        #1;
           binary=16'b0000000000001000;
        #1;
           binary=16'b0000000000010000;
        #1;
           binary=16'b0000000000100000;
        #1;
           binary=16'b0000000001000000;
        #1;
           binary=16'b0000000010000000;
        #1;
           binary=16'b0000000100000000;
	#1;
           binary=16'b0000001000000000;
        #1;
           binary=16'b0000010000000000;
        #1;
           binary=16'b0000100000000000;
	#1;
           binary=16'b0001000000000000;
        #1;
           binary=16'b0010000000000000;
        #1;
           binary=16'b0100000000000000;
        #1;
           binary=16'b1000000000000000;
        #1;
           binary=16'b0000000000011000;
        #1;
           binary=16'b0000001000001000;
        #1;
           binary=16'b0100000000000000;
           enable = 0;


    end
    // do at the beginning of the simulation
    //  print signal values on every change
    initial 
         $monitor("enable=%b, binary=%b, binary_out=%b",
            enable, binary, binary_out);
    // do at the beginning of the simulation
    initial 
        $dumpvars;  //iverilog dump init
endmodule