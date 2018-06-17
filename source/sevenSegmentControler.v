module sevenSegmentController
(
    input [3:0]in,
    output reg[6:0]out
);

	localparam zero = 7'b1000000;
	localparam one = 7'b1111001;
	localparam two = 7'b0100100;
	localparam three = 7'b0110000;
	localparam four = 7'b0011001;
	localparam five = 7'b0010010;
	localparam six = 7'b0000010;
	localparam seven = 7'b1111000;
	localparam eight = 7'b0000000;
	localparam nine = 7'b0011000;
	localparam ten = 7'b0001000;
	localparam eleven = 7'b0000011;
	localparam twelve = 7'b1000110;
	localparam thirteen = 7'b0100001;
	localparam fourteen = 7'b0001110;
	localparam fifteen = 7'b0001110;

	always@(in)
	case(in)
		4'b0000: out = zero;
		4'b0001: out = one;
		4'b0010: out = two;
		4'b0011: out = three;
		4'b0100: out = four;
		4'b0101: out = five;
		4'b0110: out = six;
		4'b0111: out = seven;
		4'b1000: out = eight;
		4'b1001: out = nine;
		4'b1010: out = ten;
		4'b1011: out = eleven;
		4'b1100: out = twelve;
		4'b1101: out = thirteen;
		4'b1110: out = fourteen;
		4'b1111: out = fifteen;
		default: out = zero;
	endcase
endmodule
