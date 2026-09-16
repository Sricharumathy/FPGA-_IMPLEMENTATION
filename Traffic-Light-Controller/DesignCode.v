
module TLC #(parameter RT=3,RYT=2,GT=3,YT=2)
(input clk,rst,tick,output reg red,green,yellow);
reg [1:0] state,nextstate;
reg [31:0] count;
localparam RED=2'b00,REDYELLOW=2'b01,GREEN=2'b10,YELLOW=2'b11;
//SEQUENTIAL LOGIC
always @(posedge clk) begin
if(rst) begin
state<=RED;
count<=1'b0;
end
else if(tick) begin
state<=nextstate;
if(nextstate==state)
count<=count+1'b1;
else
count<=1'b0;
end
end

//COMBINATIONAL LOGIC
always @(*) begin
case(state)
RED: begin
if(count==RT-1)
nextstate=REDYELLOW;
else
nextstate=RED;
end
REDYELLOW:begin
if(count==RYT-1)
nextstate=GREEN;
else
nextstate=REDYELLOW;
end
GREEN: begin
if(count==GT-1)
nextstate=YELLOW;
else
nextstate=GREEN;
end
YELLOW: begin
if(count==YT-1)
nextstate=RED;
else
nextstate=YELLOW;
end
default: begin
nextstate=RED;
end
endcase
end

//OUTPUT LOGIC
always @(*) begin
if(rst) begin
        red = 0;
        yellow = 0;
        green = 0;
end
else begin
case(state)
RED: begin
red=1'b1;
green=1'b0;
yellow=1'b0;
end
REDYELLOW: begin
red=1'b1;
green=1'b0;
yellow=1'b1;
end
GREEN: begin
red=1'b0;
green=1'b1;
yellow=1'b0;
end
YELLOW: begin
red=1'b0;
green=1'b0;
yellow=1'b1;
end
default: begin
red=1'b0;
green=1'b0;
yellow=1'b0;
end
endcase
end
end
endmodule
