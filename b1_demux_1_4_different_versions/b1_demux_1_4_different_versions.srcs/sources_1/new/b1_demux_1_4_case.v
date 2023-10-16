`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2023 06:05:45 PM
// Design Name: 
// Module Name: b1_demux_1_4_shift
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

module b1_demux_1_4_case (
    input din,
    input [1:0] sel,
    output reg dout0,
    output reg dout1,
    output reg dout2,
    output reg dout3
    );
    
    always @(*)
    begin
        case (sel)
            2'b00 : 
            begin
                dout0 = din;
                dout1 = 0;
                dout2 = 0;
                dout3 = 0;
            end
            2'b01 :
            begin
                dout0 = 0;
                dout1 = din;
                dout2 = 0;
                dout3 = 0;
            end
            2'b10 :
            begin
                dout0 = 0;
                dout1 = 0;
                dout2 = din;
                dout3 = 0; 
            end
            2'b11 :
            begin
                dout0 = 0;
                dout1 = 0;
                dout2 = 0;
                dout3 = din;
            end
        endcase
    end
endmodule