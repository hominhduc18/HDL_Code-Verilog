module bai9(ck, rs, hex, stop, led_do, led_vang, led_xanh);
input ck, rs, stop;
output reg led_do = 0, led_xanh = 1, led_vang = 0;
output reg [6:0]hex=7'b1111111;

parameter state1 = 5'b00001;
parameter state2 = 5'b00010;
parameter state3 = 5'b00011;
parameter state4 = 5'b00100;
parameter state5 = 5'b00101;
parameter state6 = 5'b00110;
parameter state7 = 5'b00111;
parameter state8 = 5'b01000;
parameter state9 = 5'b01001;
parameter state10 = 5'b01010;
parameter state11 = 5'b01011;
parameter state12 = 5'b01100;
parameter state13 = 5'b01101;
parameter state14 = 5'b01110;
parameter state15 = 5'b01111;
parameter state16 = 5'b10000;
parameter state17 = 5'b10001;
parameter state18 = 5'b10010;
parameter statestop = 5'b10011;

reg [4:0]curent,next;




always @(*)
	begin
		case(curent)
			state1:
				begin
					if(stop) next=statestop;
					else next=state2;
				end
			state2:
				begin
					if(stop) next=statestop;
					else next=state3;
				end
			state3:
				begin
					if(stop) next=statestop;
					else next=state4;
				end
			state4:
				begin
					if(stop) next=statestop;
					else next=state5;
				end
			state5:
				begin
					if(stop) next=statestop;
					else next=state6;
				end
			state6:
				begin
					if(stop) next=statestop;
					else next=state7;
				end
			state7:
				begin
					if(stop) next=statestop;
					else next=state8;
				end
			state8:
				begin
					if(stop) next=statestop;
					else next=state9;
				end
			state9:
				begin
					if(stop) next=statestop;
					else next=state10;
				end
			state10:
				begin
					if(stop) next=statestop;
					else next=state11;
				end
			state11:
				begin
					if(stop) next=statestop;
					else next=state12;
				end
			state12:
				begin
					if(stop) next=statestop;
					else next=state13;
				end
			state13:
				begin
					if(stop) next=statestop;
					else next=state14;
				end
			state14:
				begin
					if(stop) next=statestop;
					else next=state15;
				end
			state15:
				begin
					if(stop) next=statestop;
					else next=state16;
				end
			state16:
				begin
					if(stop) next=statestop;
					else next=state17;
				end
			state17:
				begin
					if(stop) next=statestop;
					else next=state18;
				end
			state18:
				begin
					if(stop) next=statestop;
					else next=state1;
				end
			default: 
				begin
					if(stop) next=statestop;
					else next=state1;
				end
		endcase
	end
	
always @(posedge ck or posedge rs)
	begin
		if(rs) curent <= state1;
		else curent<=next;
	end
	
always @(*)
	begin
		case(curent)
			state1://xanh_7
				begin led_do=0;
					led_vang=0;
					led_xanh=1;
					hex=7'b1111000;
				end
			state2://xanh_6
				begin led_do=0;
					led_vang=0;
					led_xanh=1;
					hex=7'b0000010;
				end
			state3://xanh_5
				begin led_do=0;
					led_vang=0;
					led_xanh=1;
					hex=7'b0010010;
				end
			state4://xanh_4
				begin led_do=0;
					led_vang=0;
					led_xanh=1;
					hex=7'b0011001;
				end
			state5://_xanh_3
				begin led_do=0;
					led_vang=0;
					led_xanh=1;
					hex=7'b0110000;
				end
			state6://xanh_2
				begin led_do=0;
					led_vang=0;
					led_xanh=1;
					hex=7'b0100100;
				end
			state7://xanh_1
				begin led_do=0;
					led_vang=0;
					led_xanh=1;
					hex=7'b1111100;
				end
			state8://vang_2
				begin led_do=0;
					led_vang=1;
					led_xanh=0;
					hex=7'b0100100;
				end
			state9://vang_1
				begin led_do=0;
					led_vang=1;
					led_xanh=0;
					hex=7'b1111100;
				end
			state10://do_9
				begin led_do=1;
					led_vang=0;
					led_xanh=0;
					hex=7'b0010000;
				end
			state11://do_8
				begin led_do=1;
					led_vang=0;
					led_xanh=0;
					hex=7'b0000000;
				end
			state12://do_7
				begin led_do=1;
					led_vang=0;
					led_xanh=0;
					hex=7'b1111000;
				end
			state13://do_6
				begin led_do=1;
					led_vang=0;
					led_xanh=0;
					hex=7'b0000010;
				end
			state14://do_5
				begin led_do=1;
					led_vang=0;
					led_xanh=0;
					hex=7'b0010010;
				end
			state15://do_4
				begin led_do=1;
					led_vang=0;
					led_xanh=0;
					hex=7'b0011001;
				end
			state16://do_3
				begin led_do=1;
					led_vang=0;
					led_xanh=0;
					hex=7'b0110000;
				end
			state17://do_2
				begin led_do=1;
					led_vang=0;
					led_xanh=0;
					hex=7'b0100100;
				end
			state18://do_1
				begin led_do=1;
					led_vang=0;
					led_xanh=0;
					hex=7'b1111100;
				end
			default: //do_sang, hex tat
				begin led_do=1;
					led_vang=0;
					led_xanh=0;
					hex=7'b1111111;
				end
		endcase
	end
endmodule

module tb();
reg ck, rs, stop;
wire led_do, led_xanh, led_vang;
wire [6:0]hex;

initial
begin
	ck=0;
	rs=0;
	stop=0;
	#3000
	stop = 1;
	#300
	stop = 0;
	#500
	rs=1;
	#500
	rs=0;
	#5000 $finish;
end
always @(ck)
#50 ck<=~ck;
bai9 D(.ck(ck), .rs(rs), .hex(hex), .stop(stop), .led_do(led_do), .led_vang(led_vang), .led_xanh(led_xanh));
endmodule