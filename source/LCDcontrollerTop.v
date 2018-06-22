module lcdControllerTop
(
    input clk,
    input[15:0] switches,
    input lcdOn,
    inout[7:0] lcdBus,
    output lcdReadWriteSel, // LCD read/write select 0 = write, 1 = read
    output lcdRsSelect, //  LCD Command/Data Select, 0 = Command, 1 = Data
    output lcdEnableOut,
    output errorLed
);

wire[3:0] tenThou;
wire[3:0] thou;
wire[3:0] hund;
wire[3:0] tens;
wire[3:0] ones;

wire[7:0] tenThouPattern;
wire[7:0] thouPattern;
wire[7:0] hundPattern;
wire[7:0] tensPattern;
wire[7:0] onesPattern;

wire[7:0] inBus;
wire addrOrData;
wire busLock;

bcdConterter myBcdConverter(switches, tenThou, thou, hund, tens, ones);
patternConverter tenThousand(tenThou, tenThouPattern);
patternConverter thousand(thou, thouPattern);
patternConverter hundred(hund, hundPattern);
patternConverter ten(tens, tensPattern);
patternConverter one(ones, onesPattern);
lcdInterface myInterface(clk, lcdOn, busLock, tenThouPattern, thouPattern, hundPattern, tensPattern, onesPattern, addrOrData, inBus);
lcdController myController(clk, addrOrData, lcdOn, inBus, lcdBus, lcdReadWriteSel, lcdRsSelect, lcdEnableOut, errorLed, busLock);


endmodule

module lcdInterface
(
    input clk,
    input rst, //This is the LCD on signal from the lcd on switch.
    input busLock, //is the lcd bus ready? 0 bus is unlocked, 1 locked.
    input[7:0] tenThou,
    input[7:0] thou,
    input[7:0] hund,
    input[7:0] tens,
    input[7:0] ones,
    output reg addrOrData,
    output reg[7:0] inBus
);
    localparam  tenThousand = 3'd0;
    localparam  thousand = 3'd1;
    localparam  hundred = 3'd2;
    localparam  ten = 3'd3;
    localparam  one = 3'd4;

    localparam  locked = 1'b1;
    localparam  unlocked = 1'b0;

    localparam  addr = 1'b0;
    localparam  data = 1'b1;

    reg[4:0] state;
    reg addrData;

    always @ (posedge clk, negedge rst)
    begin
        if(rst == 1'b0)
        begin
            state <= tenThousand;
            addrData <= addr;
            addrOrData <= 1'bz;
            inBus <= 8'hzz;
        end

        else
        begin
            case(state)
                tenThousand:
                begin
                    if(busLock == unlocked)
                    begin
                        case(addrData)
                            addr:
                            begin
                                state <= tenThousand;
                                addrData <= data;
                                inBus <= 8'h00;
                                addrOrData <= addr;
                            end

                            data:
                            begin
                                state <= thousand;
                                inBus <= tenThou;
                                addrOrData <= data;
                            end
                        endcase
                    end

                    else
                    begin
                        state <= tenThousand;
                    end
                end

                thousand:
                begin
                    if(busLock == unlocked)
                    begin
                        case(addrData)
                            addr:
                            begin
                                state <= thousand;
                                addrData <= data;
                                inBus <= 8'h01;
                                addrOrData <= addr;
                            end

                            data:
                            begin
                                state <= hundred;
                                inBus <= thou;
                                addrOrData <= data;
                            end
                        endcase
                    end

                    else
                    begin
                        state <= thousand;
                    end
                end

                hundred:
                begin
                    if(busLock == unlocked)
                    begin
                        case(addrData)
                            addr:
                            begin
                                state <= hundred;
                                addrData <= data;
                                inBus <= 8'h02;
                                addrOrData <= addr;
                            end

                            data:
                            begin
                                state <= ten;
                                inBus <= hund;
                                addrOrData <= data;
                            end
                        endcase

                    end

                    else
                    begin
                        state <= hundred;
                    end
                end

                ten:
                begin
                    if(busLock == unlocked)
                    begin
                        case(addrData)
                            addr:
                            begin
                                state <= ten;
                                addrData <= data;
                                inBus <= 8'h03;
                                addrOrData <= addr;
                            end

                            data:
                            begin
                                state <= one;
                                inBus <= tens;
                                addrOrData <= data;
                            end
                        endcase
                    end

                    else
                    begin
                        state <= ten;
                    end
                end

                one:
                begin
                    if(busLock == unlocked)
                    begin
                        case(addrData)
                            addr:
                            begin
                                state <= one;
                                addrData <= data;
                                inBus <= 8'h02;
                                addrOrData <= addr;
                            end

                            data:
                            begin
                                state <= tenThousand;
                                inBus <= ones;
                                addrOrData <= data;
                            end
                        endcase

                    end

                    else
                    begin
                        state <= one;
                    end
                end
            endcase
        end
    end

endmodule
