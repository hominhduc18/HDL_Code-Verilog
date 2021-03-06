module mux161(S0,S1,S2,S3,I,Y);
input S0,S1,S2,S3;
input [15:0]I;
output Y;
wire Y1,Y2;
mux8to1 H1(S0,S1,S2,I[7:0],Y1);
mux8to1 H2(S0,S1,S2,I[15:8],Y2);
mux2_1 H3(Y1,Y2,S3,Y);
endmodule
module mux8to1(a,b,c,i,y);
input a,b,c;
input [7:0]i;
output y;
reg y;
always @(*)
begin 
case(i)
3'b000:y=i[0];
3'b001:y=i[1];
3'b010:y=i[2];
3'b011:y=i[3];
3'b100:y=i[4];
3'b101:y=i[5];
3'b110:y=i[6];
3'b111:y=i[7];
endcase
end 
endmodule
module mux2_1(AA,BB,SS,YY); 
input AA,BB,SS; 
output YY; 
assign YY = (~SS & AA) | (SS & BB); 
endmodule 

