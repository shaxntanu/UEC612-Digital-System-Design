`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 08.09.2026 10:12:04
// Design Name:
// Module Name: FPGA_SIPO
// Project Name:
// Target Devices:
// Tool Versions:
// Description: 4-bit Serial-In Parallel-Out Shift Register
//
// Dependencies: DFF
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

module FPGA_SIPO(
    input D,
    input CLK,
    input RST,
    output [3:0] Q
);
    reg [26:0] clk_divider = 27'd0;
    reg clk_1hz = 1'b0;

    always @(posedge CLK) begin
        if (clk_divider == 27'd49_999_999) begin
            clk_divider <= 27'd0;
            clk_1hz <= ~clk_1hz;
        end
        else begin
            clk_divider <= clk_divider + 1'b1;
        end
    end

    wire Q1;
    wire Q2;
    wire Q3;
    wire Q4;

    FPGA_DFF R1(
        .D(D),
        .CLK(clk_1hz),
        .RST(RST),
        .Q(Q1)
    );

    FPGA_DFF R2(
        .D(Q1),
        .CLK(clk_1hz),
        .RST(RST),
        .Q(Q2)
    );

    FPGA_DFF R3(
        .D(Q2),
        .CLK(clk_1hz),
        .RST(RST),
        .Q(Q3)
    );

    FPGA_DFF R4(
        .D(Q3),
        .CLK(clk_1hz),
        .RST(RST),
        .Q(Q4)
    );

    assign Q = {Q4, Q3, Q2, Q1};

endmodule