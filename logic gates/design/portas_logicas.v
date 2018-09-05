
//		Porta AND:

module AND_gate (x, y, out); 	//declaracao do modulo AND
input wire x, y; 				//entradas de um bit
output wire out;				//saída de um bit

assign out = x & y;				//circuito AND utilizando a chamada assign

endmodule; 						//final do módulo porta AND

//		Porta OR:

module OR_gate (x, y, out); 	
input x, y;
output out;

assign out = x | y;

endmodule; 

//		Porta NOT:

module NOT_gate (x, out); 	
input x;
output out;

assign out = ~x;

endmodule; 

//		Porta XOR

module XOR_gate (x, y, out); 	
input x, y;
output out;

assign out = x ^ y;

endmodule; 

//		Porta NOR

module NOR_gate (x, y, out); 	
input x, y;
output out;

assign out = x ~| y;

endmodule; 

//		Porta NAND

module NAND_gate (x, y, out); 	
input x, y;
output out;

assign out = x ~& y;

endmodule; 

//		Porta XNOR

module XnOR_gate (x, y, out); 	
input x, y;
output out;

assign out = x ~^ y;

endmodule; 