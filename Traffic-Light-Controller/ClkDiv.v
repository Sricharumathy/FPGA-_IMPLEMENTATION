
module clkdiv(input clk,rst,output reg tick);
reg [31:0] count;
always @(posedge clk) begin
if(rst) begin 
count<=0;
tick<=0;
end
else if(count==32'd49_999_999) begin
tick<=1;
count<=0;
end
else begin
tick<=0;
count<=count+1;
end
end
endmodule
