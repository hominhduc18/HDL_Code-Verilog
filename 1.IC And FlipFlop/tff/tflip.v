module tflip (ck, t, rs, q);
input ck, t, rs;
output q;
reg q;
always @ (posedge ck or negedge rs)
begin
if (rs == 1'b0)
q <= 0;
else
if (t == 1'b0)
q <= q;
else
q <= !q;
end
endmodule
// model testbench //
module TB_aaa();
reg ck, t, rs;
wire q;
initial
begin
ck=0;
rs=0;
t=0;
#200
rs=1;
t=0;
#100
rs=1;
t=1;
#300
rs=1;
t=0;
#1000 $finish;
end
always @(ck)
#50 ck<=~ck;
tflip U(.ck(ck),.rs(rs),.t(t),.q(q));
endmodule
