`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2023 09:13:15 PM
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
    
    reg d0;
    reg d1;
    reg sel;
    wire y_comb;
    wire y_sel;
    wire y_if;
    wire y_case;
    
    b1_mux_2_1_comb b1_mux_2_1_comb (d0, d1, sel, y_comb);
    b1_mux_2_1_sel b1_mux_2_1_sel (d0, d1, sel, y_sel);
    b1_mux_2_1_if b1_mux_2_1_if (d0, d1, sel, y_if);
    b1_mux_2_1_case b1_mux_2_1_case (d0, d1, sel, y_case);
    
    initial
    begin
        d0 = 1'b0;
        d1 = 1'b1;
        #5;
        sel = 1'b0;
        #10;
        sel = 1'b1;
        #10;
        d1 = 1'b0;
        #5;
        d1 = 1'b1;
        #5; 
    end 
    initial
    begin
        $monitor ("d0=%b, d1=%b, sel=%b,y_comb=%b, y_sel=%b, y_if=%b, y_case=%b,",
                    d0, d1, sel, y_comb, y_sel, y_if, y_case);
    end
endmodule
