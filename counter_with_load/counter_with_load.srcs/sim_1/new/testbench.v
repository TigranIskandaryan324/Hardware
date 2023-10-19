`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 01:07:14 PM
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
    localparam NEW_WIDTH = 16;
    reg clk;
    reg rst_n;
    reg load;
    reg [NEW_WIDTH-1:0] data_load;
    wire [NEW_WIDTH-1:0] cnt;
    integer i;
    integer pre_delay;
    integer load_width;
    
    cnt_load #
    (
        .WIDTH(NEW_WIDTH)
    )
    cnt_dut
    (
        .clk(clk),
        .rst_n(rst_n),
        .load(load),
        .data_load(data_load),
        .cnt(cnt)
    );
    
    initial 
    begin
        clk = 0;
        forever #10 clk = ~clk;
    end
    
    task reset (input integer rst_time);
        begin
            $display("##### Reset start #####");
            rst_n = 1'b0;
            #(rst_time) rst_n = 1'b1;
            $display("##### Reset finish #####");
        end
    endtask
    
    task set_data;
        begin
            $display("##### Set load data #####");
            pre_delay = $urandom%(30); 
            load_width = $urandom%(50)+10;
            data_load = $urandom%(2**NEW_WIDTH-1);
            #(pre_delay) load = 1'b1;
            #(load_width) load = 1'b0;
            $display("##### Finish load data #####");
        end
    endtask
    
    initial
    begin
        rst_n = 1'b1;
        load = 1'b0;
        data_load = 0;
        // Reset design
        #14 reset(24);
        // Generate load data
        for(i=0; i<10; i=i+1)
        begin
            #80 set_data();
        end
        #100 $finish;
    end
endmodule
