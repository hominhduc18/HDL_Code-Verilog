module IC74LS151(e,s,i,y1,y2);
input e;
input [2:0]s;
input [7:0]i;
output y1,y2;
reg y1,y2;
always @(*)
begin
if(e==1'b1)
begin
y1=0;
y2=~y1;
end
else
	begin
		case(s)
		3'b000:
		begin
		y1=i[0];y2=~y1;
		end
		3'b001:
		begin
		y1=i[1];
		y2=~y1;
		end
		3'b010:
		begin
		y1=i[2];
		y2=~y1;
		end
		3'b011:
		begin
		y1=i[3];
		y2=~y1;
		end
		3'b100:
		begin
		y1=i[4];
		y2=~y1;
		end
		3'b101:
		begin
		y1=i[5];
		y2=~y1;
		end
		3'b110:
		begin
		y1=i[6];
		y2=~y1;
		end
		3'b111:
		begin
		y1=i[7];
		y2=~y1;
		end
		endcase
		end
end
endmodule

module TB_IC74LS151();
reg [7:0]i;
reg e;
reg [2:0]s;
wire y1,y2;
initial
begin
e=1'b0;
s=3'b000;
i=8'b00000001;
#100
e=1'b0;
s=3'b001;
i=8'b00000010;
#100
e=1'b0;
s=3'b010;
i=8'b00000100;
#100
e=1'b0;
s=3'b011;
i=8'b00001000;
#100
e=1'b0;
s=3'b100;
i=8'b00010000;
#100
e=1'b0;
s=3'b101;
i=8'b00100000;
#100
e=1'b0;
s=3'b110;
i=8'b01000000;
#100
e=1'b0;
s=3'b111;
i=8'b10000000;
#2000 $finish;
end
IC74LS151 D(.e(e),.s(s),.i(i),.y1(y1),.y2(y2));
endmodule


