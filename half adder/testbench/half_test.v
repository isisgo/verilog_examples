module half_adder_behav_test;
	reg a,b;
	wire s,c;

	half_adder ha1(a,b,s,c);

initial begin
	$dumpfile("/build/dumpfile.vcd");
	$dumpvars(0, half_adder_behav_test);

	a=0; b=0; #10;
	a=0; b=1; #10;
	a=1; b=0; #10;
	a=1; b=1; #10;

$finish;

end
initial
$monitor("out");
endmodule


