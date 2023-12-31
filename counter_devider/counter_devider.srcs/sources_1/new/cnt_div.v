`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2023 02:29:17 PM
// Design Name: 
// Module Name: cnt_div
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
// Frequency clock divider

module cnt_div
#(
  parameter DIV_CNT=10,
  parameter WIDTH = $clog2(DIV_CNT)
)
(
 input  clk_in,
 input  rst_n,
 output clk_out
);

   reg [WIDTH-1:0] cnt;

   always@(posedge clk_in or negedge rst_n)
     begin
        if(!rst_n)
          cnt <= {WIDTH{1'b0}};
        else if(cnt == DIV_CNT-1)
          cnt <= {WIDTH{1'b0}};
        else
          cnt <= cnt + 1'b1;
     end
   
   assign clk_out = (cnt == 0) ? 1'b1 : 1'b0;
   
endmodule