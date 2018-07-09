/*
 * @file bcdConverter.v
 * @engineer Dustin Criger, Matthew Hardenburgh
 * @brief Binary coded decimal converter.
 * @details Converts from binary to binary coded decimal. The original engineer
 *          of this is Dustin Criger, I made modifications to allow the
 *          conversion of up to the ten thousandths place. Dustin's email is
 *          dustger89@gmail.com.
 * @date 7/8/18
 */

/*
 * @brief Am implementation of a the BCD conversion algorithm. This is designed
 *        for the Terasic DE2 board. The input comes from the switches on the board.
 *
 * @input A 16 bit input.
 *
 * @output The ten thousandths place output.
 * @output The thousandths place output.
 * @output The hundredths place output.
 * @output The tenths place output.
 * @output The ones place output.
 */
module bcdConterter
(
    input [15:0]in,

    output reg[3:0] tenThou,
    output reg[3:0] thou,
    output reg[3:0] hund,
    output reg[3:0] tens,
    output reg[3:0] ones
);
	//reg [15:0]n;
	integer i;
	reg [35:0]n;

	always@(in)
	begin
		n = 32'h00000000;
		n[15:0] = in;
		for(i = 0; i < 16; i = i + 1)
		begin
				//If any digit is greater than 4, then add 3.
				if(n[19:16] > 4)
				begin
					n[19:16] = n[19:16] + 4'd3;
				end

				if(n[23:20] > 4)
				begin
					n[23:20] = n[23:20] + 4'd3;
				end

				if(n[27:24] > 4)
				begin
					n[27:24] = n[27:24] + 4'd3;
				end

				if(n[31:28] > 4)
				begin
					n[31:28] = n[31:28] + 4'd3;
				end

                if(n[35:32] > 4)
                begin
                    n[35:32] = n[35:32] + 4'd3;
                end

				n = n<<1;

		end
		ones = n[19:16];
		tens = n[23:20];
		hund = n[27:24];
		thou = n[31:28];
        tenThou = n[35:32];
	end
endmodule
