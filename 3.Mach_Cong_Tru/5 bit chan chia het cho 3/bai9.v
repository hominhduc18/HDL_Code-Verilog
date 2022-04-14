module bai9(A,B,C,d,E,Y);
input A,B,C,d,E;
output Y;
assign Y=(C&B)|(C&d)|(E&B)|(E&d)|(C&B&d&E);
endmodule
module TB_bai9();
reg A,B,C,d,E;
wire  Y;
initial
begin
B=1;C=1;
#100
d=1;C=1;
#100
E=1;B=1;
#100
E=1;d=1;
#100
B=1;C=1;
d=1;E=1;
#2000 $finish;
end
bai9 D(.A(A),.B(B),.C(C),.d(d),.E(E),.Y(Y));
endmodule
