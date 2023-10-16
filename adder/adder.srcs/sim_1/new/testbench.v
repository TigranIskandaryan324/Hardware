`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2023 08:51:53 PM
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
    reg c_in;
    wire c_out;
    wire [WIDTH-1:0] z;
    
    adder #(.WIDTH(WIDTH)) adder_dut(
        .carry_in(c_in),
        .x(x),
        .y(y),
        .z(z),
        .carry_out(c_out)
    );
    initial 
    begin
        x = 0;
        y = 0;
        c_in = 0;
        #8;
        $stop;
    end
    initial
    begin
        forever 
        begin
            #1;
            x = $urandom_range(0, 2 ** WIDTH - 1);
            y = $urandom_range(0, 2 ** WIDTH - 1);
            c_in = $urandom_range(0, 1);
        end
    end
endmodule
