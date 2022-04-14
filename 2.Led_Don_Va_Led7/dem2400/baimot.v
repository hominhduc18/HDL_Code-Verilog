module baimot(ck,rs,a);
input ck,rs;
output reg  [4:0]a;
always @(negedge ck or negedge rs)// ck cạnh xuống ko đồng bộ rs thích cực thấp 
begin 
if(rs==1'b0)
        a<=5'b11000;
else 
   begin 
        a<=a-1'b1;
        if(a==5'b00000)
            a<=5'b11000;
   end 
end 
endmodule
module TB_baimot();
reg ck,rs;
wire [4:0]a;
initial
begin
ck=0;
rs=0;
#100
rs=1;
#4000
rs=0;
#100
rs=1;
#5000 $finish;
end
always @(ck)
#50 ck<=~ck;
baimot D(.ck(ck),.rs(rs),.a(a));
endmodule

