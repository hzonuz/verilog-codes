module problem_three(input[7:0] a, input[7:0] b, input[1:0] s, output[7:0] out);
	wire[7:0] out0;
	func0 f0(a,b,out0);
	wire[7:0] out1;
	func1 f1(a,b,out1);
	wire[7:0] out2;
	func2 f2(a,b,out2);
	wire[7:0] out3;
	func3 f3(a,b,out3);
	assign out = (s[0]) ? (s[1] ? out3: out1) : (s[1] ? out2: out0);  
endmodule

module func0(input[7:0] a, input[7:0] b, output[7:0] out);
	assign out = (a <<< 2) + (b >>> 2);
endmodule

module func1(input[7:0] a, input[7:0] b, output[7:0] out);
	assign out = a + 2*b;
endmodule

module func2(input[7:0] a, input[7:0] b, output[7:0] out);
	assign out = -1*b;
endmodule

module func3(input[7:0] a, input[7:0] b, output[7:0] out);
	assign out = (3*a > b)? 3*a - b : b - 3*a;
endmodule
