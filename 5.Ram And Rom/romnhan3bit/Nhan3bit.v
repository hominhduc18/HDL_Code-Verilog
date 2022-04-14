// A nhân B 3bit
module Nhan3bit_ROM_64x8(A,B,C,CS,RD,CLK);
input [2:0]A,B;
output [7:0]C;
input CS,RD,CLK;
wire [5:0]u;// nối với ADDRESS
Nhan3bit N1(A,B,u);
ROM_64x8 R1(C,u,CS,RD,CLK);
endmodule


module Nhan3bit(a,b,c);
input [2:0]a,b;
output reg[5:0]c;
always @(*)
begin
c<=a*b;
end
endmodule

module ROM_64x8(DATA_OUT,ADDRESS,CS,RD,CLK);
output reg [7:0]DATA_OUT;
input [5:0]ADDRESS;
input CS,RD,CLK;
reg [5:0]rom[63:0];

initial
begin
rom[6'b000000]=8'b00000000;//x=0
rom[6'b000001]=8'b00000001;//x=1
rom[6'b000010]=8'b00000010;//x=2
rom[6'b000011]=8'b00000011;//x=3
rom[6'b000100]=8'b00000100;//x=4
rom[6'b000101]=8'b00000101;//x=5
rom[6'b000110]=8'b00000110;//x=6
rom[6'b000111]=8'b00000111;//x=7

rom[6'b001000]=8'b000000;//x=0
rom[6'b001001]=8'b000001;//x=1
rom[6'b001010]=8'b000100;//x=2
rom[6'b001011]=8'b001001;//x=3
rom[6'b001100]=8'b010000;//x=4
rom[6'b001101]=8'b011001;//x=5
rom[6'b001110]=8'b100100;//x=6
rom[6'b001111]=8'b110001;//x=7

rom[6'b010000]=8'b000000;//x=0
rom[6'b010001]=8'b000001;//x=1
rom[6'b010010]=8'b000100;//x=2
rom[6'b010011]=8'b001001;//x=3
rom[6'b010100]=8'b010000;//x=4
rom[6'b010101]=8'b011001;//x=5
rom[6'b010110]=8'b100100;//x=6
rom[6'b010111]=8'b110001;//x=7

rom[6'b011000]=6'b000000;//x=0
rom[6'b011001]=6'b000001;//x=1
rom[6'b011010]=6'b000100;//x=2
rom[6'b011011]=6'b001001;//x=3
rom[6'b011100]=6'b010000;//x=4
rom[6'b011101]=6'b011001;//x=5
rom[6'b011110]=6'b100100;//x=6
rom[6'b011111]=6'b110001;//x=7
end

always @ (posedge CLK)
begin
	if (CS==1'b1)
	begin
		if (RD==1'b1)
			DATA_OUT<=rom[ADDRESS];
		else
			DATA_OUT<=DATA_OUT;
end
else
DATA_OUT =8'bxxxxxxxx;
end
endmodule

module TB_Nhan3bit_ROM_64x8();
reg [2:0]A,B;
reg CS,RD,CLK;
wire [7:0]C;
initial
begin
CLK=0;
A=3'b001;
B=3'b010;
CS=0;
RD=0;
#100
A=3'b001;
B=3'b010;
CS=1;
RD=1;
#100
A=3'b001;
B=3'b011;
#100
A=3'b001;
B=3'b100;
#100
A=3'b011;
B=3'b010;
#100
A=3'b010;
B=3'b010;
#100
A=3'b001;
B=3'b110;
CS=1;
RD=0;
#100
A=3'b101;
B=3'b001;
CS=1;
RD=1;
#2000 $finish;
end
always @(CLK)
#50 CLK<=~CLK;
Nhan3bit_ROM_64x8 P(.A(A),.B(B),.CS(CS),.RD(RD),.CLK(CLK),.C(C));
endmodule