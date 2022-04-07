module Voter(a, b, c, d, e, result);
    input a, b, c, d, e;
    output result;

    wire [2:0] count;

    assign count = a + b + c + d + e;
    assign result = (count >= 3) ? 1'b1 : 1'b0;

endmodule
