module decorder41638(in,out); 
input [3:0]in; 
output [15:0]out; 
wire notout; 
not (notout, in[3]); 
decorder3_8 u1(out[7:0],in[3],in[2:0]); 
decorder3_8 u2(out[15:8],notout,in[2:0]); 
endmodule 


module decorder3_8(i,o,e);
input [2:0]i;
input e;
output [7:0]o;
reg [7:0]o;
always @( *)
begin
if(e==1'b0)
		o=8'b00000000;
else
begin
	case(i)
			3'b000: o[0]=1'b1;
         3'b001: o[1]=1'b1;
         3'b010: o[2]=1'b1;
         3'b011: o[3]=1'b1;
         3'b100: o[4]=1'b1;
         3'b101: o[5]=1'b1;
         3'b110: o[6]=1'b1;
         3'b111: o[7]=1'b1;
			endcase
		end
end
endmodule


module TB_decorder41638();
reg en,out;
reg [2:0]in;
initial
begin
in=4'b001;
#100
in=4'b010;
#100
in='b100;
#100
in=4'b011;
#100
in=4'b110;
#2000 $finish;
end
decorder41638 D(.in(in),.out(out));
endmodule         
	
	

