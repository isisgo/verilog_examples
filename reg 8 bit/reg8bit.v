module regN (reset, clk, D, Q);
input reset;
input clk;
parameter N = 8; 			//pode variar o N
input [N-1:0] D;
output [N-1:0] Q;
reg [N-1:0] Q;

always @(posedge clk)
	if(reset)
		Q = 0;
	else
		Q = D;
endmodule 