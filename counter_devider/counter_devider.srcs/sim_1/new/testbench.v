`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2023 02:29:38 PM
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

   localparam DIV_CNT = 10;
   
   reg  clk_in;
   reg  rst_n;
   wire clk_out;
   
   

   cnt_div #(.DIV_CNT(DIV_CNT)) 
   cnt_dut(
	         .clk_in  ( clk_in  ),
	         .rst_n   ( rst_n   ),
	         .clk_out ( clk_out )
	 );
   
   initial begin
      clk_in = 0;
      forever #10 clk_in = !clk_in;
   end

      
   initial begin
      rst_n      = 1'b1;
      #13 rst_n  = 1'b0;
      #25 rst_n  = 1'b1;
      repeat(5)
        @(posedge clk_out);
      #20 $finish;
      
   end

endmodule 