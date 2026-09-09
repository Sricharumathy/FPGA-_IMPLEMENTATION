module digital_splitter(input [5:0] sec,min,output [3:0] sec_tens,sec_ones,min_tens,min_ones);
assign sec_tens = sec / 10;
assign sec_ones = sec % 10;

assign min_tens = min / 10;
assign min_ones = min % 10;
endmodule
