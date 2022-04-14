module baiba(A,B,C,D,Y);
input [3:0]A,B,C,D;
output [8:0]Y;
wire [7:0]x1,x2;
nhan4bitt axb(A,B,x1);
nhan4bitt cxd(C,D,x2);
cong8bit congn(x1,x2,Y);
endmodule
//
module nhan4bitt(a,b,p);
input [3:0]a;
input [3:0]b;
output [7:0]p;
wire [11:0]c;
wire [5:0]S;
wire [14:0]andd;
assign p[0]=a[0]&b[0];
assign andd[0]=a[1]&b[0];
assign andd[1]=a[0]&b[1];
assign andd[2]=a[2]&b[0];
assign andd[3]=a[1]&b[1];
assign andd[4]=a[3]&b[0];
assign andd[5]=a[2]&b[1];
assign andd[6]=a[3]&b[1];
assign andd[7]=a[0]&b[2];
assign andd[8]=a[1]&b[2];
assign andd[9]=a[2]&b[2];
assign andd[10]=a[3]&b[2];
assign andd[11]=a[0]&b[3];
assign andd[12]=a[1]&b[3];
assign andd[13]=a[2]&b[3];
assign andd[14]=a[3]&b[3];
fa H1(andd[0],andd[1],1'b0,p[1],c[0]);
fa H2(andd[2],andd[3],c[0],S[0],c[1]);
fa H3(andd[4],andd[5],c[1],S[1],c[2]);
fa H4(1'b0,andd[6],c[2],S[2],c[3]);
fa H5(S[0],andd[7],1'b0,p[2],c[4]);
fa H6(S[1],andd[8],c[4],S[3],c[5]);
fa H7(S[2],andd[9],c[5],S[4],c[6]);
fa H8(c[3],andd[10],c[6],S[5],c[7]);
fa H9(S[3],andd[11],1'b0,p[3],c[8]);
fa H10(S[4],andd[12],c[8],p[4],c[9]);
fa H11(S[5],andd[13],c[9],p[5],c[10]);
fa H12(c[7],andd[14],c[10],p[6],p[7]);
endmodule
//
module cong8bit(aa,bb,ss);
input [7:0]aa,bb;
output [8:0]ss;
wire [6:0]cc;
fa B0(aa[0],bb[0],1'b0,cc[0],ss[0]);
fa B1(aa[1],bb[1],cc[0],ss[1],cc[1]);
fa B2(aa[2],bb[2],cc[1],ss[2],cc[2]);
fa B3(aa[3],bb[3],cc[2],ss[3],cc[3]);
fa B4(aa[4],bb[4],cc[3],ss[4],cc[4]);
fa B5(aa[5],bb[5],cc[4],ss[5],cc[5]);
fa B6(aa[6],bb[6],cc[5],ss[6],cc[6]);
fa B7(aa[7],bb[7],cc[6],ss[7],ss[8]);
endmodule
//
module fa(a1,b1,ci,s1,co);
input a1,b1,ci;
output co,s1;
wire n1,n2,n3,n4;
xor (n1,a1,b1);
xor (s1,ci,n1);
not (n2,n1);
and (n3,n2,b1);
and (n4,ci,n1);
or (co,n3,n4);
endmodule
// 
module TB_aaa();
reg [3:0]A,B,C,D;
wire [15:0]Y;
initial
begin
A=4'b0001;
B=4'b0101;
C=4'b1111;
D=4'b0111;
#100
A=4'b0101;
B=4'b1101;
C=4'b1011;
D=4'b0111;
#100
A=4'b1001;
B=4'b0101;
C=4'b1111;
D=4'b0101;
#100
A=4'b0001;
B=4'b0101;
C=4'b1001;
D=4'b0011;
#1000 $finish;
end
baiba DD(.A(A),.B(B),.C(C),.D(D),.Y(Y));
endmodule