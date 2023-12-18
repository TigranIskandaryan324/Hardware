`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/18/2023 01:36:27 PM
// Design Name: 
// Module Name: one_port_ram
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


module one_port_ram
#(
    parameter DATA_WIDTH=4,
    parameter ADDR_WIDTH=6
)
(
    input [(DATA_WIDTH-1):0] data_in,
    input [(ADDR_WIDTH-1):0] addr,
    input we, clk,
    output [(DATA_WIDTH-1):0] data_out,
    output [(ADDR_WIDTH-1):0] addr_out
    );
    reg [(DATA_WIDTH-1):0] ram [0:2**(ADDR_WIDTH-1)];
    reg [(ADDR_WIDTH-1):0] addr_reg;
    wire w_we = ~ we;
    wire w_clk = ~ clk;
        always @ (posedge w_clk)
            begin
                if (w_we)
                    // Write
                    ram[addr] <= data_in;
                    addr_reg <= addr;
                end
            // Read
            assign data_out = ram[addr_reg];
            assign addr_out = addr_reg;
endmodule
















