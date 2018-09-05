//Circuito meio somador de duas entradas: (1 bit)

module half_adder (a, b, s, c);
input a,b;
output s,c;

assign s = a ^ b;
assign c = a & b;

endmodule

//A partir do hal-adder que é possível criar um full adder

//Possui 3 entradas: a, b e um Carry In, que são somadas
//Duas saídas: S e Carry Out
//Novamente a soma é o resultado de um OU exclusivo
//Já o carry out vai ser um OU 

module full_adder (a, b, cin, soma, cout);

input a, b, cin;
output soma, cout;
wire carry1, carry2, soma1, soma2;


half_adder u1 (a, b, soma1,carry1);
half_adder u2 (cin, soma1, soma2, carry2);

assign soma = soma2;
assign cout = carry1 | carry2;

endmodule

module top(
	input [17:0] SW,
	output [17:0] LEDR
	);
		
	full_adder dut(SW[17], SW[16], SW[15], LEDR[17], LEDR[16]);

endmodule	

//Injetar sequencias de sinais para cobrir todos os casos da tabela verdade 
//Poderia também fazer um full adder com 10 NANDS