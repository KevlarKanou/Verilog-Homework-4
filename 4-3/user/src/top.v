module top (
    input   wire    i0,
    input   wire    i1,
    input   wire    i2,
    input   wire    i3,

    input   wire    s0,
    input   wire    s1,
    input   wire    s2,

    output  reg     sout
);

    always @(*) begin
        casex ({s0, s1, s2})
            3'b00x  :
                sout = i0;
            3'b01x  :
                sout = i1;
            3'b10x  :
                sout = i2;
            3'b110  :
                sout = 1'bz;
            3'b111  :
                sout = i3;
            default :
                sout = i0;
        endcase
    end

endmodule  //top