// chú thích 
// đầu vào nối tầng E:E[2] là A>B,E[0]là A<B và E[1] là A=B
// Ngõ ra Y:Y[2]là A>B,Y[0]là A<B và Y[1] là A=B

module ic74ls85(A,B,E,Y);
input [3:0]A;
input [3:0]B;
input [2:0]E;
output [2:0]Y;
reg [2:0]Y;
always @(*)
begin 
// xét 4 số khi 4 số đó chưa bằng nhau hết
if(A[3]>B[3])
begin
Y[2]=1'b1;
Y[1]=1'b0;
Y[0]=1'b0;
end
else if(A[3]<B[3])
begin
Y[2]=1'b0;
Y[1]=1'b0; 
Y[0]=1'b1;
end
else 
if(A[3]==B[3] && A[2]>B[2])
begin 
Y[2]=1'b1;
Y[1]=1'b0;
Y[0]=1'b0;
end
else if(A[3]==B[3] && A[2]<B[2])
begin
Y[2]=1'b0;
Y[1]=1'b0; 
Y[0]=1'b1;
end
else 
if(A[3]==B[3] && A[2]==B[2] && A[1]>B[1])
begin 
Y[2]=1'b1;
Y[1]=1'b0;
Y[0]=1'b0;
end
else if(A[3]==B[3] && A[2]==B[2] && A[1]<B[1])
begin
Y[2]=1'b0;
Y[1]=1'b0; 
Y[0]=1'b1;
end
else 
if(A[3]==B[3] && A[2]==B[2] && A[1]==B[1] && A[0]>B[0])
begin 
Y[2]=1'b1;
Y[1]=1'b0;
Y[0]=1'b0;
end
else if(A[3]==B[3] && A[2]==B[2] && A[1]==B[1] && A[0]<B[0])
begin
Y[2]=1'b0;
Y[1]=1'b0; 
Y[0]=1'b1;
end
// Khi trường hợp 4 số bằng nhau bắt đầu xét đầu vào E
else
if(E[2]==1 && E[1]==0 && E[0]==0)
begin
Y[2]=1'b1;
Y[1]=1'b0;
Y[0]=1'b0;
end
else if(E[2]==0 && E[1]==0 && E[0]==1)
begin
Y[2]=1'b0;
Y[1]=1'b0; 
Y[0]=1'b1;
end
else if(E[2]==0 && E[1]==1 && E[0]==0 )
begin
Y[2]=1'b0;
Y[1]=1'b1; 
Y[0]=1'b0;
end
else if((E[2]==0 ||E[2]==1) && E[1]==1 && (E[0]==0 ||E[0]==1))
begin
Y[2]=1'b0;
Y[1]=1'b1; 
Y[0]=1'b0;
end
else if(E[2]==1 && E[1]==0 && E[0]==1)
begin
Y[2]=1'b0;
Y[1]=1'b0; 
Y[0]=1'b0;
end
else if(E[2]==0 && E[1]==0 && E[0]==0)
begin
Y[2]=1'b1;
Y[1]=1'b0; 
Y[0]=1'b1;
end
end
endmodule

module TB_ic74ls85();
reg [3:0]A;
reg [3:0]B;
reg [2:0]E;
wire [2:0]Y;
initial
begin
A=4'b1001;
B=4'b0111;
E=3'b001;
#100
A=4'b0001;
B=4'b1111;
E=3'b010;
#100
A=4'b1101;
B=4'b1011;
E=3'b011;
#100
A=4'b1001;
B=4'b1111;
E=3'b100;
#100
A=4'b1101;
B=4'b1111;
#100
A=4'b1111;
B=4'b1101;
E=3'b100;
#100
A=4'b1111;
B=4'b1110;
E=3'b100;
#100
A=4'b1110;
B=4'b1111;
E=3'b100;
#100
A=4'b1111;
B=4'b1111;
E=3'b100;
#100
A=4'b1111;
B=4'b1111;
E=3'b001;
#100
A=4'b1111;
B=4'b1111;
E=3'b010;
#100
A=4'b1111;
B=4'b1111;
E=3'b111;
#100
B=4'b1111;
A=4'b1111;
E=3'b101;
#100
A=4'b1111;
B=4'b1111;
E=3'b000;
#3000 $finish;
end
ic74ls85 D(.A(A),.B(B),.E(E),.Y(Y));

endmodule
