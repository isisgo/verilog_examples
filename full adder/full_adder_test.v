module full_adder_behav_test;
reg a,b, cin;
wire s,c;

full_adder ha1(a,b,cin,s,c);

initial begin
$dumpfile("dumpfile.vcd");
$dumpvars(0, full_adder_behav_test);

a=0; b=0; cin=0;#10;
a=0; b=0; cin=1;#10;
a=0; b=1; cin=0;#10;
a=0; b=1; cin=1;#10;
a=1; b=0; cin=0;#10;
a=1; b=0; cin=1;#10;
a=1; b=1; cin=0;#10;
a=1; b=1; cin=1;#10;

$finish;

end
initial
$monitor("out");
endmodule
