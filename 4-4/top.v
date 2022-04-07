module sort5(A, B, C, D, E, O1, O2, O3, O4, O5);
    input   wire    [3:0] A, B, C, D, E;
    output  reg     [3:0] O1, O2, O3, O4, O5;

    task sort2;
        inout   [3:0] a, b;
        reg [3:0] temp;
        begin
            if (a < b) begin
               temp = a;
               a = b;
               b = temp; 
            end
        end
    endtask

    always @(*) begin
        {O1, O2, O3, O4, O5} = {A, B, C, D, E};
        sort2 (O1, O2);
        sort2 (O1, O3);
        sort2 (O1, O4);
        sort2 (O1, O5);
        sort2 (O2, O3);
        sort2 (O2, O4);
        sort2 (O2, O5);
        sort2 (O3, O4);
        sort2 (O3, O5);
        sort2 (O4, O5);
	end

endmodule
