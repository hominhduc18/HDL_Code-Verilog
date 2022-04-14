module bai7trang23(s,a,y);
input [2:0]s;
input [4:0]a;
output y;
wire b,c,d;
mux2_1 H1(s[0],a[0],a[1],b);
mux2_1 H2(s[0],a[2],a[3],c);
mux2_1 H3(s[1],b,c,d);
mux2_1 H4(s[2],a[4],d,y);
endmodule

module mux2_1(Y,A,B,S); 
input A,B,S; 
output Y; 
assign Y = (~S & A) | (S & B); 
endmodule 

module TB_bai7trang23();
reg [2:0]s;
reg [4:0]a;
wire y;
initial 
begin
s=3'b000;a=5'b00001;
#100
s=3'b001;a=5'b00010;
#100
s=3'b010;a=5'b00100;
#100
s=3'b011;a=5'b01000;
#100
s=3'b100;a=5'b10000;
#100
s=3'b101;a=5'b10000;
#100
s=3'b110;a=5'b10000;
#100
s=3'b111;a=5'b10000;
#1000 $finish;
end
bai7trang23 D(.s(s),.a(a),.y(y));
endmodule
