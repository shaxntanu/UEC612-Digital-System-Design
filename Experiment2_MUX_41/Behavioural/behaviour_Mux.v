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

reg Y;

always @(*)
begin
    if (S1 == 0 && S0 == 0)
        Y <= I0;
    else if (S1 == 0 && S0 == 1)
        Y <= I1;
    else if (S1 == 1 && S0 == 0)
        Y <= I2;
    else
        Y <= I3;
end

endmodule