module bai6(rs,ck,hex0,hex1,hex2,hex3);
input ck,rs;
output reg [6:0]hex0,hex1,hex2,hex3;
parameter s0 = 3'b000;
parameter s1 = 3'b001;
reg [1:0]current_state, next_state;
///
always @(*)
begin 
case (current_state)
s0:next_state=s1;
s1:next_state=s0;
endcase
end
///
always @(posedge ck or posedge rs)
begin
if(rs==1) current_state <=s1;
else current_state <=next_state;
end
//giai ma
always @(*)
begin 
case (current_state)
1'b0:begin
hex0=7'b0010001;
hex1=7'b0000000;
hex2=7'b0001000;
hex3=7'b0000000;
end
1'b1:begin
hex0=7'b1111111;
hex1=7'b1111111;
hex2=7'b1111111;
hex3=7'b1111111;
end
endcase
end
endmodule
module TB_bai6();
reg ck,rs;
wire [6:0]hex0,hex1,hex2,hex3;
initial
begin 
ck=0;
rs=1;
#200
ck=1;
rs=1;
#200
rs=0;
ck=1;
#3000 $finish;
end
always @(ck)
#50 ck<=~ck;
bai6 D(.rs(rs),.ck(ck),.hex0(hex0),.hex1(hex1),.hex2(hex2),.hex3(hex3));
endmodule