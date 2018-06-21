module lcdControllerTop
(
    input clk,
    input[15:0] switches,
    input lcdOn,
    output

);

wire[3:0] tenThou;
wire[3:0] thou;
wire[3:0] hund;
wire[3:0] tens;
wire[3:0] ones;

bcdConterter myBcdConverter(switches, tenThou, thou, hund, tens, ones);
patternConverter tenThousand(tenThou);
patternConverter thousand(thou);
patternConverter hundred(hund);
patternConverter ten(tens);
patternConverter one(ones);

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
    output reg[7:0] lcdBus
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
            assign addrOrData = addr;
            assign lcdBus = 8'hzz;
        end

        else
        begin
            case(state)
            begin
                tenThousand:
                begin
                    if(busLock == unlocked)
                    begin
                        if(addrData == addr)
                        begin
                            state <= tenThousand;
                            assign lcdBus = 8'h00;
                            assign addrOrData = addr;
                        end

                        if(addrData == data)
                        begin
                            state <= thousand;
                            assign lcdBus = tenThou;
                            assign addrOrData = data;
                        end
                    end

                    else
                    begin
                        state <= tenThousand;
                    end
                end
            end
            endcase
        end
    end

endmodule
