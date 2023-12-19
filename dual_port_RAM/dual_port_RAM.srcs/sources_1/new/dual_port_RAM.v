`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/19/2023 02:31:02 PM
// Design Name: 
// Module Name: dual_port_RAM
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


module dual_port_RAM
#(
    parameter DATA_WIDTH = 4,
    parameter ADDR_WIDTH = 6
)
(
    input we,
    input clk,
    input [(DATA_WIDTH-1):0] data_in,
    input [(ADDR_WIDTH-1):0] read_addr,
    input [(ADDR_WIDTH-1):0] write_addr,
    output reg[(DATA_WIDTH-1):0] data_out
);

    reg [(DATA_WIDTH-1):0] dp_ram [0:(2*ADDR_WIDTH-1)];
    always @(posedge clk)
        begin
            if (we)
                dp_ram [write_addr] <= data_in;
            data_out <= dp_ram[read_addr];
        end
endmodule
