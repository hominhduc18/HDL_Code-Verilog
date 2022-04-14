module chuHi(clock_50,rs,hex0,hex1,hex2,hex3);
output reg [6:0]hex0,hex1,hex2,hex3;
parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
reg [2:0] current_state, next_state;
input clock_50,rs;
integer q;
reg clock_1s = 1'b0;
//
always @(*)
begin 
case (current_state)
s0:next_state=s1;
s1:next_state=s2;
s2:next_state=s3;
s3:next_state=s0;
default next_state=s0;
endcase
end
//

//
always @ (posedge clock_50)
begin
q = q+1;
if(q == 49999999)
begin
clock_1s = ~clock_1s;
q = 0;
end
end
always @ (posedge clock_50)
begin
if(rs == 1)
current_state <= s0;
else current_state <= next_state;
end
always @ (*) 
begin 
 case (current_state) 
 s0:begin
 hex3 = 7'b1111111; //OFF
 hex2 = 7'b1111111; //OFF
 hex1 = 7'b1111001; //I
 hex0 = 7'b0001001; //H
 end
 s1:begin
 hex3 = 7'b1111111; //OFF
 hex2 = 7'b1111001; //I
 hex1 = 7'b0001001; //H
 hex0 = 7'b1111111; //OFF
 end
s2:begin
 hex3 = 7'b1111001; //I
 hex2 = 7'b0001001; //H
 hex1 = 7'b1111111; //OFF
 hex0 = 7'b1111111; //OFF
 end
 s3:begin
 hex3 = 7'b0001001; //H
 hex2 = 7'b1111111; //OFF
 hex1 = 7'b1111111; //OFF
 hex0 = 7'b1111001; //I 
 end

 endcase 
end 
endmodule 

//
module TB_bai7();
reg clock_50,rs;
wire [6:0]hex0,hex1,hex2,hex3;
initial
begin
clock_50=0;
rs=1;
#1000
rs=0;
#100
rs=1;
#100
rs=0;
#3000 $finish;
end
always @(clock_50)
#50 clock_50<=~clock_50;
chuHi D(.rs(rs),.clock_50(clock_50),.hex0(hex0),.hex1(hex1),.hex2(hex2),.hex3(hex3));
endmodule
