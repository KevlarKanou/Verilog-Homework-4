module top (
    input   wire    data,
    input   wire    enable,
    input   wire    val,
    output  wire    dout
);

    wire n1, n2, n3, n4;

    not u1 (n1,     enable);
    nor u2 (n2,     data,   n1);
    xor u3 (n3,     enable, val);
    and u4 (n4,     dout,   n3),
        u5 (dout,   n2,     n4);

endmodule  //top