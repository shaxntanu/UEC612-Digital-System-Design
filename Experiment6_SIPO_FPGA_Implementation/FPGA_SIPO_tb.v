`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2026 20:36:25
// Design Name: 
// Module Name: FPGA_SIPO_tb
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


`timescale 1ns / 1ps

module FPGA_SIPO_tb;

    reg D;
    reg CLK;
    reg CLR;
    reg RST;

    wire [3:0] Q;

    FPGA_SIPO uut (
        .D(D),
        .CLK(CLK),
        .CLR(CLR),
        .RST(RST),
        .Q(Q)
    );

    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end

    initial begin
        D = 0;
        CLR = 0;
        RST = 1;

        #20;
        RST = 0;

        D = 1;
        #100;

        D = 0;
        #100;

        D = 1;
        #100;

        D = 1;
        #100;

        RST = 1;
        #50;

        RST = 0;

        #100;

end

endmodule