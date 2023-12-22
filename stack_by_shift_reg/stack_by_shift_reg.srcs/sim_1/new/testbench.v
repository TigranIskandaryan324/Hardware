`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/19/2023 03:47:18 PM
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

	reg clk;
	reg reset;
	reg push;
	reg pop;
	reg [7:0] write_data;
	wire [7:0] read_data;

    stack_by_shift dut (clk, reset, push, pop, write_data, read_data);
	
    initial 
	begin
		clk = 1;
		reset = 1;
		push = 1;
		pop = 0;
		write_data = 8'b00000000; 
		
		#20; 					     			   
			write_data = 8'b00000001;
		#10;
			reset = 0;
		#10; 					     			    
			write_data = 8'b00000010;
		#20; 					     			    
			write_data = 8'b00000011;
		#20; 					     			    
			write_data = 8'b00000100;
		#20; 					     			    
			write_data = 8'b00000101;
		#20; 					     			    
			write_data = 8'b00000110;
			push = 0;
			pop = 1;
		#20; 					     			
			write_data = 8'b00000111;
		#20; 					     			 
			write_data = 8'b00001000;
		#20; 					     			   
			write_data = 8'b00001001;
		#20; 					     			   
			write_data = 8'b00001011;
	end
	 
	always #10 clk = ~clk;
    initial 
		#220 $finish;
    initial 
       $monitor("clk=%b reset=%b push=%b pop=%b write_data=%b read_data=%b", 
			clk, reset, push, pop, write_data, read_data);
endmodule
