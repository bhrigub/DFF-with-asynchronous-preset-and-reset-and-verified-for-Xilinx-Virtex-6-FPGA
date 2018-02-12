module tbd;
wire top;
reg tip,trst,tpst;
reg tclk=0;

dff2 d1 (top,tip,tclk,trst,tpst);

always 
begin
tclk=~tclk; #5;
end

initial
begin
tip=1;  #10
trst=1; tpst=0; #10
tip=0; trst=0; tpst=1; #10
trst=0; tpst=0; #10
tip=1; #10
tip=0; #10
tip=1; #10
tip=0; #10
tip=1; #10
tip=1; #10;
end
endmodule