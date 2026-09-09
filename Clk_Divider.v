module clk_divider(input clk, rst,output reg tick);
reg [31:0] count;
always @(posedge clk) begin
if(rst) begin
count<=32'b0;
tick<=0;
end
else if(count==49_999_999) begin
count<=32'b0;
tick<=1;
end
else begin
count<=count+1'b1;
tick<=0;
end
end
endmodule
