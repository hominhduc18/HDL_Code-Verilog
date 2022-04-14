//
module bainam(rs,ck,hex);
input rs,ck;
output reg [6:0]hex;
parameter s0 = 3'b000;
parameter s1 = 3'b001;
parameter s2 = 3'b010;
parameter s3 = 3'b011;
parameter s4 = 3'b100;
parameter s5 = 3'b101;
reg [2:0]current_state, next_state;
////
always @ (*)
begin
case (current_state)
s0 : next_state = s1;
s1 : next_state = s2;
s2 : next_state = s3;
s3 : next_state = s4;
s4 : next_state = s5;
s5: next_state=s0;
default next_state = s0;
endcase
end
//td ngõ ra 
always @ (posedge ck or posedge rs)
begin
if (rs==1) current_state <= s5;
else current_state <= next_state;
end
// khối giải mã 
always @ (*)
begin
case (current_state)
s0: hex = 7'b1000000;
s1: hex = 7'b1111001;
s2: hex = 7'b0100100;
s3: hex = 7'b0110000;
s4: hex = 7'b0011001;
s5: hex = 7'b0010010;
s6: hex = 7'b0000010;
s7: hex = 7'b1111000;
s8: hex = 7'b0000000;
s9: hex = 7'b0010000;
endcase
end
endmodule
module TB_bai5();
reg ck,rs;
wire [6:0]hex;
initial
begin 
ck=0;
rs=1;
#1000
ck=1;
rs=1;
#200
rs=0;
ck=1;
#3000 $finish;
end
always @(ck)
#50 ck<=~ck;
bainam D(.rs(rs),.ck(ck),.hex(hex));
endmodule