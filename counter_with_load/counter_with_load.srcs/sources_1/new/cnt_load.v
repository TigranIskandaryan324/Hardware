`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 01:06:53 PM
// Design Name: 
// Module Name: cnt_load
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


module cnt_load
#(
    parameter WIDTH = 16    
)
(
    input clk,
    input rst_n,
    input load,
    input [WIDTH-1:0] data_load,
    output reg [WIDTH-1:0] cnt
);

    always @(posedge clk or negedge rst_n)
    begin : cnt_with_load
        if (!rst_n)
            cnt <= {WIDTH{1'b0}};
        else if (load)
            cnt <= data_load;
        else
            cnt <= cnt +1;
    end 
    
    
endmodule
