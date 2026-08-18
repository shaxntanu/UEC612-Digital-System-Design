`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2026 10:57:31
// Design Name: 
// Module Name: TB_RCA
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


module TB_RCA;
reg [3:0] A;
reg [3:0] B;
wire [3:0] S;
wire C0;

RCA el (A, B, S, C0);

initial begin
A = 0; B = 0; #10;
A = 1; B = 2; #10;
A = 3; B = 5; #10;
A = 7; B = 1; #10;
A = 10; B = 5; #10;
A = 15; B = 1; #10;
A = 15; B = 15; #10;

end
   
endmodule