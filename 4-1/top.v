module top (
    input   wire    data,
    input   wire    enable,
    input   wire    val,
    output  wire    dout
);

    wire n1, n2, n3, n4;

    assign n1   = ~enable;
    assign n2   = ~(data | n1);
    assign n3   = enable ^ val;
    assign n4   = dout & n3;
    assign dout = n2 & n4;

endmodule  //top