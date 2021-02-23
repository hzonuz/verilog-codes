module cla(input[31:0] a, input[31:0] b, output[31:0] out);
	wire[32:0] c;
	carry my_carry(a,b,c);
	genvar i;
	generate
		for(i = 0; i < 32; i = i+1)
		begin
			fa my_fa(a[i], b[i], c[i], out[i]);
		end
	endgenerate 
endmodule

module carry(input[31:0] a, input[31:0] b, output[32:0] c);
	assign c[0] = 1'b0;
	wire[31:0] p, g;
	genvar i;
	generate
		for(i = 0; i < 32; i = i+1)
		begin
			assign p[i] = a[i] | b[i];
			assign g[i] = a[i] & b[i];
			assign c[i+1] = (p[i] & c[i]) | g[i];
		end
	endgenerate
endmodule 

module fa(input a, input b, input cin, output reg sum);
	always @(a or b or cin)
	begin
		sum = a^b^cin;
	end
endmodule  
