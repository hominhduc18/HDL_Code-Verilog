module bai7(ck,rs,hex0,hex1,hex2,hex3);
input ck,rs;
output reg [6:0]hex0,hex1,hex2,hex3;
parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b100;
parameter s5=3'b101;
parameter s6=3'b110;
parameter s7=3'b111;
reg [2:0] current_state, next_state;
//
always @(*)
begin 
case (current_state)
s0:next_state=s1;
s1:next_state=s2;
s2:next_state=s3;
s3:next_state=s4;
s4:next_state=s5;
s5:next_state=s6;
s6:next_state=s7;
s7:next_state=s0;
default next_state=s0;
endcase
end
//
always @(posedge ck or posedge rs)
begin
if(rs==1)current_state <=s0;
else current_state<=next_state;
end
//
always @ (*) 
begin 
 case (current_state) 
 s0:begin
 hex3 = 7'b1111111; //OFF
 hex2 = 7'b1111111; //OFF
 hex1 = 7'b1111111; //OFF
 hex0 = 7'b1111111; //OFF
 end
 s1:begin
 hex3 = 7'b0001000; //A
 hex2 = 7'b1111111; //OFF
 hex1 = 7'b1111111; //OFF
 hex0 = 7'b1111111; //OFF
 end
s2:begin
 hex3 = 7'b1000010; //G
 hex2 = 7'b0001000; //A
 hex1 = 7'b1111111; //OFF
 hex0 = 7'b1111111; //OFF
 end
 s3:begin
 hex3 = 7'b0001100; //P
 hex2 = 7'b1000010; //G
 hex1 = 7'b0001000; //A
 hex0 = 7'b1111111; //OFF 
 end
 s4:begin
 hex3 = 7'b0001110; //F
 hex2 = 7'b0001100; //P
 hex1 = 7'b1000010; //G
 hex0 = 7'b0001000; //A
 end
 s5:begin
 hex3 = 7'b1111111; //OFF
 hex2 = 7'b0001110; //F
 hex1 = 7'b0001100; //P
 hex0 = 7'b1000010; //G
 end
 s6:begin
 hex3 = 7'b1111111; //OFF
 hex2 = 7'b1111111; //OFF
 hex1 = 7'b0001110; //F
 hex1 = 7'b0001100; //G
 end
s7:begin
 hex3 = 7'b1111111; //OFF
 hex2 = 7'b1111111; //OFF
 hex1 = 7'b1111111; //OFF
 hex0 = 7'b0001110; //F
 end
 endcase 
end 
endmodule 

//
module TB_bai7();
reg ck,rs;
wire [6:0]hex0,hex1,hex2,hex3;
initial
begin
ck=0;
rs=1;
#1000
rs=0;
#100
rs=1;
#100
rs=0;
#3000 $finish;
end
always @(ck)
#50 ck<=~ck;
bai7 D(.rs(rs),.ck(ck),.hex0(hex0),.hex1(hex1),.hex2(hex2),.hex3(hex3));
endmodule
