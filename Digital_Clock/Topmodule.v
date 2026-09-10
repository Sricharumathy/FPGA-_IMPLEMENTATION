module Topmodule(input clk,rst,output [3:0] digit,output  [6:0] seg);
wire tick;
wire refreshstart;
wire [5:0] min;
wire [5:0] sec;
wire [3:0] mintens;
wire [3:0] minones;
wire [3:0] sectens;
wire [3:0] secones;
wire [6:0] segmintens;
wire [6:0] segminones;
wire [6:0] segsectens;
wire [6:0] segsecones;

ClkDiv u1(.clk(clk),
	.rst(rst),
	.tick(tick),
.refreshstart(refreshstart));

Counter u2(.clk(clk),
	.rst(rst),
	.tick(tick),
	.min(min),
	.sec(sec));

DigitSplit u3(.min(min),
	.sec(sec),
	.min_tens(mintens),
	.min_ones(minones),
	.sec_tens(sectens),
	.sec_ones(secones));

SevenSeg d1(.bcd(mintens),.seg(segmintens));
SevenSeg d2(.bcd(minones),.seg(segminones));
SevenSeg d3(.bcd(sectens),.seg(segsectens));
SevenSeg d4(.bcd(secones),.seg(segsecones));

MuxLogic u4 (
        .clk(clk),
        .rst(rst),
        .refreshstart(refreshstart),
        .segmintens(segmintens),
        .segminones(segminones),
        .segsectens(segsectens),
        .segsecones(segsecones),
        .seg(seg),
        .digit(digit)
    );





endmodule

