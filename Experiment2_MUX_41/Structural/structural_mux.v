`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2026 14:49:43
// Design Name: 
// Module Name: Mux
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


module mux4x1(I0, I1, I2, I3, S1, S0, Y);

input I0, I1, I2, I3, S1, S0;
output Y;

wire S1_bar, S0_bar;
wire W0, W1, W2, W3;

not (S1_bar, S1);
not (S0_bar, S0);

and (W0, I0, S1_bar, S0_bar);
and (W1, I1, S1_bar, S0);
and (W2, I2, S1, S0_bar);
and (W3, I3, S1, S0);

or (Y, W0, W1, W2, W3);

endmodule