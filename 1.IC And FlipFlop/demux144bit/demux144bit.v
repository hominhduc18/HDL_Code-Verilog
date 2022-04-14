module demux144bit(s,x,a,b,c,d);
input [1:0]s;
input [3:0]x;
output[3:0]a;
output[3:0]b;
output[3:0]c;
output[3:0]d;
demux1_4 h1({a[0],b[0],c[0],d[0]},s[1:0],x[0]);
demux1_4 h2({a[1],b[1],c[1],d[1]},s[1:0],x[1]);
demux1_4 h3({a[2],b[2],c[2],d[2]},s[1:0],x[2]);
demux1_4 h4({a[3],b[3],c[3],d[3]},s[1:0],x[3]);
endmodule
// demux1-4 1 bit 
module demux1_4(LEDR,SW,E); 
input [2:1]SW; 
input E;
output [3:0]LEDR; 
assign LEDR[0] = ~SW[2]&~SW[1]& E; 
assign LEDR[1] = ~SW[2]& SW[1]& E; 
assign LEDR[2] = SW[2]&~SW[1]& E; 
assign LEDR[3] = SW[2]& SW[1]& E; 
endmodule 

module TB_demux144bit();
reg [1:0]s;
reg [3:0]x;
wire[3:0]a;
wire[3:0]b;
wire[3:0]c;
wire[3:0]d;
initial
begin
s=2'b00;
x=4'b1011;
#100
s=2'b01;
x=4'b1100;
#100
s=2'b10;
x=4'b0010;
#100
s=2'b11;
x=4'b0111;

#1000 $finish;
end
demux144bit D(.d(d),.c(c),.b(b),.a(a),.x(x),.s(s));
endmodule
