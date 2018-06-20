/**
 * @file: LCDController.v
 * @brief: controller for an LCD to interface into any project
 * @Engineer: Matthew Hardenburgh
 * @date: 6/15/18
 */
module lcdController
(
    input clk,
    input addrOrData, //0 for addr and 1 for data.
    input lcdOnIn, //connected to switch on board to turn the LCD on or off, acts as reset.
    input wire[7:0] dataInBus,
    inout reg[7:0] lcdBus,
    output reg lcdReadWriteSel, // LCD read/write select 0 = write, 1 = read
    output reg lcdRsSelect, //  LCD Command/Data Select, 0 = Command, 1 = Data
    output reg lcdEnableOut,
    output reg errorLed,
    output reg busLock //is the lcd bus ready? 0 bus is unlocked, 1 locked.
);
    //write and init operation states
    localparam  powerOn = 4'd0;
    localparam  functionSet1 = 4'd1; //This is hard coded and not changed by user
    localparam  displaySet = 4'd2;
    localparam  displayClear = 4'd3;
    localparam  entryModeSet = 4'd4;
    localparam  readBusyFlag = 4'd5;
    localparam  writeData = 4'd7;
    localparam  writeAddr = 4'd8;
    localparam  functionSet = 4'd9;
    localparam  initCompleted = 4'd10;


    //clock waiting times in for  a 50MHz clock.
    localparam  wait20ms = 20'd1000000;
    localparam  wait5ms = 20'd250000;
    localparam  wait1ms = 20'd50000;
    localparam  wait50us = 20'd2500;

    //counter declarations and state
    reg[19:0] counter;
    reg[3:0] state;

    reg[1:0] functionSetCounter;
    reg displayOnOff;

    //continous assingment statements
    //assign (dataValid)?(lcdBus = dataInBus):(lcdBus = 8'bzz);
    assign errorLed = 1'b0;
    always@(posedge clk, posedge lcdOnIn)
    begin
        //reset and clear LCD completely.
        if(lcdOnIn == 1'b0)
        begin
            //reset counters and then go to the powerOnState
            state <= powerOn;
            counter <= 20'b0;
            functionSetCounter <= 2'b00;
            displayOnOff <= 1'b0;
            lcdEnableOut <= 1'b0;
            writeReady <= 1'b0;
        end

        else
        begin
            case(state)
                powerOn:
                begin
                    if(counter == wait20)
                    begin
                        counter <= 20'b0;
                        state <= functionSet1;
                    end

                    else
                    begin
                        counter <= counter + 1'b1;
                        state <= powerOn;
                    end
                end

                functionSet:
                begin
                    functionSetCounter = 2'b00;
                    assign lcdBus = 8'b00111000;
                    assign lcdRsSelect = 1'b0;
                    assign lcdReadWriteSel = 1'b0;

                    if(functionSetCounter == 2'b00)
                    begin
                        if(counter == wait5ms)
                        begin
                            counter <= 20'b0;
                            state <= functionSet;
                            functionSetCounter <= 2'b01;
                        end

                        else
                        begin
                            counter <= counter + 1'b1;
                            state <= functionSet;
                        end
                    end

                    else if(functionSetCounter == 2'b01)
                    begin
                        if(counter == wait5ms)
                        begin
                            counter <= 20'b0;
                            state <= functionSet;
                            functionSet <= 2'b10;
                        end
                        else
                        begin
                            counter <= counter + 1'b1;
                            state <= functionSet;
                        end
                    end

                    else if(functionSetCounter == 2'b10)
                    begin
                        if(counter == wait1ms)
                        begin
                            counter <= 20'b0;
                            state <= functionSet;
                            functionSetCounter <= 2'b11;
                        end

                        else
                        begin
                            counter <= counter + 1'b1;
                            state <= functionSet;
                        end
                    end

                    else if(functionSetCounter == 2'b11)
                    begin
                        assign lcdBus <= 8'hZZ;
                        assign lcdRsSelect <= 1'b0;
                        assign lcdReadWriteSel <= 1'b1;

                        if(lcdBus[7] == 1'b1)
                        begin
                            state <= functionSet;
                        end

                        else
                        begin
                            assign lcdBus <= 8'b00111000;
                            assign lcdRsSelect <= 1'b0;
                            assign lcdReadWriteSel <= 1'b0;
                            state <= displaySet;
                        end
                    end
                end

                displaySet:
                begin
                    //display off for init
                    assign lcdBus = 8'hZZ;
                    assign lcdRsSelect = 1'b0;
                    assign lcdReadWriteSel = 1'b1;

                    if(displayOnOff == 1'b0)
                    begin
                        if(lcdBus[7] == 1'b1)
                        begin
                            state <= displaySet;
                        end

                        else
                        begin
                            assign lcdBus = 8'b00001000;
                            assign lcdRsSelect = 1'b0;
                            assign lcdReadWriteSel = 1'b0;
                            state <= displayClear;
                        end

                    end

                    //Turn on display.
                    else
                    begin
                        if(lcdBus[7] == 1'b1)
                        begin
                            opState <= initOperation;
                            initState <= displaySet;
                        end

                        else
                        begin
                            assign lcdBus = 8'b00000000;
                            assign lcdRsSelect = 1'b0;
                            assign lcdReadWriteSel = 1'b0;
                            //
                            state <= writeAddr;
                        end
                    end

                end

                displayClear:
                begin
                    assign lcdBus = 8'hZZ;
                    assign lcdRsSelect = 1'b0;
                    assign lcdReadWriteSel = 1'b1;

                    if(lcdBus[7] == 1'b1)
                    begin
                        state <= displayClear;
                    end

                    else
                    begin
                        assign lcdBus = 8'b00000001;
                        assign lcdRsSelect = 1'b0;
                        assign lcdReadWriteSel = 1'b0;
                        state <= entryModeSet;
                    end
                end

                entryModeSet:
                begin
                    assign lcdBus = 8'hZZ;
                    assign lcdRsSelect = 1'b0;
                    assign lcdReadWriteSel = 1'b1;

                    if(lcdBus[7] == 1'b1)
                    begin
                        state <= entryModeSet;
                    end

                    else
                    begin
                        assign lcdBus = 8'b00000001;
                        assign lcdRsSelect = 1'b0;
                        assign lcdReadWriteSel = 1'b0;
                        displayOnOff = 1'b1;
                        state <= displaySet;
                    end
                end

                write:
                begin
                    state = write;//loop here for ever
                    if(addrOrData == 1'b0) //1'b0 is addr, 1'b1 is data
                    begin
                        assign busLock = 1'b1;//DO NOT CHANGE dataInBus.
                        assign lcdEnableOut = 1'b1; //lcd chip enable
                        assign lcdRsSelect = 1'b0;//write to DDRAM addr
                        assign lcdReadWriteSel = 1'b0;//write to DDRAM addr
                        assign lcdBus = {1'b1, dataInBus[6:0]}//DDRAM addr

                        if(counter == wait50us)
                        begin
                            assign busLock = 1'b0;//Change dataInBus
                            counter <= 20'b0;
                            assign lcdEnableOut = 1'b0; //lcd chip enable
                        end

                        else
                        begin
                            counter <= counter + 1'b1;
                        end
                    end

                    else
                    begin
                        assign busLock = 1'b1;//DO NOT CHANGE dataInBus.
                        assign lcdEnableOut = 1'b1; //lcd chip enable
                        assign lcdRsSelect = 1'b1;//write to DDRAM addr
                        assign lcdReadWriteSel = 1'b1;//write to DDRAM addr
                        assign lcdBus = dataInBus;

                        if(coutner == wait50us)
                        begin
                            assign busLock = 1'b0;//Change dataInBus
                            counter <= 20'b0;
                            assign lcdEnableOut = 1'b0; //lcd chip enable
                        end

                        else
                        begin
                            counter <= counter + 1'b1;
                        end
                    end
                end

                default:
                begin
                    assign errorLed = 1'b1;
                end
            endcase
        end
    end
endmodule
