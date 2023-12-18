`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/18/2023 02:22:07 PM
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
    reg [3:0] data_in;
    reg [5:0] addr;
    reg we;
    reg clk;
    wire [3:0] data_out;
    wire [5:0] addr_out;
    
    one_port_ram dut (data_in, addr, we, clk, data_out, addr_out);
    
    initial
        begin
            clk = 0;
            we = 0;
            addr = 6'b000000;
            data_in = 4'b0000;
            #20;
            we = 0;
            for (addr=0; addr < 6; addr = addr + 1)
                begin
                    #20;
                    data_in = data_in + 1;
                end
            #20;
            we = 1;
            for (addr = 0; addr < 6; addr = addr + 1)
                #20;
        end
    always #10 clk = ~ clk;
    
    initial
        #300 $finish;
        
endmodule














