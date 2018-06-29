/**
 * @file: LCDController.v
 * @brief: controller for an LCD to interface into any project
 * @Engineer: Matthew Hardenburgh
 * @date: 6/15/18
 */
module lcdController
(
    input clk,
    input lcdOnIn, //connected to switch on board to turn the LCD on or off, acts as reset.
    inout reg[7:0] lcdBus,
    output lcdOnOut,
    output reg lcdReadWriteSel, // LCD read/write select 0 = write, 1 = read
    output reg lcdRsSelect, //  LCD Command/Data Select, 0 = Command, 1 = Data
    output reg lcdEnableOut,
    output reg errorLed
);
    //write and init main states.
    localparam  powerOn = 4'd0;
    localparam  functionSet = 4'd1; //This is hard coded and not changed by user
    localparam  displaySet = 4'd2;
    localparam  displayClear = 4'd3;
    localparam  entryModeSet = 4'd4;
    localparam  readBusyFlag = 4'd5;
    localparam  writeAddr = 4'd6;
    localparam  writeData = 4'd7;
    localparam  waitHerePlox = 4'd8;
    localparam  cursorLogicState = 4'd9;
    localparam  cursorShift = 4'd10;
    localparam  cursorCarriageReturn = 4'd11;

    //substates
    localparam  functionSet1 = 2'd0;
    localparam  functionSet2 = 2'd1;
    localparam  functionSet3 = 2'd2;
    localparam  functionSet4 = 2'd3;
    localparam  subState1 = 2'd0;
    localparam  subState2 = 2'd1;
    localparam  subState3 = 2'd2;

    //LCD Commands
    localparam  FUNCTION_SET =  8'b00111000;
    localparam  DISPLAY_OFF = 8'b00001000;
    localparam  DISPLAY_ON = 8'b00001100;
    localparam  DISPLAY_CLEAR = 8'b00000001;
    localparam  ENTRY_MODE_SET = 8'b00000110;
    localparam  CURSOR_SHIFT = 8'b00010100;
    localparam  CURSOR_AT_HOME = 8'b00000010;

    //clock waiting times in for a 50MHz clock.
    localparam  wait100ms = 32'd5000000;
    localparam  wait20ms = 32'd1000000;
    localparam  wait5ms = 32'd250000;
    localparam  wait1ms = 32'd50000;
    localparam  wait50us = 32'd2500;
    localparam  wait100us = 32'd5000;
    localparam  wait150us = 32'd7500;
    localparam  wait260ns = 32'd26;
    localparam  wait40ns = 32'd2;

    //counter declarations and state
    reg[32:0] counter;
    reg[3:0] state;
    reg[1:0] subStates;
    reg[1:0] functionSetCase;
    reg displayOnOff;
    reg[6:0] addrCounter;

    //continous assingment statements
    assign lcdOnOut = lcdOnIn;
    always@(posedge clk, negedge lcdOnIn)
    begin
        //reset and clear LCD completely.
        if(lcdOnIn == 1'b0)
        begin
            //reset counters and then go to the powerOnState
            state <= powerOn;
            counter <= 32'b0;
            displayOnOff <= 1'b0;
            lcdEnableOut <= 1'b0;
            functionSetCase <= 2'b00;
            errorLed <= 1'b0;
            lcdBus <= 8'hZZ;
            subStates <= 2'b00;
            addrCounter <= 7'h00;
        end

        else
        begin
            case(state)
                //Power on state. Waits more than the required 15ms here.
                powerOn:
                begin
                    errorLed <= 1'b0;
                    lcdEnableOut <= 1'b0;
                    lcdRsSelect <= 1'b0;
                    lcdReadWriteSel <= 1'b0;
                    lcdBus <= 8'hZZ;
                    if(counter == wait20ms)
                    begin
                        counter <= 32'b0;
                        state <= functionSet;
                    end

                    else
                    begin
                        counter <= counter + 1'b1;
                        state <= powerOn;
                    end
                end



                /*
                 * function set state. divided into 4 function set states
                 * that are further divided into 3 substates. Each substate
                 * deals with the function set transaction command.
                 */
                functionSet:
                begin
                    errorLed <= 1'b0;
                    case(functionSetCase)
                        functionSet1:
                        begin
                            lcdRsSelect <= 1'b0;
                            lcdReadWriteSel <= 1'b0;
                            case(subStates)
                                subState1:
                                begin
                                    lcdEnableOut <= 1'b0;
                                    lcdBus <= 8'hZZ;

                                    subStates <= subState2;
                                    functionSetCase <= functionSet1;
                                    state <= functionSet;
                                end

                                subState2:
                                begin
                                    lcdEnableOut <= 1'b1;
                                    lcdBus <= FUNCTION_SET;
                                    if(counter == wait260ns)
                                    begin
                                        counter <= 32'b0;

                                        subStates <= subState3;
                                        functionSetCase <= functionSet1;
                                        state <= functionSet;
                                    end

                                    else
                                    begin
                                        counter <= counter + 1'b1;

                                        subStates <= subState2;
                                        functionSetCase <= functionSet1;
                                        state <= functionSet;
                                    end
                                end

                                subState3:
                                begin
                                    lcdEnableOut <= 1'b0;
                                    lcdBus <= 8'hZZ;
                                    if(counter == wait5ms)
                                    begin
                                        counter <= 32'b0;

                                        subStates <= subState1;
                                        functionSetCase <= functionSet2;
                                        state <= functionSet;
                                    end

                                    else
                                    begin
                                        counter <= counter + 1'b1;

                                        subStates <= subState3;
                                        functionSetCase <= functionSet1;
                                        state <= functionSet;
                                    end
                                end
                            endcase
                        end

                        functionSet2:
                        begin
                            lcdRsSelect <= 1'b0;
                            lcdReadWriteSel <= 1'b0;
                            case(subStates)
                                subState1:
                                begin
                                    lcdEnableOut <= 1'b0;
                                    lcdBus <= 8'hZZ;

                                    subStates <= subState2;
                                    functionSetCase <= functionSet2;
                                    state <= functionSet;
                                end

                                subState2:
                                begin
                                    lcdEnableOut <= 1'b1;
                                    lcdBus <= FUNCTION_SET;
                                    if(counter == wait260ns)
                                    begin
                                        counter <= 32'b0;

                                        subStates <= subState3;
                                        functionSetCase <= functionSet2;
                                        state <= functionSet;
                                    end

                                    else
                                    begin
                                        counter <= counter + 1'b1;

                                        subStates <= subState2;
                                        functionSetCase <= functionSet2;
                                        state <= functionSet;
                                    end
                                end

                                subState3:
                                begin
                                    lcdEnableOut <= 1'b0;
                                    lcdBus <= 8'hZZ;
                                    if(counter == wait150us)
                                    begin
                                        counter <= 32'b0;

                                        subStates <= subState1;
                                        functionSetCase <= functionSet3;
                                        state <= functionSet;
                                    end

                                    else
                                    begin
                                        counter <= counter + 1'b1;

                                        subStates <= subState3;
                                        functionSetCase <= functionSet2;
                                        state <= functionSet;
                                    end
                                end
                            endcase
                        end

                        functionSet3:
                        begin
                            lcdRsSelect <= 1'b0;
                            lcdReadWriteSel <= 1'b0;
                            case(subStates)
                                subState1:
                                begin
                                    lcdEnableOut <= 1'b0;
                                    lcdBus <= 8'hZZ;

                                    subStates <= subState2;
                                    functionSetCase <= functionSet3;
                                    state <= functionSet;
                                end

                                subState2:
                                begin
                                    lcdEnableOut <= 1'b1;
                                    lcdBus <= FUNCTION_SET;
                                    if(counter == wait260ns)
                                    begin
                                        counter <= 32'b0;

                                        subStates <= subState3;
                                        functionSetCase <= functionSet3;
                                        state <= functionSet;
                                    end

                                    else
                                    begin
                                        counter <= counter + 1'b1;

                                        subStates <= subState2;
                                        functionSetCase <= functionSet3;
                                        state <= functionSet;
                                    end
                                end

                                subState3:
                                begin
                                    lcdEnableOut <= 1'b0;
                                    lcdBus <= 8'hZZ;
                                    if(counter == wait150us)
                                    begin
                                        counter <= 32'b0;

                                        subStates <= subState1;
                                        functionSetCase <= functionSet4;
                                        state <= functionSet;
                                    end

                                    else
                                    begin
                                        counter <= counter + 1'b1;

                                        subStates <= subState3;
                                        functionSetCase <= functionSet3;
                                        state <= functionSet;
                                    end
                                end
                            endcase
                        end

                        functionSet4:
                        begin
                            lcdRsSelect <= 1'b0;
                            lcdReadWriteSel <= 1'b0;
                            case(subStates)
                                subState1:
                                begin
                                    lcdEnableOut <= 1'b0;
                                    lcdBus <= 8'hZZ;

                                    subStates <= subState2;
                                    functionSetCase <= functionSet4;
                                    state <= functionSet;
                                end

                                subState2:
                                begin
                                    lcdEnableOut <= 1'b1;
                                    lcdBus <= FUNCTION_SET;
                                    if(counter == wait260ns)
                                    begin
                                        counter <= 32'b0;

                                        subStates <= subState3;
                                        functionSetCase <= functionSet4;
                                        state <= functionSet;
                                    end

                                    else
                                    begin
                                        counter <= counter + 1'b1;

                                        subStates <= subState2;
                                        functionSetCase <= functionSet4;
                                        state <= functionSet;
                                    end
                                end

                                subState3:
                                begin
                                    lcdEnableOut <= 1'b0;
                                    lcdBus <= 8'hZZ;
                                    if(counter == wait150us)
                                    begin
                                        counter <= 32'b0;

                                        state <= displaySet;
                                        subStates <= subState1;
                                    end

                                    else
                                    begin
                                        counter <= counter + 1'b1;

                                        subStates <= subState3;
                                        functionSetCase <= functionSet4;
                                        state <= functionSet;
                                    end
                                end
                            endcase
                        end
                    endcase
                end

                displaySet:
                begin
                    //display off for init
                    errorLed <= 1'b0;
                    lcdRsSelect <= 1'b0;
                    lcdReadWriteSel <= 1'b0;

                    if(displayOnOff == 1'b0)
                    begin
                        case(subStates)
                            subState1:
                            begin
                                lcdEnableOut <= 1'b0;
                                lcdBus <= 8'hZZ;

                                subStates <= subState2;
                                state <= displaySet;
                            end

                            subState2:
                            begin
                                lcdEnableOut <= 1'b1;
                                lcdBus <= DISPLAY_OFF;
                                if(counter == wait260ns)
                                begin
                                    counter <= 32'b0;

                                    subStates <= subState3;
                                    state <= displaySet;
                                end

                                else
                                begin
                                    counter <= counter + 1'b1;

                                    subStates <= subState2;
                                    state <= displaySet;
                                end
                            end

                            subState3:
                            begin
                                lcdEnableOut <= 1'b0;
                                lcdBus <= 8'hZZ;
                                if(counter == wait50us)
                                begin
                                    counter <= 32'b0;

                                    subStates <= subState1;
                                    state <= displayClear;
                                end

                                else
                                begin
                                    counter <= counter + 1'b1;

                                    subStates <= subState3;
                                    state <= displaySet;
                                end
                            end
                        endcase
                            end

                    //Turn on display.
                    else
                    begin
                        case(subStates)
                            subState1:
                            begin
                                lcdEnableOut <= 1'b0;
                                lcdBus <= 8'hZZ;

                                subStates <= subState2;
                                state <= displaySet;
                            end

                            subState2:
                            begin
                                lcdEnableOut <= 1'b1;
                                lcdBus <= DISPLAY_ON;
                                if(counter == wait260ns)
                                begin
                                    counter <= 32'b0;

                                    subStates <= subState3;
                                    state <= displaySet;
                                end

                                else
                                begin
                                    counter <= counter + 1'b1;

                                    subStates <= subState2;
                                    state <= displaySet;
                                end
                            end

                            subState3:
                            begin
                                lcdEnableOut <= 1'b0;
                                lcdBus <= 8'hZZ;
                                if(counter == wait50us)
                                begin
                                    counter <= 32'b0;

                                    subStates <= subState1;
                                    state <= writeAddr;
                                end

                                else
                                begin
                                    counter <= counter + 1'b1;

                                    subStates <= subState3;
                                    state <= displaySet;
                                end
                            end
                        endcase
                    end
                end

                displayClear:
                begin
                    errorLed <= 1'b0;
                    lcdRsSelect <= 1'b0;
                    lcdReadWriteSel <= 1'b0;

                    case(subStates)
                        subState1:
                        begin
                            lcdEnableOut <= 1'b0;
                            lcdBus <= 8'hZZ;

                            subStates <= subState2;
                            state <= displayClear;
                        end

                        subState2:
                        begin
                            lcdEnableOut <= 1'b1;
                            lcdBus <= DISPLAY_CLEAR;
                            if(counter == wait260ns)
                            begin
                                counter <= 32'b0;

                                subStates <= subState3;
                                state <= displayClear;
                            end

                            else
                            begin
                                counter <= counter + 1'b1;

                                subStates <= subState2;
                                state <= displayClear;
                            end
                        end

                        subState3:
                        begin
                            lcdEnableOut <= 1'b0;
                            lcdBus <= 8'hZZ;
                            if(counter == wait5ms)
                            begin
                                counter <= 32'b0;

                                subStates <= subState1;
                                state <= entryModeSet;
                            end

                            else
                            begin
                                counter <= counter + 1'b1;

                                subStates <= subState3;
                                state <= displayClear;
                            end
                        end
                    endcase
                end

                entryModeSet:
                begin
                    errorLed <= 1'b0;
                    lcdRsSelect <= 1'b0;
                    lcdReadWriteSel <= 1'b0;

                    case(subStates)
                        subState1:
                        begin
                            lcdEnableOut <= 1'b0;
                            lcdBus <= 8'hZZ;

                            subStates <= subState2;
                            state <= entryModeSet;
                        end

                        subState2:
                        begin
                            lcdEnableOut <= 1'b1;
                            lcdBus <= ENTRY_MODE_SET;
                            displayOnOff <= 1'b1;
                            if(counter == wait260ns)
                            begin
                                counter <= 32'b0;

                                subStates <= subState3;
                                state <= entryModeSet;
                            end

                            else
                            begin
                                counter <= counter + 1'b1;

                                subStates <= subState2;
                                state <= entryModeSet;
                            end
                        end

                        subState3:
                        begin
                            lcdEnableOut <= 1'b0;
                            lcdBus <= 8'hZZ;
                            if(counter == wait5ms)
                            begin
                                counter <= 32'b0;

                                subStates <= subState1;
                                state <= displaySet;
                            end

                            else
                            begin
                                counter <= counter + 1'b1;

                                subStates <= subState3;
                                state <= entryModeSet;
                            end
                        end
                    endcase
                end

                writeAddr:
                begin
                    errorLed <= 1'b0;
                    lcdRsSelect <= 1'b0;
                    lcdReadWriteSel <= 1'b0;

                    case(subStates)
                        subState1:
                        begin
                            lcdEnableOut <= 1'b0;
                            lcdBus <= 8'hZZ;

                            subStates <= subState2;
                            state <= writeAddr;
                        end

                        //increment address and when at the end return to 0x00
                        subState2:
                        begin
                            lcdEnableOut <= 1'b1;
                            lcdBus <= {1'b1, addrCounter};

                            if(counter == wait260ns)
                            begin
                                counter <= 32'b0;
                                subStates <= subState3;
                                state <= writeAddr;
                            end

                            else
                            begin
                                counter <= counter + 1'b1;

                                subStates <= subState2;
                                state <= writeAddr;
                            end
                        end

                        subState3:
                        begin
                            lcdEnableOut <= 1'b0;
                            lcdBus <= 8'hZZ;
                            if(counter == wait260ns)
                            begin
                                counter <= 32'b0;
                                subStates <= subState1;
                                state <= writeData;
                            end

                            else
                            begin
                                counter <= counter + 1'b1;

                                subStates <= subState3;
                                state <= writeAddr;
                            end
                        end
                    endcase
                end

                writeData:
                begin
                    errorLed <= 1'b0;
                    lcdRsSelect <= 1'b1;
                    lcdReadWriteSel <= 1'b0;

                    case(subStates)
                        subState1:
                        begin
                            lcdEnableOut <= 1'b0;
                            lcdBus <= 8'hZZ;

                            subStates <= subState2;
                            state <= writeData;
                        end

                        subState2:
                        begin
                            lcdEnableOut <= 1'b1;
                            lcdBus <= 8'b01010000;
                            if(counter == wait260ns)
                            begin
                                counter <= 32'b0;

                                subStates <= subState3;
                                state <= writeData;
                            end

                            else
                            begin
                                counter <= counter + 1'b1;

                                subStates <= subState2;
                                state <= writeData;
                            end
                        end

                        subState3:
                        begin
                            lcdEnableOut <= 1'b0;
                            lcdBus <= 8'hZZ;
                            if(counter == wait260ns)
                            begin
                                counter <= 32'b0;
                                subStates <= subState1;
                                state <= cursorLogicState;
                            end

                            else
                            begin
                                counter <= counter + 1'b1;

                                subStates <= subState3;
                                state <= writeData;
                            end
                        end
                    endcase
                end

                // waitHerePlox:
                // begin
                //     lcdBus <= 8'hZZ;
                //     if(counter == wait100ms)
                //     begin
                //         counter <= 32'b0;
                //         state <= cursorLogicState;
                //     end
                //
                //     else
                //     begin
                //         counter <= counter + 1'b1;
                //         state <= waitHerePlox;
                //     end
                // end

                cursorLogicState:
                begin
                    lcdBus <= 8'hZZ;
                    if(addrCounter == 7'h4F)
                    begin
                        addrCounter <= 7'h00;
                        state <= writeAddr;
                        //state <= cursorCarriageReturn;
                    end

                    else
                    begin
                        addrCounter <= addrCounter + 1'b1;
                        //state <= cursorShift;
                        state <= writeAddr;
                    end

                end

                cursorShift:
                begin
                    // errorLed <= 1'b1;
                    // lcdRsSelect <= 1'b0;
                    // lcdReadWriteSel <= 1'b0;
                    //
                    // case(subStates)
                    //     subState1:
                    //     begin
                    //         lcdEnableOut <= 1'b0;
                    //         lcdBus <= 8'hZZ;
                    //
                    //         subStates <= subState2;
                    //         state <= cursorShift;
                    //     end
                    //
                    //     subState2:
                    //     begin
                    //         lcdEnableOut <= 1'b1;
                    //         lcdBus <= CURSOR_SHIFT;
                    //         if(counter == wait260ns)
                    //         begin
                    //             counter <= 32'b0;
                    //
                    //             subStates <= subState3;
                    //             state <= cursorShift;
                    //         end
                    //
                    //         else
                    //         begin
                    //             counter <= counter + 1'b1;
                    //
                    //             subStates <= subState2;
                    //             state <= cursorShift;
                    //         end
                    //     end
                    //
                    //     subState3:
                    //     begin
                    //         lcdEnableOut <= 1'b0;
                    //         lcdBus <= 8'hZZ;
                    //         if(counter == wait50us)
                    //         begin
                    //             counter <= 32'b0;
                    //
                    //             subStates <= subState1;
                    //             state <= writeAddr;
                    //         end
                    //
                    //         else
                    //         begin
                    //             counter <= counter + 1'b1;
                    //
                    //             subStates <= subState3;
                    //             state <= cursorShift;
                    //         end
                    //     end
                    // endcase
                end

                cursorCarriageReturn:
                begin
                /*
                    errorLed <= 1'b0;
                    lcdRsSelect <= 1'b0;
                    lcdReadWriteSel <= 1'b0;

                    case(subStates)
                        subState1:
                        begin
                            lcdEnableOut <= 1'b0;
                            lcdBus <= 8'hZZ;

                            subStates <= subState2;
                            state <= cursorCarriageReturn;
                        end

                        subState2:
                        begin
                            lcdEnableOut <= 1'b1;
                            lcdBus <= CURSOR_AT_HOME;
                            if(counter == wait260ns)
                            begin
                                counter <= 32'b0;

                                subStates <= subState3;
                                state <= cursorCarriageReturn;
                            end

                            else
                            begin
                                counter <= counter + 1'b1;

                                subStates <= subState2;
                                state <= cursorCarriageReturn;
                            end
                        end

                        subState3:
                        begin
                            lcdEnableOut <= 1'b0;
                            lcdBus <= 8'hZZ;
                            if(counter == wait50us)
                            begin
                                counter <= 32'b0;

                                subStates <= subState1;
                                state <= writeAddr;
                            end

                            else
                            begin
                                counter <= counter + 1'b1;

                                subStates <= subState3;
                                state <= cursorCarriageReturn;
                            end
                        end
                    endcase
                */
                end

                default:
                begin
                  errorLed <= 1'b0;
                end
            endcase
        end
    end
endmodule
