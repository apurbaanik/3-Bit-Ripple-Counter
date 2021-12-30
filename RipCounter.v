module RipCounter (input clk, input rst, output [2:0] count);
	wire q0;
	wire q0n;
	wire q1;
	wire q1n;
	wire q2;
	wire q2n;
	dff DUT1 (.clk(clk), .rst(rst), .d(q0n), .q(q0), .qn(q0n));
	dff DUT2 (.clk(q0n), .rst(rst), .d(q1n), .q(q1), .qn(q1n));
	dff DUT3 (.clk(q1n), .rst(rst), .d(q2n), .q(q2), .qn(q2n));
	assign count = {q2, q1, q0};
endmodule