`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2026 10:30:38
// Design Name: RCA
// Module Name: RCA
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


module RCA(
    input [3:0] A,
    input [3:0] B,
    output [3:0] S,
    output C0
    );
    wire C1, C2, C3;
    
    FA f0(A[0], B[0], 0, S[0], C1);
    FA f1(A[1], B[1], C1, S[1], C2);
    FA f2(A[2], B[2], C2, S[2], C3);
    FA f3(A[3], B[3], C3, S[3], C0);                                  
    
    
endmodule