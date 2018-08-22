//Circuito meio somador de duas entradas: (1 bit)

module half_adder (a, b, s, c);
input a,b;
output s,c;

assign s = a ^ b;
assign c = a & b;

endmodule

//Este circuito possui duas saídas, S (soma) e o C (carry) ou overflow da soma
//Para satisfazer a tabela verdade de um half-adder 
//podemos representar  a soma com uma XOR e o carry com uma AND

module half_adder2 (a, b, s, c);
input a,b;
output s,c;

xor u1 (s, a, b);
and u2 (c, a, b);

endmodule

//o circuito poderia ser feito com 5 portas NORs