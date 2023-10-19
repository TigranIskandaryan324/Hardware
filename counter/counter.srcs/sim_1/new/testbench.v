`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 10:32:47 AM
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
    localparam W = 8;
    reg clk;
    reg rst_n;
    wire [W-1:0] cnt;
    
    counter #
    (
        .WIDTH(W)
    ) 
    cnt1 
    (
        .clk(clk), 
        .rst_n(rst_n),
        .cnt(cnt)    
    );
    
    initial
    begin
        clk = 0;
        forever #10 clk = !clk;
    end
    
    initial 
    begin
        rst_n = 1;
        #15 rst_n = 0;
        #25 rst_n = 1;
        #350 $finish;
    end
    
endmodule
