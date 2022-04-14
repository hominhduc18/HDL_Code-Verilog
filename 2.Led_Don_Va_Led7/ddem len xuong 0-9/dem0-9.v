
module dem09(rs,ck,sw,hex);
input rs,ck,sw;
output reg [6:0]hex;
parameter s0 = 4'b0000;
parameter s1 = 4'b0001;
parameter s2 = 4'b0010;
parameter s3 = 4'b0011;
parameter s4 = 4'b0100;
parameter s5 = 4'b0101;
parameter s6 = 4'b0110;
parameter s7 = 4'b0111;
parameter s8 = 4'b1000;
parameter s9 = 4'b1001;
reg [3:0]current_state, next_state;
////
always @ (*)
begin
case (current_state) 
 s0 :  begin if(sw)next_state = s1;
       else next_state = s9; end 
 s1 :  begin if(sw)next_state = s2;
       else next_state = s0; end 
 s2 :  begin if(sw)next_state = s3;
       else next_state = s1; end 
 s3 :  begin if(sw)next_state = s4;
       else next_state = s2; end 
 s4 :  begin if(sw)next_state = s5;
        else next_state = s3; end 
 s5 :  begin if(sw)next_state = s6;
       else next_state = s4; end 
 s6 :  begin if(sw)next_state = s7;
        else next_state = s5; end 
 s7 :  begin if(sw)next_state = s8;
        else next_state = s6; end 
 s8 :  begin if(sw)next_state = s9;
       else next_state = s7; end  
 s9 :  begin if(sw)next_state = s0;
       else next_state = s8; end 
default next_state = s0;
endcase
end
//td ngõ ra 
always @ (posedge ck or posedge rs)
begin
if (rs==1) current_state <= s0;
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
reg ck,rs,sw;
wire [6:0]hex;
initial
begin 
ck=0;
rs=1;
#100
ck=1;
rs=1;
#500
rs=0;
ck=1;
sw=1;
#500
rs=0;
ck=1;
sw=0;
#3000 $finish;
end
always @(ck)
#50 ck<=~ck;
dem09 D(.rs(rs),.ck(ck),.sw(sw),.hex(hex));
endmodule