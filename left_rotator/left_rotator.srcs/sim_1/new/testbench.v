`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2023 11:46:19 AM
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
    // input and output test signals
    reg  [WIDTH - 1:0] x;
    reg  [SHIFT - 1:0] shamt;
    wire [WIDTH - 1:0] lr_out;
 
    // create the instances of the modules you want to test
    left_rotator
    #(
        .WIDTH(WIDTH),
        .SHIFT(SHIFT)
    )
    left_rotator_dut
    (
        .x    (x     ),
        .shamt(shamt ),
        .z    (lr_out)
    );
    
    //write test sequence
    initial begin
        x     = 0;
        shamt = 0;
        #8
        $stop;
    end
    
    initial
        forever begin
            #1;
            x     = $urandom_range(0, 2 ** WIDTH - 1);
            shamt = $urandom_range(0, 2 ** SHIFT - 1);
        end 
endmodule
