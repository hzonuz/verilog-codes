module problem_one(input a, input b, input c, input d,
				input an, input bn, input cn, input dn,
				output out);
	wire w0, w1, w2, w3, w4, w5, w6, w7, w8, w9;
	supply0 gnd;
	supply1 pow;
	pmos(w0, pow, an);
	pmos(w1, w0, dn);
	pmos(out, w1, cn);
	pmos(w2, pow, an);
	pmos(w3, w2, b);
	pmos(out, w3, cn);
	pmos(w4, pow, bn);
	pmos(out, w4, d);
	pmos(w5, pow, a);
	pmos(w6, w5, c);
	pmos(out, w6, d);
	nmos(out, w7, an);
	nmos(out, w7, cn);
	nmos(out, w7, dn);
	nmos(w7, w8, an);
	nmos(w7, w8, b);
	nmos(w7, w8, cn);
	nmos(w8, w9, bn);
	nmos(w8, w9, d);
	nmos(w9, gnd, a);
	nmos(w9, gnd, c);
	nmos(w9, gnd, d);

endmodule



