`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2023 09:08:21 PM
// Design Name: 
// Module Name: b1_mux_2_1_if
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


module b1_mux_2_1_if(
    input d0,
    input d1,
    input sel,
    output reg y
    );
    
    always @ (*)
    begin
        if (sel)
        begin
            y = d1;
        end
        else
        begin
            y = d0;
        end
    end
endmodule
