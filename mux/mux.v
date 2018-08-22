module MUX (a, b, s, x);

//poderia ao invés de input wire usar apenas wire

input wire a, b;		//entradas
input wire s;			//selecao
output wire x;			//saida
wire inv, a1, b1;

//estrutura da porta logica em verilog:
//porta nome(saida, entrada1, entrada2, ...)
//exemplo:

not u1(inv, s);
and u2(a1, inv, a);
and u3(b1, s, b);
or u4(x, a1, b1);

endmodule
