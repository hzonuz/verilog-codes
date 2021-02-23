//`include "problem_one.v"

module problem_one_tb();
	reg a, b, c, d, an, bn, cn, dn;
	wire out;
	problem_one p1(a,b,c,d,an,bn,cn,dn,out);

	initial begin
		$dumpfile("problem_one.vcd");
		$dumpvars(0, problem_one_tb);
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		an = 1;
		bn = 1;
		cn = 1;
		dn = 1;
		#20;
		d = 1;
		dn = 0;
		#20;
		c = 1;
		cn = 0;
		#20;
		d = 0;
		dn = 1;
		#20;
		b = 1;
		bn = 0;
		#20;
		d = 1;
		dn = 0;
		#20;
		c = 0;
		cn = 1;
		#20;
		d = 0;
		dn = 1;
		#20;
		a = 1;
		an = 0;
		#20;
		d = 1;
		dn = 0;
		#20;
		c = 1;
		cn = 0;
		#20;
		d = 0;
		dn = 1;
		#20;
		b = 0;
		bn = 1;
		#20;
		d = 1;
		dn = 0;
		#20;
		c = 0;
		cn = 1;
		#20;
		d = 0;
		dn = 1;
		#20;
	end
endmodule
