/**
 * @file: decodeTestBench.v;
 * @brief: test bench for the instruction decode part of the pipeline;
 * @engineer: Matthew Hardenburgh;
 * @date: 4/19/18;
 */

`timescale 1ns / 1ps // clock units/resolution of clock

module testBench_lcdController;

    //inputs are regs
    reg clk;
    reg lcdOnIn;
    reg[4:0] writeAddr;
    reg[7:0] charCode;

    //outputs are wires
    wire[7:0] lcdBus; //Change to output reg
    wire lcdOnOut;
    wire lcdReadWriteSel; // LCD read/write select 0 = write, 1 = read
    wire lcdRsSelect; //  LCD Command/Data Select, 0 = Command, 1 = Data
    wire lcdEnableOut;
    wire errorLed;

    reg[4:0] count;

    lcdController dut(clk, lcdOnIn, writeAddr, charCode, lcdBus, lcdOnOut, lcdReadWriteSel, lcdRsSelect, lcdEnableOut, errorLed);

    //Can use initial begin to initialize a memory element
    initial
    begin
        clk <= 0;
        lcdOnIn <= 1'b0;
        charCode <= 8'b00000000;
        writeAddr <= 4'b00000;
        count <= 4'b00000;

        #20
        lcdOnIn <= 1'b1;
    end

    always #10 clk = ~clk;

    always@(posedge clk)
    begin
        lcdOnIn <= 1'b1;
        charCode <= 8'b11110000;
        writeAddr <= count;
        if(count == 5'h1F)
        begin
            count <= 4'b00000;
        end

        else
        begin
            count <= count + 1'b1;
        end
    end
endmodule
