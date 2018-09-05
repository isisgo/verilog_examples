//SR usando gate level:

module sr_ff(output q, output q1, input r, input s, input clk);
nor (q, r, q1);
nor (q1, s, q);
endmodule

//SR usando modelagem dataflow

		