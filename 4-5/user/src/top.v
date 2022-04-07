module myfuntion(O, I);
    input [3:0] I;
    output [23:0] O;

    function [23:0] fac;
        input [3:0] I;
        integer i;
        begin
            fac = 24'b1;
            for (i = 1; i <= I; i = i + 1) begin
                fac = fac * i;
            end
        end
    endfunction

    assign O = fac(I);

endmodule
