`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/18/2023 04:05:49 PM
// Design Name: 
// Module Name: one_port_ROM
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


module one_port_ROM
#(
    parameter DATA_WIDTH = 4,
    parameter ADDR_WIDTH = 6
)
(
    input clk,
    input [(ADDR_WIDTH-1):0] addr,
    output [(DATA_WIDTH-1):0] data_out,
    output [(ADDR_WIDTH-1):0] addr_out
);
    reg [(DATA_WIDTH-1):0] rom [0:(2**ADDR_WIDTH-1)];
    wire w_clk = ! clk;
    reg [(ADDR_WIDTH-1):0] addr_reg;
    
    initial
    begin
        $readmemh("rom.txt", rom);
    end
    
    always @ (posedge w_clk)
    begin
        addr_reg <= addr;
    end
    
    assign data_out = rom[addr_reg];
    assign addr_out = addr_reg;
    
endmodule
