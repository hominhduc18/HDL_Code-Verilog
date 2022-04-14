begimodule bai8 (ck,rs,s,led); 
input rs,ck,s; 
output reg [7:0]led;
parameter s0 = 5'b00000; 
parameter s1 = 5'b00001; 
parameter s2 = 5'b00010;
parameter s3 = 5'b00011;
parameter s4 = 5'b00100;
parameter s5 = 5'b00101;
parameter s6 = 5'b00110;
parameter s7 = 5'b00111;
parameter s8 = 5'b01000; 
parameter s9 = 5'b01001;
parameter s10 =5'b01010;
parameter s11 =5'b01011;
parameter s12 =5'b01100;
parameter s13 =5'b01101;
parameter s14 =5'b01110;
parameter s15 =5'b01111;
parameter s16=5'b10000;

reg [4:0]current_state, next_state;
always @ (*)
begin
 case (current_state) 
 s0 :  begin if(s)next_state = s1;
       else next_state = s9; end 
 s1 :  begin if(s)next_state = s2;
       else next_state = s0; end 
 s2 :  begin if(s)next_state = s3;
       else next_state = s0; end 
 s3 :  begin if(s)next_state = s4;
       else next_state = s0; end 
 s4 :  begin if(s)next_state = s5;
        else next_state = s0; end 
 s5 :  begin if(s)next_state = s6;
       else next_state = s0; end 
 s6 :  begin if(s)next_state = s7;
        else next_state = s0; end 
 s7 :  begin if(s)next_state = s8;
        else next_state = s0; end 
 s8 :  begin if(s)next_state = s0;
       else next_state = s0; end  
 s9 :  begin if(s)next_state = s0;
       else next_state = s10; end 
 s10 :  begin if(s)next_state = s0;
       else next_state = s11; end 
 s11 :begin if(s)next_state = s0;
       else next_state = s12; end 
 s12 :  begin if(s)next_state = s0;
       else next_state = s13; end 
 s13 :  begin if(s)next_state = s0;
        else next_state = s14; end 
 s14 :  begin if(s)next_state = s0;
       else next_state = s15; end 
 s15 :  begin if(s)next_state = s0;
        else next_state = s16; end 
 s16 :  begin if(s)next_state = s0;
        else next_state = s0; end 
 default next_state = s0; 
 endcase 
end
// chọn ck cạnh lên  rs ko đồng bộ tích cực cao
always @ (posedge ck or posedge rs)
begin
if (rs==1) current_state <= s0;
else current_state <= next_state;
end

always @ (*)
begin
 case (current_state) 
 s0: led = 8'b00000000;
 s1: led = 8'b10000000;
 s2: led = 8'b11000000;
 s3: led = 8'b11100000;
 s4: led = 8'b11110000;
 s5: led = 8'b11111000;
 s6: led = 8'b11111100;
 s7: led = 8'b11111110;
 s8: led = 8'b11111111;
 s9: led = 8'b10000000;
 s10:led = 8'b01000000;
 s11:led = 8'b00100000;
 s12:led = 8'b00010000;
 s13:led = 8'b00001000;
 s14:led = 8'b00000100;
 s15:led = 8'b00000010;
 s16:led = 8'b00000001;
 endcase 
end
endmodule
//
module TB_bai8();
reg ck,rs,s;
wire [7:0]led;
initial
begin
ck=1'b1;
rs=1'b1;
s=1'b0;
#800
rs=1'b0;
s=1'b1;
#800
rs=1'b0;
s=1'b0;
#3000 $finish;
end
always @(ck)
#50 ck<=~ck;
bai8 DD(.ck(ck),.rs(rs),.s(s),.led(led));
endmodule
