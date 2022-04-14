module decor416(in,out); 
input [3:0]in; 
output [15:0]out; 
wire notout; 
not H1(notout, in[3]); 
decorder3_8 u1(in[2:0],in[3],out[7:0]); 
decorder3_8 u2(in[2:0],notout,out[15:8]); 
endmodule 


module decorder3_8(i,e,o);
input [2:0]i;
input e;
output [7:0]o;
reg [7:0]o;
always @( *)
begin
if(e==1'b1)
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

