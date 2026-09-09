module design_clk(input clk,rst,tick ,output reg [5:0] sec,min);
always @(posedge clk) begin
if(rst) begin
sec<=0;
min<=0;
end
else if ( tick) begin
if(sec==6'd59) begin
sec<=0;
if(min==6'd59) begin
min<=0;
end
else begin
min<=min+1;
end
end
else begin
sec<=sec+1;
end
end
end
endmodule

