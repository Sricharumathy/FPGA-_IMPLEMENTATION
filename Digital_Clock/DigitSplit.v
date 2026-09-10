module DigitSplit(
input  [5:0] sec,min,
output [3:0] sec_ones,sec_tens,
output [3:0] min_ones,min_tens);

assign min_tens=min/10;
assign min_ones=min%10;
assign sec_tens=sec/10;
assign sec_ones=sec%10;

endmodule

