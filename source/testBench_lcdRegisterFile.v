`timescale 1ns / 1ps // clock units/resolution of clock

module testBench_lcdRegisterFile;
    //inputs
    reg clk;
    reg[4:0] writeAddr;
    reg[7:0] dataIn;
    reg[4:0] addrToRead;
    //outputs
    wire[7:0] dataOut;
    //states
    reg[4:0] counter;

    lcdRegisterFile dut(clk, writeAddr, dataIn, addrToRead, dataOut);

    always #10 clk = ~clk;

    initial
    begin
        clk <= 0;
        writeAddr <= 4'b00000;
        dataIn <= 8'b10000000;
        addrToRead <= 4'b00000;
        counter <= 4'h00;
    end

    always@(posedge clk)
    begin
        if(counter == 4'h1F)
        begin
            dataIn <= 8'b11110000;
            counter <= 4'h00;
            writeAddr <= counter;
        end

        else
        begin
            dataIn <= 8'b11110000;
            counter <= counter + 1'b1;
            writeAddr <= counter;
        end
    end
endmodule
