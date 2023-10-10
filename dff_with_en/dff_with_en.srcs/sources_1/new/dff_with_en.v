`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2023 03:07:11 PM
// Design Name: 
// Module Name: dff_with_en
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


module dff_with_en
(
    input clk,
    input d,
    input en,
    output reg q
);    
    always @ (posedge clk)
        if (en)
            q <= d;  
endmodule
