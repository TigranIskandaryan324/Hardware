`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2023 03:31:56 PM
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
    reg  [1:0] a;
	reg  [1:0] b;
    reg  [1:0] c;
	reg  [1:0] d;
	reg  [1:0] sel;
	wire [1:0] y_block;
 
   // creating the instance of the module we want to test
	b2_mux_4_1_block b2_mux_4_1_block(a,b,c,d,sel,y_block);
	
	initial 
        begin
			a = 2'b00;
			b = 2'b01;
			c = 2'b10;
			d = 2'b11;
			#5;
            sel = 2'b00;     // sel change to 00; a -> y
			#10;
			sel = 2'b01;     // sel change to 01; b -> y
			#10
			sel = 2'b10;     // sel change to 10; c -> y
			#10;
			sel = 2'b11;     // sel change to 11; d -> y
			#10
			d = 2'b10;		// d change; y changes too. sel == 2'b11
			#5
			d = 2'b01;
            #5;            // pause
        end
    // do at the beginning of the simulation
    //  print signal values on every change
    initial 
        $monitor("a=%b b=%b c=%b d=%b sel=%b y_block=%b", 
		         a, b, c, d, sel, y_block);
    // do at the beginning of the simulation
    initial 
        $dumpvars;  //iverilog dump init
endmodule