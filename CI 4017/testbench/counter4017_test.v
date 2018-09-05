module counter4017_test;
	reg clock, CE, reset;
  wire [9:0] out;
	wire carry_out;


counter4017 uut(
    clock,
    CE,
    reset,
    out,
    carry_out
  );

  initial begin
    clock = 1'b0;
    CE = 1'b0;
    reset = 1'b1;
    forever #5 clock = ~clock;
  end

initial begin
    $dumpfile("/build/dumpfile.vcd");
    $dumpvars(0, counter4017_test);
    
    #20 reset = 1'b0;
    #10 CE = 1'b1;
    #10 CE = 1'b0;
    #20 reset = 1'b1;
    #5 reset = 1'b0;

$finish;
end
endmodule