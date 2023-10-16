`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2023 03:54:16 PM
// Design Name: 
// Module Name: tb
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

`default_nettype none

module tb();

    reg CLOCK_50 = 0;               // DE-series 50 MHz clock
    reg [9:0] SW = 0;               // DE-series SW switches
    reg [3:0] KEY = 0;              // DE-series pushbutton keys
    wire [(8*6) -1:0] HEX;          // HEX displays (six ports)
    wire [9:0] LEDR;                // DE-series LEDs

    reg key_action = 0;
    reg [7:0] scan_code = 0;
    wire [2:0] ps2_lock_control;

    wire [7:0] VGA_X;               // "VGA" column
    wire [6:0] VGA_Y;               // "VGA" row
    wire [2:0] VGA_COLOR;           // "VGA pixel" colour (0-7)
    wire plot;                      // "Pixel" is drawn when this is pulsed
    wire [31:0] GPIO;               // DE-series GPIO port

    //initial $sim_fpga(CLOCK_50, SW, KEY, LEDR, HEX, key_action, scan_code, 
    //                  ps2_lock_control, VGA_X, VGA_Y, VGA_COLOR, plot, GPIO);

   
    // create the 50 MHz clock signal
    always #10
        CLOCK_50 <= ~CLOCK_50;

    
    top DUT (.CLOCK_50(CLOCK_50), .KEY(KEY), .SW(SW), .LEDR(LEDR));

endmodule