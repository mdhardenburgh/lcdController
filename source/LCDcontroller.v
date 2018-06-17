/**
 * @file: LCDController.v
 * @brief: controller for an LCD to interface into any project
 * @Engineer: Matthew Hardenburgh
 * @date: 6/15/18
 */
module lcdController
(
    input clk,
    input LCDonIn,
    input wire[7:0] dataIn,
    inout reg[7:0] LCDbus,
    output reg LCDreadWriteSel, // LCD read/write select 0 = write, 1 = read
    output reg LCDrsSelect, //  LCD Command/Data Select, 0 = Command, 1 = Data
    output reg LCDenableOut
);
    //Opperation states
    localparam  initOperation = 1'b0;
    localparam  writeOperation = 1'b1;

    //write and init operation states
    localparam  powerOn = 4'd0;
    localparam  functionSet1 = 4'd1; //This is hard coded and not changed by user
    localparam  displayOnOff = 4'd2;
    localparam  displayClear = 4'd3;
    localparam  entryModeSet = 4'd4;
    localparam  readBusyFlag = 4'd5;
    //localparam  setDDRAMaddr = 4'd6;
    localparam  writeData = 4'd7;
    localparam  writeAddr = 4'd8;
    //localparam  clearDisplay = 4'd9;
    localparam  functionSet2 = 4'd10;
    localparam  functionSet3 = 4'd11;
    localparam  functionSet4 = 4'd12;


    //clock waiting times in for miliseconds for a 50MHz clock.
    localparam  wait20 = 20'd1000000;
    localparam  wait5 = 20'd250000;
    localparam  wait1 = 20'd50000;

    //counter declarations and state
    reg[19:0] counter;
    reg opState;
    reg[3:0] initState;
    reg[3:0] writeState;

    //continous assingment statements
    //assign (dataValid)?(LCDbus = dataIn):(LCDbus = 8'bzz);
    always@(posedge clk, posedge LCDonIn)
    begin
        //reset and clear LCD completely.
        if(LCDonIn == 1'b0)
        begin
            //reset counters and then go to the powerOnState
            opState <= initOperation;
            counter <= 20'b0;
        end

        else
        begin
            case(opState)
                initOperation:
                begin
                    initState = powerOn;
                    case(initState)
                        powerOn:
                        begin
                            if(counter == wait20)
                            begin
                                counter <= 20'b0;
                                initState <= functionSet1;
                            end

                            else
                            begin
                                counter <= counter + 1'b1;
                                initState <= powerOn;
                            end
                        end

                        functionSet1:
                        begin
                            assign LCDbus = 8'b00111000;
                            assign LCDrsSelect = 1'b0;
                            assign LCDreadWriteSel = 1'b0;

                            if(counter == wait5)
                            begin
                                counter <= 20'b0;
                                initState <= functionSet2;
                            end

                            else
                            begin
                                counter <= counter + 1'b1;
                                initState <= functionSet1;
                            end
                        end

                        functionSet2:
                        begin
                            assign LCDbus = 8'b00111000;
                            assign LCDrsSelect = 1'b0;
                            assign LCDreadWriteSel = 1'b0;

                            if(counter == wait1)
                            begin
                                counter <= 20'b0;
                                initState <= functionSet3;
                            end

                            else
                            begin
                                counter <= counter + 1'b1;
                                initState <= functionSet2;
                            end
                        end

                        functionSet3:
                        begin
                            assign LCDbus = 8'b00111000;
                            assign LCDrsSelect = 1'b0;
                            assign LCDreadWriteSel = 1'b0;

                            if(counter == wait1)
                            begin
                                counter <= 20'b0;
                                initState <= functionSet4;
                            end

                            else
                            begin
                                counter <= counter + 1'b1;
                                initState <= functionSet3;
                            end
                        end

                        functionSet4:
                        begin
                            assign LCDbus <= 8'hZZ;
                            assign LCDrsSelect <= 1'b0;
                            assign LCDreadWriteSel <= 1'b1;

                            if(LCDbus[7] == 1'b1)
                            begin
                                initState <= functionSet4;
                            end

                            else
                            begin
                                assign LCDbus <= 8'b00111000;
                                assign LCDrsSelect <= 1'b0;
                                assign LCDreadWriteSel <= 1'b0;
                                assign initState <= displayOnOff;
                            end
                        end

                        displayOnOff:
                        begin
                            //display off for init
                            assign LCDbus = 8'hZZ;
                            assign LCDrsSelect = 1'b0;
                            assign LCDreadWriteSel = 1'b1;

                            if(LCDbus[7] == 1'b1)
                            begin
                                initState <= displayOnOff;
                            end

                            else
                            begin
                                assign LCDbus = 8'b00001000;
                                assign LCDrsSelect = 1'b0;
                                assign LCDreadWriteSel = 1'b0;
                                initState <= displayClear;
                            end
                        end

                        displayClear:
                        begin
                            assign LCDbus = 8'hZZ;
                            assign LCDrsSelect = 1'b0;
                            assign LCDreadWriteSel = 1'b1;

                            if(LCDbus[7] == 1'b1)
                            begin
                                initState <= displayClear;
                            end

                            else
                            begin
                                assign LCDbus = 8'b00000001;
                                assign LCDrsSelect = 1'b0;
                                assign LCDreadWriteSel = 1'b0;
                                initState <= entryModeSet;
                            end
                        end

                        entryModeSet:
                        begin
                            assign LCDbus = 8'hZZ;
                            assign LCDrsSelect = 1'b0;
                            assign LCDreadWriteSel = 1'b1;

                            if(LCDbus[7] == 1'b1)
                            begin
                                initState <= displayOnOff;
                            end

                            else
                            begin
                                assign LCDbus = 8'b00000001;
                                assign LCDrsSelect = 1'b0;
                                assign LCDreadWriteSel = 1'b0;
                                opState <= writeOperation;
                            end
                        end
                    endcase
                end

                writeOperation:
                    writeState <= displayOnOff;
                    case(writeState)
                    begin
                        displayOnOff:
                        begin
                            //display on for init
                            assign LCDbus = 8'hZZ;
                            assign LCDrsSelect = 1'b0;
                            assign LCDreadWriteSel = 1'b1;

                            if(LCDbus[7] == 1'b1)
                            begin
                                writeState <= displayOnOff;
                            end

                            else
                            begin
                                assign LCDbus = 8'b00001100;
                                assign LCDrsSelect = 1'b0;
                                assign LCDreadWriteSel = 1'b0;
                                writeState <= writeAddr;
                            end
                        end

                        writeAddr:
                        begin
                            if(LCDbus[7] == 1'b1)
                            begin
                                writeState <= writeAddr;
                            end

                            else
                            begin
                                assign LCDenableOut = 1'b1;
                                assign LCDbus = 8'b00001100;
                                assign LCDrsSelect = 1'b0;
                                assign LCDreadWriteSel = 1'b0;
                                writeState <= displayClear;
                            end
                        end
                    end
            endcase
        end
    end
endmodule
