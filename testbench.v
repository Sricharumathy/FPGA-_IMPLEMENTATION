module testbench();
reg clk;
reg rst;
wire [6:0] seg1,seg2,seg3,seg4;

topmodule dut(.clk(clk),.rst(rst),.seg(seg1),seg1(seg2),seg2(seg3),seg3(seg4));

initial begin
clk=0;
forever #10 clk=~clk;
end

initial begin
rst=1;
#20;
rst=0;
#10000000000;
$finish;
end
endmodule
