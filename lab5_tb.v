`timescale 1ns/1ps
module RipCounter_tb();
reg t_clk=0;
reg t_rst;
wire [2:0]t_cnt;

RipCounter DUT(.clk(t_clk),.rst(t_rst),.count(t_cnt));
	always
	begin
		t_clk <= ~t_clk;
		#5;
	end
	initial
	begin
		t_rst<=0;
		#15;
		t_rst<=1;
	end
endmodule