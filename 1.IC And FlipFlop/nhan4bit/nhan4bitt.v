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

module fa (a, b, ci, s, co);
input a, b, ci;
output s, co;
wire a_xor_b;
assign a_xor_b = a ^ b;
assign s = a_xor_b ^ ci;
assign co = (~a_xor_b & b) | (a_xor_b & ci);
endmodule
//

module TB_nhan4bit();
reg [3:0]a;
reg [3:0]b;
wire[7:0]p;
initial
begin
a=4'b0000;
b=4'b1010;
#100
a=4'b0100;
b=4'b1010;
#100
a=4'b1111;
b=4'b1010;
#100
a=4'b0001;
b=4'b1010;
#100
a=4'b1111;
b=4'b0000;
#100
a=4'b1111;
b=4'b1010;
#1000 $finish;
end
nhan4bitt D(.a(a),.b(b),.p(p));
endmodule
