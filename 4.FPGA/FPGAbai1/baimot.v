module baimot (ck, rs, c, y);
parameter start = 3'b000;
parameter s1 = 3'b001;
parameter s10 = 3'b010;
parameter s101 = 3'b011;
parameter s1011 = 3'b100;
input ck, rs, c;
output reg y;
reg[3:0]current_state, next_state;

//Mach to hop tac dong ngo vao cho ff
always@(*)
begin
case(current_state)
start : if (c) next_state = s1; 
else next_state = current_state; 
s1 : if (c) next_state = current_state; 
else next_state = s10; 
s10 : if (c) next_state = s101; 
else next_state = s10; 
s101 : if (c) next_state = s1011; 
else next_state = s10; 
s1011: if (c) next_state=s1;
else next_state=s10;
default next_state = start;
endcase 
end

// mach tuan tu tao trang thai 
always @ (posedge ck or posedge rs)
begin
 if (rs== 1) current_state <= start;
 else current_state <= next_state;
end

//Mach to hop tac dong trang thai ngo ra
always @ (*)
begin
 if (current_state == s1011) y = 1'b1;
 else y = 1'b0;
end
endmodule

//teschbench
module tb_bai1 ();
reg ck, rs, c;
wire y;
initial
begin
ck=0;
rs=0;
c=0;
#100
rs=0;
c=1;
#50
rs=0;
c=1;
#150
rs=1;
c=0;
#50
rs=1;
c=0;
#200
rs=0;
c=0;
#50 
rs=0;
c=1;
#100
rs=0;
c=0;
#150
rs=0;
c=1;
#300
rs=0;
c=0;
#100
rs=0;
c=1;
#200
rs=1;
c=1;
#150
rs=0;
c=1;
#150
rs=0;
c=0;
#3000 $finish;
end
always @(ck)
#50 ck<=~ck;
baimot D(.ck(ck),.rs(rs),.c(c),.y(y));
endmodule
