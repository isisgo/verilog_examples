//This counter has 10 outputs. One of the 10 outputs may be high at a time.

module counter4017(
	input clock,
	input CE,				//The clock negated. He's connected in a AND gate with the clock, so it must be low for the counter to work.
	input reset,			//In the counter its connected with the reset of the five internal Flip Flops
	output reg [9:0] out, 	//These  pins changes to ‘high’ level one by one (one after another) in a sequence for each clock signal.
	output reg carry_out		//count exceeds 10 - half low and half high
);

always @(posedge clock) begin
	if (reset) begin
		out = 10'b000000001;
	end else if (CE) begin
		out <= out;			//stop count
	end else begin
		out <= out << 1;
	end
	
	if(out >= 10'b0000100000)
		carry_out = 1'b0;
    else
		carry_out = 1'b1;
	end
endmodule