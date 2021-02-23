module problem_two(input[7:0] a, input[7:0] b, output[7:0] out, output of);
	wire c0, c1, c2, c3, c4, c5, c6, c7, c8;
	full_adder f0(a[0], b[0], 1'b0, c1, out[0]);
	full_adder f1(a[1], b[1], c1, c2, out[1]);
	full_adder f2(a[2], b[2], c2, c3, out[2]);
	full_adder f3(a[3], b[3], c3, c4, out[3]);
	full_adder f4(a[4], b[4], c4, c5, out[4]);
	full_adder f5(a[5], b[5], c5, c6, out[5]);
	full_adder f6(a[6], b[6], c6, c7, out[6]);
	full_adder f7(a[7], b[7], c7, c8, out[7]);
	xor(of, c7, c8);
endmodule

module full_adder(input a, input b, input cin, output cout, output s);
	wire w0, w1, w2;
	xor(s, a, b, cin);
	and(w0, a, cin);
	and(w1, b, cin);
	and(w2, a, b);
	or(cout, w0, w1, w2);
endmodule

