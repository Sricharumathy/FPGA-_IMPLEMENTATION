module Counter(input clk,rst,tick,output reg [5:0] sec,min);
always @(posedge clk) begin
if(rst) begin
sec<=6'd0;
min<=6'd0;
end
else if(tick) begin
if(sec==6'd59) begin
sec<=6'd0;
if(min==6'd59) begin
min<=6'd0;
end
else begin
min<=min+6'd1;
end
end
else begin
sec<=sec+6'd1;
end
end
end
endmodule

