module rom(clk,cs,address,rd,out);
input [3:0]address;
input rd,clk,cs;
output reg [3:0]out;
reg [3:0] rom[15:0];
initial
begin
rom[4'b0000] = 4'b1111;
rom[4'b0001] = 4'b1110;
rom[4'b0010] = 4'b1101;
rom[4'b0011] = 4'b1100;
rom[4'b0100] = 4'b1011;
rom[4'b0101] = 4'b1010;
rom[4'b0110] = 4'b1001;
rom[4'b0111] = 4'b1000;
rom[4'b1000] = 4'b0111;
rom[4'b1001] = 4'b0110;
rom[4'b1010] = 4'b0101;
rom[4'b1011] = 4'b0100;
rom[4'b1100] = 4'b0011;
rom[4'b1101] = 4'b0010;
rom[4'b1110] = 4'b0001;
rom[4'b1111] = 4'b0000;
end
always @ (posedge clk )
if (cs ==1)
  begin
    out <= rom [address];
    if (rd==1)
      out<= rom [address];
    else
    out <= out;
  end
else
  out<= 4'bxxxx;
endmodule


module tb_rom();
reg [3:0]address;
reg rd,clk,cs;
wire [3:0]out;
initial
begin
  clk=0;
  rd=0;
  cs=0;
  address =4'b0000;
  #100
  rd=1;
  cs=1;
  #200
  rd=1;
  cs=1;
  address =4'b0001;
  #100
  address =4'b0010;
  #100
  address =4'b0011;
  #100
  rd=0;
  cs=1;
  address =4'b0000;
  #200
  address =4'b0001;
  #100
  address =4'b0010;
  #100
  rd=1;
  cs=1;
  address =4'b0000;
  #100
  address =4'b0101;
  #100
  address =4'b0000;
  #500
  rd=0;
  cs=0;
  address =4'b0000;
  #200
  #3000 $finish;
  
end
  always @(clk)
#50 clk<=~clk;
rom D(.clk(clk),.cs(cs),.address(address),.rd(rd),.out(out));
endmodule
