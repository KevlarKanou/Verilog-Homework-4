`timescale 1ns / 1ps

module tb (
);

    initial begin
       $dumpfile("wave.vcd");
       $dumpvars(0, tb);
       #6000 $finish;
    end

    reg [3:0] A, B, C, D, E;

    initial begin
        A = 4'h0;
        B = 4'h0;
        C = 4'h0;
        D = 4'h0;
        E = 4'h0;
    end

    always begin
        #10 A = $random();
            B = $random();
            C = $random();
            D = $random();
            E = $random();
    end

    wire [3:0]	O1;
    wire [3:0]	O2;
    wire [3:0]	O3;
    wire [3:0]	O4;
    wire [3:0]	O5;

    sort5 u_sort5(
        //ports
        .A  		( A  		),
        .B  		( B  		),
        .C  		( C  		),
        .D  		( D  		),
        .E  		( E  		),
        .O1 		( O1 		),
        .O2 		( O2 		),
        .O3 		( O3 		),
        .O4 		( O4 		),
        .O5 		( O5 		)
    );

endmodule