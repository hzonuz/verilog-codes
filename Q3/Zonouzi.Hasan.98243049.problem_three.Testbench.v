module problem_three_tb();
	reg[7:0] a;
	reg[7:0] b;
	wire[7:0] out;
	reg[1:0] s;

	problem_three p3(a,b,s,out);
	
	initial begin
		$dumpfile("problem_three.vcd");
		$dumpvars(0, problem_three_tb);

		a = 8'b00101101;
		b = 8'b00010111;
		s = 2'b00;
		#20;
		s = 2'b01;
		#20;
		s = 2'b10;
		#20;
		s = 2'b11;
		#20;
	end
endmodule
