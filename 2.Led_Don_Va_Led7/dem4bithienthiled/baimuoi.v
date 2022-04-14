// ch??ng trình g?i hàm 
		module baimuoi(CK,RS,HEX00,HEX11);
		input CK,RS;
		output [7:0]HEX00,HEX11;
		wire [3:0]Q;
		dem4bit H1(CK,RS,Q);
		giaima  H2(Q,HEX00,HEX11);
		endmodule
		// vi?t ch??ng trình b? ??m nh? phân 4bit 
		module dem4bit(ck,rs,q);
		input ck,rs;
		output [3:0]q;
		reg [3:0]q;
		always @(posedge ck or negedge rs)
		//Ck tác ??ng theo c?nh lên, chân RS không ??ng b? và tích c?c m?c th?p
		begin 
		if(rs==1'b0)
			 q<=4'b0000;
		else
			 q<=q+1'b1;
		end
		endmodule
		// ch??ng trình gi?i mã 
		module giaima(a,hex0,hex1);
		input [3:0]a;
		output reg [7:0]hex0,hex1;
		always @(*)
		begin 
		case(a) 
		4'b0000:
		begin
		hex0=8'h8A;
		hex1=8'hFF;
		end
		4'b0001:
		begin
		hex0=8'hF9;
		hex1=8'hFF;
		end
		4'b0010:
		begin
		hex0=8'hA4;
		hex1=8'hFF;
		end
		4'b0011:
		begin
		hex0=8'hB0;
		hex1=8'hFF;
		end
		4'b0100:
		begin
		hex0=8'hAB;
		hex1=8'hFF;
		end
		4'b0101:
		begin
		hex0=8'h99;
		hex1=8'hFF;
		end
		4'b0110:
		begin
		hex0=8'h8A;
		hex1=8'hFF;
		end
		4'b0111:
		begin
		hex0=8'hF8;
		hex1=8'hFF;
		end
		4'b1000:
		begin
		hex0=8'h80;
		hex1=8'hFF;
		end
		4'b1001:
		begin
		hex0=8'hC0;
		hex1=8'h8A;
		end
		4'b1010:
		begin
		hex0=8'hF9;
		hex1=8'h8A;
		end
		4'b1011:
		begin
		hex0=8'hA4;
		hex1=8'h8A;
		end
		4'b1100:
		begin
		hex0=8'hB0;
		hex1=8'h8A;
		end
		4'b1101:
		begin
		hex0=8'hAB;
		hex1=8'h8A;
		end
		4'b1110:
		begin
		hex0=8'h99;
		hex1=8'h8A;
		end
		4'b1111:
		begin
		hex0=8'h82;
		hex1=8'h8A;
		end
		endcase
		end
		endmodule
		//
		module TB_baimuoi();
		reg CK,RS;
		wire [7:0]HEX00,HEX11;
		initial
		begin 
		CK=0;
		RS=0;
		#100

		RS=1;
		#5000 $finish;
		end
		always@(CK)
		#50 CK<=~CK;
		baimuoi D(.CK(CK),.RS(RS),.HEX00(HEX00),.HEX11(HEX11));
		endmodule