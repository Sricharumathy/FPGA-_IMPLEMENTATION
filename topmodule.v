module topmodule(input clk,rst,output [6:0]seg,seg1,seg2,seg3);
wire tick;
wire [5:0] sec,min;
wire [3:0] sec_ones,sec_tens,min_ones,min_tens;

clk_divider dut(.clk(clk),.rst(rst),.tick(tick));
design_clk dut1(.clk(clk),.rst(rst),.tick(tick),.sec(sec),.min(min));
digital_splitter dut2(.sec(sec),.min(min),.sec_ones(sec_ones),.sec_tens(sec_tens),.min_ones(min_ones),.min_tens(min_tens));
segment_display dut3(.dig(sec_ones),.seg(seg));
segment_display dut4(.dig(sec_tens),.seg(seg1));
segment_display dut5(.dig(min_ones),.seg(seg2));
segment_display dut6(.dig(min_tens),.seg(seg3));
endmodule
