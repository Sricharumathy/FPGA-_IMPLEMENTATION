module TB();
reg clk,rst;
wire red,green,yellow;

TLC uut(.clk(clk),.rst(rst),.red(red),.green(green),.yellow(yellow));
initial begin
clk=0;
forever #10 clk=~clk;
end

initial begin
$monitor("Time=%0d    clk=%b    rst=%b    red=%b    yellow=%b    green=%b",$time,clk,rst,red,yellow,green);
rst=1;
#40;
rst=0;
#600;
$finish;
end
endmodule

