`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2026 14:51:29
// Design Name: 
// Module Name: tb_mux
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


module tb_mux();

reg I0, I1, I2, I3, S1, S0;
wire Y;

mux4x1 el(I0, I1, I2, I3, S1, S0, Y);

initial begin

    I0 = 0; I1 = 1; I2 = 0; I3 = 1;

    S1 = 0; S0 = 0; #10;
    S1 = 0; S0 = 1; #10;
    S1 = 1; S0 = 0; #10;
    S1 = 1; S0 = 1; #10;

    $finish;

end

endmodule