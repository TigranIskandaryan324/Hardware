`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2023 09:06:36 PM
// Design Name: 
// Module Name: b1_mux_2_1_sel
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


module b1_mux_2_1_sel(
    input d0,
    input d1,
    input sel,
    output y
    );
    assign y = sel ? d1 : d0;
endmodule
