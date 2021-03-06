// chuuwong trình gọi hàm con 
module baichin(CK,RS,hex0,hex1);
input CK,RS;
output[7:0]hex0,hex1;
wire[3:0]q1,q2;
dem15to00 H1(CK,RS,q1,q2);
giaima    H2(q1,hex0);
giaima    H3(q2,hex1);
endmodule
// chương trinh đếm từ 15-00
module dem15to00(ck,rs,bcd1,bcd0);
input ck,rs;
output [3:0]bcd1,bcd0;
reg [3:0]bcd1,bcd0;// bcd1 chục ,bcd0 đv
always @(posedge ck)//ck cạnh lên,rs đồng bộ mức cao  
begin 
if(rs==1'b1)
   begin
        bcd1<=4'b0001;
        bcd0<=4'b0101;
   end
else 
   begin 
        bcd0<=bcd0-1;
        if(bcd0==4'b0000)
          begin
            bcd0<=4'b1001;
            bcd1<=bcd1-1;
          end
        if(bcd1==4'b0000 && bcd0==4'b0000)
         begin 
             bcd1<=4'b0001;
             bcd0<=4'b0101;
         end
   end 
end 
endmodule
// chương trình giải mã led 
module giaima(Q,hex);
input [3:0]Q;
output [7:0]hex;
reg [7:0]hex;
always @(Q)
begin 
     case(Q)
      4'b0000:hex=8'hC0;
      4'b0001:hex=8'hF9;
      4'b0010:hex=8'hA4;
      4'b0011:hex=8'hB0;
      4'b0100:hex=8'hAB;
      4'b0101:hex=8'h99;
      4'b0110:hex=8'h82;
      4'b0111:hex=8'hF8;
      4'b1000:hex=8'h80;
      4'b1001:hex=8'h91;
      default:hex=8'hFF;
      endcase
end
endmodule
// 
module TB_baichin();
reg CK,RS;
wire [7:0]hex0,hex1;
initial
begin
CK=0;
RS=1;
#100
RS=0;
CK=1;
#5000 $finish;
end
always@(CK)
#50 CK<=~CK;
baichin D(.CK(CK),.RS(RS),.hex0(hex0),.hex1(hex1));
endmodule

