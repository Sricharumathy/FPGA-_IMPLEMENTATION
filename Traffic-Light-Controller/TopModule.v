module TOP(input clk,rst,output wire red,yellow,green);
wire tick;
clkdiv uut(.clk(clk),.rst(rst),.tick(tick));
TLC uut1(.clk(clk),.rst(rst),.tick(tick),.red(red),.yellow(yellow),.green(green));
endmodule

