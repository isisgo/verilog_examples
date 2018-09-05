module D_flip_flop_test;
reg clk, D, reset;
wire Q;
    
flip_flop_D uut(clk,D,reset,Q);

initial begin
    clk=0;
    forever #10 clk = ~clk;  
end 
initial begin 
    $dumpfile("/build/dumpfile.vcd");
    $dumpvars(0, D_flip_flop_test);

    reset=1;
    D <= 0;
    #100;
    reset=0;
    D <= 1;
    #100;
    D <= 0;
    #100;
    D <= 1;
end 
endmodule