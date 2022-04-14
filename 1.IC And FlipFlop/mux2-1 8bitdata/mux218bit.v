module mux218bit(A,B,S,Y);
input [7:0]A;
input [7:0]B;
input S;
output [7:0]Y;
mux2_1(Y[0],A[0],B[0],S);
mux2_1(Y[1],A[1],B[1],S);
mux2_1(Y[2],A[2],B[2],S);
mux2_1(Y[3],A[3],B[3],S);
mux2_1(Y[4],A[4],B[4],S);
mux2_1(Y[5],A[5],B[5],S);
mux2_1(Y[6],A[6],B[6],S);
mux2_1(Y[7],A[7],B[7],S);
endmodule
module mux2_1(y,a,b,s); 
input a,b,s; 
output y; 
assign y = (~s&a)|(s&b); 
endmodule
module TB_mux218bit();
reg[7:0]A;
reg[7:0]B;
reg S;
wire Y;
initial
begin
A=8'b00000111;
B=8'b00100100;
S=1;
#100
A=8'b10000101;
B=8'b00100101;
S=0;
#100
A=8'b11000001;
B=8'b00110100;
S=1;
#100
A=8'b01000100;
B=8'b00110100;
S=1;
#100
A=8'b01100111;
B=8'b10100100;
S=0;
#2000 $finish;
end
mux218bit D(.A(A),.B(B),.S(S),.Y(Y));
endmodule
 