module cla_tb();
	reg[31:0] a;
	reg[31:0] b;
	wire[31:0] result;

	cla my_cla(a,b,result);

	initial begin
		$dumpfile("problem_four.vcd");
		$dumpvars(0, cla_tb);
		a = 32'h1A8350B1;
		b = 32'h0BC11490;
		#20;
		a = 32'h000000A1;
		b = 32'h00000011;
		#20;
	end
endmodule
