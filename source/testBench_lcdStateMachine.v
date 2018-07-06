`timescale 1ns / 1ps // clock units/resolution of clock

module testBench_lcdStateMachine;
    reg clk;
    reg lcdOnIn;
    reg[7:0] dataIn;

    wire[7:0] lcdBus;
    wire[4:0] addrToRead;
    wire lcdOnOut;
    wire lcdReadWriteSel;
    wire lcdRsSelect;
    wire lcdEnableOut;
    wire errorLed;

    lcdStateMachine dut(clk, lcdOnIn, dataIn, lcdBus, addrToRead, lcdOnOut, lcdReadWriteSel, lcdRsSelect, lcdEnableOut, errorLed);
    always #10 clk = ~clk;

    initial
    begin
        clk <= 0;
        lcdOnIn <= 1'b0;
        dataIn <= 8'b10000000;
        #20
        lcdOnIn <= 1'b1;
    end
endmodule
