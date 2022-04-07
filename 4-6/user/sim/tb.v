`timescale 1ns/1ps

module tb (

);
    initial begin
       $dumpfile("wave.vcd");
       $dumpvars(0, tb);
       #6000 $finish;
    end

    reg [3:0] A, B;

    initial begin
        A = 4'b0;
        B = 4'b0;
    end

    always begin
        #10 A = A + 1'b1;
    end

    always begin
        #160 B = B + 1'b1;
    end

    wire [7:0]	S;

    multiplier4 u_multiplier4(
        //ports
        .A 		( A 		),
        .B 		( B 		),
        .S 		( S 		)
    );

endmodule