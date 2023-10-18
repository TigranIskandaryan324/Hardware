`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2023 11:59:55 AM
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
    reg  [WIDTH - 1:0] x, y;
    reg  [SHIFT - 1:0] shamt;
    reg  [1:0]         operation;
    wire [WIDTH - 1:0] result;
    wire               zero;
 
    // create the instances of the modules you want to test
    alu
    #(
        .WIDTH(WIDTH),
        .SHIFT(SHIFT)
    )
    alu_dut
    (
        .operation(operation),
        .x        (x        ),
        .y        (y        ),
        .shamt    (shamt    ),
        .result   (result   ),
        .zero     (zero     )
    );
       
    //write test sequence
    initial begin
        x         = 0;
        y         = 0;
        shamt     = 0;
        operation = 0;
        #8;
        $stop;
    end
    
    initial
        forever begin
            #1;
            x     = $urandom_range(0, 2 ** (WIDTH - 1) - 1);
            y     = $urandom_range(0, 2 ** (WIDTH - 1) - 1);
            shamt = $urandom_range(0, 2 ** SHIFT - 1);
            
        end
        
    initial
        forever begin
            #2;
            operation = operation + 1;
	end
endmodule
