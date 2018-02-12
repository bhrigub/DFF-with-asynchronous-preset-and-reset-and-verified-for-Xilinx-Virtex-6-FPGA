module tbd;
wire top;
reg tip,trst,tpst;
reg tclk=1;

dff2 (top,tip,tclk,trst,tpst);

always 
begin
tclk=~tclk;
end

initial
begin
tip=1; trst=1; tpst=0; #10
trst=0; tpst=1; #10
trst=0; tpst=0; #10
tip=1; #10
tip=0; #10
tip=1; #10
tip=0; #10
tip=1; #10
tip=1; #10;
end