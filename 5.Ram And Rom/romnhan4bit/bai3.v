// A nhân B 3bit
module (A,B,C,CS,RD,CLK);
input [3:0]A,B;
output [7:0]C;
input CS,RD,CLK;
wire [7:0]u;// nối với ADDRESS
Nhan4bit N1(A,B,u);
ROM R1(C,u,CS,RD,CLK);
endmodule


module Nhan4bit(a,b,c);
input [3:0]a,b;
output reg[7:0]c;
always @(*)
begin
c<=a*b;
end
endmodule
module ROM(DATA_OUT,ADDRESS,CS,RD,CLK);
output reg [7:0]DATA_OUT;
input [7:0]ADDRESS;
input CS,RD,CLK;
reg [5:0]rom[63:0];
initial
begin
rom[8'b00000000]=8'b0000000000;//x=0
rom[8'b00000001]=8'b0000000001;//x=1
rom[8'b00000010]=8'b0000000010;//x=2
rom[8'b00000011]=8'b0000000011;//x=3
rom[8'b00000100]=8'b0000000100;//x=4
rom[8'b00000101]=8'b0000000101;//x=5
rom[8'b00000110]=8'b0000000110;//x=6
rom[8'b00000111]=8'b0000000111;//x=7
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
