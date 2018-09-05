module ram256_test;

reg clk, datain[15:0], address, en, write, read;
reg [15:0] mem [0:255];
wire dataout[15:0];

ram256 uut(address, datain, clk, en, write, read, dataout);

initial begin
    clk=0;
    forever #10 clk = ~clk;  
end

initial begin 
    en = 0;
    # 50 en = 1;
end

initial begin
	$dumpfile("/build/dumpfile.vcd");
	$dumpvars(0, ram256_test);
	
datain=5'b00000; write=1; read=0;address=5'b00001; #10
datain=5'b00011; write=1; read=0;address=5'b00001; #10
datain=5'b00011; write=0; read=1;address=5'b00001; #10


$finish;

end
endmodule
