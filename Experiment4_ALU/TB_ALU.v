//Test Bench

`timescale 1ns / 1ps

module ALU_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] S;

wire [4:0] out;

ALU DUT (
    .A(A),
    .B(B),
    .S(S),
    .out(out)
);

initial
begin
    A = 4'b1010;   
    B = 4'b0011;   

    S = 3'b000; #10;   
    S = 3'b001; #10;   
    S = 3'b010; #10;   
    S = 3'b011; #10;   
    S = 3'b100; #10;   
    S = 3'b101; #10;   
    S = 3'b110; #10;   
    S = 3'b111; #10;  

end

endmodule