`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2023 10:17:58 PM
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
    
    reg [1:0] d0;
    reg [1:0] d1;
    reg sel;
    wire [1:0] y_comb_c;
    wire [1:0] y_comb_i;
    wire [1:0] y_sel;
    wire [1:0] y_if;
    wire [1:0] y_case;
    
    b2_mux_2_1_comb_correct1 b2_mux_2_1_comb_correct1 (d0, d1, sel, y_comb_c);
    b2_mux_2_1_comb_incorrect b2_mux_2_1_comb_incorrect (d0, d1, sel, y_comb_i);
    b2_mux_2_1_sel b2_mux_2_1_sel (d0, d1, sel, y_sel);
    b2_mux_2_1_if b2_mux_2_1_if (d0, d1, sel, y_if);
    b2_mux_2_1_case b2_mux_2_1_case (d0, d1, sel, y_case);
    
    initial
    begin
        d0 = 2'b00;
        d1 = 2'b01;
        #5;
        sel = 1'b0;
        #10;
        sel = 1'b1;
        #10;
        d1 = 2'b00;
        #5;
        d1 = 2'b11;
        #5; 
    end 
    initial
    begin
        $monitor ("d0=%b, d1=%b, sel=%b,y_comb_i=%b, y_comb_c=%b, y_sel=%b, y_if=%b, y_case=%b",
                    d0, d1, sel, y_comb_i, y_comb_c, y_sel, y_if, y_case);
    end
endmodule