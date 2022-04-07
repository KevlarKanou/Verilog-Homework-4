// 逐位进位并行乘法器
module multiplier4(A, B, S);
    input [3:0] A, B;
    output [7:0] S;

    wire [3:0] t0, t1, t2, t3;

    // 逐位相乘
    assign t0 = {4{A[0]}} & B;
    assign t1 = {4{A[1]}} & B;
    assign t2 = {4{A[2]}} & B;
    assign t3 = {4{A[3]}} & B;

    // 逐行相加
    assign S = t0 + {t1, 1'b0} + {t2, 2'b0} + {t3, 3'b0};

endmodule
