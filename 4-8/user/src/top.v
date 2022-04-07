module Convert_6BCD(numInput, numOutput);
    input [6:0] numInput;
    output [11:0] numOutput;

    wire [4:0] mod36;
    assign mod36            = numInput % 36;

    assign numOutput[11:8]  = numInput / 36;
    assign numOutput[7:4]   = mod36 / 6;
    assign numOutput[3:0]   = mod36 % 6;

endmodule