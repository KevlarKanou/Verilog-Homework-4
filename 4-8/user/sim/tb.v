`timescale 1ns/1ps

module tb (
);
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb);
        #2000 $finish;
    end

    reg [6:0]   numInput = 7'b0;

    always begin
        #100 numInput = $random();
        while (numInput > 100) begin
            numInput = $random();
        end
    end

    wire [11:0]	numOutput;

    Convert_6BCD u_Convert_6BCD(
        //ports
        .numInput  		( numInput  		),
        .numOutput 		( numOutput 		)
    );

endmodule