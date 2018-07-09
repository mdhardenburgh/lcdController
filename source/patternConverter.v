/*
 * @file patternConverter.v
 * @engineer Matthew Hardenburgh
 * @brief Converts a BCD input to the character code pattern for the LCD.
 * @details This module generates the character code for the LCD controller from
 *          BCD input.
 * @date 7/8/18
 */

/*
 * @brief Converts BCD to the character code for the LCD character generator.
 *
 * @input 4 bit BCD input from the bcdConverter.
 *
 * @output Character code to be interpreted by the LCD device.
 */
module patternConverter
(
    input[3:0] bcdInput,
    output reg[7:0] lcdPattern
);
    //Inputs
    localparam  zero = 4'b0000;
    localparam  one = 4'b0001;
    localparam  two = 4'b0010;
    localparam  three = 4'b0011;
    localparam  four = 4'b0100;
    localparam  five = 4'b0101;
    localparam  six = 4'b0110;
    localparam  seven = 4'b0111;
    localparam  eight = 4'b1000;
    localparam  nine = 4'b1001;

    //outputs
    localparam  outZero =  8'b00110000;
    localparam  outOne = 8'b00110001;
    localparam  outTwo = 8'b00110010;
    localparam  outThree = 8'b00110011;
    localparam  outFour = 8'b00110100;
    localparam  outFive = 8'b00110101;
    localparam  outSix = 8'b00110110;
    localparam  outSeven = 8'b00110111;
    localparam  outEight = 8'b00111000;
    localparam  outNine = 8'b00111001;
	localparam  error = 8'b00000000;

    always@(bcdInput)
    begin
        case(bcdInput)
            zero:
            begin
                lcdPattern = outZero;
            end

            one:
            begin
                lcdPattern = outOne;
            end

            two:
            begin
                lcdPattern = outTwo;
            end

            three:
            begin
                lcdPattern = outThree;
            end

            four:
            begin
                lcdPattern = outFour;
            end

            five:
            begin
                lcdPattern = outFive;
            end

            six:
            begin
                lcdPattern = outSix;
            end

            seven:
            begin
                lcdPattern = outSeven;
            end

            eight:
            begin
                lcdPattern = outEight;
            end

            nine:
            begin
                lcdPattern = outNine;
            end

            default:
            begin
                lcdPattern = error;
            end
        endcase

    end
endmodule
