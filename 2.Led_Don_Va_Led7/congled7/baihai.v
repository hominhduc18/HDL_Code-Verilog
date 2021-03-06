/*Mô tả mạch cộng 6bit dùng mạch cộng 1bit, hiển thị trên led 7 đoạn*/
module baihai(a,b,hex0,hex1,hex2); 
input [5:0]a,b; 
output [6:0]hex0,hex1,hex2;
wire [4:0]o; 
wire [6:0]s;
fa HH1 (a[0],b[0],1'b0,s[0],o[0]); 
fa HH2 (a[1],b[1],o[0],s[1],o[1]); 
fa HH3 (a[2],b[2],o[1],s[2],o[2]);
fa HH4 (a[3],b[3],o[2],s[3],o[3]); 
fa HH5 (a[4],b[4],o[3],s[4],o[4]); 
fa HH6 (a[5],b[5],o[4],s[5],s[6]);
wire [3:0]s1 = s / 100;
wire [3:0]s2 = (s / 10) % 10;
wire [3:0]s3 = s % 10;
giama H1 (s1,hex0);
giama H2 (s2,hex1);
giama H3(s3,hex2);
endmodule 

module fa(a,b,ci,s,co); 
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

module giama(d,hex); 
input [3:0]d; 
output reg[6:0]hex = 7'b1111111; 
always @ (d) 
begin 
case (d) 
4'b0000: hex = 7'b1000000;
4'b0001: hex = 7'b1111100;
4'b0010: hex = 7'b0100100;
4'b0011: hex = 7'b0110000;
4'b0100: hex = 7'b0011001;
4'b0101: hex = 7'b0010010;
4'b0110: hex = 7'b0000010; 
4'b0111: hex = 7'b1111000;
4'b1000: hex = 7'b0000000;
4'b1001: hex = 7'b0010000;
default: hex = 7'b1111111;
endcase 
end 
endmodule 

module TB();
reg [5:0]a,b;
wire [6:0]hex0,hex1,hex2;
initial
begin
a = 6'b000000;
b = 6'b000000;
#100
a = 6'b111111;
b = 6'b111111;
#100
a = 6'b110000;
b = 6'b011111;
#100
a = 6'b100000;
b = 6'b011111;
#100
a = 6'b001100;
b = 6'b110000;
#1000 $finish;
end
baihai D(.a(a),.b(b),.hex0(hex0),.hex1(hex1),.hex2(hex2));
endmodule

