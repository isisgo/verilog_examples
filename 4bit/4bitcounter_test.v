`include "4bitcounter.v"
module bitcounter_test();

	reg clk, clear, enable;

	wire [3:0] out;

	count4 uut(clk, clear, enable, out);

	always	#5 clk = ~clk;
	
	initial begin

		$dumpfile("dumpfile.vcd");
		$dumpvars(0, bitcounter_test);

		clk = 0;
		#20 enable = 1;
		#10 clear = 1;
		#20 enable = 0;
		#10 $finish
	
	end
	
endmodule