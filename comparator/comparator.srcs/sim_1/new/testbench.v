`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 01:31:30 PM
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
    reg [WIDTH-1:0] x,y;
    wire eq, neq, lt, lte, gt, gte;
    
    comparator #(.WIDTH(WIDTH)) comparator_dut(
        .x(x),
        .y(y),
        .eq(eq),
        .neq(neq),
        .lt(lt),
        .lte(lte),
        .gt(gt),
        .gte(gte)
    );
    
    initial 
    begin
        x = 0;
        y = 0;
        #8;
        $stop;
    end
    initial
    begin 
        forever
        begin
            #1;
            x = $urandom_range(0, 2**WIDTH-1);
            y = $urandom_range(0, 2**WIDTH-1);
        end
    end
endmodule
