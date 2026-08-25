// DTU

`timescale 1ns / 1ps

module ALU(
    input [3:0] A,
    input [3:0] B,
    input [2:0] S,
    output reg [4:0] out
); 
    always @(*)
    begin
    if (S == 3'b000)
    out = A + B;
    
    else if (S == 3'b001)
    out = A - B;
    
    else if (S == 3'b010)
        out = A & B;


else if (S == 3'b011)
    out = A | B;
    
    else if (S == 3'b100)
        out = A ^ B;
        
        else if (S == 3'b101)
            out = ~A;
            
            else if (S == 3'b110)
                out = ~(A & B);

else if (S == 3'b111)
    out = ~(A |B);
    
    end
endmodule