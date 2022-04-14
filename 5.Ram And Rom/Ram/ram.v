module ram(dataIn,dataOut,Addr,CS,WE,Clk);
input [7:0] dataIn;
output reg [7:0] dataOut;
input [2:0] Addr;
input CS, WE, Clk;
reg [7:0] SRAM [7:0]; //SRAM co 8 dia chi , moi dia chi luu du lieu 8 bit
always @ (posedge Clk)
begin
if (CS == 1'b1)
begin
if (WE == 1'b1) // ghi du lieu
SRAM [Addr] <= dataIn;
else // doc du lieu
dataOut <= SRAM [Addr];
end
else
dataOut <= 8'bxxxxxxxx;
end
endmodule
///
module TB_RAM();
reg [7:0] dataIn;
reg [2:0] Addr;
reg CS, WE, Clk;
wire [7:0] dataOut;
initial
begin
Clk = 1'b0;
dataIn = 0;
Addr = 3'b000;
CS = 1'b0;
WE = 1'b0;
#100
dataIn = 30;
Addr = 3'b000;
CS = 1'b1;
WE = 1'b1;
#100
dataIn = 31;
Addr = 3'b001;
CS = 1'b1;
WE = 1'b1;
#100
dataIn = 32;
Addr = 3'b010;
CS = 1'b1;
WE = 1'b1;
#100
dataIn = 33;
Addr = 3'b011;
CS = 1'b1;
WE = 1'b1;
#100
dataIn = 34;
Addr = 3'b100;
CS = 1'b1;
WE = 1'b1;
#100
dataIn = 35;
Addr = 3'b101;
CS = 1'b1;
WE = 1'b1;
#100
dataIn = 36;
Addr = 3'b110;
CS = 1'b1;
WE = 1'b1;
#100
dataIn = 37;
Addr = 3'b111;
CS = 1'b1;
WE = 1'b1;
#200
dataIn = 37;
Addr = 3'b000;
CS = 1'b1;
WE = 1'b0;
#100
dataIn = 37;
Addr = 3'b001;
CS = 1'b1;
WE = 1'b0;
#100
dataIn = 37;
Addr = 3'b010;
CS = 1'b1;
WE = 1'b0;
#100
dataIn = 37;
Addr = 3'b011;
CS = 1'b1;
WE = 1'b0;
#100
dataIn = 37;
Addr = 3'b100;
CS = 1'b1;
WE = 1'b0;
#200
dataIn = 40;
Addr = 3'b000;
CS = 1'b1;
WE = 1'b1;
#100
dataIn = 41;
Addr = 3'b001;
CS = 1'b1;
WE = 1'b1;
#200
dataIn = 41;
Addr = 3'b000;
CS = 1'b1;
WE = 1'b0;
#100
dataIn = 41;
Addr = 3'b001;
CS= 1'b1;
WE = 1'b0;
#100
dataIn = 41;
Addr = 3'b001;
CS = 1'b0;
WE = 1'b0;
#10000 $finish;
end
always @(Clk)
#50 Clk<=~Clk;
ram D(.dataIn(dataIn),.Addr(Addr),.CS(CS),.WE(WE),.Clk(Clk),.dataOut(dataOut));
endmodule