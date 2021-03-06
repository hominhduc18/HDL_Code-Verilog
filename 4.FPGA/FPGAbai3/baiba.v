module baiba (ck,rs,c,y);
input ck,rs,c;
output reg [1:0]y;
parameter start = 3'b000;
parameter s0 = 3'b001;
parameter s00 = 3'b010;
parameter s001 = 3'b011;
parameter s1 = 3'b100;
parameter s11 = 3'b101;
parameter s110 = 3'b110;
reg [2:0]current_state, next_state;
always @ (*)
begin
case (current_state)
start : if (c) next_state = s1;
else next_state = s0;
s0 : if (c) next_state = s1;
else next_state = s00;
s00 : if (c) next_state = s001;
else next_state = s0;
s001 : if (c) next_state = s11;
else next_state = s0;
s1 : if (c) next_state = s11;
else next_state = s0;
s11 : if(c) next_state = s1;
else next_state = s110;
s110 : if (c) next_state = s1;
else next_state = s00;
default next_state = start;
endcase
end
//thanh ghi 
always @ (negedge ck or posedge rs)
begin
if (rs==1) current_state <= start;
else current_state <= next_state;
end
// ngõ ra 
always @ (*)
begin
if (current_state == s110) 
begin
y[1] = 1'b1;
y[0] = 1'b0;
end
else if(current_state == s001)
begin 
y[0] = 1'b1;
y[1] = 1'b0;
end
else
begin
y[0]=1'b0;
y[1]=1'b0;
end
end
endmodule

module TB_bai3();
reg ck,rs,c;
wire [1:0]y;
initial
begin
ck = 1'b0;
rs= 1'b1;
c=1'b0;
#100
rs= 1'b0;
c=1'b1;
#100
rs= 1'b0;
c=1'b1;
#100
rs= 1'b0;
c=1'b0;
#100
rs= 1'b0;
c=1'b0;
#100
rs= 1'b0;
c=1'b1;
#100
rs= 1'b0;
c=1'b1;
#100
rs= 1'b0;
c=1'b0;
#100
rs= 1'b0;
c=1'b0;
#2000 $finish;
end
always @(ck)
#50 ck<=~ck;
baiba D(.ck(ck),.rs(rs),.c(c),.y(y));
endmodule