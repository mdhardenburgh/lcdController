//Original Author: Dustin Criger. Email: dustger89@gmail.com
//Modifications by Matthew Hardenburgh.

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
