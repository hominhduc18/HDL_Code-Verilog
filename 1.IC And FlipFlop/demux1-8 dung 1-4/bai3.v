module bai3(s,y);
input [3:0]s;
output [7:0]y;
wire nott;
not(nott,s[2]);
demux1_4 H1(nott,s[1:0],s[3],y[3:0]);
demux1_4 H2(s[2],s[1:0],s[3],y[7:4]);
endmodule
module demux1_4(D,E,S,Y);
input D,E;
input [1:0]S;
output [3:0]Y;
assign Y[3]= E&D&~S[1]&~S[0];
assign Y[2]= E&D&~S[1]&S[0];
assign Y[1]= E&D&S[1]&~S[0];
assign Y[0]= E&D&S[1]&S[0];
endmodule
module TB_bai3();
reg [3:0]s;
wire [7:0]y;
initial
begin 
s=4'b0000;
#100
s=4'b0001;
#100
s=4'b0010;
#100
s=4'b0011;
#100
s=4'b0100;
#100
s=4'b0101;
#100
s=4'b0110;
#100
s=4'b0111;
#100
s=4'b1000;
#100
s=4'b1001;
#100
s=4'b1010;
#100
s=4'b1011;
#100
s=4'b1100;
#100
s=4'b1101;
#100
s=4'b1110;
#100
s=4'b1111;
#3000 $finish;
end
bai3 D(.s(s),.y(y));
endmodule
