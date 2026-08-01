`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2026 10:53:13
// Design Name: 
// Module Name: Implementing_BooleanEXPE1
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


module Implementing_BooleanEXPE1(
    input a,
    input b,
    input c,
    input d,
    output Y
    );
    wire y1, y2, y3;
    nand (y1, a, b);
    not (y3, d);
    and (y2, c, y3);
    or (y, y2, y3);
endmodule
