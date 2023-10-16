`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2023 02:50:56 PM
// Design Name: 
// Module Name: b2_mux_4_1_case
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


module b2_mux_4_1_case(
    input [1:0] d0, d1, d2, d3,
    input [1:0] sel,
    output reg [1:0] y
    );
    
    always @(*)
    begin
        case (sel)
            2'b00 : y = d0;
            2'b01 : y = d1;
            2'b10 : y = d2;
            2'b11 : y = d3;
        endcase
    end
endmodule
