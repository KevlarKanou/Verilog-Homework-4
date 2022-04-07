`timescale 1ns/1ps

module tb (

);
    
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb);
        #6000 $finish;
    end

    reg [3:0] I = 4'd0;

    always begin
        if (I >= 4'd10)
            #10 I = 4'd0;
        else
            #10 I = I + 1'd1;
    end

    wire [23:0]	O;

    myfuntion u_myfuntion(
        //ports
        .I 		( I 		),
        .O 		( O 		)
    );

endmodule