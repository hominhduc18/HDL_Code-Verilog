module happytsp(SW,HEX0,HEX1,HEX2,HEX3,HEX4);
input [17:15]SW; 
output reg[6:0]HEX0,HEX1,HEX2,HEX3,HEX4; 
always @ (SW) 
begin 
case (SW) 
3'b000:
 begin 
// tắt led 
HEX4 =8'b 11111111;  
HEX3 =8'b 11111111; 
HEX2 =8'b 11111111;  
HEX1 =8'b 11111111; 
HEX0 =8'b 11111111; 
end 
// chữ Y 
3'b001: 
begin 
HEX4 =8'b 10011001;  
HEX3 =8'b 11111111; 
HEX2 =8'b 11111111;  
HEX1 =8'b 11111111; 
HEX0 =8'b 11111111; 
end 
// chữ  PY
3'b010: 
begin 
HEX4 =8'b 10001100;  
HEX3 =8'b 10011001; 
HEX2 =8'b 11111111;  
HEX1 =8'b 11111111; 
HEX0 =8'b 11111111; 
end 
// Chữ PPY
3'b100: 
begin 
HEX4 =8'b 10001100;  
HEX3 =8'b 10001100; 
HEX2 =8'b 10011001;  
HEX1 =8'b 11111111; 
HEX0 =8'b 11111111; 
end 
// chữ APPY
3'b100: 
begin 
HEX4 =8'b 10001000;  
HEX3 =8'b 10001100; 
HEX2 =8'b 10001100;  
HEX1 =8'b 10011001; 
HEX0 =8'b 11111111; 
end 
// chữ Happy
3'b101: 
begin 
HEX4 =8'b 10001001;  
HEX3 =8'b 10001000; 
HEX2 =8'b 10001100;  
HEX1 =8'b 10001100; 
HEX0 =8'b 10011001; 
end 
//hiển thị xong tắt led 
3'b101:
 begin 
// tắt led 
HEX4 =8'b 11111111;  
HEX3 =8'b 11111111; 
HEX2 =8'b 11111111;  
HEX1 =8'b 11111111; 
HEX0 =8'b 11111111;
end 
3'b111:
 begin 
// tắt led 
HEX4 =8'b 11111111;  
HEX3 =8'b 11111111; 
HEX2 =8'b 11111111;  
HEX1 =8'b 11111111; 
HEX0 =8'b 11111111;
end 

endcase
end 
endmodule


//testbench
module TB_happytsp();
reg [17:15]SW;
wire[6:0]HEX0,HEX1,HEX2,HEX3,HEX4;
initial
begin
SW = 3'b000; //OFF
#100
SW = 3'b001; 
#100
SW = 3'b010; 
#100
SW = 3'b011; 
#100
SW = 3'b100; 
#100
SW = 3'b101; 
#100
SW = 3'b110; //OFF
#100
SW = 3'b111; // OFF
#1000 $finish;
end
happytsp D(.SW(SW),.HEX0(HEX0),.HEX1(HEX1),.HEX2(HEX2),.HEX3(HEX3),.HEX4(HEX4));
endmodule
