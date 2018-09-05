//ram of 16-bit data and 256 address location

module ram256(address, datain, clk, en, write, read, dataout);

	input [15:0] datain;
	input [7:0] address; 		//2^8
	input clk, en, write, read;
    output dataout[15:0]; 

	reg [15:0] mem [0:255];

	// assign data = (!en && !read) ? mem[address] : {data{1'bz}};

always @(posedge clk) begin
	if (en && write && !read) begin			//writing
		mem[address] <= datain;
		dataout <= datain;
	end
	if (en && !write && read) begin			//reading
		dataout <= mem[address];
	end
	if (en && write && read) begin
		$display("Error! Write and Read both active");
	end
	if (!en) begin
		dataout <= 15'bz;			//high impedance
	end
end
endmodule
