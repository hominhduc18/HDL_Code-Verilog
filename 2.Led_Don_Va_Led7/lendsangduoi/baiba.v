//c : current_state
//n : next_state
// 5 trang thai
module baiba(clock_50,rs,LED_BLUE);
parameter S0 = 4'b0000;
parameter S1 = 4'b0001; 
parameter S2 = 4'b0010;
parameter S3 = 4'b0011;
parameter S4 = 4'b0100;
parameter S5 = 4'b0101; 
parameter S6 = 4'b0110;
parameter S7 = 4'b0111;
parameter S8 = 4'b1000;
parameter S9 = 4'b1001;
parameter S10 = 4'b1010;
parameter S11 = 4'b0100;
parameter S12 = 4'b0101; 
parameter S13 = 4'b1101;
parameter S14 = 4'b1110;
input clock_50,rs;
integer q;
reg clock_1s = 1'b0;
output reg [7:0]LED_BLUE;
reg [3:0] c,n;
always @ (*)
begin
case(c)
S0 : n = S1;
S1 : n = S2;
S2 : n = S3;
S3 : n = S4;
S4 : n = S5;
S6 : n = S7;
S7 : n = S8;
S8 : n = S9;
S9 : n = S10;
S10 : n = S11;
S11 : n = S12;
S12 : n = S13;
S13 : n = S14;
S14 : n = S0;

endcase
end
always @ (posedge clock_50)
begin
q = q+1;
if(q == 49999999)
begin
clock_1s = ~clock_1s;
q = 0;
end
end
always @ (posedge clock_50)//rs,ck ?ong bo tich cuc cao.
begin
if(rs == 1)
c <= S0;
else c <= n;
end
always @ (*)
begin
case(c)
S0 : LED_BLUE = 8'b10000000;
S1 : LED_BLUE = 8'b01000000;
S2 : LED_BLUE = 8'b00100010;
S3 : LED_BLUE = 8'b00010000;
S4 : LED_BLUE = 8'b00001000;
S5 : LED_BLUE = 8'b00000100;
S6 : LED_BLUE = 8'b00000010;
S7 : LED_BLUE = 8'b00000001;
S8 : LED_BLUE = 8'b00000010;
S9 : LED_BLUE = 8'b00000100;
S10: LED_BLUE = 8'b00001000;
S11: LED_BLUE = 8'b00010000;
S12: LED_BLUE = 8'b00100010;
S13: LED_BLUE = 8'b01000000;
S14: LED_BLUE = 8'b10000000;
endcase
end
endmodule

module TB_baiba();
reg clock_50,rs;
wire [7:0]LED_BLUE;
initial
begin
clock_50 = 1;
rs = 1;
#100
rs = 0;
#2025
rs = 1;
#125
rs = 0;
#2500 $finish;
end
always @(clock_50)
#50 clock_50<=~clock_50;
baiba U(.clock_50(clock_50),.rs(rs),.LED_BLUE(LED_BLUE));
endmodule
