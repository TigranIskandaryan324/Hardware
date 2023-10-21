`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2023 03:01:04 PM
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
   
   localparam PWM_SIZE=8;
   
   reg                clk;
   reg                rst_n;
   reg [PWM_SIZE-1:0] imp_width;
   wire               pwm_out;
   integer            i;
   integer            cycle_cnt;
   
   pwm #(.PWM_WIDTH(PWM_SIZE))
   pwm_inst
     (
      .clk      ( clk       ),
      .rst_n    ( rst_n     ),
      .imp_width( imp_width ),
      .pwm_out  ( pwm_out   )
      );

   initial begin
      clk = 1'b0;
      forever #2 clk = ~clk;
   end

   task async_rst;
      begin
         $display("---------- Reset start at %0t ns -----------",$time);
         #23 rst_n = 1'b0;
         #15 rst_n = 1'b1;
         $display("---------- Reset finish at %0t ns ---------\n",$time); 
      end
   endtask
   
   task in_data(input integer imp_cnt);
      begin
         imp_width=$urandom%(2**PWM_SIZE-1);
         repeat(imp_cnt+1)
           @(posedge pwm_out);
      end
   endtask
   
   initial begin
      $dumpvars();
      
      imp_width  = 8'h0;
      rst_n      = 1'b1;
      
      async_rst;

      for(i=0;i<10;i=i+1)
        begin
           cycle_cnt = $urandom%(10);
           #10 in_data(cycle_cnt);
        end
      #100 $finish;
   end 
   
endmodule