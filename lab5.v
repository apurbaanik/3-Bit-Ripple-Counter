module dff(input clk, input rst, input d, output reg q, output reg qn);
	assign qn = ~q;
	always @ (posedge clk or negedge rst)
		if(!rst)
			q <= 0;
		else
			q <= d;
endmodule