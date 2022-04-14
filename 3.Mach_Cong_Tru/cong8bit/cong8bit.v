module cong8bit(a,b,s);
input [7:0]a,b;
output [8:0]s;
wire [6:0]c;
fa B0(c[0],s[0],a[0],b[0],1'b0);
fa B1(c[1],s[1],a[1],b[1],c[0]);
fa B2(c[2],s[2],a[2],b[2],c[1]);
fa B3(c[3],s[3],a[3],b[3],c[2]);
fa B4(c[4],s[4],a[4],b[4],c[3]);
fa B5(c[5],s[5],a[5],b[5],c[4]);
fa B6(c[6],s[6],a[6],b[6],c[5]);
fa B7(s[8],s[7],a[7],b[7],c[6]);

endmodule

module fa(co,s,a,b,ci);
input a,b,ci;
output co,s;
wire n1,n2,n3,n4;
xor (n1,a,b);
xor (s,ci,n1);
not (n2,n1);
and (n3,n2,b);
and (n4,ci,n1);
or (co,n3,n4);
endmodule

module tb();
reg [7:0]a,b;
wire [8:0]s;
initial
begin
a=8'b00000000;
b=8'b00000000;
#100
a=8'b00000001;
b=8'b00000001;
#100
a=8'b00000011;
b=8'b00000011;
#100
a=8'b00000101;
b=8'b00000101;
#100
a=8'b00001010;
b=8'b00000101;
#100
a=8'b00010011;
b=8'b00001100;
#100
a=8'b00100010;
b=8'b00010100;
#100
a=8'b00101010;
b=8'b01100110;
#100
a=8'b10101010;
b=8'b01110000;
#100
a=8'b11110111;
b=8'b10010001;
#1000 $finish;
end
cong8bit D(.a(a),.b(b),.s(s));
endmodule