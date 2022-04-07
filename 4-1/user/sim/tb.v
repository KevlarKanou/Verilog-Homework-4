module tb (

);

    reg data, enable, val;

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb);
        #6000 $finish;
    end

    initial begin
        data    = 0;
        enable  = 0;
        val     = 0;
    end

    always begin
        #10 data = ~data;
    end

    always begin
        #20 val = ~val;
    end

    always begin
        #40 enable = ~enable;
    end

    wire 	dout;

    top u_top(
        //ports
        .data   		( data   		),
        .enable 		( enable 		),
        .val    		( val    		),
        .dout   		( dout   		)
    );


endmodule  //tb