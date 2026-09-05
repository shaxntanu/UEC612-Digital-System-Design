module SIPO(D, CLK, CLR, Q);

    input D, CLK, CLR;
    output [3:0] Q;

    DFF FF0 (
        .D(D),
        .CLK(CLK),
        .CLR(CLR),
        .Q(Q[0])
    );

    DFF FF1 (
        .D(Q[0]),
        .CLK(CLK),
        .CLR(CLR),
        .Q(Q[1])
    );

    DFF FF2 (
        .D(Q[1]),
        .CLK(CLK),
        .CLR(CLR),
        .Q(Q[2])
    );

    DFF FF3 (
        .D(Q[2]),
        .CLK(CLK),
        .CLR(CLR),
        .Q(Q[3])
    );

endmodule