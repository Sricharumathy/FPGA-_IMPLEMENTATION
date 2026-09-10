module MuxLogic(input clk,rst,refreshstart,
input [6:0]segsecones,segsectens,segminones,segmintens,output reg [6:0]seg,output reg [3:0] digit);
reg [1:0] digit_select;
always @(posedge clk) begin
if(rst) begin
digit_select<=2'b00;
end
else if (refreshstart) begin
digit_select<=digit_select+1'b1;
end
end
always@(*)begin
    case(digit_select)
        2'b00: begin 
        digit=4'b0001; 
        seg=segmintens;
        end
        2'b01: begin 
        digit=4'b0010;
        seg=segminones; 
        end
        2'b10: begin 
        digit=4'b0100; 
        seg=segsectens; 
        end
        2'b11: begin 
        digit=4'b1000; 
        seg=segsecones; 
        end
        default: begin 
        digit=4'b1111; 
        seg=7'b1111111; 
        end
    endcase
end

endmodule

