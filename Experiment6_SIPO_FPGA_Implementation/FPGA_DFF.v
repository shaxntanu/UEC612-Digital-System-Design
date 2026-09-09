`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2026 10:18:51
// Design Name: 
// Module Name: FPGA_DFF
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


module FPGA_DFF(
    input D,
    input CLK,
    input RST,
    output reg Q
);

    always @(posedge CLK)
    begin
        if (RST == 1)
            Q <= 0;
        else
            Q <= D;
    end

endmodule