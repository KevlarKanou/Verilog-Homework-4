`timescale 1ns/1ps

module tb (

);

    initial begin
       $dumpfile("wave.vcd");
       $dumpvars(0, tb);
       #6000 $finish;
    end

    reg [4:0] in = 5'b0;

    always begin
        #10 in = in + 1'b1;
    end

    wire    a, b, c, d, e;
    assign {a, b, c, d, e} = in;
    wire 	result;

    Voter u_Voter(
        //ports
        .a      		( a      		),
        .b      		( b      		),
        .c      		( c      		),
        .d      		( d      		),
        .e      		( e      		),
        .result 		( result 		)
    );


endmodule