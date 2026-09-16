module ClkDiv( input clk,rst, output reg tick,refreshstart);
reg [31:0] count;
reg [15:0] rfcount;
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
count<=count+1;
tick<=0;
end  
end
always @(posedge clk) begin
if(rst) begin
rfcount<=0;
refreshstart<=0;
end 
else if(rfcount==16'd49_999) begin
rfcount<=0;
refreshstart<=1;
end
else begin
rfcount<=rfcount+1;
refreshstart<=0;
end
end
endmodule

