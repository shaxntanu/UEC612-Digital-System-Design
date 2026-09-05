module SIPO_tb;

    reg D;
    reg CLK;
    reg CLR;

    wire [3:0] Q;

    SIPO uut (
        .D(D),
        .CLK(CLK),
        .CLR(CLR),
        .Q(Q)
    );

    always #5 CLK = ~CLK;

    initial begin

        CLK = 0;
        D = 0;
        CLR = 1; #100;

        CLR = 0;
        D = 1; #100;

        D = 0; #100;

        D = 1; #100;

        D = 1; #100;

    end

endmodule