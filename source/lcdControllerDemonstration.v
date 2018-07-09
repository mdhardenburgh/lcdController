/*
 * @file lcdControllerDemonstration.v
 * @engineer Matthew Hardenburgh
 * @brief File contains top level module and an interface module to the LCD
 *        controller.
 * @date 7/8/18
 */

/*
 * @brief Top level module that connects the bcd converter, pattern converter,
 *        lcd interface and the lcd controller together.
 *
 * @input Clock input.
 * @input Input to turn on the lcd backlight.
 * @input Input that controls the power on and off of the lcd, used to reset
 *        other modules.
 * @input Input from 16 switches on the DE2 board.
 *
 * @output Output to turn the backlight on or off.
 * @output Data bus us that goes to the LCD.
 * @output Output that turns the lcd on or off.
 * @output Read write select control line from the LCD controller.
 * @output Register select control line from the LCD controller.
 * @output Enable communication with the LCD device. Fed by the LCD controller.
 * @output Indicate error has occured with the LCD interface state machine.
 * @ouptut Indicate error has occured with the LCD controller state machine.
 */
module lcdControllerDemonstration
(
    input clk,
    input backLight,
    input lcdOnIn,
    input[15:0] in,

    output backLightOut,
    output[7:0] lcdBus,
    output lcdOnOut,
    output lcdReadWriteSel,
    output lcdRsSelect,
    output lcdEnableOut,
    output errorLed1,
    output errorLed2
);

    wire[3:0] tenThou_bcdInput1;
    wire[3:0] thou_bcdInput2;
    wire[3:0] hund_bcdInput3;
    wire[3:0] tens_bcdInput4;
    wire[3:0] ones_bcdInput5;

    wire[7:0] lcdPattern1_tenThou;
    wire[7:0] lcdPattern2_thou;
    wire[7:0] lcdPattern3_hund;
    wire[7:0] lcdPattern4_tens;
    wire[7:0] lcdPattern5_ones;

    wire[7:0] characterCode_charCode;
    wire[4:0] addr_writeAddr;

    assign backLightOut = backLight;
    bcdConterter myConverter(in, tenThou_bcdInput1, thou_bcdInput2, hund_bcdInput3, tens_bcdInput4, ones_bcdInput5);

    patternConverter converter1(tenThou_bcdInput1, lcdPattern1_tenThou);
    patternConverter converter2(thou_bcdInput2, lcdPattern2_thou);
    patternConverter converter3(hund_bcdInput3, lcdPattern3_hund);
    patternConverter converter4(tens_bcdInput4, lcdPattern4_tens);
    patternConverter converter5(ones_bcdInput5, lcdPattern5_ones);

    lcdInterface myInterface(clk, lcdOnIn, lcdPattern1_tenThou, lcdPattern2_thou, lcdPattern3_hund, lcdPattern4_tens, lcdPattern5_ones, characterCode_charCode, addr_writeAddr, errorLed1);

    lcdController myControler(clk, lcdOnIn, addr_writeAddr, characterCode_charCode, lcdBus, lcdOnOut, lcdReadWriteSel, lcdRsSelect, lcdEnableOut, errorLed2);

endmodule

/*
 * @breif Interface that that takes the character code of the bcd and writes it
 *        to the LCD controller's register file.
 *
 * @input Clock input.
 * @input Reset signal. Goes to reset state when this signal is high.
 * @input Character code for the ten thousandths place.
 * @input Character code for the thousandths place.
 * @input Character code for the hundredths place.
 * @input Character code for the tens place.
 * @input Character code for the ones place.
 *
 * @output Character code for the current register.
 * @output Address of current register.
 * @output Error LED indicating an error has occured.
 */
module lcdInterface
(
    input clk,
    input rst, //This is the LCD on signal from the lcd on switch.
    input[7:0] tenThou,
    input[7:0] thou,
    input[7:0] hund,
    input[7:0] tens,
    input[7:0] ones,

    output reg[7:0] characterCode,
    output reg[4:0] addr,
    output reg errorLed
);
    localparam  tenThousand = 3'd0;
    localparam  thousand = 3'd1;
    localparam  hundred = 3'd2;
    localparam  ten = 3'd3;
    localparam  one = 3'd4;
    localparam  spin = 3'd5;

    reg[4:0] state;
    reg[4:0] counter;

    always @ (posedge clk, negedge rst)
    begin
        if(rst == 1'b0)
        begin
            state <= tenThousand;
            characterCode <= 8'h00;
            addr <= 5'd0;
            errorLed <= 1'b0;
        end

        else
        begin
            case(state)
                tenThousand:
                begin
                    errorLed <= 1'b0;
                    state <= thousand;
                    addr <= 5'd0;
                    characterCode <= tenThou;
                end

                thousand:
                begin
                    errorLed <= 1'b0;
                    state <= hundred;
                    addr <= 5'd1;
                    characterCode <= thou;
                end

                hundred:
                begin
                    errorLed <= 1'b0;
                    state <= ten;
                    addr <= 5'd2;
                    characterCode <= hund;
                end

                ten:
                begin
                    errorLed <= 1'b0;
                    state <= one;
                    addr <= 5'd3;
                    characterCode <= tens;
                end

                one:
                begin
                    errorLed <= 1'b0;
                    state <= spin;
                    addr <= 5'd4;
                    counter <= 5'd5;
                    characterCode <= ones;
                end

                spin:
                begin
                    if(counter == 5'd31)
                    begin
                        errorLed <= 1'b0;
                        state <= tenThousand;
                        addr <= counter;
                        characterCode <= 8'b10000000;
                    end

                    else
                    begin
                        errorLed <= 1'b0;
                        addr <= counter;
                        state <= spin;
                        counter <= counter + 1'b1;
                        characterCode <= 8'b10000000;
                    end
                end

                default:
                begin
                    errorLed <= 1'b1;
                end

            endcase
        end
    end

endmodule
