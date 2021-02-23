module problem_two_tb();
	reg[7:0] a;
	reg[7:0] b;
	wire[7:0] s;
	wire of;
	problem_two p2(a, b, s, of);

	initial begin
		$dumpfile("problem_two.vcd");
		$dumpvars(1, problem_two_tb);
		a = 8'b00001010;
		b = 8'b00101111;
		#20;
		a = 8'b01110101;
		b = 8'b01010001;
		#20;
		a = 8'b10001011;
		b = 8'b10001111;
		#20;
		a = 8'b11110000;
		b = 8'b11000101;
		#20;
	end
endmodule

