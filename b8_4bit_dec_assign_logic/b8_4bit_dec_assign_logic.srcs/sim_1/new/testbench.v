`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 01:20:35 PM
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

    reg [3:0] binary;

    wire [15:0] binary_out_logic;
 
   // creating the instance of the module we want to test
	b8_4bit_dec_assign_logic b8_4bit_dec_assign_logic(
		.in(binary),
		.out(binary_out_logic),
		.enable(enable)
	);
	
	initial 
    begin
        // set inital values of signal
        enable = 1;
        binary = 0;
		
        #1;                                           
           binary=binary+1;
        #1;
           binary=binary+1;
        #1;
           binary=binary+1;
        #1;
           binary=binary+1;
        #1;
           binary=binary+1;
        #1;
           binary=binary+1;
        #1;
           binary=binary+1;
        #1;
           binary=binary+1;
        #1;
           binary=binary+1;
		#1;
           binary=binary+1;
        #1;
           binary=binary+1;
        #1;
           binary=binary+1;
		#1;
           binary=binary+1;
        #1;
           binary=binary+1;
        #1;
           binary=binary+1;
           enable = 0;
	   	   binary = 1;
        #1;
           binary=binary+1;

    end
    // do at the beginning of the simulation
    //  print signal values on every change
    initial 
         $monitor("enable=%b, binary=%b, binary_out_logic=%b",
            enable, binary, binary_out_logic);
    // do at the beginning of the simulation
    initial 
        $dumpvars;  //iverilog dump init
endmodule