module baimot(SW, LEDG);
input [7:0]SW;
output [4:0]LEDG;
wire [3:0]a,b;
wire [4:0]s;
wire n1;
assign a=SW[3:0];
assign b=SW[7:4];
assign LEDG=s;
fa H1(n1,s[0],a[0],b[0],1'b0);
fa H2(n2,s[1],a[1],b[1],n1);
fa H3(n3,s[2],a[2],b[2],n2);
fa H4(s[4],s[3],a[3],b[3],n3);
endmodule

module fa(co,s,a,b,ci);
input a,b,ci;
output co,s;
wire n1,n2,n3,n4;
xor (n1,a,b);
xor (s,ci,n1);
not (n2,n1);
and (n3,n2,b);
and (n4,ci,n1);
or (co,n3,n4);
endmodule
//
module TB_baimot();
reg [7:0]SW;
wire[4:0]LEDG;
initial
begin 
SW[3:0]=4'b0000;
SW[7:4]=4'b1111;
#100
SW[3:0]=4'b1111;
SW[7:4]=4'b0010;
#100
SW[3:0]=4'b1111;
SW[7:4]=4'b0011;
#100
SW[3:0]=4'b1111;
SW[7:4]=4'b0000;
#100
SW[3:0]=4'b1111;
SW[7:4]=4'b0010;
#100
SW[3:0]=4'b1111;
SW[7:4]=4'b0101;
#100
SW[3:0]=4'b1111;
SW[7:4]=4'b0110;
#100
SW[3:0]=4'b1111;
SW[7:4]=4'b0111;
#100
SW[3:0]=4'b1111;
SW[7:4]=4'b1000;
#100
SW[3:0]=4'b1011;
SW[7:4]=4'b1111;
#100
SW[3:0]=4'b1100;
SW[7:4]=4'b1111;
#100
SW[3:0]=4'b1101;
SW[7:4]=4'b1111;
#100
SW[3:0]=4'b1110;
SW[7:4]=4'b1111;
#100
SW[3:0]=4'b1111;
SW[7:4]=4'b1111;
#2000 $finish;
end
baimot D(.SW(SW),.LEDG(LEDG));
endmodule
