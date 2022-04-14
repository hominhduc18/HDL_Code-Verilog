
module hienthi8led(K0,K1,K2,K3,K4,K5,K6,K7,K8,X0,X1,X2,X3,X4,X5,X6,X7);

input [2:0]K0,K1,K2,K3,K4,K5,K6,K7,K8;
output [7:0]X0,X1,X2,X3,X4,X5,X6,X7;
wire [2:0]Y;
mux3bit5to1 H1(K0[2:0],K1[2:0],K2[2:0],K3[2:0],K4[2:0],K5[2:0],K6[2:0],K7[2:0],K8[2:0],Y[2:0]);
hello       H2(Y,X0[7:0],X1[7:0],X2[7:0],X3[7:0],X4[7:0],X5[7:0],X6[7:0],X7[7:0]);
endmodule

//CHUWONG TRÌNH mux
module mux3bit5to1(S, A, B, C, D, E,F,G,H,Y); 
input [2:0]S, A, B, C, D, E,F,G,H; 
output reg[2:0]Y; 
always @(*) 
begin 
case(S) 
3'b000: Y=A; 
3'b001: Y=B; 
3'b010: Y=C; 
3'b011: Y=D; 
3'b100: Y=E; 
3'b101: Y=F;
3'b110: Y=G;
3'b111: Y=H;
endcase 
end 
endmodule
// chú thích 
// đặt ba chân SW tương ứng với [3]A:A[2],A[1],A[0]
// đặt ngõ ra HEX bằng [7:0]Y:

module hello (A,HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7);
input [2:0]A;
output reg[6:0]HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7; 
always @(*)
begin 
case(A)
3'b000:
begin
HEX7=8'hFF;//tắt led
HEX6=8'hFF;//tắt led 
HEX5=8'hFF;//tắt led 
HEX4=8'h89;//H
HEX3=8'h86;//E
HEX2=8'hC7;//L
HEX1=8'hC7;//L
HEX0=8'hC0;//O
end 
3'b001:
begin 
HEX7=8'hFF;//tắt led 
HEX6=8'hFF;//tắt led 
HEX0=8'hFF;// tắt led 
HEX5=8'h89;//H
HEX4=8'h86;//E
HEX3=8'hC7;//L
HEX2=8'hC7;//L
HEX1=8'hC0;//O
end 
3'b010:
begin 
HEX7=8'hFF;//tắt led 
HEX1=8'hFF;//tắt led 
HEX0=8'hFF;// tắt led 
HEX6=8'h89;//H
HEX5=8'h86;//E
HEX4=8'hC7;//L
HEX3=8'hC7;//L
HEX2=8'hC0;//O
end 
3'b011:
begin
HEX2=8'hFF;//tắt led 
HEX1=8'hFF;//tắt led 
HEX0=8'hFF;// tắt led 
HEX7=8'h89;//H
HEX6=8'h86;//E
HEX5=8'hC7;//L
HEX4=8'hC7;//L
HEX3=8'hC0;//O

end 
3'b100:
begin 
HEX2=8'hFF;//tắt led 
HEX1=8'hFF;//tắt led 
HEX3=8'hFF;// tắt led 
HEX0=8'h89;//H
HEX7=8'h86;//E
HEX6=8'hC7;//L
HEX5=8'hC7;//L
HEX4=8'hC0;//O
end 
3'b101:
begin 
HEX2=8'hFF;//tắt led 
HEX4=8'hFF;//tắt led 
HEX3=8'hFF;// tắt led 
HEX1=8'h89;//H
HEX0=8'h86;//E
HEX7=8'hC7;//L
HEX6=8'hC7;//L
HEX5=8'hC0;//O
end 
3'b110:
begin
HEX5=8'hFF;//tắt led 
HEX4=8'hFF;//tắt led 
HEX3=8'hFF;// tắt led 
HEX2=8'h89;//H
HEX1=8'h86;//E
HEX0=8'hC7;//L
HEX7=8'hC7;//L
HEX6=8'hC0;//O
end 
3'b111:
begin
HEX5=8'hFF;//tắt led 
HEX4=8'hFF;//tắt led 
HEX6=8'hFF;// tắt led 
HEX3=8'h89;//H
HEX2=8'h86;//E
HEX1=8'hC7;//L
HEX0=8'hC7;//L
HEX7=8'hC0;//O
end
endcase
end 
endmodule
//
module TB_hienthi8led ();
reg [2:0]K0,K1,K2,K3,K4,K5,K6,K7,K8;
wire [7:0]X0,X1,X2,X3,X4,X5,X6,X7;
initial
begin
K0 = 3'b000;
K1 = 3'b000;
K2 = 3'b001;
K3 = 3'b010;
K4 = 3'b011;
K5 = 3'b100;
K6 = 3'b101;
K7 = 3'b110;
K8 = 3'b111;
#100
K0 = 3'b001;
K1 = 3'b000;
K2 = 3'b001;
K3 = 3'b010;
K4 = 3'b011;
K5 = 3'b100;
K6 = 3'b101;
K7 = 3'b110;
K8 = 3'b111;
#100
K0 = 3'b010;
K1 = 3'b000;
K2 = 3'b001;
K3 = 3'b010;
K4 = 3'b011;
K5 = 3'b100;
K6 = 3'b101;
K7 = 3'b110;
K8 = 3'b111;
#100
K0 = 3'b011;
K1 = 3'b000;
K2 = 3'b001;
K3 = 3'b010;
K4 = 3'b011;
K5 = 3'b100;
K6 = 3'b101;
K7 = 3'b110;
K8 = 3'b111;
#100
K0 = 3'b100;
K1 = 3'b000;
K2 = 3'b001;
K3 = 3'b010;
K4 = 3'b011;
K5 = 3'b100;
K6 = 3'b101;
K7 = 3'b110;
K8 = 3'b111;
#100
K0 = 3'b101;
K1 = 3'b000;
K2 = 3'b001;
K3 = 3'b010;
K4 = 3'b011;
K5 = 3'b100;
K6 = 3'b101;
K7 = 3'b110;
K8 = 3'b111;
#100
K0 = 3'b110;
K1 = 3'b000;
K2 = 3'b001;
K3 = 3'b010;
K4 = 3'b011;
K5 = 3'b100;
K6 = 3'b101;
K7 = 3'b110;
K8 = 3'b111;
#100
K0 = 3'b111;
K1 = 3'b000;
K2 = 3'b001;
K3 = 3'b010;
K4 = 3'b011;
K5 = 3'b100;
K6 = 3'b101;
K7 = 3'b110;
K8 = 3'b111;
#1000 $finish;
end
hienthi8led D(.K0(K0),.K1(K1),.K2(K2),.K3(K3),.K4(K4),.K5(K5),.K6(K6),.K7(K7),.K8(K8),.X0(X0),.X1(X1),.X2(X2),.X3(X3),.X4(X4),.X5(X5),.X6(X6),.X7(X7));
endmodule
