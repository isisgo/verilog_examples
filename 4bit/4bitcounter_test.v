module bitcounter_test();

	reg clk, clear, enable;

	wire [3:0] out;

	count4 uut(clk, clear, enable, out);

	always	#2 clk = ~clk;
	
	initial begin

		$dumpfile("dumpfile.vcd");
		$dumpvars(0, bitcounter_test);

		clk = 0;
		#10 clear = 1;
		#10 clear = 0;
		#10 enable = 1;
		#10 enable = 0;
		#20 clear = 0;
		#10 $finish;
	end
endmodule
