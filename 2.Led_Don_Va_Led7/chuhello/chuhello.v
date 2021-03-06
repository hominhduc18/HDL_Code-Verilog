module chuhello(SW,HEX0); 
input [2:0]SW; 
output reg[6:0]HEX0; 
always @ (SW) 
begin 
case (SW) 
3'b000: HEX0 = 7'b 0001001; //H 
3'b001: HEX0 = 7'b 0000110; //E 
3'b010: HEX0 = 7'b 1000111; //L 
3'b011: HEX0 = 7'b 1000111; //L 
3'b100: HEX0 = 7'b 1000000; //O 
3'b101: HEX0 = 7'b 1111111; //tắt 
3'b110: HEX0 = 7'b 1111111; //tắt 
3'b111: HEX0 = 7'b 1111111; //tắt 
endcase 
end 
endmodule 
module TB_chuhello();
reg [2:0]SW;
wire [6:0]HEX0;
initial 
begin
SW=3'b000; 
#100
SW =3'b001; 
#100
SW =3'b010; 
#100
SW =3'b011; 
#100
SW =3'b100; 
#100
SW =3'b101; 
#100
SW =3'b110; 
#100
SW =3'b111; 
#1000 $finish;
end
chuhello D(.SW(SW),.HEX0(HEX0));
endmodule
