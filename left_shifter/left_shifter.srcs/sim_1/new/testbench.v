`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 02:44:18 PM
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

    parameter WIDTH = 8;
    parameter SHIFT = 3;
    reg [WIDTH-1:0] x;
    reg [SHIFT-1:0] shamt;
    wire [WIDTH-1:0] ls_out;
    
    left_shifter 
    #(
        .WIDTH(WIDTH),
        .SHIFT(SHIFT)
    )
    left_shifter_dut
    (
        .x(x),
        .shamt(shamt),
        .z(ls_out)
    );
    
    initial
    begin
        x = 0;
        shamt = 0;
        #8
        $stop;
    end
    initial
    begin
        #1;
        x = $urandom_range(0, 2**WIDTH-1);
        shamt = $urandom_range(0, 2**SHIFT-1); 
    end
endmodule
