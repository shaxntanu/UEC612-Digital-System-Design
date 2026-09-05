module DFF(D, CLK, CLR, Q);

    input D, CLK, CLR;
    output reg Q;

    always @(posedge CLK)
    begin
        if (CLR == 1)
            Q <= 0;
        else
            Q <= D;
    end

endmodule