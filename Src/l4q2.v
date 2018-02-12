module dff2 (output reg op, input d,clk,rst,pst);
always @ (posedge clk or posedge rst or posedge pst)
begin
if (pst==1'b1) 
op<=1'b1;
else if (rst==1'b1) 
op<=1'b0;
else
op<=d;
end
endmodule