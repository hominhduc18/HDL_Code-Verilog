module bai2(dataOut,CS,WE,clk,A,B);

input CS,WE,clk;
input [3:0]A,B;
output [4:0]dataOut;

reg [5:0] spam[255:0];

wire [7:0]addr;
wire [4:0]dataIn;

	machcong u1(A,B,dataIn, addr);
	RAM_module_con u2(dataIn, dataOut, addr, CS, WE, clk);

endmodule


module machcong(a,b,dataIn,addr);

input [3:0]a,b;
output reg [4:0]dataIn;
output reg [7:0]addr;

always @(*)
	begin
		dataIn <= a+b;
		addr <= {a,b};
	end
endmodule

module RAM_module_con(dataIn,dataOut,addr,CS,WE,clk);


input [7:0]addr;
input CS,WE,clk;
input [4:0]dataIn;

output reg [4:0]dataOut;

reg [4:0] spam[255:0];

always @(posedge clk)
	begin
	  if(CS == 1'b1)
	  begin
		 if(WE == 1'b1)
			 spam[addr] <= dataIn;
		 else
			 dataOut <= spam[addr];
	  end
	  else dataOut <= 5'bxxxxx;
	end
endmodule

module TB();

reg CS,WE,clk;
reg [3:0]A,B;
wire [4:0]dataOut;

initial
begin
	
	clk=0;
	CS=0;
	WE=0;
	A=0;
	B=1;
	#100
	CS=1;
	WE=1;
	#100
	A=3;
	B=5;
	#100
	A=2;
	B=4;
	#100
	A=9;
	B=6;
	#100
	A=2;
	B=8;
	#100
	A=4;
	B=10;
	#100
	A=12;
	B=15;
	#100
	A=15;
	B=15;
	#100
	
	WE=0;
	A=3;
	B=5;
	#100
	A=2;
	B=4;
	#100
	A=9;
	B=6;
	#100
	A=2;
	B=8;
	#100
	A=4;
	B=10;
	#100
	A=12;
	B=15;
	#100
	A=15;
	B=15;
	#100
	
	WE=1;
	A=6;
	B=3;
	#100
	A=9;
	B=10;
	#100
	
	CS=0;
	#2500 $finish;
	
end

always @(clk)
#50 clk <= ~clk;

bai2 D(.dataOut(dataOut),.CS(CS),.WE(WE),.clk(clk),.A(A),.B(B));

endmodule