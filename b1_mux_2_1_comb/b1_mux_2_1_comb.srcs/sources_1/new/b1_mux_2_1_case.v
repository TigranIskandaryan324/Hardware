`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2023 09:11:07 PM
// Design Name: 
// Module Name: b1_mux_2_1_case
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


module b1_mux_2_1_case(
    input d0,
    input d1,
    input sel,
    output reg y
    );
    
    always @ (*)
    begin
        case (sel)
            0 : y = d0;
            1 : y = d1; 
        endcase
    end
endmodule
