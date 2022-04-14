module baihai (ck,rs,c,y);
input ck,rs,c;
output reg y;
parameter start = 3'b000;
parameter s0 = 3'b001;
parameter s01 = 3'b010;
parameter s011 = 3'b011;
parameter s0110 = 3'b100;
reg [2:0]current_state, next_state;

always @ (*)
begin
	case (current_state)
	start : if (c) next_state = start;
	else next_state = s0;
	s0 : if (c) next_state = s01;
	else next_state = current_state;
	s01 : if (c) next_state = s011;
	else next_state = s0;
	s011 : if (c) next_state = start;
	else next_state = s0110;
	s0110 : if (c) next_state = s01;
	else next_state = s0;
	default next_state = start;
endcase
end

always @ (negedge ck or negedge rs)
begin
if (rs==0) current_state <= start;
else current_state <= next_state;
end

always @ (*)
begin
if (current_state == s0110) y = 1'b1;
else y = 1'b0;
end
endmodule

module tb_bai2();
reg ck,rs,c;
wire y;
initial
begin
ck = 1'b0;
rs= 1'b0;
c=1'b0;
#100

rs= 1'b1;
c=1'b1;
#100

rs= 1'b1;
c=1'b0;
#100

rs= 1'b1;
c=1'b1;
#100

rs= 1'b1;
c=1'b1;
#100

rs= 1'b1;
c=1'b0;
#100

rs= 1'b1;
c=1'b0;
#100
rs= 1'b1;
c=1'b1;
#100
rs= 1'b1;
c=1'b0;
#100
rs= 1'b1;
c=1'b1;
#100
rs= 1'b0;
c=1'b0;
#100
rs= 1'b0;
c=1'b1;
#100
rs= 1'b1;
c=1'b1;
#100
rs= 1'b0;
c=1'b1;
#100
rs= 1'b0;
c=1'b0;
#100
#2000 $finish;
end
always @(ck)
#50 ck<=~ck;
baihai U(.ck(ck),.rs(rs),.c(c),.y(y));
endmodule