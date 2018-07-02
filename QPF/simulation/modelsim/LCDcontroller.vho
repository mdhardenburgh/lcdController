-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "06/23/2018 23:54:14"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lcdControllerTop IS
    PORT (
	clk : IN std_logic;
	switches : IN std_logic_vector(15 DOWNTO 0);
	lcdOn : IN std_logic;
	lcdBus : INOUT std_logic_vector(7 DOWNTO 0);
	lcdReadWriteSel : OUT std_logic;
	lcdRsSelect : OUT std_logic;
	lcdEnableOut : OUT std_logic;
	errorLed : OUT std_logic
	);
END lcdControllerTop;

-- Design Ports Information
-- lcdBus[0]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdBus[1]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdBus[2]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdBus[3]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdBus[4]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdBus[5]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdBus[6]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdBus[7]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdReadWriteSel	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdRsSelect	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdEnableOut	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- errorLed	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcdOn	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[12]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[15]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[13]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[14]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[11]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[10]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[9]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[8]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[7]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[6]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[5]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[4]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[3]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[2]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[0]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[1]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lcdControllerTop IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_switches : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_lcdOn : std_logic;
SIGNAL ww_lcdReadWriteSel : std_logic;
SIGNAL ww_lcdRsSelect : std_logic;
SIGNAL ww_lcdEnableOut : std_logic;
SIGNAL ww_errorLed : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcdOn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \myController|counter[13]~53_combout\ : std_logic;
SIGNAL \myController|counter[18]~63_combout\ : std_logic;
SIGNAL \myController|Selector28~3_combout\ : std_logic;
SIGNAL \myController|Equal3~6_combout\ : std_logic;
SIGNAL \myController|Equal3~7_combout\ : std_logic;
SIGNAL \myController|Equal3~8_combout\ : std_logic;
SIGNAL \myController|counter[5]~25_combout\ : std_logic;
SIGNAL \myBcdConverter|n~31_combout\ : std_logic;
SIGNAL \myBcdConverter|n~35_combout\ : std_logic;
SIGNAL \myBcdConverter|n~36_combout\ : std_logic;
SIGNAL \myBcdConverter|n~41_combout\ : std_logic;
SIGNAL \myBcdConverter|n~45_combout\ : std_logic;
SIGNAL \myBcdConverter|n~52_combout\ : std_logic;
SIGNAL \myBcdConverter|n~54_combout\ : std_logic;
SIGNAL \myBcdConverter|n~56_combout\ : std_logic;
SIGNAL \myBcdConverter|n~59_combout\ : std_logic;
SIGNAL \myBcdConverter|n~60_combout\ : std_logic;
SIGNAL \myBcdConverter|n~63_combout\ : std_logic;
SIGNAL \myBcdConverter|n~66_combout\ : std_logic;
SIGNAL \myBcdConverter|n~69_combout\ : std_logic;
SIGNAL \myBcdConverter|LessThan21~0_combout\ : std_logic;
SIGNAL \myBcdConverter|n~77_combout\ : std_logic;
SIGNAL \myBcdConverter|n~81_combout\ : std_logic;
SIGNAL \myBcdConverter|n~87_combout\ : std_logic;
SIGNAL \myBcdConverter|n~89_combout\ : std_logic;
SIGNAL \myBcdConverter|n~95_combout\ : std_logic;
SIGNAL \myBcdConverter|n~99_combout\ : std_logic;
SIGNAL \myBcdConverter|n~102_combout\ : std_logic;
SIGNAL \myBcdConverter|n~106_combout\ : std_logic;
SIGNAL \myBcdConverter|n~110_combout\ : std_logic;
SIGNAL \myBcdConverter|n~115_combout\ : std_logic;
SIGNAL \myBcdConverter|n~117_combout\ : std_logic;
SIGNAL \myBcdConverter|n~122_combout\ : std_logic;
SIGNAL \myBcdConverter|n~125_combout\ : std_logic;
SIGNAL \myBcdConverter|thou[3]~3_combout\ : std_logic;
SIGNAL \thousand|WideOr5~0_combout\ : std_logic;
SIGNAL \myBcdConverter|n~128_combout\ : std_logic;
SIGNAL \myBcdConverter|n~132_combout\ : std_logic;
SIGNAL \myBcdConverter|hund[3]~3_combout\ : std_logic;
SIGNAL \hundred|WideOr5~0_combout\ : std_logic;
SIGNAL \myBcdConverter|n~136_combout\ : std_logic;
SIGNAL \myBcdConverter|ones[2]~1_combout\ : std_logic;
SIGNAL \one|WideOr5~0_combout\ : std_logic;
SIGNAL \myInterface|Selector0~2_combout\ : std_logic;
SIGNAL \myBcdConverter|tens[1]~1_combout\ : std_logic;
SIGNAL \hundred|WideOr4~0_combout\ : std_logic;
SIGNAL \myInterface|Selector12~1_combout\ : std_logic;
SIGNAL \ten|WideOr4~0_combout\ : std_logic;
SIGNAL \myInterface|Selector11~0_combout\ : std_logic;
SIGNAL \ten|WideOr3~0_combout\ : std_logic;
SIGNAL \one|WideOr2~0_combout\ : std_logic;
SIGNAL \ten|WideOr2~0_combout\ : std_logic;
SIGNAL \myInterface|Selector10~0_combout\ : std_logic;
SIGNAL \thousand|WideOr2~0_combout\ : std_logic;
SIGNAL \one|WideOr0~0_combout\ : std_logic;
SIGNAL \ten|WideOr1~0_combout\ : std_logic;
SIGNAL \one|WideOr1~0_combout\ : std_logic;
SIGNAL \myInterface|Selector8~1_combout\ : std_logic;
SIGNAL \myInterface|Selector7~1_combout\ : std_logic;
SIGNAL \myBcdConverter|n~140_combout\ : std_logic;
SIGNAL \myBcdConverter|n~9_combout\ : std_logic;
SIGNAL \myBcdConverter|n~18_combout\ : std_logic;
SIGNAL \myBcdConverter|n~143_combout\ : std_logic;
SIGNAL \lcdBus[7]~7\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \myController|displayOnOff~0_combout\ : std_logic;
SIGNAL \lcdOn~combout\ : std_logic;
SIGNAL \lcdOn~clkctrl_outclk\ : std_logic;
SIGNAL \myController|displayOnOff~regout\ : std_logic;
SIGNAL \myController|Selector23~0_combout\ : std_logic;
SIGNAL \myController|state.displayClear~regout\ : std_logic;
SIGNAL \myController|state.entryModeSet~0_combout\ : std_logic;
SIGNAL \myController|state.entryModeSet~regout\ : std_logic;
SIGNAL \myController|Selector29~0_combout\ : std_logic;
SIGNAL \myInterface|addrData~feeder_combout\ : std_logic;
SIGNAL \myController|counter[0]~23_combout\ : std_logic;
SIGNAL \myController|counter[8]~43_combout\ : std_logic;
SIGNAL \myController|Selector22~0_combout\ : std_logic;
SIGNAL \myController|state.displaySet~regout\ : std_logic;
SIGNAL \myController|state.write~0_combout\ : std_logic;
SIGNAL \myController|state.write~regout\ : std_logic;
SIGNAL \myController|WideOr0~0_combout\ : std_logic;
SIGNAL \myController|Equal0~1_combout\ : std_logic;
SIGNAL \myController|Equal3~4_combout\ : std_logic;
SIGNAL \myController|Equal0~4_combout\ : std_logic;
SIGNAL \myController|Equal0~5_combout\ : std_logic;
SIGNAL \myController|counter[4]~35_combout\ : std_logic;
SIGNAL \myController|counter[15]~57_combout\ : std_logic;
SIGNAL \myController|counter[6]~39_combout\ : std_logic;
SIGNAL \myController|Equal0~0_combout\ : std_logic;
SIGNAL \myController|state.powerOn~2_combout\ : std_logic;
SIGNAL \myController|state.powerOn~regout\ : std_logic;
SIGNAL \myController|counter[5]~26_combout\ : std_logic;
SIGNAL \myController|counter[5]~27_combout\ : std_logic;
SIGNAL \myController|Equal0~2_combout\ : std_logic;
SIGNAL \myController|Selector21~1_combout\ : std_logic;
SIGNAL \myController|counter[5]~28_combout\ : std_logic;
SIGNAL \myController|counter[0]~24\ : std_logic;
SIGNAL \myController|counter[1]~29_combout\ : std_logic;
SIGNAL \myController|counter[1]~30\ : std_logic;
SIGNAL \myController|counter[2]~31_combout\ : std_logic;
SIGNAL \myController|counter[2]~32\ : std_logic;
SIGNAL \myController|counter[3]~33_combout\ : std_logic;
SIGNAL \myController|counter[3]~34\ : std_logic;
SIGNAL \myController|counter[4]~36\ : std_logic;
SIGNAL \myController|counter[5]~37_combout\ : std_logic;
SIGNAL \myController|counter[5]~38\ : std_logic;
SIGNAL \myController|counter[6]~40\ : std_logic;
SIGNAL \myController|counter[7]~41_combout\ : std_logic;
SIGNAL \myController|counter[7]~42\ : std_logic;
SIGNAL \myController|counter[8]~44\ : std_logic;
SIGNAL \myController|counter[9]~45_combout\ : std_logic;
SIGNAL \myController|counter[9]~46\ : std_logic;
SIGNAL \myController|counter[10]~47_combout\ : std_logic;
SIGNAL \myController|counter[10]~48\ : std_logic;
SIGNAL \myController|counter[11]~49_combout\ : std_logic;
SIGNAL \myController|counter[11]~50\ : std_logic;
SIGNAL \myController|counter[12]~51_combout\ : std_logic;
SIGNAL \myController|counter[12]~52\ : std_logic;
SIGNAL \myController|counter[13]~54\ : std_logic;
SIGNAL \myController|counter[14]~55_combout\ : std_logic;
SIGNAL \myController|counter[14]~56\ : std_logic;
SIGNAL \myController|counter[15]~58\ : std_logic;
SIGNAL \myController|counter[16]~59_combout\ : std_logic;
SIGNAL \myController|counter[16]~60\ : std_logic;
SIGNAL \myController|counter[17]~61_combout\ : std_logic;
SIGNAL \myController|counter[17]~62\ : std_logic;
SIGNAL \myController|counter[18]~64\ : std_logic;
SIGNAL \myController|counter[19]~65_combout\ : std_logic;
SIGNAL \myController|Equal3~5_combout\ : std_logic;
SIGNAL \myController|Equal3~9_combout\ : std_logic;
SIGNAL \myController|Equal3~10_combout\ : std_logic;
SIGNAL \myController|busLock~0_combout\ : std_logic;
SIGNAL \myController|busLock~regout\ : std_logic;
SIGNAL \myInterface|addrData~regout\ : std_logic;
SIGNAL \myInterface|Selector1~0_combout\ : std_logic;
SIGNAL \myInterface|state.hundred~regout\ : std_logic;
SIGNAL \myInterface|state.ten~regout\ : std_logic;
SIGNAL \myInterface|state.one~feeder_combout\ : std_logic;
SIGNAL \myInterface|state.one~regout\ : std_logic;
SIGNAL \myInterface|state.tenThousand~0_combout\ : std_logic;
SIGNAL \myInterface|state.tenThousand~regout\ : std_logic;
SIGNAL \myInterface|state.thousand~0_combout\ : std_logic;
SIGNAL \myInterface|state.thousand~regout\ : std_logic;
SIGNAL \myBcdConverter|n~32_combout\ : std_logic;
SIGNAL \myBcdConverter|n~30_combout\ : std_logic;
SIGNAL \myBcdConverter|n~33_combout\ : std_logic;
SIGNAL \myBcdConverter|n~34_combout\ : std_logic;
SIGNAL \myBcdConverter|n~37_combout\ : std_logic;
SIGNAL \myBcdConverter|n~38_combout\ : std_logic;
SIGNAL \myBcdConverter|n~40_combout\ : std_logic;
SIGNAL \myBcdConverter|n~39_combout\ : std_logic;
SIGNAL \myBcdConverter|n~64_combout\ : std_logic;
SIGNAL \myBcdConverter|n~62_combout\ : std_logic;
SIGNAL \myBcdConverter|n~74_combout\ : std_logic;
SIGNAL \myBcdConverter|n~75_combout\ : std_logic;
SIGNAL \myBcdConverter|n~73_combout\ : std_logic;
SIGNAL \myBcdConverter|n~88_combout\ : std_logic;
SIGNAL \myBcdConverter|n~86_combout\ : std_logic;
SIGNAL \myBcdConverter|n~104_combout\ : std_logic;
SIGNAL \myBcdConverter|n~103_combout\ : std_logic;
SIGNAL \myBcdConverter|n~118_combout\ : std_logic;
SIGNAL \myBcdConverter|n~119_combout\ : std_logic;
SIGNAL \myBcdConverter|n~129_combout\ : std_logic;
SIGNAL \myBcdConverter|n~130_combout\ : std_logic;
SIGNAL \myBcdConverter|n~135_combout\ : std_logic;
SIGNAL \myBcdConverter|n~137_combout\ : std_logic;
SIGNAL \myBcdConverter|tens[0]~0_combout\ : std_logic;
SIGNAL \myBcdConverter|n~44_combout\ : std_logic;
SIGNAL \myBcdConverter|LessThan0~0_combout\ : std_logic;
SIGNAL \myBcdConverter|n~43_combout\ : std_logic;
SIGNAL \myBcdConverter|n~48_combout\ : std_logic;
SIGNAL \myBcdConverter|n~46_combout\ : std_logic;
SIGNAL \myBcdConverter|n~138_combout\ : std_logic;
SIGNAL \myBcdConverter|n~144_combout\ : std_logic;
SIGNAL \myBcdConverter|n~47_combout\ : std_logic;
SIGNAL \myBcdConverter|n~49_combout\ : std_logic;
SIGNAL \myBcdConverter|n~50_combout\ : std_logic;
SIGNAL \myBcdConverter|n~51_combout\ : std_logic;
SIGNAL \myBcdConverter|n~42_combout\ : std_logic;
SIGNAL \myBcdConverter|n~68_combout\ : std_logic;
SIGNAL \myBcdConverter|n~65_combout\ : std_logic;
SIGNAL \myBcdConverter|n~67_combout\ : std_logic;
SIGNAL \myBcdConverter|n~79_combout\ : std_logic;
SIGNAL \myBcdConverter|n~76_combout\ : std_logic;
SIGNAL \myBcdConverter|n~78_combout\ : std_logic;
SIGNAL \myBcdConverter|n~92_combout\ : std_logic;
SIGNAL \myBcdConverter|n~91_combout\ : std_logic;
SIGNAL \myBcdConverter|n~90_combout\ : std_logic;
SIGNAL \myBcdConverter|n~107_combout\ : std_logic;
SIGNAL \myBcdConverter|n~105_combout\ : std_logic;
SIGNAL \myBcdConverter|n~108_combout\ : std_logic;
SIGNAL \myBcdConverter|n~123_combout\ : std_logic;
SIGNAL \myBcdConverter|n~120_combout\ : std_logic;
SIGNAL \myBcdConverter|n~121_combout\ : std_logic;
SIGNAL \myBcdConverter|n~133_combout\ : std_logic;
SIGNAL \myBcdConverter|n~134_combout\ : std_logic;
SIGNAL \myBcdConverter|n~131_combout\ : std_logic;
SIGNAL \myBcdConverter|tens[3]~3_combout\ : std_logic;
SIGNAL \myBcdConverter|tens[2]~2_combout\ : std_logic;
SIGNAL \ten|WideOr5~0_combout\ : std_logic;
SIGNAL \myInterface|Selector0~3_combout\ : std_logic;
SIGNAL \myInterface|Selector0~4_combout\ : std_logic;
SIGNAL \myBcdConverter|n~139_combout\ : std_logic;
SIGNAL \myBcdConverter|tenThou[3]~0_combout\ : std_logic;
SIGNAL \myBcdConverter|n~55_combout\ : std_logic;
SIGNAL \myBcdConverter|n~141_combout\ : std_logic;
SIGNAL \myBcdConverter|n~57_combout\ : std_logic;
SIGNAL \myBcdConverter|n~58_combout\ : std_logic;
SIGNAL \myBcdConverter|n~53_combout\ : std_logic;
SIGNAL \myBcdConverter|n~71_combout\ : std_logic;
SIGNAL \myBcdConverter|n~70_combout\ : std_logic;
SIGNAL \myBcdConverter|n~61_combout\ : std_logic;
SIGNAL \myBcdConverter|n~72_combout\ : std_logic;
SIGNAL \myBcdConverter|n~142_combout\ : std_logic;
SIGNAL \myBcdConverter|n~83_combout\ : std_logic;
SIGNAL \myBcdConverter|n~80_combout\ : std_logic;
SIGNAL \myBcdConverter|n~82_combout\ : std_logic;
SIGNAL \myBcdConverter|n~84_combout\ : std_logic;
SIGNAL \myBcdConverter|n~98_combout\ : std_logic;
SIGNAL \myBcdConverter|n~96_combout\ : std_logic;
SIGNAL \myBcdConverter|n~94_combout\ : std_logic;
SIGNAL \myBcdConverter|n~93_combout\ : std_logic;
SIGNAL \myBcdConverter|n~97_combout\ : std_logic;
SIGNAL \myBcdConverter|n~85_combout\ : std_logic;
SIGNAL \myBcdConverter|n~100_combout\ : std_logic;
SIGNAL \myBcdConverter|n~101_combout\ : std_logic;
SIGNAL \myBcdConverter|tenThou[2]~2_combout\ : std_logic;
SIGNAL \myBcdConverter|tenThou[1]~1_combout\ : std_logic;
SIGNAL \myBcdConverter|n~112_combout\ : std_logic;
SIGNAL \myBcdConverter|n~109_combout\ : std_logic;
SIGNAL \myBcdConverter|n~111_combout\ : std_logic;
SIGNAL \myBcdConverter|n~113_combout\ : std_logic;
SIGNAL \myBcdConverter|n~114_combout\ : std_logic;
SIGNAL \myBcdConverter|n~116_combout\ : std_logic;
SIGNAL \myBcdConverter|tenThou[0]~3_combout\ : std_logic;
SIGNAL \myInterface|Selector0~1_combout\ : std_logic;
SIGNAL \myInterface|Selector0~5_combout\ : std_logic;
SIGNAL \myInterface|inBus[0]~reg0_regout\ : std_logic;
SIGNAL \myController|Equal0~3_combout\ : std_logic;
SIGNAL \myController|Selector21~0_combout\ : std_logic;
SIGNAL \myController|state.functionSet1~regout\ : std_logic;
SIGNAL \myController|lcdBus[7]~8_combout\ : std_logic;
SIGNAL \myController|lcdBus[0]~reg0_regout\ : std_logic;
SIGNAL \myController|Selector30~0_combout\ : std_logic;
SIGNAL \myController|lcdBus[0]~en_regout\ : std_logic;
SIGNAL \myInterface|Selector12~4_combout\ : std_logic;
SIGNAL \myBcdConverter|n~127_combout\ : std_logic;
SIGNAL \myBcdConverter|n~126_combout\ : std_logic;
SIGNAL \myBcdConverter|n~124_combout\ : std_logic;
SIGNAL \myBcdConverter|thou[0]~0_combout\ : std_logic;
SIGNAL \myBcdConverter|thou[2]~2_combout\ : std_logic;
SIGNAL \myBcdConverter|thou[1]~1_combout\ : std_logic;
SIGNAL \thousand|WideOr4~0_combout\ : std_logic;
SIGNAL \myBcdConverter|ones[3]~2_combout\ : std_logic;
SIGNAL \myBcdConverter|ones[1]~0_combout\ : std_logic;
SIGNAL \one|WideOr4~0_combout\ : std_logic;
SIGNAL \myInterface|Selector12~2_combout\ : std_logic;
SIGNAL \myInterface|Selector12~3_combout\ : std_logic;
SIGNAL \myInterface|Selector12~5_combout\ : std_logic;
SIGNAL \myInterface|Selector12~0_combout\ : std_logic;
SIGNAL \myInterface|Selector12~6_combout\ : std_logic;
SIGNAL \myInterface|inBus[1]~reg0_regout\ : std_logic;
SIGNAL \myController|Selector31~0_combout\ : std_logic;
SIGNAL \myController|lcdBus[1]~reg0_regout\ : std_logic;
SIGNAL \myController|lcdBus[1]~enfeeder_combout\ : std_logic;
SIGNAL \myController|lcdBus[1]~en_regout\ : std_logic;
SIGNAL \one|WideOr3~0_combout\ : std_logic;
SIGNAL \myInterface|Selector11~2_combout\ : std_logic;
SIGNAL \myInterface|Selector11~1_combout\ : std_logic;
SIGNAL \myInterface|Selector11~3_combout\ : std_logic;
SIGNAL \thousand|WideOr3~0_combout\ : std_logic;
SIGNAL \myBcdConverter|hund[1]~1_combout\ : std_logic;
SIGNAL \myBcdConverter|hund[2]~2_combout\ : std_logic;
SIGNAL \myBcdConverter|hund[0]~0_combout\ : std_logic;
SIGNAL \hundred|WideOr3~0_combout\ : std_logic;
SIGNAL \myInterface|Selector11~4_combout\ : std_logic;
SIGNAL \myInterface|Selector11~5_combout\ : std_logic;
SIGNAL \myInterface|Selector11~6_combout\ : std_logic;
SIGNAL \myInterface|inBus[2]~reg0_regout\ : std_logic;
SIGNAL \myController|Selector32~0_combout\ : std_logic;
SIGNAL \myController|lcdBus[2]~reg0_regout\ : std_logic;
SIGNAL \myController|lcdBus[2]~enfeeder_combout\ : std_logic;
SIGNAL \myController|lcdBus[2]~en_regout\ : std_logic;
SIGNAL \myBcdConverter|tenThou[3]~4_combout\ : std_logic;
SIGNAL \tenThousand|WideOr2~0_combout\ : std_logic;
SIGNAL \myInterface|Selector10~1_combout\ : std_logic;
SIGNAL \hundred|WideOr2~0_combout\ : std_logic;
SIGNAL \myInterface|Selector10~2_combout\ : std_logic;
SIGNAL \myInterface|Selector10~3_combout\ : std_logic;
SIGNAL \myInterface|inBus[3]~reg0_regout\ : std_logic;
SIGNAL \myController|Selector33~0_combout\ : std_logic;
SIGNAL \myController|lcdBus[3]~reg0_regout\ : std_logic;
SIGNAL \myController|lcdBus[3]~enfeeder_combout\ : std_logic;
SIGNAL \myController|lcdBus[3]~en_regout\ : std_logic;
SIGNAL \myController|Selector34~0_combout\ : std_logic;
SIGNAL \myController|lcdBus[4]~reg0feeder_combout\ : std_logic;
SIGNAL \ten|WideOr0~0_combout\ : std_logic;
SIGNAL \myInterface|Selector9~0_combout\ : std_logic;
SIGNAL \myInterface|Selector7~0_combout\ : std_logic;
SIGNAL \thousand|WideOr0~0_combout\ : std_logic;
SIGNAL \hundred|WideOr0~0_combout\ : std_logic;
SIGNAL \myInterface|Selector9~1_combout\ : std_logic;
SIGNAL \myInterface|Selector9~2_combout\ : std_logic;
SIGNAL \myInterface|inBus[4]~reg0_regout\ : std_logic;
SIGNAL \myController|lcdBus[4]~reg0_regout\ : std_logic;
SIGNAL \myController|lcdBus[4]~enfeeder_combout\ : std_logic;
SIGNAL \myController|lcdBus[4]~en_regout\ : std_logic;
SIGNAL \myController|lcdBus[5]~reg0feeder_combout\ : std_logic;
SIGNAL \thousand|WideOr1~0_combout\ : std_logic;
SIGNAL \hundred|WideOr1~0_combout\ : std_logic;
SIGNAL \myInterface|Selector8~2_combout\ : std_logic;
SIGNAL \myInterface|Selector8~0_combout\ : std_logic;
SIGNAL \myInterface|Selector8~3_combout\ : std_logic;
SIGNAL \myInterface|inBus[5]~reg0_regout\ : std_logic;
SIGNAL \myController|lcdBus[5]~reg0_regout\ : std_logic;
SIGNAL \myController|lcdBus[5]~en_regout\ : std_logic;
SIGNAL \myInterface|Selector7~2_combout\ : std_logic;
SIGNAL \myInterface|Selector0~0_combout\ : std_logic;
SIGNAL \myInterface|Selector7~3_combout\ : std_logic;
SIGNAL \myInterface|inBus[6]~reg0_regout\ : std_logic;
SIGNAL \myController|Selector36~0_combout\ : std_logic;
SIGNAL \myController|lcdBus[6]~reg0_regout\ : std_logic;
SIGNAL \myController|lcdBus[6]~enfeeder_combout\ : std_logic;
SIGNAL \myController|lcdBus[6]~en_regout\ : std_logic;
SIGNAL \myInterface|addrOrData~reg0_regout\ : std_logic;
SIGNAL \myController|Selector38~0_combout\ : std_logic;
SIGNAL \myController|lcdBus[7]~reg0_regout\ : std_logic;
SIGNAL \myController|lcdBus[7]~en_regout\ : std_logic;
SIGNAL \myController|Selector28~2_combout\ : std_logic;
SIGNAL \myController|Selector28~4_combout\ : std_logic;
SIGNAL \myController|Selector28~5_combout\ : std_logic;
SIGNAL \myController|lcdReadWriteSel~regout\ : std_logic;
SIGNAL \myController|Selector27~0_combout\ : std_logic;
SIGNAL \myController|lcdRsSelect~regout\ : std_logic;
SIGNAL \myController|lcdEnableOut~0_combout\ : std_logic;
SIGNAL \myController|lcdEnableOut~regout\ : std_logic;
SIGNAL \myController|counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \switches~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_lcdOn~clkctrl_outclk\ : std_logic;
SIGNAL \myController|ALT_INV_busLock~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_switches <= switches;
ww_lcdOn <= lcdOn;
lcdReadWriteSel <= ww_lcdReadWriteSel;
lcdRsSelect <= ww_lcdRsSelect;
lcdEnableOut <= ww_lcdEnableOut;
errorLed <= ww_errorLed;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\lcdOn~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \lcdOn~combout\);
\ALT_INV_lcdOn~clkctrl_outclk\ <= NOT \lcdOn~clkctrl_outclk\;
\myController|ALT_INV_busLock~regout\ <= NOT \myController|busLock~regout\;

-- Location: LCFF_X54_Y29_N7
\myController|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|counter[13]~53_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sclr => \myController|counter[5]~28_combout\,
	ena => \myController|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|counter\(13));

-- Location: LCFF_X54_Y29_N17
\myController|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|counter[18]~63_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sclr => \myController|counter[5]~28_combout\,
	ena => \myController|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|counter\(18));

-- Location: LCCOMB_X54_Y29_N6
\myController|counter[13]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[13]~53_combout\ = (\myController|counter\(13) & (!\myController|counter[12]~52\)) # (!\myController|counter\(13) & ((\myController|counter[12]~52\) # (GND)))
-- \myController|counter[13]~54\ = CARRY((!\myController|counter[12]~52\) # (!\myController|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myController|counter\(13),
	datad => VCC,
	cin => \myController|counter[12]~52\,
	combout => \myController|counter[13]~53_combout\,
	cout => \myController|counter[13]~54\);

-- Location: LCCOMB_X54_Y29_N16
\myController|counter[18]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[18]~63_combout\ = (\myController|counter\(18) & (\myController|counter[17]~62\ $ (GND))) # (!\myController|counter\(18) & (!\myController|counter[17]~62\ & VCC))
-- \myController|counter[18]~64\ = CARRY((\myController|counter\(18) & !\myController|counter[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myController|counter\(18),
	datad => VCC,
	cin => \myController|counter[17]~62\,
	combout => \myController|counter[18]~63_combout\,
	cout => \myController|counter[18]~64\);

-- Location: LCCOMB_X49_Y32_N12
\myController|Selector28~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Selector28~3_combout\ = (\myController|state.write~regout\ & \myInterface|addrOrData~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myController|state.write~regout\,
	datad => \myInterface|addrOrData~reg0_regout\,
	combout => \myController|Selector28~3_combout\);

-- Location: LCCOMB_X53_Y29_N12
\myController|Equal3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Equal3~6_combout\ = (\myController|Equal0~0_combout\ & \myController|Equal3~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myController|Equal0~0_combout\,
	datad => \myController|Equal3~5_combout\,
	combout => \myController|Equal3~6_combout\);

-- Location: LCCOMB_X53_Y29_N22
\myController|Equal3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Equal3~7_combout\ = (\myController|counter\(11) & (!\myController|counter\(14) & (\myController|counter\(8) & \myController|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|counter\(11),
	datab => \myController|counter\(14),
	datac => \myController|counter\(8),
	datad => \myController|counter\(2),
	combout => \myController|Equal3~7_combout\);

-- Location: LCCOMB_X53_Y29_N16
\myController|Equal3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Equal3~8_combout\ = (!\myController|counter\(17) & (!\myController|counter\(16) & \myController|Equal3~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|counter\(17),
	datac => \myController|counter\(16),
	datad => \myController|Equal3~7_combout\,
	combout => \myController|Equal3~8_combout\);

-- Location: LCCOMB_X53_Y29_N30
\myController|counter[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[5]~25_combout\ = (\myController|Equal3~8_combout\ & (\myController|state.write~regout\ & (\myController|Equal3~9_combout\ & \myController|Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|Equal3~8_combout\,
	datab => \myController|state.write~regout\,
	datac => \myController|Equal3~9_combout\,
	datad => \myController|Equal3~6_combout\,
	combout => \myController|counter[5]~25_combout\);

-- Location: LCCOMB_X36_Y35_N10
\myBcdConverter|n~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~31_combout\ = (\switches~combout\(12) & (\switches~combout\(15) & (!\switches~combout\(13) & !\switches~combout\(14)))) # (!\switches~combout\(12) & (\switches~combout\(14) & (\switches~combout\(15) $ (!\switches~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches~combout\(12),
	datab => \switches~combout\(15),
	datac => \switches~combout\(13),
	datad => \switches~combout\(14),
	combout => \myBcdConverter|n~31_combout\);

-- Location: LCCOMB_X36_Y35_N2
\myBcdConverter|n~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~35_combout\ = (\myBcdConverter|n~31_combout\ & ((\switches~combout\(11) $ (!\myBcdConverter|n~30_combout\)))) # (!\myBcdConverter|n~31_combout\ & (\myBcdConverter|n~30_combout\ & ((\switches~combout\(11)) # 
-- (!\myBcdConverter|n~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~31_combout\,
	datab => \myBcdConverter|n~32_combout\,
	datac => \switches~combout\(11),
	datad => \myBcdConverter|n~30_combout\,
	combout => \myBcdConverter|n~35_combout\);

-- Location: LCCOMB_X38_Y35_N20
\myBcdConverter|n~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~36_combout\ = (\myBcdConverter|n~35_combout\ & (!\switches~combout\(10) & ((\myBcdConverter|n~33_combout\) # (\myBcdConverter|n~34_combout\)))) # (!\myBcdConverter|n~35_combout\ & ((\myBcdConverter|n~34_combout\ $ 
-- (\switches~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~35_combout\,
	datab => \myBcdConverter|n~33_combout\,
	datac => \myBcdConverter|n~34_combout\,
	datad => \switches~combout\(10),
	combout => \myBcdConverter|n~36_combout\);

-- Location: LCCOMB_X38_Y35_N10
\myBcdConverter|n~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~41_combout\ = (\myBcdConverter|n~37_combout\ & (((!\switches~combout\(9))))) # (!\myBcdConverter|n~37_combout\ & ((\myBcdConverter|n~38_combout\ & (\myBcdConverter|n~36_combout\ & !\switches~combout\(9))) # 
-- (!\myBcdConverter|n~38_combout\ & ((\switches~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~36_combout\,
	datab => \myBcdConverter|n~37_combout\,
	datac => \myBcdConverter|n~38_combout\,
	datad => \switches~combout\(9),
	combout => \myBcdConverter|n~41_combout\);

-- Location: LCCOMB_X37_Y35_N12
\myBcdConverter|n~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~45_combout\ = (\myBcdConverter|n~139_combout\ & ((\myBcdConverter|n~44_combout\ & ((\myBcdConverter|n~43_combout\) # (!\myBcdConverter|LessThan0~0_combout\))) # (!\myBcdConverter|n~44_combout\ & ((\myBcdConverter|LessThan0~0_combout\) # 
-- (!\myBcdConverter|n~43_combout\))))) # (!\myBcdConverter|n~139_combout\ & (\myBcdConverter|n~43_combout\ $ (((\myBcdConverter|n~44_combout\ & \myBcdConverter|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~139_combout\,
	datab => \myBcdConverter|n~44_combout\,
	datac => \myBcdConverter|LessThan0~0_combout\,
	datad => \myBcdConverter|n~43_combout\,
	combout => \myBcdConverter|n~45_combout\);

-- Location: LCCOMB_X37_Y35_N18
\myBcdConverter|n~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~52_combout\ = (\myBcdConverter|n~47_combout\ & (\myBcdConverter|n~45_combout\ & ((\myBcdConverter|n~49_combout\)))) # (!\myBcdConverter|n~47_combout\ & (\myBcdConverter|n~48_combout\ & ((!\myBcdConverter|n~49_combout\) # 
-- (!\myBcdConverter|n~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~45_combout\,
	datab => \myBcdConverter|n~48_combout\,
	datac => \myBcdConverter|n~47_combout\,
	datad => \myBcdConverter|n~49_combout\,
	combout => \myBcdConverter|n~52_combout\);

-- Location: LCCOMB_X37_Y35_N6
\myBcdConverter|n~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~54_combout\ = (\myBcdConverter|n~45_combout\ & \myBcdConverter|n~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~45_combout\,
	datad => \myBcdConverter|n~49_combout\,
	combout => \myBcdConverter|n~54_combout\);

-- Location: LCCOMB_X37_Y35_N10
\myBcdConverter|n~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~56_combout\ = (\myBcdConverter|n~139_combout\ & ((\myBcdConverter|n~44_combout\ & ((\myBcdConverter|LessThan0~0_combout\) # (\myBcdConverter|n~43_combout\))) # (!\myBcdConverter|n~44_combout\ & (\myBcdConverter|LessThan0~0_combout\ & 
-- \myBcdConverter|n~43_combout\)))) # (!\myBcdConverter|n~139_combout\ & (((!\myBcdConverter|LessThan0~0_combout\)) # (!\myBcdConverter|n~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~139_combout\,
	datab => \myBcdConverter|n~44_combout\,
	datac => \myBcdConverter|LessThan0~0_combout\,
	datad => \myBcdConverter|n~43_combout\,
	combout => \myBcdConverter|n~56_combout\);

-- Location: LCCOMB_X37_Y35_N16
\myBcdConverter|n~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~59_combout\ = (!\myBcdConverter|n~56_combout\ & ((!\myBcdConverter|n~140_combout\) # (!\myBcdConverter|tenThou[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myBcdConverter|tenThou[3]~0_combout\,
	datac => \myBcdConverter|n~140_combout\,
	datad => \myBcdConverter|n~56_combout\,
	combout => \myBcdConverter|n~59_combout\);

-- Location: LCCOMB_X41_Y33_N8
\myBcdConverter|n~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~60_combout\ = \myBcdConverter|n~58_combout\ $ (((\myBcdConverter|n~59_combout\ & ((\myBcdConverter|n~55_combout\) # (!\myBcdConverter|n~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~59_combout\,
	datab => \myBcdConverter|n~55_combout\,
	datac => \myBcdConverter|n~58_combout\,
	datad => \myBcdConverter|n~53_combout\,
	combout => \myBcdConverter|n~60_combout\);

-- Location: LCCOMB_X38_Y35_N16
\myBcdConverter|n~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~63_combout\ = (\myBcdConverter|n~39_combout\ & (!\myBcdConverter|n~41_combout\ & ((!\switches~combout\(8))))) # (!\myBcdConverter|n~39_combout\ & (\myBcdConverter|n~40_combout\ & ((\myBcdConverter|n~41_combout\) # 
-- (\switches~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~41_combout\,
	datab => \myBcdConverter|n~40_combout\,
	datac => \switches~combout\(8),
	datad => \myBcdConverter|n~39_combout\,
	combout => \myBcdConverter|n~63_combout\);

-- Location: LCCOMB_X41_Y35_N10
\myBcdConverter|n~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~66_combout\ = (\myBcdConverter|n~52_combout\ & (((!\myBcdConverter|n~42_combout\)))) # (!\myBcdConverter|n~52_combout\ & ((\myBcdConverter|n~51_combout\ & ((\myBcdConverter|n~42_combout\))) # (!\myBcdConverter|n~51_combout\ & 
-- ((\myBcdConverter|n~50_combout\) # (!\myBcdConverter|n~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~52_combout\,
	datab => \myBcdConverter|n~50_combout\,
	datac => \myBcdConverter|n~51_combout\,
	datad => \myBcdConverter|n~42_combout\,
	combout => \myBcdConverter|n~66_combout\);

-- Location: LCCOMB_X41_Y35_N12
\myBcdConverter|n~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~69_combout\ = \myBcdConverter|n~68_combout\ $ (((\myBcdConverter|n~67_combout\) # ((\myBcdConverter|n~66_combout\ & \myBcdConverter|n~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~66_combout\,
	datab => \myBcdConverter|n~68_combout\,
	datac => \myBcdConverter|n~65_combout\,
	datad => \myBcdConverter|n~67_combout\,
	combout => \myBcdConverter|n~69_combout\);

-- Location: LCCOMB_X42_Y33_N24
\myBcdConverter|LessThan21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|LessThan21~0_combout\ = (\myBcdConverter|n~60_combout\) # (!\myBcdConverter|n~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myBcdConverter|n~72_combout\,
	datad => \myBcdConverter|n~60_combout\,
	combout => \myBcdConverter|LessThan21~0_combout\);

-- Location: LCCOMB_X41_Y35_N6
\myBcdConverter|n~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~77_combout\ = (\myBcdConverter|n~68_combout\ & (((!\myBcdConverter|n~65_combout\)))) # (!\myBcdConverter|n~68_combout\ & ((\myBcdConverter|n~65_combout\ & ((\myBcdConverter|n~66_combout\) # (\myBcdConverter|n~67_combout\))) # 
-- (!\myBcdConverter|n~65_combout\ & ((!\myBcdConverter|n~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~66_combout\,
	datab => \myBcdConverter|n~68_combout\,
	datac => \myBcdConverter|n~65_combout\,
	datad => \myBcdConverter|n~67_combout\,
	combout => \myBcdConverter|n~77_combout\);

-- Location: LCCOMB_X41_Y33_N6
\myBcdConverter|n~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~81_combout\ = (\myBcdConverter|n~69_combout\ & (!\myBcdConverter|n~71_combout\ & ((\myBcdConverter|n~70_combout\) # (!\myBcdConverter|n~61_combout\)))) # (!\myBcdConverter|n~69_combout\ & ((\myBcdConverter|n~71_combout\) # 
-- ((\myBcdConverter|n~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~69_combout\,
	datab => \myBcdConverter|n~71_combout\,
	datac => \myBcdConverter|n~70_combout\,
	datad => \myBcdConverter|n~61_combout\,
	combout => \myBcdConverter|n~81_combout\);

-- Location: LCCOMB_X40_Y35_N16
\myBcdConverter|n~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~87_combout\ = (\myBcdConverter|n~73_combout\ & (!\switches~combout\(6) & ((!\myBcdConverter|n~75_combout\)))) # (!\myBcdConverter|n~73_combout\ & (\myBcdConverter|n~74_combout\ & ((\switches~combout\(6)) # 
-- (\myBcdConverter|n~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches~combout\(6),
	datab => \myBcdConverter|n~74_combout\,
	datac => \myBcdConverter|n~75_combout\,
	datad => \myBcdConverter|n~73_combout\,
	combout => \myBcdConverter|n~87_combout\);

-- Location: LCCOMB_X40_Y35_N12
\myBcdConverter|n~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~89_combout\ = \myBcdConverter|n~87_combout\ $ ((((!\myBcdConverter|n~88_combout\ & !\switches~combout\(5))) # (!\myBcdConverter|n~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~87_combout\,
	datab => \myBcdConverter|n~88_combout\,
	datac => \switches~combout\(5),
	datad => \myBcdConverter|n~86_combout\,
	combout => \myBcdConverter|n~89_combout\);

-- Location: LCCOMB_X41_Y33_N24
\myBcdConverter|n~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~95_combout\ = (\myBcdConverter|n~81_combout\ & (((!\myBcdConverter|n~80_combout\)) # (!\myBcdConverter|n~83_combout\))) # (!\myBcdConverter|n~81_combout\ & (\myBcdConverter|n~80_combout\ & ((\myBcdConverter|n~83_combout\) # 
-- (!\myBcdConverter|n~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~81_combout\,
	datab => \myBcdConverter|n~83_combout\,
	datac => \myBcdConverter|n~80_combout\,
	datad => \myBcdConverter|n~82_combout\,
	combout => \myBcdConverter|n~95_combout\);

-- Location: LCCOMB_X42_Y33_N6
\myBcdConverter|n~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~99_combout\ = (\myBcdConverter|n~60_combout\ & (\myBcdConverter|n~84_combout\ & (\myBcdConverter|n~72_combout\ $ (\myBcdConverter|n~142_combout\)))) # (!\myBcdConverter|n~60_combout\ & (\myBcdConverter|n~72_combout\ & 
-- (\myBcdConverter|n~142_combout\ & !\myBcdConverter|n~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~60_combout\,
	datab => \myBcdConverter|n~72_combout\,
	datac => \myBcdConverter|n~142_combout\,
	datad => \myBcdConverter|n~84_combout\,
	combout => \myBcdConverter|n~99_combout\);

-- Location: LCCOMB_X40_Y35_N6
\myBcdConverter|n~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~102_combout\ = (\myBcdConverter|n~87_combout\ & (\myBcdConverter|n~88_combout\ $ ((!\switches~combout\(5))))) # (!\myBcdConverter|n~87_combout\ & (\myBcdConverter|n~88_combout\ & ((\switches~combout\(5)) # 
-- (!\myBcdConverter|n~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~87_combout\,
	datab => \myBcdConverter|n~88_combout\,
	datac => \switches~combout\(5),
	datad => \myBcdConverter|n~86_combout\,
	combout => \myBcdConverter|n~102_combout\);

-- Location: LCCOMB_X41_Y35_N30
\myBcdConverter|n~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~106_combout\ = (\myBcdConverter|n~89_combout\ & (!\myBcdConverter|n~92_combout\ & ((\myBcdConverter|n~91_combout\) # (\myBcdConverter|n~90_combout\)))) # (!\myBcdConverter|n~89_combout\ & ((\myBcdConverter|n~92_combout\) # 
-- ((!\myBcdConverter|n~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~89_combout\,
	datab => \myBcdConverter|n~92_combout\,
	datac => \myBcdConverter|n~91_combout\,
	datad => \myBcdConverter|n~90_combout\,
	combout => \myBcdConverter|n~106_combout\);

-- Location: LCCOMB_X41_Y33_N26
\myBcdConverter|n~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~110_combout\ = (\myBcdConverter|n~95_combout\ & (\myBcdConverter|n~96_combout\ $ (((\myBcdConverter|n~93_combout\))))) # (!\myBcdConverter|n~95_combout\ & (((!\myBcdConverter|n~96_combout\ & \myBcdConverter|n~94_combout\)) # 
-- (!\myBcdConverter|n~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~95_combout\,
	datab => \myBcdConverter|n~96_combout\,
	datac => \myBcdConverter|n~94_combout\,
	datad => \myBcdConverter|n~93_combout\,
	combout => \myBcdConverter|n~110_combout\);

-- Location: LCCOMB_X42_Y33_N18
\myBcdConverter|n~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~115_combout\ = (\myBcdConverter|n~99_combout\ & (\myBcdConverter|n~98_combout\ $ ((\myBcdConverter|n~97_combout\)))) # (!\myBcdConverter|n~99_combout\ & ((\myBcdConverter|n~98_combout\) # ((\myBcdConverter|n~97_combout\ & 
-- \myBcdConverter|n~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~99_combout\,
	datab => \myBcdConverter|n~98_combout\,
	datac => \myBcdConverter|n~97_combout\,
	datad => \myBcdConverter|n~85_combout\,
	combout => \myBcdConverter|n~115_combout\);

-- Location: LCCOMB_X40_Y35_N2
\myBcdConverter|n~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~117_combout\ = (\myBcdConverter|n~104_combout\ & ((\switches~combout\(4)) # ((!\myBcdConverter|n~102_combout\ & !\myBcdConverter|n~103_combout\)))) # (!\myBcdConverter|n~104_combout\ & (((\myBcdConverter|n~103_combout\ & 
-- !\switches~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~102_combout\,
	datab => \myBcdConverter|n~104_combout\,
	datac => \myBcdConverter|n~103_combout\,
	datad => \switches~combout\(4),
	combout => \myBcdConverter|n~117_combout\);

-- Location: LCCOMB_X42_Y35_N10
\myBcdConverter|n~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~122_combout\ = (\myBcdConverter|n~106_combout\ & (((!\myBcdConverter|n~108_combout\) # (!\myBcdConverter|n~105_combout\)))) # (!\myBcdConverter|n~106_combout\ & (\myBcdConverter|n~105_combout\ & ((\myBcdConverter|n~108_combout\) # 
-- (!\myBcdConverter|n~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~106_combout\,
	datab => \myBcdConverter|n~107_combout\,
	datac => \myBcdConverter|n~105_combout\,
	datad => \myBcdConverter|n~108_combout\,
	combout => \myBcdConverter|n~122_combout\);

-- Location: LCCOMB_X42_Y32_N6
\myBcdConverter|n~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~125_combout\ = (\myBcdConverter|n~112_combout\ & (((!\myBcdConverter|n~109_combout\)))) # (!\myBcdConverter|n~112_combout\ & ((\myBcdConverter|n~109_combout\ & ((\myBcdConverter|n~110_combout\) # (\myBcdConverter|n~111_combout\))) # 
-- (!\myBcdConverter|n~109_combout\ & ((!\myBcdConverter|n~111_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~110_combout\,
	datab => \myBcdConverter|n~112_combout\,
	datac => \myBcdConverter|n~109_combout\,
	datad => \myBcdConverter|n~111_combout\,
	combout => \myBcdConverter|n~125_combout\);

-- Location: LCCOMB_X43_Y32_N6
\myBcdConverter|thou[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|thou[3]~3_combout\ = (\myBcdConverter|n~115_combout\ & (\myBcdConverter|n~116_combout\ & ((!\myBcdConverter|n~114_combout\) # (!\myBcdConverter|n~113_combout\)))) # (!\myBcdConverter|n~115_combout\ & (\myBcdConverter|n~113_combout\ & 
-- (\myBcdConverter|n~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~115_combout\,
	datab => \myBcdConverter|n~113_combout\,
	datac => \myBcdConverter|n~114_combout\,
	datad => \myBcdConverter|n~116_combout\,
	combout => \myBcdConverter|thou[3]~3_combout\);

-- Location: LCCOMB_X43_Y32_N12
\thousand|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \thousand|WideOr5~0_combout\ = (\myBcdConverter|thou[3]~3_combout\ & (((!\myBcdConverter|thou[1]~1_combout\) # (!\myBcdConverter|thou[2]~2_combout\)) # (!\myBcdConverter|thou[0]~0_combout\))) # (!\myBcdConverter|thou[3]~3_combout\ & 
-- (\myBcdConverter|thou[0]~0_combout\ $ (((\myBcdConverter|thou[1]~1_combout\) # (!\myBcdConverter|thou[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|thou[3]~3_combout\,
	datab => \myBcdConverter|thou[0]~0_combout\,
	datac => \myBcdConverter|thou[2]~2_combout\,
	datad => \myBcdConverter|thou[1]~1_combout\,
	combout => \thousand|WideOr5~0_combout\);

-- Location: LCCOMB_X42_Y35_N24
\myBcdConverter|n~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~128_combout\ = (\myBcdConverter|n~118_combout\ & ((\myBcdConverter|n~119_combout\ $ (!\switches~combout\(3))))) # (!\myBcdConverter|n~118_combout\ & (\myBcdConverter|n~119_combout\ & ((\switches~combout\(3)) # 
-- (!\myBcdConverter|n~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~117_combout\,
	datab => \myBcdConverter|n~118_combout\,
	datac => \myBcdConverter|n~119_combout\,
	datad => \switches~combout\(3),
	combout => \myBcdConverter|n~128_combout\);

-- Location: LCCOMB_X42_Y35_N28
\myBcdConverter|n~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~132_combout\ = (\myBcdConverter|n~122_combout\ & (\myBcdConverter|n~123_combout\ $ ((\myBcdConverter|n~120_combout\)))) # (!\myBcdConverter|n~122_combout\ & (((!\myBcdConverter|n~123_combout\ & \myBcdConverter|n~121_combout\)) # 
-- (!\myBcdConverter|n~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~122_combout\,
	datab => \myBcdConverter|n~123_combout\,
	datac => \myBcdConverter|n~120_combout\,
	datad => \myBcdConverter|n~121_combout\,
	combout => \myBcdConverter|n~132_combout\);

-- Location: LCCOMB_X42_Y32_N10
\myBcdConverter|hund[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|hund[3]~3_combout\ = (\myBcdConverter|n~126_combout\ & (\myBcdConverter|n~127_combout\ & ((!\myBcdConverter|n~124_combout\) # (!\myBcdConverter|n~125_combout\)))) # (!\myBcdConverter|n~126_combout\ & (\myBcdConverter|n~125_combout\ & 
-- ((\myBcdConverter|n~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~125_combout\,
	datab => \myBcdConverter|n~127_combout\,
	datac => \myBcdConverter|n~126_combout\,
	datad => \myBcdConverter|n~124_combout\,
	combout => \myBcdConverter|hund[3]~3_combout\);

-- Location: LCCOMB_X42_Y32_N12
\hundred|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hundred|WideOr5~0_combout\ = (\myBcdConverter|hund[3]~3_combout\ & (((!\myBcdConverter|hund[0]~0_combout\) # (!\myBcdConverter|hund[2]~2_combout\)) # (!\myBcdConverter|hund[1]~1_combout\))) # (!\myBcdConverter|hund[3]~3_combout\ & 
-- (\myBcdConverter|hund[0]~0_combout\ $ (((\myBcdConverter|hund[1]~1_combout\) # (!\myBcdConverter|hund[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|hund[3]~3_combout\,
	datab => \myBcdConverter|hund[1]~1_combout\,
	datac => \myBcdConverter|hund[2]~2_combout\,
	datad => \myBcdConverter|hund[0]~0_combout\,
	combout => \hundred|WideOr5~0_combout\);

-- Location: LCCOMB_X42_Y35_N20
\myBcdConverter|n~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~136_combout\ = (\myBcdConverter|n~128_combout\ & (((!\myBcdConverter|n~130_combout\ & !\switches~combout\(2))))) # (!\myBcdConverter|n~128_combout\ & (\myBcdConverter|n~129_combout\ & ((\myBcdConverter|n~130_combout\) # 
-- (\switches~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~128_combout\,
	datab => \myBcdConverter|n~129_combout\,
	datac => \myBcdConverter|n~130_combout\,
	datad => \switches~combout\(2),
	combout => \myBcdConverter|n~136_combout\);

-- Location: LCCOMB_X45_Y35_N10
\myBcdConverter|ones[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|ones[2]~1_combout\ = (\myBcdConverter|n~136_combout\ & (\myBcdConverter|n~135_combout\ $ (((!\switches~combout\(1)))))) # (!\myBcdConverter|n~136_combout\ & (\myBcdConverter|n~135_combout\ & ((\switches~combout\(1)) # 
-- (!\myBcdConverter|n~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~136_combout\,
	datab => \myBcdConverter|n~135_combout\,
	datac => \myBcdConverter|n~137_combout\,
	datad => \switches~combout\(1),
	combout => \myBcdConverter|ones[2]~1_combout\);

-- Location: LCCOMB_X45_Y35_N2
\one|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \one|WideOr5~0_combout\ = (\myBcdConverter|ones[2]~1_combout\ & ((\myBcdConverter|ones[3]~2_combout\) # ((\switches~combout\(0))))) # (!\myBcdConverter|ones[2]~1_combout\ & ((\switches~combout\(0) & ((\myBcdConverter|ones[3]~2_combout\) # 
-- (!\myBcdConverter|ones[1]~0_combout\))) # (!\switches~combout\(0) & ((\myBcdConverter|ones[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|ones[2]~1_combout\,
	datab => \myBcdConverter|ones[3]~2_combout\,
	datac => \switches~combout\(0),
	datad => \myBcdConverter|ones[1]~0_combout\,
	combout => \one|WideOr5~0_combout\);

-- Location: LCCOMB_X46_Y32_N6
\myInterface|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector0~2_combout\ = (\one|WideOr5~0_combout\ & ((\myInterface|state.one~regout\) # ((\hundred|WideOr5~0_combout\ & \myInterface|state.hundred~regout\)))) # (!\one|WideOr5~0_combout\ & (\hundred|WideOr5~0_combout\ & 
-- (\myInterface|state.hundred~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \one|WideOr5~0_combout\,
	datab => \hundred|WideOr5~0_combout\,
	datac => \myInterface|state.hundred~regout\,
	datad => \myInterface|state.one~regout\,
	combout => \myInterface|Selector0~2_combout\);

-- Location: LCCOMB_X45_Y32_N12
\myBcdConverter|tens[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|tens[1]~1_combout\ = (\myBcdConverter|n~133_combout\ & ((\myBcdConverter|n~134_combout\ $ (\myBcdConverter|n~131_combout\)))) # (!\myBcdConverter|n~133_combout\ & (((\myBcdConverter|n~132_combout\ & !\myBcdConverter|n~134_combout\)) # 
-- (!\myBcdConverter|n~131_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~132_combout\,
	datab => \myBcdConverter|n~133_combout\,
	datac => \myBcdConverter|n~134_combout\,
	datad => \myBcdConverter|n~131_combout\,
	combout => \myBcdConverter|tens[1]~1_combout\);

-- Location: LCCOMB_X42_Y32_N14
\hundred|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hundred|WideOr4~0_combout\ = (!\myBcdConverter|hund[3]~3_combout\ & (!\myBcdConverter|hund[1]~1_combout\ & ((!\myBcdConverter|hund[0]~0_combout\) # (!\myBcdConverter|hund[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|hund[3]~3_combout\,
	datab => \myBcdConverter|hund[1]~1_combout\,
	datac => \myBcdConverter|hund[2]~2_combout\,
	datad => \myBcdConverter|hund[0]~0_combout\,
	combout => \hundred|WideOr4~0_combout\);

-- Location: LCCOMB_X43_Y32_N14
\myInterface|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector12~1_combout\ = (\myInterface|state.hundred~regout\ & ((\hundred|WideOr4~0_combout\) # (!\myInterface|addrData~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hundred|WideOr4~0_combout\,
	datac => \myInterface|state.hundred~regout\,
	datad => \myInterface|addrData~regout\,
	combout => \myInterface|Selector12~1_combout\);

-- Location: LCCOMB_X45_Y32_N8
\ten|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ten|WideOr4~0_combout\ = (!\myBcdConverter|tens[1]~1_combout\ & (!\myBcdConverter|tens[3]~3_combout\ & ((!\myBcdConverter|tens[2]~2_combout\) # (!\myBcdConverter|tens[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|tens[0]~0_combout\,
	datab => \myBcdConverter|tens[2]~2_combout\,
	datac => \myBcdConverter|tens[1]~1_combout\,
	datad => \myBcdConverter|tens[3]~3_combout\,
	combout => \ten|WideOr4~0_combout\);

-- Location: LCCOMB_X44_Y32_N16
\myInterface|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector11~0_combout\ = (\myInterface|Selector0~0_combout\ & ((\myBcdConverter|tenThou[2]~2_combout\) # ((\myBcdConverter|tenThou[1]~1_combout\ & \myBcdConverter|tenThou[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Selector0~0_combout\,
	datab => \myBcdConverter|tenThou[2]~2_combout\,
	datac => \myBcdConverter|tenThou[1]~1_combout\,
	datad => \myBcdConverter|tenThou[0]~3_combout\,
	combout => \myInterface|Selector11~0_combout\);

-- Location: LCCOMB_X45_Y32_N20
\ten|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ten|WideOr3~0_combout\ = ((!\myBcdConverter|tens[1]~1_combout\ & ((\myBcdConverter|tens[0]~0_combout\) # (\myBcdConverter|tens[3]~3_combout\)))) # (!\myBcdConverter|tens[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|tens[0]~0_combout\,
	datab => \myBcdConverter|tens[2]~2_combout\,
	datac => \myBcdConverter|tens[1]~1_combout\,
	datad => \myBcdConverter|tens[3]~3_combout\,
	combout => \ten|WideOr3~0_combout\);

-- Location: LCCOMB_X45_Y35_N26
\one|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \one|WideOr2~0_combout\ = (\myBcdConverter|ones[2]~1_combout\) # ((\myBcdConverter|ones[1]~0_combout\) # ((!\myBcdConverter|ones[3]~2_combout\ & \switches~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|ones[2]~1_combout\,
	datab => \myBcdConverter|ones[3]~2_combout\,
	datac => \switches~combout\(0),
	datad => \myBcdConverter|ones[1]~0_combout\,
	combout => \one|WideOr2~0_combout\);

-- Location: LCCOMB_X46_Y32_N2
\ten|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ten|WideOr2~0_combout\ = (((!\myBcdConverter|tens[0]~0_combout\ & !\myBcdConverter|tens[3]~3_combout\)) # (!\myBcdConverter|tens[2]~2_combout\)) # (!\myBcdConverter|tens[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|tens[1]~1_combout\,
	datab => \myBcdConverter|tens[0]~0_combout\,
	datac => \myBcdConverter|tens[3]~3_combout\,
	datad => \myBcdConverter|tens[2]~2_combout\,
	combout => \ten|WideOr2~0_combout\);

-- Location: LCCOMB_X46_Y32_N12
\myInterface|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector10~0_combout\ = (\myInterface|state.ten~regout\ & (((!\one|WideOr2~0_combout\ & \myInterface|state.one~regout\)) # (!\ten|WideOr2~0_combout\))) # (!\myInterface|state.ten~regout\ & (((!\one|WideOr2~0_combout\ & 
-- \myInterface|state.one~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|state.ten~regout\,
	datab => \ten|WideOr2~0_combout\,
	datac => \one|WideOr2~0_combout\,
	datad => \myInterface|state.one~regout\,
	combout => \myInterface|Selector10~0_combout\);

-- Location: LCCOMB_X43_Y32_N24
\thousand|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \thousand|WideOr2~0_combout\ = (((!\myBcdConverter|thou[3]~3_combout\ & !\myBcdConverter|thou[0]~0_combout\)) # (!\myBcdConverter|thou[1]~1_combout\)) # (!\myBcdConverter|thou[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|thou[3]~3_combout\,
	datab => \myBcdConverter|thou[0]~0_combout\,
	datac => \myBcdConverter|thou[2]~2_combout\,
	datad => \myBcdConverter|thou[1]~1_combout\,
	combout => \thousand|WideOr2~0_combout\);

-- Location: LCCOMB_X45_Y35_N20
\one|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \one|WideOr0~0_combout\ = (\myBcdConverter|ones[2]~1_combout\ & (\myBcdConverter|ones[3]~2_combout\)) # (!\myBcdConverter|ones[2]~1_combout\ & (\myBcdConverter|ones[1]~0_combout\ & ((\myBcdConverter|ones[3]~2_combout\) # (!\switches~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|ones[2]~1_combout\,
	datab => \myBcdConverter|ones[3]~2_combout\,
	datac => \switches~combout\(0),
	datad => \myBcdConverter|ones[1]~0_combout\,
	combout => \one|WideOr0~0_combout\);

-- Location: LCCOMB_X46_Y32_N22
\ten|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ten|WideOr1~0_combout\ = (\myBcdConverter|tens[3]~3_combout\ & (\myBcdConverter|tens[1]~1_combout\ & ((\myBcdConverter|tens[2]~2_combout\)))) # (!\myBcdConverter|tens[3]~3_combout\ & (((!\myBcdConverter|tens[2]~2_combout\) # 
-- (!\myBcdConverter|tens[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|tens[1]~1_combout\,
	datab => \myBcdConverter|tens[0]~0_combout\,
	datac => \myBcdConverter|tens[3]~3_combout\,
	datad => \myBcdConverter|tens[2]~2_combout\,
	combout => \ten|WideOr1~0_combout\);

-- Location: LCCOMB_X45_Y35_N18
\one|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \one|WideOr1~0_combout\ = (\myBcdConverter|ones[2]~1_combout\ & (!\myBcdConverter|ones[3]~2_combout\)) # (!\myBcdConverter|ones[2]~1_combout\ & ((\myBcdConverter|ones[3]~2_combout\ & ((!\myBcdConverter|ones[1]~0_combout\))) # 
-- (!\myBcdConverter|ones[3]~2_combout\ & (\switches~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|ones[2]~1_combout\,
	datab => \myBcdConverter|ones[3]~2_combout\,
	datac => \switches~combout\(0),
	datad => \myBcdConverter|ones[1]~0_combout\,
	combout => \one|WideOr1~0_combout\);

-- Location: LCCOMB_X45_Y32_N16
\myInterface|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector8~1_combout\ = (\one|WideOr1~0_combout\ & ((\myInterface|Selector11~2_combout\) # ((\ten|WideOr1~0_combout\ & \myInterface|Selector11~1_combout\)))) # (!\one|WideOr1~0_combout\ & (\ten|WideOr1~0_combout\ & 
-- ((\myInterface|Selector11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \one|WideOr1~0_combout\,
	datab => \ten|WideOr1~0_combout\,
	datac => \myInterface|Selector11~2_combout\,
	datad => \myInterface|Selector11~1_combout\,
	combout => \myInterface|Selector8~1_combout\);

-- Location: LCCOMB_X45_Y32_N26
\myInterface|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector7~1_combout\ = (\one|WideOr0~0_combout\ & ((\myInterface|Selector11~2_combout\) # ((\ten|WideOr0~0_combout\ & \myInterface|Selector11~1_combout\)))) # (!\one|WideOr0~0_combout\ & (\ten|WideOr0~0_combout\ & 
-- ((\myInterface|Selector11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \one|WideOr0~0_combout\,
	datab => \ten|WideOr0~0_combout\,
	datac => \myInterface|Selector11~2_combout\,
	datad => \myInterface|Selector11~1_combout\,
	combout => \myInterface|Selector7~1_combout\);

-- Location: LCCOMB_X37_Y35_N8
\myBcdConverter|n~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~140_combout\ = \myBcdConverter|n~48_combout\ $ ((((\myBcdConverter|n~45_combout\ & \myBcdConverter|n~49_combout\)) # (!\myBcdConverter|n~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~45_combout\,
	datab => \myBcdConverter|n~48_combout\,
	datac => \myBcdConverter|n~47_combout\,
	datad => \myBcdConverter|n~49_combout\,
	combout => \myBcdConverter|n~140_combout\);

-- Location: LCCOMB_X36_Y35_N12
\myBcdConverter|n~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~9_combout\ = (\switches~combout\(11)) # (\switches~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches~combout\(11),
	datac => \switches~combout\(12),
	combout => \myBcdConverter|n~9_combout\);

-- Location: LCCOMB_X36_Y35_N6
\myBcdConverter|n~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~18_combout\ = (\switches~combout\(11) & (\switches~combout\(12) & ((\switches~combout\(10)) # (\switches~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches~combout\(11),
	datab => \switches~combout\(10),
	datac => \switches~combout\(12),
	datad => \switches~combout\(9),
	combout => \myBcdConverter|n~18_combout\);

-- Location: LCCOMB_X36_Y35_N24
\myBcdConverter|n~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~143_combout\ = (\switches~combout\(11) & ((\switches~combout\(15) $ (!\switches~combout\(12))) # (!\switches~combout\(14)))) # (!\switches~combout\(11) & ((\switches~combout\(15)) # (\switches~combout\(12) $ (\switches~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches~combout\(11),
	datab => \switches~combout\(15),
	datac => \switches~combout\(12),
	datad => \switches~combout\(14),
	combout => \myBcdConverter|n~143_combout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(6),
	combout => \switches~combout\(6));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcdBus[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myController|lcdBus[7]~reg0_regout\,
	oe => \myController|lcdBus[7]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => lcdBus(7),
	combout => \lcdBus[7]~7\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X48_Y32_N22
\myController|displayOnOff~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|displayOnOff~0_combout\ = (\myController|displayOnOff~regout\) # ((\myController|state.entryModeSet~regout\ & !\lcdBus[7]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myController|state.entryModeSet~regout\,
	datac => \myController|displayOnOff~regout\,
	datad => \lcdBus[7]~7\,
	combout => \myController|displayOnOff~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcdOn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lcdOn,
	combout => \lcdOn~combout\);

-- Location: CLKCTRL_G1
\lcdOn~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \lcdOn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \lcdOn~clkctrl_outclk\);

-- Location: LCFF_X48_Y32_N23
\myController|displayOnOff\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|displayOnOff~0_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|displayOnOff~regout\);

-- Location: LCCOMB_X48_Y32_N18
\myController|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Selector23~0_combout\ = (\lcdBus[7]~7\ & (((\myController|state.displayClear~regout\)))) # (!\lcdBus[7]~7\ & (\myController|state.displaySet~regout\ & (!\myController|displayOnOff~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|state.displaySet~regout\,
	datab => \myController|displayOnOff~regout\,
	datac => \myController|state.displayClear~regout\,
	datad => \lcdBus[7]~7\,
	combout => \myController|Selector23~0_combout\);

-- Location: LCFF_X48_Y32_N19
\myController|state.displayClear\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|Selector23~0_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|state.displayClear~regout\);

-- Location: LCCOMB_X48_Y32_N14
\myController|state.entryModeSet~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|state.entryModeSet~0_combout\ = (\lcdBus[7]~7\ & ((\myController|state.entryModeSet~regout\))) # (!\lcdBus[7]~7\ & (\myController|state.displayClear~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myController|state.displayClear~regout\,
	datac => \myController|state.entryModeSet~regout\,
	datad => \lcdBus[7]~7\,
	combout => \myController|state.entryModeSet~0_combout\);

-- Location: LCFF_X48_Y32_N15
\myController|state.entryModeSet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|state.entryModeSet~0_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|state.entryModeSet~regout\);

-- Location: LCCOMB_X48_Y32_N4
\myController|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Selector29~0_combout\ = (\myController|state.entryModeSet~regout\) # (\myController|state.displayClear~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myController|state.entryModeSet~regout\,
	datad => \myController|state.displayClear~regout\,
	combout => \myController|Selector29~0_combout\);

-- Location: LCCOMB_X46_Y32_N8
\myInterface|addrData~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|addrData~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \myInterface|addrData~feeder_combout\);

-- Location: LCCOMB_X54_Y30_N12
\myController|counter[0]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[0]~23_combout\ = \myController|counter\(0) $ (VCC)
-- \myController|counter[0]~24\ = CARRY(\myController|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myController|counter\(0),
	datad => VCC,
	combout => \myController|counter[0]~23_combout\,
	cout => \myController|counter[0]~24\);

-- Location: LCCOMB_X54_Y30_N28
\myController|counter[8]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[8]~43_combout\ = (\myController|counter\(8) & (\myController|counter[7]~42\ $ (GND))) # (!\myController|counter\(8) & (!\myController|counter[7]~42\ & VCC))
-- \myController|counter[8]~44\ = CARRY((\myController|counter\(8) & !\myController|counter[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myController|counter\(8),
	datad => VCC,
	cin => \myController|counter[7]~42\,
	combout => \myController|counter[8]~43_combout\,
	cout => \myController|counter[8]~44\);

-- Location: LCCOMB_X48_Y32_N16
\myController|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Selector22~0_combout\ = (\lcdBus[7]~7\ & (((\myController|state.displaySet~regout\ & !\myController|displayOnOff~regout\)))) # (!\lcdBus[7]~7\ & (\myController|state.entryModeSet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcdBus[7]~7\,
	datab => \myController|state.entryModeSet~regout\,
	datac => \myController|state.displaySet~regout\,
	datad => \myController|displayOnOff~regout\,
	combout => \myController|Selector22~0_combout\);

-- Location: LCFF_X48_Y32_N17
\myController|state.displaySet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|Selector22~0_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|state.displaySet~regout\);

-- Location: LCCOMB_X49_Y32_N28
\myController|state.write~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|state.write~0_combout\ = (\myController|state.write~regout\) # ((\myController|state.displaySet~regout\ & \myController|displayOnOff~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myController|state.displaySet~regout\,
	datac => \myController|state.write~regout\,
	datad => \myController|displayOnOff~regout\,
	combout => \myController|state.write~0_combout\);

-- Location: LCFF_X53_Y29_N15
\myController|state.write\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \myController|state.write~0_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|state.write~regout\);

-- Location: LCCOMB_X53_Y29_N10
\myController|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|WideOr0~0_combout\ = (\myController|state.write~regout\) # (!\myController|state.powerOn~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myController|state.write~regout\,
	datad => \myController|state.powerOn~regout\,
	combout => \myController|WideOr0~0_combout\);

-- Location: LCFF_X55_Y29_N27
\myController|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \myController|counter[8]~43_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sclr => \myController|counter[5]~28_combout\,
	sload => VCC,
	ena => \myController|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|counter\(8));

-- Location: LCCOMB_X54_Y29_N20
\myController|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Equal0~1_combout\ = (\myController|counter\(14) & (!\myController|counter\(11) & (!\myController|counter\(8) & !\myController|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|counter\(14),
	datab => \myController|counter\(11),
	datac => \myController|counter\(8),
	datad => \myController|counter\(2),
	combout => \myController|Equal0~1_combout\);

-- Location: LCCOMB_X54_Y30_N8
\myController|Equal3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Equal3~4_combout\ = (!\myController|counter\(0) & (!\myController|counter\(5) & (!\myController|counter\(1) & !\myController|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|counter\(0),
	datab => \myController|counter\(5),
	datac => \myController|counter\(1),
	datad => \myController|counter\(3),
	combout => \myController|Equal3~4_combout\);

-- Location: LCCOMB_X54_Y29_N28
\myController|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Equal0~4_combout\ = (\myController|counter\(17) & (!\myController|counter\(10) & (\myController|Equal0~1_combout\ & \myController|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|counter\(17),
	datab => \myController|counter\(10),
	datac => \myController|Equal0~1_combout\,
	datad => \myController|Equal3~4_combout\,
	combout => \myController|Equal0~4_combout\);

-- Location: LCCOMB_X54_Y29_N22
\myController|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Equal0~5_combout\ = (!\myController|counter\(13) & (\myController|counter\(16) & (\myController|counter\(17) & \myController|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|counter\(13),
	datab => \myController|counter\(16),
	datac => \myController|counter\(17),
	datad => \myController|Equal0~4_combout\,
	combout => \myController|Equal0~5_combout\);

-- Location: LCCOMB_X54_Y30_N20
\myController|counter[4]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[4]~35_combout\ = (\myController|counter\(4) & (\myController|counter[3]~34\ $ (GND))) # (!\myController|counter\(4) & (!\myController|counter[3]~34\ & VCC))
-- \myController|counter[4]~36\ = CARRY((\myController|counter\(4) & !\myController|counter[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myController|counter\(4),
	datad => VCC,
	cin => \myController|counter[3]~34\,
	combout => \myController|counter[4]~35_combout\,
	cout => \myController|counter[4]~36\);

-- Location: LCFF_X54_Y30_N21
\myController|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|counter[4]~35_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sclr => \myController|counter[5]~28_combout\,
	ena => \myController|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|counter\(4));

-- Location: LCCOMB_X54_Y29_N10
\myController|counter[15]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[15]~57_combout\ = (\myController|counter\(15) & (!\myController|counter[14]~56\)) # (!\myController|counter\(15) & ((\myController|counter[14]~56\) # (GND)))
-- \myController|counter[15]~58\ = CARRY((!\myController|counter[14]~56\) # (!\myController|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myController|counter\(15),
	datad => VCC,
	cin => \myController|counter[14]~56\,
	combout => \myController|counter[15]~57_combout\,
	cout => \myController|counter[15]~58\);

-- Location: LCFF_X54_Y29_N11
\myController|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|counter[15]~57_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sclr => \myController|counter[5]~28_combout\,
	ena => \myController|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|counter\(15));

-- Location: LCCOMB_X54_Y30_N24
\myController|counter[6]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[6]~39_combout\ = (\myController|counter\(6) & (\myController|counter[5]~38\ $ (GND))) # (!\myController|counter\(6) & (!\myController|counter[5]~38\ & VCC))
-- \myController|counter[6]~40\ = CARRY((\myController|counter\(6) & !\myController|counter[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myController|counter\(6),
	datad => VCC,
	cin => \myController|counter[5]~38\,
	combout => \myController|counter[6]~39_combout\,
	cout => \myController|counter[6]~40\);

-- Location: LCFF_X54_Y30_N25
\myController|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|counter[6]~39_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sclr => \myController|counter[5]~28_combout\,
	ena => \myController|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|counter\(6));

-- Location: LCCOMB_X53_Y29_N8
\myController|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Equal0~0_combout\ = (!\myController|counter\(12) & (!\myController|counter\(4) & (!\myController|counter\(15) & \myController|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|counter\(12),
	datab => \myController|counter\(4),
	datac => \myController|counter\(15),
	datad => \myController|counter\(6),
	combout => \myController|Equal0~0_combout\);

-- Location: LCCOMB_X53_Y29_N6
\myController|state.powerOn~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|state.powerOn~2_combout\ = (\myController|state.powerOn~regout\) # ((\myController|Equal0~2_combout\ & (\myController|Equal0~5_combout\ & \myController|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|Equal0~2_combout\,
	datab => \myController|Equal0~5_combout\,
	datac => \myController|state.powerOn~regout\,
	datad => \myController|Equal0~0_combout\,
	combout => \myController|state.powerOn~2_combout\);

-- Location: LCFF_X53_Y29_N7
\myController|state.powerOn\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|state.powerOn~2_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|state.powerOn~regout\);

-- Location: LCCOMB_X53_Y29_N4
\myController|counter[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[5]~26_combout\ = (\myController|counter\(12) & (\myController|counter\(4) & (!\myController|state.write~regout\ & !\myController|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|counter\(12),
	datab => \myController|counter\(4),
	datac => \myController|state.write~regout\,
	datad => \myController|counter\(6),
	combout => \myController|counter[5]~26_combout\);

-- Location: LCCOMB_X54_Y29_N24
\myController|counter[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[5]~27_combout\ = (\myController|Equal3~5_combout\ & (\myController|counter\(15) & (\myController|counter[5]~26_combout\ & \myController|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|Equal3~5_combout\,
	datab => \myController|counter\(15),
	datac => \myController|counter[5]~26_combout\,
	datad => \myController|Equal0~5_combout\,
	combout => \myController|counter[5]~27_combout\);

-- Location: LCCOMB_X53_Y29_N20
\myController|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Equal0~2_combout\ = (\myController|counter\(18) & (!\myController|counter\(7) & (\myController|counter\(9) & \myController|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|counter\(18),
	datab => \myController|counter\(7),
	datac => \myController|counter\(9),
	datad => \myController|counter\(19),
	combout => \myController|Equal0~2_combout\);

-- Location: LCCOMB_X54_Y29_N30
\myController|Selector21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Selector21~1_combout\ = (\myController|Equal0~0_combout\ & (!\myController|state.powerOn~regout\ & (\myController|Equal0~2_combout\ & \myController|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|Equal0~0_combout\,
	datab => \myController|state.powerOn~regout\,
	datac => \myController|Equal0~2_combout\,
	datad => \myController|Equal0~5_combout\,
	combout => \myController|Selector21~1_combout\);

-- Location: LCCOMB_X54_Y29_N26
\myController|counter[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[5]~28_combout\ = (\myController|Selector21~1_combout\) # ((\myController|state.powerOn~regout\ & ((\myController|counter[5]~25_combout\) # (\myController|counter[5]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|counter[5]~25_combout\,
	datab => \myController|state.powerOn~regout\,
	datac => \myController|counter[5]~27_combout\,
	datad => \myController|Selector21~1_combout\,
	combout => \myController|counter[5]~28_combout\);

-- Location: LCFF_X54_Y30_N13
\myController|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|counter[0]~23_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sclr => \myController|counter[5]~28_combout\,
	ena => \myController|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|counter\(0));

-- Location: LCCOMB_X54_Y30_N14
\myController|counter[1]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[1]~29_combout\ = (\myController|counter\(1) & (!\myController|counter[0]~24\)) # (!\myController|counter\(1) & ((\myController|counter[0]~24\) # (GND)))
-- \myController|counter[1]~30\ = CARRY((!\myController|counter[0]~24\) # (!\myController|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myController|counter\(1),
	datad => VCC,
	cin => \myController|counter[0]~24\,
	combout => \myController|counter[1]~29_combout\,
	cout => \myController|counter[1]~30\);

-- Location: LCFF_X54_Y30_N15
\myController|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|counter[1]~29_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sclr => \myController|counter[5]~28_combout\,
	ena => \myController|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|counter\(1));

-- Location: LCCOMB_X54_Y30_N16
\myController|counter[2]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[2]~31_combout\ = (\myController|counter\(2) & (\myController|counter[1]~30\ $ (GND))) # (!\myController|counter\(2) & (!\myController|counter[1]~30\ & VCC))
-- \myController|counter[2]~32\ = CARRY((\myController|counter\(2) & !\myController|counter[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myController|counter\(2),
	datad => VCC,
	cin => \myController|counter[1]~30\,
	combout => \myController|counter[2]~31_combout\,
	cout => \myController|counter[2]~32\);

-- Location: LCFF_X55_Y29_N29
\myController|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \myController|counter[2]~31_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sclr => \myController|counter[5]~28_combout\,
	sload => VCC,
	ena => \myController|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|counter\(2));

-- Location: LCCOMB_X54_Y30_N18
\myController|counter[3]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[3]~33_combout\ = (\myController|counter\(3) & (!\myController|counter[2]~32\)) # (!\myController|counter\(3) & ((\myController|counter[2]~32\) # (GND)))
-- \myController|counter[3]~34\ = CARRY((!\myController|counter[2]~32\) # (!\myController|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myController|counter\(3),
	datad => VCC,
	cin => \myController|counter[2]~32\,
	combout => \myController|counter[3]~33_combout\,
	cout => \myController|counter[3]~34\);

-- Location: LCFF_X54_Y30_N19
\myController|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|counter[3]~33_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sclr => \myController|counter[5]~28_combout\,
	ena => \myController|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|counter\(3));

-- Location: LCCOMB_X54_Y30_N22
\myController|counter[5]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[5]~37_combout\ = (\myController|counter\(5) & (!\myController|counter[4]~36\)) # (!\myController|counter\(5) & ((\myController|counter[4]~36\) # (GND)))
-- \myController|counter[5]~38\ = CARRY((!\myController|counter[4]~36\) # (!\myController|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myController|counter\(5),
	datad => VCC,
	cin => \myController|counter[4]~36\,
	combout => \myController|counter[5]~37_combout\,
	cout => \myController|counter[5]~38\);

-- Location: LCFF_X54_Y30_N23
\myController|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|counter[5]~37_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sclr => \myController|counter[5]~28_combout\,
	ena => \myController|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|counter\(5));

-- Location: LCCOMB_X54_Y30_N26
\myController|counter[7]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[7]~41_combout\ = (\myController|counter\(7) & (!\myController|counter[6]~40\)) # (!\myController|counter\(7) & ((\myController|counter[6]~40\) # (GND)))
-- \myController|counter[7]~42\ = CARRY((!\myController|counter[6]~40\) # (!\myController|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myController|counter\(7),
	datad => VCC,
	cin => \myController|counter[6]~40\,
	combout => \myController|counter[7]~41_combout\,
	cout => \myController|counter[7]~42\);

-- Location: LCFF_X54_Y30_N27
\myController|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|counter[7]~41_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sclr => \myController|counter[5]~28_combout\,
	ena => \myController|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|counter\(7));

-- Location: LCCOMB_X54_Y30_N30
\myController|counter[9]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[9]~45_combout\ = (\myController|counter\(9) & (!\myController|counter[8]~44\)) # (!\myController|counter\(9) & ((\myController|counter[8]~44\) # (GND)))
-- \myController|counter[9]~46\ = CARRY((!\myController|counter[8]~44\) # (!\myController|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myController|counter\(9),
	datad => VCC,
	cin => \myController|counter[8]~44\,
	combout => \myController|counter[9]~45_combout\,
	cout => \myController|counter[9]~46\);

-- Location: LCFF_X54_Y30_N31
\myController|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|counter[9]~45_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sclr => \myController|counter[5]~28_combout\,
	ena => \myController|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|counter\(9));

-- Location: LCCOMB_X54_Y29_N0
\myController|counter[10]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[10]~47_combout\ = (\myController|counter\(10) & (\myController|counter[9]~46\ $ (GND))) # (!\myController|counter\(10) & (!\myController|counter[9]~46\ & VCC))
-- \myController|counter[10]~48\ = CARRY((\myController|counter\(10) & !\myController|counter[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myController|counter\(10),
	datad => VCC,
	cin => \myController|counter[9]~46\,
	combout => \myController|counter[10]~47_combout\,
	cout => \myController|counter[10]~48\);

-- Location: LCFF_X54_Y29_N1
\myController|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|counter[10]~47_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sclr => \myController|counter[5]~28_combout\,
	ena => \myController|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|counter\(10));

-- Location: LCCOMB_X54_Y29_N2
\myController|counter[11]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[11]~49_combout\ = (\myController|counter\(11) & (!\myController|counter[10]~48\)) # (!\myController|counter\(11) & ((\myController|counter[10]~48\) # (GND)))
-- \myController|counter[11]~50\ = CARRY((!\myController|counter[10]~48\) # (!\myController|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myController|counter\(11),
	datad => VCC,
	cin => \myController|counter[10]~48\,
	combout => \myController|counter[11]~49_combout\,
	cout => \myController|counter[11]~50\);

-- Location: LCFF_X54_Y29_N3
\myController|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|counter[11]~49_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sclr => \myController|counter[5]~28_combout\,
	ena => \myController|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|counter\(11));

-- Location: LCCOMB_X54_Y29_N4
\myController|counter[12]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[12]~51_combout\ = (\myController|counter\(12) & (\myController|counter[11]~50\ $ (GND))) # (!\myController|counter\(12) & (!\myController|counter[11]~50\ & VCC))
-- \myController|counter[12]~52\ = CARRY((\myController|counter\(12) & !\myController|counter[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myController|counter\(12),
	datad => VCC,
	cin => \myController|counter[11]~50\,
	combout => \myController|counter[12]~51_combout\,
	cout => \myController|counter[12]~52\);

-- Location: LCFF_X54_Y29_N5
\myController|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|counter[12]~51_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sclr => \myController|counter[5]~28_combout\,
	ena => \myController|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|counter\(12));

-- Location: LCCOMB_X54_Y29_N8
\myController|counter[14]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[14]~55_combout\ = (\myController|counter\(14) & (\myController|counter[13]~54\ $ (GND))) # (!\myController|counter\(14) & (!\myController|counter[13]~54\ & VCC))
-- \myController|counter[14]~56\ = CARRY((\myController|counter\(14) & !\myController|counter[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myController|counter\(14),
	datad => VCC,
	cin => \myController|counter[13]~54\,
	combout => \myController|counter[14]~55_combout\,
	cout => \myController|counter[14]~56\);

-- Location: LCFF_X54_Y29_N9
\myController|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|counter[14]~55_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sclr => \myController|counter[5]~28_combout\,
	ena => \myController|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|counter\(14));

-- Location: LCCOMB_X54_Y29_N12
\myController|counter[16]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[16]~59_combout\ = (\myController|counter\(16) & (\myController|counter[15]~58\ $ (GND))) # (!\myController|counter\(16) & (!\myController|counter[15]~58\ & VCC))
-- \myController|counter[16]~60\ = CARRY((\myController|counter\(16) & !\myController|counter[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myController|counter\(16),
	datad => VCC,
	cin => \myController|counter[15]~58\,
	combout => \myController|counter[16]~59_combout\,
	cout => \myController|counter[16]~60\);

-- Location: LCFF_X54_Y29_N13
\myController|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|counter[16]~59_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sclr => \myController|counter[5]~28_combout\,
	ena => \myController|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|counter\(16));

-- Location: LCCOMB_X54_Y29_N14
\myController|counter[17]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[17]~61_combout\ = (\myController|counter\(17) & (!\myController|counter[16]~60\)) # (!\myController|counter\(17) & ((\myController|counter[16]~60\) # (GND)))
-- \myController|counter[17]~62\ = CARRY((!\myController|counter[16]~60\) # (!\myController|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myController|counter\(17),
	datad => VCC,
	cin => \myController|counter[16]~60\,
	combout => \myController|counter[17]~61_combout\,
	cout => \myController|counter[17]~62\);

-- Location: LCFF_X54_Y29_N15
\myController|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|counter[17]~61_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sclr => \myController|counter[5]~28_combout\,
	ena => \myController|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|counter\(17));

-- Location: LCCOMB_X54_Y29_N18
\myController|counter[19]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|counter[19]~65_combout\ = \myController|counter[18]~64\ $ (\myController|counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \myController|counter\(19),
	cin => \myController|counter[18]~64\,
	combout => \myController|counter[19]~65_combout\);

-- Location: LCFF_X54_Y29_N19
\myController|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|counter[19]~65_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sclr => \myController|counter[5]~28_combout\,
	ena => \myController|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|counter\(19));

-- Location: LCCOMB_X53_Y29_N2
\myController|Equal3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Equal3~5_combout\ = (!\myController|counter\(18) & (!\myController|counter\(19) & (\myController|counter\(7) & !\myController|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|counter\(18),
	datab => \myController|counter\(19),
	datac => \myController|counter\(7),
	datad => \myController|counter\(9),
	combout => \myController|Equal3~5_combout\);

-- Location: LCCOMB_X53_Y29_N24
\myController|Equal3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Equal3~9_combout\ = (!\myController|counter\(13) & (!\myController|counter\(10) & \myController|Equal3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|counter\(13),
	datac => \myController|counter\(10),
	datad => \myController|Equal3~4_combout\,
	combout => \myController|Equal3~9_combout\);

-- Location: LCCOMB_X53_Y29_N18
\myController|Equal3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Equal3~10_combout\ = (\myController|Equal3~8_combout\ & (\myController|Equal3~5_combout\ & (\myController|Equal3~9_combout\ & \myController|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|Equal3~8_combout\,
	datab => \myController|Equal3~5_combout\,
	datac => \myController|Equal3~9_combout\,
	datad => \myController|Equal0~0_combout\,
	combout => \myController|Equal3~10_combout\);

-- Location: LCCOMB_X53_Y29_N26
\myController|busLock~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|busLock~0_combout\ = (\myController|state.write~regout\ & ((\lcdOn~combout\ & ((!\myController|Equal3~10_combout\))) # (!\lcdOn~combout\ & (\myController|busLock~regout\)))) # (!\myController|state.write~regout\ & 
-- (((\myController|busLock~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|state.write~regout\,
	datab => \lcdOn~combout\,
	datac => \myController|busLock~regout\,
	datad => \myController|Equal3~10_combout\,
	combout => \myController|busLock~0_combout\);

-- Location: LCFF_X53_Y29_N27
\myController|busLock\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|busLock~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|busLock~regout\);

-- Location: LCFF_X46_Y32_N9
\myInterface|addrData\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|addrData~feeder_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	ena => \myController|ALT_INV_busLock~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|addrData~regout\);

-- Location: LCCOMB_X46_Y32_N26
\myInterface|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector1~0_combout\ = (\myInterface|addrData~regout\ & !\myController|busLock~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myInterface|addrData~regout\,
	datad => \myController|busLock~regout\,
	combout => \myInterface|Selector1~0_combout\);

-- Location: LCFF_X46_Y32_N7
\myInterface|state.hundred\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \myInterface|state.thousand~regout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sload => VCC,
	ena => \myInterface|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|state.hundred~regout\);

-- Location: LCFF_X46_Y32_N11
\myInterface|state.ten\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \myInterface|state.hundred~regout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	sload => VCC,
	ena => \myInterface|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|state.ten~regout\);

-- Location: LCCOMB_X46_Y32_N14
\myInterface|state.one~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|state.one~feeder_combout\ = \myInterface|state.ten~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myInterface|state.ten~regout\,
	combout => \myInterface|state.one~feeder_combout\);

-- Location: LCFF_X46_Y32_N15
\myInterface|state.one\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|state.one~feeder_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	ena => \myInterface|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|state.one~regout\);

-- Location: LCCOMB_X46_Y32_N18
\myInterface|state.tenThousand~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|state.tenThousand~0_combout\ = !\myInterface|state.one~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myInterface|state.one~regout\,
	combout => \myInterface|state.tenThousand~0_combout\);

-- Location: LCFF_X46_Y32_N19
\myInterface|state.tenThousand\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|state.tenThousand~0_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	ena => \myInterface|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|state.tenThousand~regout\);

-- Location: LCCOMB_X46_Y32_N28
\myInterface|state.thousand~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|state.thousand~0_combout\ = !\myInterface|state.tenThousand~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myInterface|state.tenThousand~regout\,
	combout => \myInterface|state.thousand~0_combout\);

-- Location: LCFF_X46_Y32_N29
\myInterface|state.thousand\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|state.thousand~0_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	ena => \myInterface|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|state.thousand~regout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(15),
	combout => \switches~combout\(15));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(13),
	combout => \switches~combout\(13));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(14),
	combout => \switches~combout\(14));

-- Location: LCCOMB_X36_Y35_N28
\myBcdConverter|n~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~32_combout\ = (\switches~combout\(15) & (!\switches~combout\(13) & ((\switches~combout\(14)) # (!\switches~combout\(12))))) # (!\switches~combout\(15) & (\switches~combout\(13) & ((\switches~combout\(12)) # (!\switches~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches~combout\(12),
	datab => \switches~combout\(15),
	datac => \switches~combout\(13),
	datad => \switches~combout\(14),
	combout => \myBcdConverter|n~32_combout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(11),
	combout => \switches~combout\(11));

-- Location: LCCOMB_X36_Y35_N0
\myBcdConverter|n~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~30_combout\ = (\switches~combout\(12) & (\switches~combout\(14) $ (((\switches~combout\(13)) # (!\switches~combout\(15)))))) # (!\switches~combout\(12) & ((\switches~combout\(15) & (!\switches~combout\(13) & !\switches~combout\(14))) # 
-- (!\switches~combout\(15) & (\switches~combout\(13) & \switches~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches~combout\(12),
	datab => \switches~combout\(15),
	datac => \switches~combout\(13),
	datad => \switches~combout\(14),
	combout => \myBcdConverter|n~30_combout\);

-- Location: LCCOMB_X36_Y35_N22
\myBcdConverter|n~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~33_combout\ = (\myBcdConverter|n~31_combout\ & (((!\switches~combout\(11))))) # (!\myBcdConverter|n~31_combout\ & ((\myBcdConverter|n~32_combout\ & (!\switches~combout\(11) & \myBcdConverter|n~30_combout\)) # 
-- (!\myBcdConverter|n~32_combout\ & (\switches~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~31_combout\,
	datab => \myBcdConverter|n~32_combout\,
	datac => \switches~combout\(11),
	datad => \myBcdConverter|n~30_combout\,
	combout => \myBcdConverter|n~33_combout\);

-- Location: LCCOMB_X36_Y35_N8
\myBcdConverter|n~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~34_combout\ = (\myBcdConverter|n~32_combout\ & (((!\switches~combout\(11) & !\myBcdConverter|n~30_combout\)))) # (!\myBcdConverter|n~32_combout\ & (\myBcdConverter|n~31_combout\ & ((\switches~combout\(11)) # 
-- (\myBcdConverter|n~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~31_combout\,
	datab => \myBcdConverter|n~32_combout\,
	datac => \switches~combout\(11),
	datad => \myBcdConverter|n~30_combout\,
	combout => \myBcdConverter|n~34_combout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(10),
	combout => \switches~combout\(10));

-- Location: LCCOMB_X38_Y35_N14
\myBcdConverter|n~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~37_combout\ = (\myBcdConverter|n~35_combout\ & (!\myBcdConverter|n~33_combout\ & ((!\switches~combout\(10))))) # (!\myBcdConverter|n~35_combout\ & (\myBcdConverter|n~34_combout\ & ((\myBcdConverter|n~33_combout\) # 
-- (\switches~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~35_combout\,
	datab => \myBcdConverter|n~33_combout\,
	datac => \myBcdConverter|n~34_combout\,
	datad => \switches~combout\(10),
	combout => \myBcdConverter|n~37_combout\);

-- Location: LCCOMB_X38_Y35_N4
\myBcdConverter|n~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~38_combout\ = (\myBcdConverter|n~33_combout\ & ((\switches~combout\(10)) # ((!\myBcdConverter|n~35_combout\ & !\myBcdConverter|n~34_combout\)))) # (!\myBcdConverter|n~33_combout\ & (((\myBcdConverter|n~34_combout\ & 
-- !\switches~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~35_combout\,
	datab => \myBcdConverter|n~33_combout\,
	datac => \myBcdConverter|n~34_combout\,
	datad => \switches~combout\(10),
	combout => \myBcdConverter|n~38_combout\);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(9),
	combout => \switches~combout\(9));

-- Location: LCCOMB_X38_Y35_N28
\myBcdConverter|n~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~40_combout\ = (\myBcdConverter|n~38_combout\ & (!\myBcdConverter|n~36_combout\ & ((!\switches~combout\(9))))) # (!\myBcdConverter|n~38_combout\ & (\myBcdConverter|n~37_combout\ & ((\myBcdConverter|n~36_combout\) # 
-- (\switches~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~36_combout\,
	datab => \myBcdConverter|n~37_combout\,
	datac => \myBcdConverter|n~38_combout\,
	datad => \switches~combout\(9),
	combout => \myBcdConverter|n~40_combout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(8),
	combout => \switches~combout\(8));

-- Location: LCCOMB_X38_Y35_N6
\myBcdConverter|n~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~39_combout\ = (\myBcdConverter|n~36_combout\ & ((\switches~combout\(9)) # ((!\myBcdConverter|n~37_combout\ & !\myBcdConverter|n~38_combout\)))) # (!\myBcdConverter|n~36_combout\ & (\myBcdConverter|n~37_combout\ & 
-- ((!\switches~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~36_combout\,
	datab => \myBcdConverter|n~37_combout\,
	datac => \myBcdConverter|n~38_combout\,
	datad => \switches~combout\(9),
	combout => \myBcdConverter|n~39_combout\);

-- Location: LCCOMB_X38_Y35_N2
\myBcdConverter|n~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~64_combout\ = (\myBcdConverter|n~40_combout\ & (((!\switches~combout\(8))))) # (!\myBcdConverter|n~40_combout\ & ((\switches~combout\(8) & ((!\myBcdConverter|n~39_combout\))) # (!\switches~combout\(8) & (\myBcdConverter|n~41_combout\ & 
-- \myBcdConverter|n~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~41_combout\,
	datab => \myBcdConverter|n~40_combout\,
	datac => \switches~combout\(8),
	datad => \myBcdConverter|n~39_combout\,
	combout => \myBcdConverter|n~64_combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(7),
	combout => \switches~combout\(7));

-- Location: LCCOMB_X38_Y35_N18
\myBcdConverter|n~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~62_combout\ = (\myBcdConverter|n~41_combout\ & ((\switches~combout\(8)) # ((!\myBcdConverter|n~40_combout\ & !\myBcdConverter|n~39_combout\)))) # (!\myBcdConverter|n~41_combout\ & (\myBcdConverter|n~40_combout\ & 
-- (!\switches~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~41_combout\,
	datab => \myBcdConverter|n~40_combout\,
	datac => \switches~combout\(8),
	datad => \myBcdConverter|n~39_combout\,
	combout => \myBcdConverter|n~62_combout\);

-- Location: LCCOMB_X38_Y35_N0
\myBcdConverter|n~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~74_combout\ = (\myBcdConverter|n~62_combout\ & (((!\myBcdConverter|n~64_combout\ & !\switches~combout\(7))))) # (!\myBcdConverter|n~62_combout\ & (\myBcdConverter|n~63_combout\ & ((\myBcdConverter|n~64_combout\) # 
-- (\switches~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~63_combout\,
	datab => \myBcdConverter|n~64_combout\,
	datac => \switches~combout\(7),
	datad => \myBcdConverter|n~62_combout\,
	combout => \myBcdConverter|n~74_combout\);

-- Location: LCCOMB_X38_Y35_N26
\myBcdConverter|n~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~75_combout\ = (\myBcdConverter|n~63_combout\ & (((!\switches~combout\(7))))) # (!\myBcdConverter|n~63_combout\ & ((\switches~combout\(7) & ((!\myBcdConverter|n~62_combout\))) # (!\switches~combout\(7) & (\myBcdConverter|n~64_combout\ & 
-- \myBcdConverter|n~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~63_combout\,
	datab => \myBcdConverter|n~64_combout\,
	datac => \switches~combout\(7),
	datad => \myBcdConverter|n~62_combout\,
	combout => \myBcdConverter|n~75_combout\);

-- Location: LCCOMB_X38_Y35_N22
\myBcdConverter|n~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~73_combout\ = (\myBcdConverter|n~63_combout\ & (\myBcdConverter|n~64_combout\ $ ((!\switches~combout\(7))))) # (!\myBcdConverter|n~63_combout\ & (\myBcdConverter|n~64_combout\ & ((\switches~combout\(7)) # 
-- (!\myBcdConverter|n~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~63_combout\,
	datab => \myBcdConverter|n~64_combout\,
	datac => \switches~combout\(7),
	datad => \myBcdConverter|n~62_combout\,
	combout => \myBcdConverter|n~73_combout\);

-- Location: LCCOMB_X40_Y35_N18
\myBcdConverter|n~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~88_combout\ = (\switches~combout\(6) & (!\myBcdConverter|n~74_combout\ & ((!\myBcdConverter|n~73_combout\)))) # (!\switches~combout\(6) & ((\myBcdConverter|n~74_combout\) # ((\myBcdConverter|n~75_combout\ & 
-- \myBcdConverter|n~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches~combout\(6),
	datab => \myBcdConverter|n~74_combout\,
	datac => \myBcdConverter|n~75_combout\,
	datad => \myBcdConverter|n~73_combout\,
	combout => \myBcdConverter|n~88_combout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(5),
	combout => \switches~combout\(5));

-- Location: LCCOMB_X40_Y35_N22
\myBcdConverter|n~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~86_combout\ = (\switches~combout\(6) & (((\myBcdConverter|n~75_combout\)))) # (!\switches~combout\(6) & ((\myBcdConverter|n~74_combout\ & (!\myBcdConverter|n~75_combout\)) # (!\myBcdConverter|n~74_combout\ & 
-- (\myBcdConverter|n~75_combout\ & !\myBcdConverter|n~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches~combout\(6),
	datab => \myBcdConverter|n~74_combout\,
	datac => \myBcdConverter|n~75_combout\,
	datad => \myBcdConverter|n~73_combout\,
	combout => \myBcdConverter|n~86_combout\);

-- Location: LCCOMB_X40_Y35_N26
\myBcdConverter|n~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~104_combout\ = (\myBcdConverter|n~87_combout\ & (((!\switches~combout\(5))))) # (!\myBcdConverter|n~87_combout\ & ((\switches~combout\(5) & ((!\myBcdConverter|n~86_combout\))) # (!\switches~combout\(5) & (\myBcdConverter|n~88_combout\ & 
-- \myBcdConverter|n~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~87_combout\,
	datab => \myBcdConverter|n~88_combout\,
	datac => \switches~combout\(5),
	datad => \myBcdConverter|n~86_combout\,
	combout => \myBcdConverter|n~104_combout\);

-- Location: LCCOMB_X40_Y35_N20
\myBcdConverter|n~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~103_combout\ = (\myBcdConverter|n~86_combout\ & (((!\myBcdConverter|n~88_combout\ & !\switches~combout\(5))))) # (!\myBcdConverter|n~86_combout\ & (\myBcdConverter|n~87_combout\ & ((\myBcdConverter|n~88_combout\) # 
-- (\switches~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~87_combout\,
	datab => \myBcdConverter|n~88_combout\,
	datac => \switches~combout\(5),
	datad => \myBcdConverter|n~86_combout\,
	combout => \myBcdConverter|n~103_combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(4),
	combout => \switches~combout\(4));

-- Location: LCCOMB_X40_Y35_N24
\myBcdConverter|n~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~118_combout\ = (\myBcdConverter|n~102_combout\ & (!\myBcdConverter|n~104_combout\ & ((!\switches~combout\(4))))) # (!\myBcdConverter|n~102_combout\ & (\myBcdConverter|n~103_combout\ & ((\myBcdConverter|n~104_combout\) # 
-- (\switches~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~102_combout\,
	datab => \myBcdConverter|n~104_combout\,
	datac => \myBcdConverter|n~103_combout\,
	datad => \switches~combout\(4),
	combout => \myBcdConverter|n~118_combout\);

-- Location: LCCOMB_X40_Y35_N10
\myBcdConverter|n~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~119_combout\ = (\myBcdConverter|n~102_combout\ & (!\switches~combout\(4) & ((\myBcdConverter|n~104_combout\) # (\myBcdConverter|n~103_combout\)))) # (!\myBcdConverter|n~102_combout\ & ((\myBcdConverter|n~103_combout\ $ 
-- (\switches~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~102_combout\,
	datab => \myBcdConverter|n~104_combout\,
	datac => \myBcdConverter|n~103_combout\,
	datad => \switches~combout\(4),
	combout => \myBcdConverter|n~119_combout\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(3),
	combout => \switches~combout\(3));

-- Location: LCCOMB_X42_Y35_N26
\myBcdConverter|n~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~129_combout\ = (\myBcdConverter|n~117_combout\ & (((!\myBcdConverter|n~119_combout\ & !\switches~combout\(3))))) # (!\myBcdConverter|n~117_combout\ & (\myBcdConverter|n~118_combout\ & ((\myBcdConverter|n~119_combout\) # 
-- (\switches~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~117_combout\,
	datab => \myBcdConverter|n~118_combout\,
	datac => \myBcdConverter|n~119_combout\,
	datad => \switches~combout\(3),
	combout => \myBcdConverter|n~129_combout\);

-- Location: LCCOMB_X42_Y35_N16
\myBcdConverter|n~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~130_combout\ = (\myBcdConverter|n~117_combout\ & (!\switches~combout\(3) & ((\myBcdConverter|n~118_combout\) # (\myBcdConverter|n~119_combout\)))) # (!\myBcdConverter|n~117_combout\ & (\myBcdConverter|n~118_combout\ $ 
-- (((\switches~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~117_combout\,
	datab => \myBcdConverter|n~118_combout\,
	datac => \myBcdConverter|n~119_combout\,
	datad => \switches~combout\(3),
	combout => \myBcdConverter|n~130_combout\);

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(2),
	combout => \switches~combout\(2));

-- Location: LCCOMB_X42_Y35_N18
\myBcdConverter|n~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~135_combout\ = (\myBcdConverter|n~128_combout\ & (!\switches~combout\(2) & ((\myBcdConverter|n~129_combout\) # (\myBcdConverter|n~130_combout\)))) # (!\myBcdConverter|n~128_combout\ & (\myBcdConverter|n~129_combout\ $ 
-- (((\switches~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~128_combout\,
	datab => \myBcdConverter|n~129_combout\,
	datac => \myBcdConverter|n~130_combout\,
	datad => \switches~combout\(2),
	combout => \myBcdConverter|n~135_combout\);

-- Location: LCCOMB_X42_Y35_N30
\myBcdConverter|n~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~137_combout\ = (\myBcdConverter|n~129_combout\ & ((\myBcdConverter|n~130_combout\ $ (!\switches~combout\(2))))) # (!\myBcdConverter|n~129_combout\ & (\myBcdConverter|n~130_combout\ & ((\switches~combout\(2)) # 
-- (!\myBcdConverter|n~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~128_combout\,
	datab => \myBcdConverter|n~129_combout\,
	datac => \myBcdConverter|n~130_combout\,
	datad => \switches~combout\(2),
	combout => \myBcdConverter|n~137_combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(1),
	combout => \switches~combout\(1));

-- Location: LCCOMB_X45_Y35_N4
\myBcdConverter|tens[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|tens[0]~0_combout\ = \myBcdConverter|n~136_combout\ $ ((((!\myBcdConverter|n~135_combout\ & !\switches~combout\(1))) # (!\myBcdConverter|n~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~136_combout\,
	datab => \myBcdConverter|n~135_combout\,
	datac => \myBcdConverter|n~137_combout\,
	datad => \switches~combout\(1),
	combout => \myBcdConverter|tens[0]~0_combout\);

-- Location: LCCOMB_X36_Y35_N26
\myBcdConverter|n~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~44_combout\ = \myBcdConverter|n~31_combout\ $ ((((!\switches~combout\(11) & !\myBcdConverter|n~30_combout\)) # (!\myBcdConverter|n~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~31_combout\,
	datab => \myBcdConverter|n~32_combout\,
	datac => \switches~combout\(11),
	datad => \myBcdConverter|n~30_combout\,
	combout => \myBcdConverter|n~44_combout\);

-- Location: LCCOMB_X36_Y35_N4
\myBcdConverter|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|LessThan0~0_combout\ = (\switches~combout\(15) & ((\switches~combout\(13)) # (\switches~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches~combout\(13),
	datac => \switches~combout\(15),
	datad => \switches~combout\(14),
	combout => \myBcdConverter|LessThan0~0_combout\);

-- Location: LCCOMB_X38_Y35_N30
\myBcdConverter|n~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~43_combout\ = \myBcdConverter|n~34_combout\ $ ((((!\myBcdConverter|n~33_combout\ & !\switches~combout\(10))) # (!\myBcdConverter|n~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~35_combout\,
	datab => \myBcdConverter|n~33_combout\,
	datac => \myBcdConverter|n~34_combout\,
	datad => \switches~combout\(10),
	combout => \myBcdConverter|n~43_combout\);

-- Location: LCCOMB_X37_Y35_N0
\myBcdConverter|n~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~48_combout\ = (\myBcdConverter|n~139_combout\ & (\myBcdConverter|n~43_combout\ & (\myBcdConverter|n~44_combout\ $ (\myBcdConverter|LessThan0~0_combout\)))) # (!\myBcdConverter|n~139_combout\ & (\myBcdConverter|n~44_combout\ & 
-- (\myBcdConverter|LessThan0~0_combout\ & !\myBcdConverter|n~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~139_combout\,
	datab => \myBcdConverter|n~44_combout\,
	datac => \myBcdConverter|LessThan0~0_combout\,
	datad => \myBcdConverter|n~43_combout\,
	combout => \myBcdConverter|n~48_combout\);

-- Location: LCCOMB_X36_Y35_N16
\myBcdConverter|n~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~46_combout\ = (\switches~combout\(12) & (\switches~combout\(15) & (\switches~combout\(13) & \switches~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches~combout\(12),
	datab => \switches~combout\(15),
	datac => \switches~combout\(13),
	datad => \switches~combout\(14),
	combout => \myBcdConverter|n~46_combout\);

-- Location: LCCOMB_X37_Y35_N22
\myBcdConverter|n~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~138_combout\ = (\myBcdConverter|n~44_combout\ & (!\myBcdConverter|LessThan0~0_combout\ & \myBcdConverter|n~46_combout\)) # (!\myBcdConverter|n~44_combout\ & ((\myBcdConverter|n~46_combout\) # (!\myBcdConverter|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myBcdConverter|n~44_combout\,
	datac => \myBcdConverter|LessThan0~0_combout\,
	datad => \myBcdConverter|n~46_combout\,
	combout => \myBcdConverter|n~138_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(12),
	combout => \switches~combout\(12));

-- Location: LCCOMB_X36_Y35_N30
\myBcdConverter|n~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~144_combout\ = (\myBcdConverter|n~143_combout\ & (\switches~combout\(13) $ (((!\switches~combout\(12) & \switches~combout\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~143_combout\,
	datab => \switches~combout\(13),
	datac => \switches~combout\(12),
	datad => \switches~combout\(14),
	combout => \myBcdConverter|n~144_combout\);

-- Location: LCCOMB_X37_Y35_N14
\myBcdConverter|n~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~47_combout\ = (\myBcdConverter|n~43_combout\ & (((\myBcdConverter|n~144_combout\)))) # (!\myBcdConverter|n~43_combout\ & (\myBcdConverter|n~138_combout\ $ (((\myBcdConverter|n~139_combout\ & \myBcdConverter|n~144_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~139_combout\,
	datab => \myBcdConverter|n~138_combout\,
	datac => \myBcdConverter|n~144_combout\,
	datad => \myBcdConverter|n~43_combout\,
	combout => \myBcdConverter|n~47_combout\);

-- Location: LCCOMB_X38_Y35_N24
\myBcdConverter|n~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~49_combout\ = \myBcdConverter|n~37_combout\ $ ((((!\myBcdConverter|n~36_combout\ & !\switches~combout\(9))) # (!\myBcdConverter|n~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~36_combout\,
	datab => \myBcdConverter|n~37_combout\,
	datac => \myBcdConverter|n~38_combout\,
	datad => \switches~combout\(9),
	combout => \myBcdConverter|n~49_combout\);

-- Location: LCCOMB_X37_Y35_N26
\myBcdConverter|n~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~50_combout\ = (\myBcdConverter|n~48_combout\ & (((!\myBcdConverter|n~49_combout\)))) # (!\myBcdConverter|n~48_combout\ & ((\myBcdConverter|n~47_combout\ & ((\myBcdConverter|n~45_combout\) # (!\myBcdConverter|n~49_combout\))) # 
-- (!\myBcdConverter|n~47_combout\ & ((\myBcdConverter|n~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~45_combout\,
	datab => \myBcdConverter|n~48_combout\,
	datac => \myBcdConverter|n~47_combout\,
	datad => \myBcdConverter|n~49_combout\,
	combout => \myBcdConverter|n~50_combout\);

-- Location: LCCOMB_X37_Y35_N24
\myBcdConverter|n~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~51_combout\ = (\myBcdConverter|n~45_combout\ & (((!\myBcdConverter|n~49_combout\)) # (!\myBcdConverter|n~48_combout\))) # (!\myBcdConverter|n~45_combout\ & (\myBcdConverter|n~49_combout\ & ((\myBcdConverter|n~48_combout\) # 
-- (\myBcdConverter|n~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~45_combout\,
	datab => \myBcdConverter|n~48_combout\,
	datac => \myBcdConverter|n~47_combout\,
	datad => \myBcdConverter|n~49_combout\,
	combout => \myBcdConverter|n~51_combout\);

-- Location: LCCOMB_X38_Y35_N8
\myBcdConverter|n~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~42_combout\ = \myBcdConverter|n~40_combout\ $ ((((!\myBcdConverter|n~41_combout\ & !\switches~combout\(8))) # (!\myBcdConverter|n~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~41_combout\,
	datab => \myBcdConverter|n~40_combout\,
	datac => \switches~combout\(8),
	datad => \myBcdConverter|n~39_combout\,
	combout => \myBcdConverter|n~42_combout\);

-- Location: LCCOMB_X41_Y35_N22
\myBcdConverter|n~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~68_combout\ = (\myBcdConverter|n~51_combout\ & (\myBcdConverter|n~52_combout\ & ((!\myBcdConverter|n~42_combout\) # (!\myBcdConverter|n~50_combout\)))) # (!\myBcdConverter|n~51_combout\ & (((\myBcdConverter|n~50_combout\ & 
-- \myBcdConverter|n~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~52_combout\,
	datab => \myBcdConverter|n~50_combout\,
	datac => \myBcdConverter|n~51_combout\,
	datad => \myBcdConverter|n~42_combout\,
	combout => \myBcdConverter|n~68_combout\);

-- Location: LCCOMB_X38_Y35_N12
\myBcdConverter|n~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~65_combout\ = \myBcdConverter|n~63_combout\ $ ((((!\myBcdConverter|n~64_combout\ & !\switches~combout\(7))) # (!\myBcdConverter|n~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~63_combout\,
	datab => \myBcdConverter|n~64_combout\,
	datac => \switches~combout\(7),
	datad => \myBcdConverter|n~62_combout\,
	combout => \myBcdConverter|n~65_combout\);

-- Location: LCCOMB_X41_Y35_N0
\myBcdConverter|n~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~67_combout\ = (\myBcdConverter|n~52_combout\ & (\myBcdConverter|n~50_combout\ $ (((\myBcdConverter|n~42_combout\))))) # (!\myBcdConverter|n~52_combout\ & ((\myBcdConverter|n~50_combout\) # ((!\myBcdConverter|n~51_combout\ & 
-- \myBcdConverter|n~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~52_combout\,
	datab => \myBcdConverter|n~50_combout\,
	datac => \myBcdConverter|n~51_combout\,
	datad => \myBcdConverter|n~42_combout\,
	combout => \myBcdConverter|n~67_combout\);

-- Location: LCCOMB_X41_Y35_N18
\myBcdConverter|n~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~79_combout\ = (\myBcdConverter|n~67_combout\ & (\myBcdConverter|n~68_combout\ & ((!\myBcdConverter|n~65_combout\) # (!\myBcdConverter|n~66_combout\)))) # (!\myBcdConverter|n~67_combout\ & (\myBcdConverter|n~66_combout\ & 
-- ((\myBcdConverter|n~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~66_combout\,
	datab => \myBcdConverter|n~68_combout\,
	datac => \myBcdConverter|n~65_combout\,
	datad => \myBcdConverter|n~67_combout\,
	combout => \myBcdConverter|n~79_combout\);

-- Location: LCCOMB_X40_Y35_N0
\myBcdConverter|n~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~76_combout\ = \myBcdConverter|n~74_combout\ $ ((((!\switches~combout\(6) & !\myBcdConverter|n~75_combout\)) # (!\myBcdConverter|n~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches~combout\(6),
	datab => \myBcdConverter|n~74_combout\,
	datac => \myBcdConverter|n~75_combout\,
	datad => \myBcdConverter|n~73_combout\,
	combout => \myBcdConverter|n~76_combout\);

-- Location: LCCOMB_X41_Y35_N28
\myBcdConverter|n~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~78_combout\ = (\myBcdConverter|n~66_combout\ & (((!\myBcdConverter|n~65_combout\)) # (!\myBcdConverter|n~68_combout\))) # (!\myBcdConverter|n~66_combout\ & (\myBcdConverter|n~65_combout\ & ((\myBcdConverter|n~68_combout\) # 
-- (!\myBcdConverter|n~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~66_combout\,
	datab => \myBcdConverter|n~68_combout\,
	datac => \myBcdConverter|n~65_combout\,
	datad => \myBcdConverter|n~67_combout\,
	combout => \myBcdConverter|n~78_combout\);

-- Location: LCCOMB_X41_Y35_N26
\myBcdConverter|n~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~92_combout\ = (\myBcdConverter|n~78_combout\ & (\myBcdConverter|n~79_combout\ & ((!\myBcdConverter|n~76_combout\) # (!\myBcdConverter|n~77_combout\)))) # (!\myBcdConverter|n~78_combout\ & (\myBcdConverter|n~77_combout\ & 
-- ((\myBcdConverter|n~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~77_combout\,
	datab => \myBcdConverter|n~79_combout\,
	datac => \myBcdConverter|n~76_combout\,
	datad => \myBcdConverter|n~78_combout\,
	combout => \myBcdConverter|n~92_combout\);

-- Location: LCCOMB_X41_Y35_N20
\myBcdConverter|n~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~91_combout\ = (\myBcdConverter|n~77_combout\ & (((!\myBcdConverter|n~76_combout\)) # (!\myBcdConverter|n~79_combout\))) # (!\myBcdConverter|n~77_combout\ & (\myBcdConverter|n~76_combout\ & ((\myBcdConverter|n~79_combout\) # 
-- (!\myBcdConverter|n~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~77_combout\,
	datab => \myBcdConverter|n~79_combout\,
	datac => \myBcdConverter|n~76_combout\,
	datad => \myBcdConverter|n~78_combout\,
	combout => \myBcdConverter|n~91_combout\);

-- Location: LCCOMB_X41_Y35_N2
\myBcdConverter|n~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~90_combout\ = (\myBcdConverter|n~79_combout\ & (((!\myBcdConverter|n~76_combout\)))) # (!\myBcdConverter|n~79_combout\ & ((\myBcdConverter|n~76_combout\ & ((\myBcdConverter|n~77_combout\) # (\myBcdConverter|n~78_combout\))) # 
-- (!\myBcdConverter|n~76_combout\ & ((!\myBcdConverter|n~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~77_combout\,
	datab => \myBcdConverter|n~79_combout\,
	datac => \myBcdConverter|n~76_combout\,
	datad => \myBcdConverter|n~78_combout\,
	combout => \myBcdConverter|n~90_combout\);

-- Location: LCCOMB_X41_Y35_N4
\myBcdConverter|n~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~107_combout\ = (\myBcdConverter|n~89_combout\ & ((\myBcdConverter|n~92_combout\ & ((!\myBcdConverter|n~90_combout\))) # (!\myBcdConverter|n~92_combout\ & ((\myBcdConverter|n~90_combout\) # (!\myBcdConverter|n~91_combout\))))) # 
-- (!\myBcdConverter|n~89_combout\ & (((\myBcdConverter|n~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~89_combout\,
	datab => \myBcdConverter|n~92_combout\,
	datac => \myBcdConverter|n~91_combout\,
	datad => \myBcdConverter|n~90_combout\,
	combout => \myBcdConverter|n~107_combout\);

-- Location: LCCOMB_X40_Y35_N28
\myBcdConverter|n~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~105_combout\ = \myBcdConverter|n~103_combout\ $ ((((!\myBcdConverter|n~104_combout\ & !\switches~combout\(4))) # (!\myBcdConverter|n~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~102_combout\,
	datab => \myBcdConverter|n~104_combout\,
	datac => \myBcdConverter|n~103_combout\,
	datad => \switches~combout\(4),
	combout => \myBcdConverter|n~105_combout\);

-- Location: LCCOMB_X41_Y35_N14
\myBcdConverter|n~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~108_combout\ = (\myBcdConverter|n~91_combout\ & (\myBcdConverter|n~92_combout\ & ((!\myBcdConverter|n~90_combout\) # (!\myBcdConverter|n~89_combout\)))) # (!\myBcdConverter|n~91_combout\ & (\myBcdConverter|n~89_combout\ & 
-- ((\myBcdConverter|n~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~89_combout\,
	datab => \myBcdConverter|n~92_combout\,
	datac => \myBcdConverter|n~91_combout\,
	datad => \myBcdConverter|n~90_combout\,
	combout => \myBcdConverter|n~108_combout\);

-- Location: LCCOMB_X42_Y35_N4
\myBcdConverter|n~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~123_combout\ = (\myBcdConverter|n~107_combout\ & (\myBcdConverter|n~108_combout\ & ((!\myBcdConverter|n~105_combout\) # (!\myBcdConverter|n~106_combout\)))) # (!\myBcdConverter|n~107_combout\ & (\myBcdConverter|n~106_combout\ & 
-- (\myBcdConverter|n~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~106_combout\,
	datab => \myBcdConverter|n~107_combout\,
	datac => \myBcdConverter|n~105_combout\,
	datad => \myBcdConverter|n~108_combout\,
	combout => \myBcdConverter|n~123_combout\);

-- Location: LCCOMB_X42_Y35_N14
\myBcdConverter|n~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~120_combout\ = \myBcdConverter|n~118_combout\ $ ((((!\myBcdConverter|n~119_combout\ & !\switches~combout\(3))) # (!\myBcdConverter|n~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~117_combout\,
	datab => \myBcdConverter|n~118_combout\,
	datac => \myBcdConverter|n~119_combout\,
	datad => \switches~combout\(3),
	combout => \myBcdConverter|n~120_combout\);

-- Location: LCCOMB_X42_Y35_N12
\myBcdConverter|n~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~121_combout\ = (\myBcdConverter|n~107_combout\ & ((\myBcdConverter|n~105_combout\ $ (\myBcdConverter|n~108_combout\)))) # (!\myBcdConverter|n~107_combout\ & (((\myBcdConverter|n~106_combout\ & !\myBcdConverter|n~108_combout\)) # 
-- (!\myBcdConverter|n~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~106_combout\,
	datab => \myBcdConverter|n~107_combout\,
	datac => \myBcdConverter|n~105_combout\,
	datad => \myBcdConverter|n~108_combout\,
	combout => \myBcdConverter|n~121_combout\);

-- Location: LCCOMB_X42_Y35_N22
\myBcdConverter|n~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~133_combout\ = (\myBcdConverter|n~123_combout\ & ((\myBcdConverter|n~120_combout\ $ (\myBcdConverter|n~121_combout\)))) # (!\myBcdConverter|n~123_combout\ & ((\myBcdConverter|n~121_combout\) # ((!\myBcdConverter|n~122_combout\ & 
-- \myBcdConverter|n~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~122_combout\,
	datab => \myBcdConverter|n~123_combout\,
	datac => \myBcdConverter|n~120_combout\,
	datad => \myBcdConverter|n~121_combout\,
	combout => \myBcdConverter|n~133_combout\);

-- Location: LCCOMB_X42_Y35_N0
\myBcdConverter|n~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~134_combout\ = (\myBcdConverter|n~122_combout\ & (\myBcdConverter|n~123_combout\ & ((!\myBcdConverter|n~121_combout\) # (!\myBcdConverter|n~120_combout\)))) # (!\myBcdConverter|n~122_combout\ & (((\myBcdConverter|n~120_combout\ & 
-- \myBcdConverter|n~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~122_combout\,
	datab => \myBcdConverter|n~123_combout\,
	datac => \myBcdConverter|n~120_combout\,
	datad => \myBcdConverter|n~121_combout\,
	combout => \myBcdConverter|n~134_combout\);

-- Location: LCCOMB_X42_Y35_N2
\myBcdConverter|n~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~131_combout\ = \myBcdConverter|n~129_combout\ $ ((((!\myBcdConverter|n~130_combout\ & !\switches~combout\(2))) # (!\myBcdConverter|n~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~128_combout\,
	datab => \myBcdConverter|n~129_combout\,
	datac => \myBcdConverter|n~130_combout\,
	datad => \switches~combout\(2),
	combout => \myBcdConverter|n~131_combout\);

-- Location: LCCOMB_X45_Y32_N0
\myBcdConverter|tens[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|tens[3]~3_combout\ = (\myBcdConverter|n~133_combout\ & (\myBcdConverter|n~134_combout\ & ((!\myBcdConverter|n~131_combout\) # (!\myBcdConverter|n~132_combout\)))) # (!\myBcdConverter|n~133_combout\ & (\myBcdConverter|n~132_combout\ & 
-- ((\myBcdConverter|n~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~132_combout\,
	datab => \myBcdConverter|n~133_combout\,
	datac => \myBcdConverter|n~134_combout\,
	datad => \myBcdConverter|n~131_combout\,
	combout => \myBcdConverter|tens[3]~3_combout\);

-- Location: LCCOMB_X45_Y32_N22
\myBcdConverter|tens[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|tens[2]~2_combout\ = (\myBcdConverter|n~132_combout\ & (((!\myBcdConverter|n~131_combout\) # (!\myBcdConverter|n~134_combout\)))) # (!\myBcdConverter|n~132_combout\ & (\myBcdConverter|n~131_combout\ & ((\myBcdConverter|n~134_combout\) # 
-- (!\myBcdConverter|n~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~132_combout\,
	datab => \myBcdConverter|n~133_combout\,
	datac => \myBcdConverter|n~134_combout\,
	datad => \myBcdConverter|n~131_combout\,
	combout => \myBcdConverter|tens[2]~2_combout\);

-- Location: LCCOMB_X46_Y32_N0
\ten|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ten|WideOr5~0_combout\ = (\myBcdConverter|tens[1]~1_combout\ & (((\myBcdConverter|tens[3]~3_combout\ & !\myBcdConverter|tens[2]~2_combout\)) # (!\myBcdConverter|tens[0]~0_combout\))) # (!\myBcdConverter|tens[1]~1_combout\ & 
-- ((\myBcdConverter|tens[3]~3_combout\) # (\myBcdConverter|tens[0]~0_combout\ $ (!\myBcdConverter|tens[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|tens[1]~1_combout\,
	datab => \myBcdConverter|tens[0]~0_combout\,
	datac => \myBcdConverter|tens[3]~3_combout\,
	datad => \myBcdConverter|tens[2]~2_combout\,
	combout => \ten|WideOr5~0_combout\);

-- Location: LCCOMB_X46_Y32_N10
\myInterface|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector0~3_combout\ = (\myInterface|addrData~regout\ & ((\myInterface|Selector0~2_combout\) # ((\myInterface|state.ten~regout\ & \ten|WideOr5~0_combout\)))) # (!\myInterface|addrData~regout\ & (((\myInterface|state.ten~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Selector0~2_combout\,
	datab => \myInterface|addrData~regout\,
	datac => \myInterface|state.ten~regout\,
	datad => \ten|WideOr5~0_combout\,
	combout => \myInterface|Selector0~3_combout\);

-- Location: LCCOMB_X46_Y32_N16
\myInterface|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector0~4_combout\ = (\myInterface|Selector0~3_combout\) # ((\myInterface|state.thousand~regout\ & ((\thousand|WideOr5~0_combout\) # (!\myInterface|addrData~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thousand|WideOr5~0_combout\,
	datab => \myInterface|addrData~regout\,
	datac => \myInterface|state.thousand~regout\,
	datad => \myInterface|Selector0~3_combout\,
	combout => \myInterface|Selector0~4_combout\);

-- Location: LCCOMB_X36_Y35_N14
\myBcdConverter|n~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~139_combout\ = (\switches~combout\(15) & ((\switches~combout\(13) & (\switches~combout\(12) & \switches~combout\(14))) # (!\switches~combout\(13) & ((!\switches~combout\(14)))))) # (!\switches~combout\(15) & (\switches~combout\(14) & 
-- ((\switches~combout\(12)) # (\switches~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches~combout\(12),
	datab => \switches~combout\(15),
	datac => \switches~combout\(13),
	datad => \switches~combout\(14),
	combout => \myBcdConverter|n~139_combout\);

-- Location: LCCOMB_X37_Y35_N28
\myBcdConverter|tenThou[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|tenThou[3]~0_combout\ = (\myBcdConverter|LessThan0~0_combout\ & ((\myBcdConverter|n~139_combout\) # (!\myBcdConverter|n~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myBcdConverter|n~44_combout\,
	datac => \myBcdConverter|LessThan0~0_combout\,
	datad => \myBcdConverter|n~139_combout\,
	combout => \myBcdConverter|tenThou[3]~0_combout\);

-- Location: LCCOMB_X37_Y35_N4
\myBcdConverter|n~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~55_combout\ = (!\myBcdConverter|tenThou[3]~0_combout\ & (\myBcdConverter|n~48_combout\ $ (((!\myBcdConverter|n~54_combout\ & \myBcdConverter|n~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~54_combout\,
	datab => \myBcdConverter|n~48_combout\,
	datac => \myBcdConverter|n~47_combout\,
	datad => \myBcdConverter|tenThou[3]~0_combout\,
	combout => \myBcdConverter|n~55_combout\);

-- Location: LCCOMB_X36_Y35_N18
\myBcdConverter|n~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~141_combout\ = (\switches~combout\(15) & (\switches~combout\(14) & ((\myBcdConverter|n~9_combout\) # (\switches~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~9_combout\,
	datab => \switches~combout\(13),
	datac => \switches~combout\(15),
	datad => \switches~combout\(14),
	combout => \myBcdConverter|n~141_combout\);

-- Location: LCCOMB_X37_Y35_N20
\myBcdConverter|n~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~57_combout\ = (\myBcdConverter|n~47_combout\ & ((!\myBcdConverter|n~49_combout\) # (!\myBcdConverter|n~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~45_combout\,
	datac => \myBcdConverter|n~47_combout\,
	datad => \myBcdConverter|n~49_combout\,
	combout => \myBcdConverter|n~57_combout\);

-- Location: LCCOMB_X37_Y35_N2
\myBcdConverter|n~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~58_combout\ = (\myBcdConverter|n~56_combout\ & (\myBcdConverter|n~141_combout\ & (\myBcdConverter|n~57_combout\ $ (!\myBcdConverter|n~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~56_combout\,
	datab => \myBcdConverter|n~141_combout\,
	datac => \myBcdConverter|n~57_combout\,
	datad => \myBcdConverter|n~48_combout\,
	combout => \myBcdConverter|n~58_combout\);

-- Location: LCCOMB_X41_Y35_N24
\myBcdConverter|n~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~53_combout\ = \myBcdConverter|n~52_combout\ $ (((\myBcdConverter|n~51_combout\) # ((\myBcdConverter|n~50_combout\ & \myBcdConverter|n~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~52_combout\,
	datab => \myBcdConverter|n~50_combout\,
	datac => \myBcdConverter|n~51_combout\,
	datad => \myBcdConverter|n~42_combout\,
	combout => \myBcdConverter|n~53_combout\);

-- Location: LCCOMB_X41_Y33_N18
\myBcdConverter|n~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~71_combout\ = (\myBcdConverter|n~59_combout\ & (!\myBcdConverter|n~55_combout\ & ((\myBcdConverter|n~53_combout\)))) # (!\myBcdConverter|n~59_combout\ & (\myBcdConverter|n~58_combout\ & ((\myBcdConverter|n~55_combout\) # 
-- (!\myBcdConverter|n~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~59_combout\,
	datab => \myBcdConverter|n~55_combout\,
	datac => \myBcdConverter|n~58_combout\,
	datad => \myBcdConverter|n~53_combout\,
	combout => \myBcdConverter|n~71_combout\);

-- Location: LCCOMB_X41_Y33_N20
\myBcdConverter|n~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~70_combout\ = (\myBcdConverter|n~59_combout\ & (((!\myBcdConverter|n~55_combout\ & !\myBcdConverter|n~58_combout\)) # (!\myBcdConverter|n~53_combout\))) # (!\myBcdConverter|n~59_combout\ & ((\myBcdConverter|n~58_combout\ $ 
-- (\myBcdConverter|n~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~59_combout\,
	datab => \myBcdConverter|n~55_combout\,
	datac => \myBcdConverter|n~58_combout\,
	datad => \myBcdConverter|n~53_combout\,
	combout => \myBcdConverter|n~70_combout\);

-- Location: LCCOMB_X41_Y33_N2
\myBcdConverter|n~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~61_combout\ = (\myBcdConverter|n~55_combout\ & (((!\myBcdConverter|n~59_combout\ & !\myBcdConverter|n~58_combout\)) # (!\myBcdConverter|n~53_combout\))) # (!\myBcdConverter|n~55_combout\ & (((\myBcdConverter|n~58_combout\ & 
-- \myBcdConverter|n~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~59_combout\,
	datab => \myBcdConverter|n~55_combout\,
	datac => \myBcdConverter|n~58_combout\,
	datad => \myBcdConverter|n~53_combout\,
	combout => \myBcdConverter|n~61_combout\);

-- Location: LCCOMB_X41_Y33_N28
\myBcdConverter|n~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~72_combout\ = \myBcdConverter|n~71_combout\ $ ((((\myBcdConverter|n~69_combout\ & \myBcdConverter|n~70_combout\)) # (!\myBcdConverter|n~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~69_combout\,
	datab => \myBcdConverter|n~71_combout\,
	datac => \myBcdConverter|n~70_combout\,
	datad => \myBcdConverter|n~61_combout\,
	combout => \myBcdConverter|n~72_combout\);

-- Location: LCCOMB_X36_Y35_N20
\myBcdConverter|n~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~142_combout\ = (\myBcdConverter|n~18_combout\ & (\switches~combout\(13) & (\switches~combout\(15) & \switches~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~18_combout\,
	datab => \switches~combout\(13),
	datac => \switches~combout\(15),
	datad => \switches~combout\(14),
	combout => \myBcdConverter|n~142_combout\);

-- Location: LCCOMB_X41_Y33_N30
\myBcdConverter|n~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~83_combout\ = (\myBcdConverter|n~61_combout\ & (\myBcdConverter|n~69_combout\ & ((\myBcdConverter|n~70_combout\)))) # (!\myBcdConverter|n~61_combout\ & (\myBcdConverter|n~71_combout\ & ((!\myBcdConverter|n~70_combout\) # 
-- (!\myBcdConverter|n~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~69_combout\,
	datab => \myBcdConverter|n~71_combout\,
	datac => \myBcdConverter|n~70_combout\,
	datad => \myBcdConverter|n~61_combout\,
	combout => \myBcdConverter|n~83_combout\);

-- Location: LCCOMB_X41_Y35_N16
\myBcdConverter|n~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~80_combout\ = \myBcdConverter|n~79_combout\ $ (((\myBcdConverter|n~78_combout\) # ((\myBcdConverter|n~77_combout\ & \myBcdConverter|n~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~77_combout\,
	datab => \myBcdConverter|n~79_combout\,
	datac => \myBcdConverter|n~76_combout\,
	datad => \myBcdConverter|n~78_combout\,
	combout => \myBcdConverter|n~80_combout\);

-- Location: LCCOMB_X41_Y33_N12
\myBcdConverter|n~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~82_combout\ = (\myBcdConverter|n~69_combout\ & ((\myBcdConverter|n~71_combout\ & (!\myBcdConverter|n~70_combout\)) # (!\myBcdConverter|n~71_combout\ & ((\myBcdConverter|n~70_combout\) # (\myBcdConverter|n~61_combout\))))) # 
-- (!\myBcdConverter|n~69_combout\ & (((\myBcdConverter|n~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~69_combout\,
	datab => \myBcdConverter|n~71_combout\,
	datac => \myBcdConverter|n~70_combout\,
	datad => \myBcdConverter|n~61_combout\,
	combout => \myBcdConverter|n~82_combout\);

-- Location: LCCOMB_X41_Y33_N16
\myBcdConverter|n~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~84_combout\ = \myBcdConverter|n~83_combout\ $ (((\myBcdConverter|n~82_combout\) # ((\myBcdConverter|n~81_combout\ & \myBcdConverter|n~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~81_combout\,
	datab => \myBcdConverter|n~83_combout\,
	datac => \myBcdConverter|n~80_combout\,
	datad => \myBcdConverter|n~82_combout\,
	combout => \myBcdConverter|n~84_combout\);

-- Location: LCCOMB_X42_Y33_N0
\myBcdConverter|n~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~98_combout\ = (\myBcdConverter|n~60_combout\ & ((\myBcdConverter|n~72_combout\ & ((\myBcdConverter|n~84_combout\) # (!\myBcdConverter|n~142_combout\))) # (!\myBcdConverter|n~72_combout\ & ((\myBcdConverter|n~142_combout\) # 
-- (!\myBcdConverter|n~84_combout\))))) # (!\myBcdConverter|n~60_combout\ & (\myBcdConverter|n~84_combout\ $ (((\myBcdConverter|n~72_combout\ & \myBcdConverter|n~142_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~60_combout\,
	datab => \myBcdConverter|n~72_combout\,
	datac => \myBcdConverter|n~142_combout\,
	datad => \myBcdConverter|n~84_combout\,
	combout => \myBcdConverter|n~98_combout\);

-- Location: LCCOMB_X41_Y33_N22
\myBcdConverter|n~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~96_combout\ = (\myBcdConverter|n~82_combout\ & (\myBcdConverter|n~83_combout\ & ((!\myBcdConverter|n~80_combout\) # (!\myBcdConverter|n~81_combout\)))) # (!\myBcdConverter|n~82_combout\ & (\myBcdConverter|n~81_combout\ & 
-- ((\myBcdConverter|n~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~81_combout\,
	datab => \myBcdConverter|n~83_combout\,
	datac => \myBcdConverter|n~80_combout\,
	datad => \myBcdConverter|n~82_combout\,
	combout => \myBcdConverter|n~96_combout\);

-- Location: LCCOMB_X41_Y33_N14
\myBcdConverter|n~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~94_combout\ = (\myBcdConverter|n~83_combout\ & (((!\myBcdConverter|n~80_combout\)))) # (!\myBcdConverter|n~83_combout\ & ((\myBcdConverter|n~80_combout\ & ((\myBcdConverter|n~81_combout\) # (\myBcdConverter|n~82_combout\))) # 
-- (!\myBcdConverter|n~80_combout\ & ((!\myBcdConverter|n~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~81_combout\,
	datab => \myBcdConverter|n~83_combout\,
	datac => \myBcdConverter|n~80_combout\,
	datad => \myBcdConverter|n~82_combout\,
	combout => \myBcdConverter|n~94_combout\);

-- Location: LCCOMB_X41_Y35_N8
\myBcdConverter|n~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~93_combout\ = \myBcdConverter|n~92_combout\ $ (((\myBcdConverter|n~91_combout\) # ((\myBcdConverter|n~89_combout\ & \myBcdConverter|n~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~89_combout\,
	datab => \myBcdConverter|n~92_combout\,
	datac => \myBcdConverter|n~91_combout\,
	datad => \myBcdConverter|n~90_combout\,
	combout => \myBcdConverter|n~93_combout\);

-- Location: LCCOMB_X41_Y33_N0
\myBcdConverter|n~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~97_combout\ = \myBcdConverter|n~96_combout\ $ (((\myBcdConverter|n~95_combout\) # ((\myBcdConverter|n~94_combout\ & \myBcdConverter|n~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~95_combout\,
	datab => \myBcdConverter|n~96_combout\,
	datac => \myBcdConverter|n~94_combout\,
	datad => \myBcdConverter|n~93_combout\,
	combout => \myBcdConverter|n~97_combout\);

-- Location: LCCOMB_X42_Y33_N22
\myBcdConverter|n~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~85_combout\ = (\myBcdConverter|n~72_combout\ & (\myBcdConverter|n~142_combout\ & ((\myBcdConverter|n~60_combout\) # (\myBcdConverter|n~84_combout\)))) # (!\myBcdConverter|n~72_combout\ & (!\myBcdConverter|n~142_combout\ & 
-- ((!\myBcdConverter|n~84_combout\) # (!\myBcdConverter|n~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~60_combout\,
	datab => \myBcdConverter|n~72_combout\,
	datac => \myBcdConverter|n~142_combout\,
	datad => \myBcdConverter|n~84_combout\,
	combout => \myBcdConverter|n~85_combout\);

-- Location: LCCOMB_X42_Y33_N28
\myBcdConverter|n~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~100_combout\ = \myBcdConverter|n~99_combout\ $ ((((\myBcdConverter|n~98_combout\ & \myBcdConverter|n~97_combout\)) # (!\myBcdConverter|n~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~99_combout\,
	datab => \myBcdConverter|n~98_combout\,
	datac => \myBcdConverter|n~97_combout\,
	datad => \myBcdConverter|n~85_combout\,
	combout => \myBcdConverter|n~100_combout\);

-- Location: LCCOMB_X42_Y33_N10
\myBcdConverter|n~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~101_combout\ = (\myBcdConverter|n~60_combout\ & ((\myBcdConverter|n~72_combout\ & ((\myBcdConverter|n~142_combout\) # (\myBcdConverter|n~84_combout\))) # (!\myBcdConverter|n~72_combout\ & (\myBcdConverter|n~142_combout\ & 
-- \myBcdConverter|n~84_combout\)))) # (!\myBcdConverter|n~60_combout\ & (((!\myBcdConverter|n~142_combout\)) # (!\myBcdConverter|n~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~60_combout\,
	datab => \myBcdConverter|n~72_combout\,
	datac => \myBcdConverter|n~142_combout\,
	datad => \myBcdConverter|n~84_combout\,
	combout => \myBcdConverter|n~101_combout\);

-- Location: LCCOMB_X42_Y33_N26
\myBcdConverter|tenThou[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|tenThou[2]~2_combout\ = (!\myBcdConverter|n~101_combout\ & (((!\myBcdConverter|n~142_combout\) # (!\myBcdConverter|n~100_combout\)) # (!\myBcdConverter|LessThan21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|LessThan21~0_combout\,
	datab => \myBcdConverter|n~100_combout\,
	datac => \myBcdConverter|n~142_combout\,
	datad => \myBcdConverter|n~101_combout\,
	combout => \myBcdConverter|tenThou[2]~2_combout\);

-- Location: LCCOMB_X42_Y33_N16
\myBcdConverter|tenThou[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|tenThou[1]~1_combout\ = (\myBcdConverter|LessThan21~0_combout\ & ((\myBcdConverter|n~100_combout\ & (\myBcdConverter|n~142_combout\ & !\myBcdConverter|n~101_combout\)) # (!\myBcdConverter|n~100_combout\ & 
-- (!\myBcdConverter|n~142_combout\)))) # (!\myBcdConverter|LessThan21~0_combout\ & (!\myBcdConverter|n~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|LessThan21~0_combout\,
	datab => \myBcdConverter|n~100_combout\,
	datac => \myBcdConverter|n~142_combout\,
	datad => \myBcdConverter|n~101_combout\,
	combout => \myBcdConverter|tenThou[1]~1_combout\);

-- Location: LCCOMB_X41_Y33_N10
\myBcdConverter|n~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~112_combout\ = (\myBcdConverter|n~95_combout\ & (\myBcdConverter|n~96_combout\ & ((!\myBcdConverter|n~93_combout\) # (!\myBcdConverter|n~94_combout\)))) # (!\myBcdConverter|n~95_combout\ & (((\myBcdConverter|n~94_combout\ & 
-- \myBcdConverter|n~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~95_combout\,
	datab => \myBcdConverter|n~96_combout\,
	datac => \myBcdConverter|n~94_combout\,
	datad => \myBcdConverter|n~93_combout\,
	combout => \myBcdConverter|n~112_combout\);

-- Location: LCCOMB_X42_Y35_N8
\myBcdConverter|n~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~109_combout\ = \myBcdConverter|n~108_combout\ $ (((\myBcdConverter|n~107_combout\) # ((\myBcdConverter|n~106_combout\ & \myBcdConverter|n~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~106_combout\,
	datab => \myBcdConverter|n~107_combout\,
	datac => \myBcdConverter|n~105_combout\,
	datad => \myBcdConverter|n~108_combout\,
	combout => \myBcdConverter|n~109_combout\);

-- Location: LCCOMB_X41_Y33_N4
\myBcdConverter|n~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~111_combout\ = (\myBcdConverter|n~96_combout\ & ((\myBcdConverter|n~94_combout\ $ (\myBcdConverter|n~93_combout\)))) # (!\myBcdConverter|n~96_combout\ & ((\myBcdConverter|n~94_combout\) # ((!\myBcdConverter|n~95_combout\ & 
-- \myBcdConverter|n~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~95_combout\,
	datab => \myBcdConverter|n~96_combout\,
	datac => \myBcdConverter|n~94_combout\,
	datad => \myBcdConverter|n~93_combout\,
	combout => \myBcdConverter|n~111_combout\);

-- Location: LCCOMB_X42_Y32_N16
\myBcdConverter|n~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~113_combout\ = \myBcdConverter|n~112_combout\ $ (((\myBcdConverter|n~111_combout\) # ((\myBcdConverter|n~110_combout\ & \myBcdConverter|n~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~110_combout\,
	datab => \myBcdConverter|n~112_combout\,
	datac => \myBcdConverter|n~109_combout\,
	datad => \myBcdConverter|n~111_combout\,
	combout => \myBcdConverter|n~113_combout\);

-- Location: LCCOMB_X42_Y33_N12
\myBcdConverter|n~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~114_combout\ = (\myBcdConverter|n~99_combout\ & (((!\myBcdConverter|n~97_combout\)))) # (!\myBcdConverter|n~99_combout\ & ((\myBcdConverter|n~97_combout\ & ((\myBcdConverter|n~98_combout\) # (!\myBcdConverter|n~85_combout\))) # 
-- (!\myBcdConverter|n~97_combout\ & ((\myBcdConverter|n~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~99_combout\,
	datab => \myBcdConverter|n~98_combout\,
	datac => \myBcdConverter|n~97_combout\,
	datad => \myBcdConverter|n~85_combout\,
	combout => \myBcdConverter|n~114_combout\);

-- Location: LCCOMB_X42_Y33_N8
\myBcdConverter|n~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~116_combout\ = (\myBcdConverter|n~85_combout\ & (((\myBcdConverter|n~98_combout\ & \myBcdConverter|n~97_combout\)))) # (!\myBcdConverter|n~85_combout\ & (\myBcdConverter|n~99_combout\ & ((!\myBcdConverter|n~97_combout\) # 
-- (!\myBcdConverter|n~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~99_combout\,
	datab => \myBcdConverter|n~98_combout\,
	datac => \myBcdConverter|n~97_combout\,
	datad => \myBcdConverter|n~85_combout\,
	combout => \myBcdConverter|n~116_combout\);

-- Location: LCCOMB_X43_Y32_N16
\myBcdConverter|tenThou[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|tenThou[0]~3_combout\ = \myBcdConverter|n~116_combout\ $ (((\myBcdConverter|n~115_combout\) # ((\myBcdConverter|n~113_combout\ & \myBcdConverter|n~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~115_combout\,
	datab => \myBcdConverter|n~113_combout\,
	datac => \myBcdConverter|n~114_combout\,
	datad => \myBcdConverter|n~116_combout\,
	combout => \myBcdConverter|tenThou[0]~3_combout\);

-- Location: LCCOMB_X44_Y32_N12
\myInterface|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector0~1_combout\ = (\myInterface|Selector0~0_combout\ & (\myBcdConverter|tenThou[0]~3_combout\ $ (((\myBcdConverter|tenThou[2]~2_combout\) # (!\myBcdConverter|tenThou[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Selector0~0_combout\,
	datab => \myBcdConverter|tenThou[2]~2_combout\,
	datac => \myBcdConverter|tenThou[1]~1_combout\,
	datad => \myBcdConverter|tenThou[0]~3_combout\,
	combout => \myInterface|Selector0~1_combout\);

-- Location: LCCOMB_X46_Y32_N24
\myInterface|Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector0~5_combout\ = (\myInterface|Selector0~1_combout\) # ((\myInterface|Selector0~4_combout\ & ((\myInterface|state.tenThousand~regout\) # (\myInterface|addrData~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|state.tenThousand~regout\,
	datab => \myInterface|addrData~regout\,
	datac => \myInterface|Selector0~4_combout\,
	datad => \myInterface|Selector0~1_combout\,
	combout => \myInterface|Selector0~5_combout\);

-- Location: LCFF_X46_Y32_N25
\myInterface|inBus[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|Selector0~5_combout\,
	ena => \myController|ALT_INV_busLock~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|inBus[0]~reg0_regout\);

-- Location: LCCOMB_X53_Y29_N14
\myController|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Equal0~3_combout\ = (\myController|Equal0~2_combout\ & \myController|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|Equal0~2_combout\,
	datad => \myController|Equal0~0_combout\,
	combout => \myController|Equal0~3_combout\);

-- Location: LCCOMB_X53_Y29_N0
\myController|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Selector21~0_combout\ = (\myController|state.powerOn~regout\ & (((\myController|state.functionSet1~regout\)))) # (!\myController|state.powerOn~regout\ & (\myController|Equal0~3_combout\ & ((\myController|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|state.powerOn~regout\,
	datab => \myController|Equal0~3_combout\,
	datac => \myController|state.functionSet1~regout\,
	datad => \myController|Equal0~5_combout\,
	combout => \myController|Selector21~0_combout\);

-- Location: LCFF_X53_Y29_N1
\myController|state.functionSet1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|Selector21~0_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|state.functionSet1~regout\);

-- Location: LCCOMB_X49_Y32_N22
\myController|lcdBus[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|lcdBus[7]~8_combout\ = (\lcdOn~combout\ & (!\myController|state.functionSet1~regout\ & \myController|state.powerOn~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcdOn~combout\,
	datab => \myController|state.functionSet1~regout\,
	datad => \myController|state.powerOn~regout\,
	combout => \myController|lcdBus[7]~8_combout\);

-- Location: LCFF_X48_Y32_N5
\myController|lcdBus[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|Selector29~0_combout\,
	sdata => \myInterface|inBus[0]~reg0_regout\,
	sload => \myController|state.write~regout\,
	ena => \myController|lcdBus[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|lcdBus[0]~reg0_regout\);

-- Location: LCCOMB_X48_Y32_N20
\myController|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Selector30~0_combout\ = ((!\myController|state.displaySet~regout\ & (!\myController|state.displayClear~regout\ & !\myController|state.entryModeSet~regout\))) # (!\lcdBus[7]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|state.displaySet~regout\,
	datab => \myController|state.displayClear~regout\,
	datac => \myController|state.entryModeSet~regout\,
	datad => \lcdBus[7]~7\,
	combout => \myController|Selector30~0_combout\);

-- Location: LCFF_X49_Y32_N23
\myController|lcdBus[0]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \myController|Selector30~0_combout\,
	sload => VCC,
	ena => \myController|lcdBus[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|lcdBus[0]~en_regout\);

-- Location: LCCOMB_X44_Y32_N4
\myInterface|Selector12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector12~4_combout\ = (\myInterface|state.thousand~regout\ & \myInterface|addrData~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myInterface|state.thousand~regout\,
	datad => \myInterface|addrData~regout\,
	combout => \myInterface|Selector12~4_combout\);

-- Location: LCCOMB_X42_Y32_N22
\myBcdConverter|n~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~127_combout\ = (\myBcdConverter|n~111_combout\ & (\myBcdConverter|n~112_combout\ & ((!\myBcdConverter|n~109_combout\) # (!\myBcdConverter|n~110_combout\)))) # (!\myBcdConverter|n~111_combout\ & (\myBcdConverter|n~110_combout\ & 
-- ((\myBcdConverter|n~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~110_combout\,
	datab => \myBcdConverter|n~112_combout\,
	datac => \myBcdConverter|n~109_combout\,
	datad => \myBcdConverter|n~111_combout\,
	combout => \myBcdConverter|n~127_combout\);

-- Location: LCCOMB_X42_Y32_N4
\myBcdConverter|n~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~126_combout\ = (\myBcdConverter|n~110_combout\ & (((!\myBcdConverter|n~109_combout\)) # (!\myBcdConverter|n~112_combout\))) # (!\myBcdConverter|n~110_combout\ & (\myBcdConverter|n~109_combout\ & ((\myBcdConverter|n~112_combout\) # 
-- (!\myBcdConverter|n~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~110_combout\,
	datab => \myBcdConverter|n~112_combout\,
	datac => \myBcdConverter|n~109_combout\,
	datad => \myBcdConverter|n~111_combout\,
	combout => \myBcdConverter|n~126_combout\);

-- Location: LCCOMB_X42_Y35_N6
\myBcdConverter|n~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|n~124_combout\ = \myBcdConverter|n~123_combout\ $ (((\myBcdConverter|n~122_combout\) # ((\myBcdConverter|n~120_combout\ & \myBcdConverter|n~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~122_combout\,
	datab => \myBcdConverter|n~123_combout\,
	datac => \myBcdConverter|n~120_combout\,
	datad => \myBcdConverter|n~121_combout\,
	combout => \myBcdConverter|n~124_combout\);

-- Location: LCCOMB_X42_Y32_N28
\myBcdConverter|thou[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|thou[0]~0_combout\ = \myBcdConverter|n~127_combout\ $ (((\myBcdConverter|n~126_combout\) # ((\myBcdConverter|n~125_combout\ & \myBcdConverter|n~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~125_combout\,
	datab => \myBcdConverter|n~127_combout\,
	datac => \myBcdConverter|n~126_combout\,
	datad => \myBcdConverter|n~124_combout\,
	combout => \myBcdConverter|thou[0]~0_combout\);

-- Location: LCCOMB_X43_Y32_N4
\myBcdConverter|thou[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|thou[2]~2_combout\ = (\myBcdConverter|n~113_combout\ & ((\myBcdConverter|n~114_combout\ & ((!\myBcdConverter|n~116_combout\))) # (!\myBcdConverter|n~114_combout\ & ((\myBcdConverter|n~116_combout\) # (!\myBcdConverter|n~115_combout\))))) # 
-- (!\myBcdConverter|n~113_combout\ & (((\myBcdConverter|n~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~115_combout\,
	datab => \myBcdConverter|n~113_combout\,
	datac => \myBcdConverter|n~114_combout\,
	datad => \myBcdConverter|n~116_combout\,
	combout => \myBcdConverter|thou[2]~2_combout\);

-- Location: LCCOMB_X43_Y32_N10
\myBcdConverter|thou[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|thou[1]~1_combout\ = (\myBcdConverter|n~115_combout\ & (\myBcdConverter|n~113_combout\ $ (((\myBcdConverter|n~116_combout\))))) # (!\myBcdConverter|n~115_combout\ & (((\myBcdConverter|n~114_combout\ & !\myBcdConverter|n~116_combout\)) # 
-- (!\myBcdConverter|n~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~115_combout\,
	datab => \myBcdConverter|n~113_combout\,
	datac => \myBcdConverter|n~114_combout\,
	datad => \myBcdConverter|n~116_combout\,
	combout => \myBcdConverter|thou[1]~1_combout\);

-- Location: LCCOMB_X43_Y32_N20
\thousand|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \thousand|WideOr4~0_combout\ = (!\myBcdConverter|thou[3]~3_combout\ & (!\myBcdConverter|thou[1]~1_combout\ & ((!\myBcdConverter|thou[2]~2_combout\) # (!\myBcdConverter|thou[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|thou[3]~3_combout\,
	datab => \myBcdConverter|thou[0]~0_combout\,
	datac => \myBcdConverter|thou[2]~2_combout\,
	datad => \myBcdConverter|thou[1]~1_combout\,
	combout => \thousand|WideOr4~0_combout\);

-- Location: LCCOMB_X45_Y35_N0
\myBcdConverter|ones[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|ones[3]~2_combout\ = (\myBcdConverter|n~137_combout\ & (((!\myBcdConverter|n~135_combout\ & !\switches~combout\(1))))) # (!\myBcdConverter|n~137_combout\ & (\myBcdConverter|n~136_combout\ & ((\myBcdConverter|n~135_combout\) # 
-- (\switches~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~136_combout\,
	datab => \myBcdConverter|n~135_combout\,
	datac => \myBcdConverter|n~137_combout\,
	datad => \switches~combout\(1),
	combout => \myBcdConverter|ones[3]~2_combout\);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(0),
	combout => \switches~combout\(0));

-- Location: LCCOMB_X45_Y35_N12
\myBcdConverter|ones[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|ones[1]~0_combout\ = (\myBcdConverter|n~136_combout\ & (((!\switches~combout\(1))))) # (!\myBcdConverter|n~136_combout\ & ((\myBcdConverter|n~137_combout\ & (\myBcdConverter|n~135_combout\ & !\switches~combout\(1))) # 
-- (!\myBcdConverter|n~137_combout\ & ((\switches~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~136_combout\,
	datab => \myBcdConverter|n~135_combout\,
	datac => \myBcdConverter|n~137_combout\,
	datad => \switches~combout\(1),
	combout => \myBcdConverter|ones[1]~0_combout\);

-- Location: LCCOMB_X45_Y35_N22
\one|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \one|WideOr4~0_combout\ = (!\myBcdConverter|ones[3]~2_combout\ & (\myBcdConverter|ones[1]~0_combout\ & ((\myBcdConverter|ones[2]~1_combout\) # (\switches~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|ones[2]~1_combout\,
	datab => \myBcdConverter|ones[3]~2_combout\,
	datac => \switches~combout\(0),
	datad => \myBcdConverter|ones[1]~0_combout\,
	combout => \one|WideOr4~0_combout\);

-- Location: LCCOMB_X45_Y32_N6
\myInterface|Selector12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector12~2_combout\ = (\myInterface|state.one~regout\ & ((\one|WideOr4~0_combout\) # (!\myInterface|addrData~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myInterface|state.one~regout\,
	datac => \myInterface|addrData~regout\,
	datad => \one|WideOr4~0_combout\,
	combout => \myInterface|Selector12~2_combout\);

-- Location: LCCOMB_X45_Y32_N2
\myInterface|Selector12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector12~3_combout\ = (\myInterface|Selector12~2_combout\) # ((\myInterface|state.ten~regout\ & ((\ten|WideOr4~0_combout\) # (!\myInterface|addrData~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ten|WideOr4~0_combout\,
	datab => \myInterface|state.ten~regout\,
	datac => \myInterface|addrData~regout\,
	datad => \myInterface|Selector12~2_combout\,
	combout => \myInterface|Selector12~3_combout\);

-- Location: LCCOMB_X44_Y32_N30
\myInterface|Selector12~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector12~5_combout\ = (\myInterface|Selector12~1_combout\) # ((\myInterface|Selector12~3_combout\) # ((\myInterface|Selector12~4_combout\ & \thousand|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Selector12~1_combout\,
	datab => \myInterface|Selector12~4_combout\,
	datac => \thousand|WideOr4~0_combout\,
	datad => \myInterface|Selector12~3_combout\,
	combout => \myInterface|Selector12~5_combout\);

-- Location: LCCOMB_X44_Y32_N14
\myInterface|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector12~0_combout\ = (!\myInterface|state.tenThousand~regout\ & (\myBcdConverter|tenThou[1]~1_combout\ & ((\myBcdConverter|tenThou[2]~2_combout\) # (!\myBcdConverter|tenThou[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|state.tenThousand~regout\,
	datab => \myBcdConverter|tenThou[2]~2_combout\,
	datac => \myBcdConverter|tenThou[1]~1_combout\,
	datad => \myBcdConverter|tenThou[0]~3_combout\,
	combout => \myInterface|Selector12~0_combout\);

-- Location: LCCOMB_X44_Y32_N2
\myInterface|Selector12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector12~6_combout\ = (\myInterface|state.tenThousand~regout\ & ((\myInterface|Selector12~5_combout\) # ((\myInterface|Selector12~0_combout\)))) # (!\myInterface|state.tenThousand~regout\ & (\myInterface|addrData~regout\ & 
-- ((\myInterface|Selector12~5_combout\) # (\myInterface|Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|state.tenThousand~regout\,
	datab => \myInterface|Selector12~5_combout\,
	datac => \myInterface|Selector12~0_combout\,
	datad => \myInterface|addrData~regout\,
	combout => \myInterface|Selector12~6_combout\);

-- Location: LCFF_X44_Y32_N3
\myInterface|inBus[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|Selector12~6_combout\,
	ena => \myController|ALT_INV_busLock~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|inBus[1]~reg0_regout\);

-- Location: LCCOMB_X44_Y32_N24
\myController|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Selector31~0_combout\ = (\myInterface|inBus[1]~reg0_regout\ & \myController|state.write~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myInterface|inBus[1]~reg0_regout\,
	datad => \myController|state.write~regout\,
	combout => \myController|Selector31~0_combout\);

-- Location: LCFF_X44_Y32_N25
\myController|lcdBus[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|Selector31~0_combout\,
	ena => \myController|lcdBus[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|lcdBus[1]~reg0_regout\);

-- Location: LCCOMB_X48_Y32_N8
\myController|lcdBus[1]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|lcdBus[1]~enfeeder_combout\ = \myController|Selector30~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myController|Selector30~0_combout\,
	combout => \myController|lcdBus[1]~enfeeder_combout\);

-- Location: LCFF_X48_Y32_N9
\myController|lcdBus[1]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|lcdBus[1]~enfeeder_combout\,
	ena => \myController|lcdBus[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|lcdBus[1]~en_regout\);

-- Location: LCCOMB_X45_Y35_N16
\one|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \one|WideOr3~0_combout\ = (\myBcdConverter|ones[2]~1_combout\) # ((\myBcdConverter|ones[1]~0_combout\ & ((\myBcdConverter|ones[3]~2_combout\) # (!\switches~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|ones[2]~1_combout\,
	datab => \myBcdConverter|ones[3]~2_combout\,
	datac => \switches~combout\(0),
	datad => \myBcdConverter|ones[1]~0_combout\,
	combout => \one|WideOr3~0_combout\);

-- Location: LCCOMB_X45_Y32_N24
\myInterface|Selector11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector11~2_combout\ = (\myInterface|addrData~regout\ & \myInterface|state.one~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myInterface|addrData~regout\,
	datac => \myInterface|state.one~regout\,
	combout => \myInterface|Selector11~2_combout\);

-- Location: LCCOMB_X45_Y32_N18
\myInterface|Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector11~1_combout\ = (\myInterface|addrData~regout\ & \myInterface|state.ten~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myInterface|addrData~regout\,
	datac => \myInterface|state.ten~regout\,
	combout => \myInterface|Selector11~1_combout\);

-- Location: LCCOMB_X45_Y32_N14
\myInterface|Selector11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector11~3_combout\ = (\ten|WideOr3~0_combout\ & ((\myInterface|Selector11~1_combout\) # ((\one|WideOr3~0_combout\ & \myInterface|Selector11~2_combout\)))) # (!\ten|WideOr3~0_combout\ & (\one|WideOr3~0_combout\ & 
-- (\myInterface|Selector11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ten|WideOr3~0_combout\,
	datab => \one|WideOr3~0_combout\,
	datac => \myInterface|Selector11~2_combout\,
	datad => \myInterface|Selector11~1_combout\,
	combout => \myInterface|Selector11~3_combout\);

-- Location: LCCOMB_X43_Y32_N28
\thousand|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \thousand|WideOr3~0_combout\ = ((!\myBcdConverter|thou[1]~1_combout\ & ((\myBcdConverter|thou[3]~3_combout\) # (\myBcdConverter|thou[0]~0_combout\)))) # (!\myBcdConverter|thou[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|thou[3]~3_combout\,
	datab => \myBcdConverter|thou[0]~0_combout\,
	datac => \myBcdConverter|thou[2]~2_combout\,
	datad => \myBcdConverter|thou[1]~1_combout\,
	combout => \thousand|WideOr3~0_combout\);

-- Location: LCCOMB_X42_Y32_N26
\myBcdConverter|hund[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|hund[1]~1_combout\ = (\myBcdConverter|n~127_combout\ & (((!\myBcdConverter|n~124_combout\)))) # (!\myBcdConverter|n~127_combout\ & ((\myBcdConverter|n~126_combout\ & ((\myBcdConverter|n~124_combout\))) # (!\myBcdConverter|n~126_combout\ & 
-- ((\myBcdConverter|n~125_combout\) # (!\myBcdConverter|n~124_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~125_combout\,
	datab => \myBcdConverter|n~127_combout\,
	datac => \myBcdConverter|n~126_combout\,
	datad => \myBcdConverter|n~124_combout\,
	combout => \myBcdConverter|hund[1]~1_combout\);

-- Location: LCCOMB_X42_Y32_N24
\myBcdConverter|hund[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|hund[2]~2_combout\ = (\myBcdConverter|n~125_combout\ & (((!\myBcdConverter|n~124_combout\)) # (!\myBcdConverter|n~127_combout\))) # (!\myBcdConverter|n~125_combout\ & (\myBcdConverter|n~124_combout\ & ((\myBcdConverter|n~127_combout\) # 
-- (!\myBcdConverter|n~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~125_combout\,
	datab => \myBcdConverter|n~127_combout\,
	datac => \myBcdConverter|n~126_combout\,
	datad => \myBcdConverter|n~124_combout\,
	combout => \myBcdConverter|hund[2]~2_combout\);

-- Location: LCCOMB_X45_Y32_N10
\myBcdConverter|hund[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|hund[0]~0_combout\ = \myBcdConverter|n~134_combout\ $ (((\myBcdConverter|n~133_combout\) # ((\myBcdConverter|n~132_combout\ & \myBcdConverter|n~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|n~132_combout\,
	datab => \myBcdConverter|n~133_combout\,
	datac => \myBcdConverter|n~134_combout\,
	datad => \myBcdConverter|n~131_combout\,
	combout => \myBcdConverter|hund[0]~0_combout\);

-- Location: LCCOMB_X42_Y32_N20
\hundred|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hundred|WideOr3~0_combout\ = ((!\myBcdConverter|hund[1]~1_combout\ & ((\myBcdConverter|hund[3]~3_combout\) # (\myBcdConverter|hund[0]~0_combout\)))) # (!\myBcdConverter|hund[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|hund[3]~3_combout\,
	datab => \myBcdConverter|hund[1]~1_combout\,
	datac => \myBcdConverter|hund[2]~2_combout\,
	datad => \myBcdConverter|hund[0]~0_combout\,
	combout => \hundred|WideOr3~0_combout\);

-- Location: LCCOMB_X43_Y32_N2
\myInterface|Selector11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector11~4_combout\ = (\myInterface|state.hundred~regout\ & \myInterface|addrData~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myInterface|state.hundred~regout\,
	datad => \myInterface|addrData~regout\,
	combout => \myInterface|Selector11~4_combout\);

-- Location: LCCOMB_X43_Y32_N30
\myInterface|Selector11~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector11~5_combout\ = (\myInterface|Selector12~4_combout\ & ((\thousand|WideOr3~0_combout\) # ((\hundred|WideOr3~0_combout\ & \myInterface|Selector11~4_combout\)))) # (!\myInterface|Selector12~4_combout\ & (((\hundred|WideOr3~0_combout\ & 
-- \myInterface|Selector11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Selector12~4_combout\,
	datab => \thousand|WideOr3~0_combout\,
	datac => \hundred|WideOr3~0_combout\,
	datad => \myInterface|Selector11~4_combout\,
	combout => \myInterface|Selector11~5_combout\);

-- Location: LCCOMB_X44_Y32_N20
\myInterface|Selector11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector11~6_combout\ = (\myInterface|Selector11~0_combout\) # ((\myInterface|Selector11~3_combout\) # (\myInterface|Selector11~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Selector11~0_combout\,
	datab => \myInterface|Selector11~3_combout\,
	datac => \myInterface|Selector11~5_combout\,
	combout => \myInterface|Selector11~6_combout\);

-- Location: LCFF_X44_Y32_N21
\myInterface|inBus[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|Selector11~6_combout\,
	ena => \myController|ALT_INV_busLock~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|inBus[2]~reg0_regout\);

-- Location: LCCOMB_X44_Y32_N10
\myController|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Selector32~0_combout\ = (\myInterface|inBus[2]~reg0_regout\ & \myController|state.write~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myInterface|inBus[2]~reg0_regout\,
	datad => \myController|state.write~regout\,
	combout => \myController|Selector32~0_combout\);

-- Location: LCFF_X44_Y32_N11
\myController|lcdBus[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|Selector32~0_combout\,
	ena => \myController|lcdBus[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|lcdBus[2]~reg0_regout\);

-- Location: LCCOMB_X48_Y32_N30
\myController|lcdBus[2]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|lcdBus[2]~enfeeder_combout\ = \myController|Selector30~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myController|Selector30~0_combout\,
	combout => \myController|lcdBus[2]~enfeeder_combout\);

-- Location: LCFF_X48_Y32_N31
\myController|lcdBus[2]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|lcdBus[2]~enfeeder_combout\,
	ena => \myController|lcdBus[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|lcdBus[2]~en_regout\);

-- Location: LCCOMB_X42_Y33_N2
\myBcdConverter|tenThou[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myBcdConverter|tenThou[3]~4_combout\ = (\myBcdConverter|LessThan21~0_combout\ & (\myBcdConverter|n~100_combout\ & (\myBcdConverter|n~142_combout\ & \myBcdConverter|n~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|LessThan21~0_combout\,
	datab => \myBcdConverter|n~100_combout\,
	datac => \myBcdConverter|n~142_combout\,
	datad => \myBcdConverter|n~101_combout\,
	combout => \myBcdConverter|tenThou[3]~4_combout\);

-- Location: LCCOMB_X44_Y32_N26
\tenThousand|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tenThousand|WideOr2~0_combout\ = (\myBcdConverter|tenThou[2]~2_combout\) # ((\myBcdConverter|tenThou[1]~1_combout\) # ((!\myBcdConverter|tenThou[3]~4_combout\ & !\myBcdConverter|tenThou[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|tenThou[2]~2_combout\,
	datab => \myBcdConverter|tenThou[3]~4_combout\,
	datac => \myBcdConverter|tenThou[1]~1_combout\,
	datad => \myBcdConverter|tenThou[0]~3_combout\,
	combout => \tenThousand|WideOr2~0_combout\);

-- Location: LCCOMB_X45_Y32_N28
\myInterface|Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector10~1_combout\ = (!\tenThousand|WideOr2~0_combout\ & !\myInterface|state.tenThousand~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tenThousand|WideOr2~0_combout\,
	datad => \myInterface|state.tenThousand~regout\,
	combout => \myInterface|Selector10~1_combout\);

-- Location: LCCOMB_X42_Y32_N2
\hundred|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hundred|WideOr2~0_combout\ = (((!\myBcdConverter|hund[3]~3_combout\ & !\myBcdConverter|hund[0]~0_combout\)) # (!\myBcdConverter|hund[2]~2_combout\)) # (!\myBcdConverter|hund[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|hund[3]~3_combout\,
	datab => \myBcdConverter|hund[1]~1_combout\,
	datac => \myBcdConverter|hund[2]~2_combout\,
	datad => \myBcdConverter|hund[0]~0_combout\,
	combout => \hundred|WideOr2~0_combout\);

-- Location: LCCOMB_X46_Y32_N4
\myInterface|Selector10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector10~2_combout\ = (\thousand|WideOr2~0_combout\ & (\myInterface|state.hundred~regout\ & ((!\hundred|WideOr2~0_combout\)))) # (!\thousand|WideOr2~0_combout\ & ((\myInterface|state.thousand~regout\) # ((\myInterface|state.hundred~regout\ 
-- & !\hundred|WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thousand|WideOr2~0_combout\,
	datab => \myInterface|state.hundred~regout\,
	datac => \myInterface|state.thousand~regout\,
	datad => \hundred|WideOr2~0_combout\,
	combout => \myInterface|Selector10~2_combout\);

-- Location: LCCOMB_X46_Y32_N20
\myInterface|Selector10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector10~3_combout\ = (\myInterface|addrData~regout\ & ((\myInterface|Selector10~0_combout\) # ((\myInterface|Selector10~1_combout\) # (\myInterface|Selector10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Selector10~0_combout\,
	datab => \myInterface|Selector10~1_combout\,
	datac => \myInterface|addrData~regout\,
	datad => \myInterface|Selector10~2_combout\,
	combout => \myInterface|Selector10~3_combout\);

-- Location: LCFF_X46_Y32_N21
\myInterface|inBus[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|Selector10~3_combout\,
	ena => \myController|ALT_INV_busLock~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|inBus[3]~reg0_regout\);

-- Location: LCCOMB_X48_Y32_N0
\myController|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Selector33~0_combout\ = (\myController|state.displaySet~regout\ & (((\myController|state.write~regout\ & \myInterface|inBus[3]~reg0_regout\)) # (!\myController|displayOnOff~regout\))) # (!\myController|state.displaySet~regout\ & 
-- (((\myController|state.write~regout\ & \myInterface|inBus[3]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|state.displaySet~regout\,
	datab => \myController|displayOnOff~regout\,
	datac => \myController|state.write~regout\,
	datad => \myInterface|inBus[3]~reg0_regout\,
	combout => \myController|Selector33~0_combout\);

-- Location: LCFF_X48_Y32_N1
\myController|lcdBus[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|Selector33~0_combout\,
	ena => \myController|lcdBus[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|lcdBus[3]~reg0_regout\);

-- Location: LCCOMB_X48_Y32_N10
\myController|lcdBus[3]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|lcdBus[3]~enfeeder_combout\ = \myController|Selector30~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myController|Selector30~0_combout\,
	combout => \myController|lcdBus[3]~enfeeder_combout\);

-- Location: LCFF_X48_Y32_N11
\myController|lcdBus[3]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|lcdBus[3]~enfeeder_combout\,
	ena => \myController|lcdBus[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|lcdBus[3]~en_regout\);

-- Location: LCCOMB_X48_Y32_N26
\myController|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Selector34~0_combout\ = (!\myController|state.displaySet~regout\ & (!\myController|state.displayClear~regout\ & !\myController|state.entryModeSet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|state.displaySet~regout\,
	datab => \myController|state.displayClear~regout\,
	datac => \myController|state.entryModeSet~regout\,
	combout => \myController|Selector34~0_combout\);

-- Location: LCCOMB_X48_Y32_N6
\myController|lcdBus[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|lcdBus[4]~reg0feeder_combout\ = \myController|Selector34~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myController|Selector34~0_combout\,
	combout => \myController|lcdBus[4]~reg0feeder_combout\);

-- Location: LCCOMB_X46_Y32_N30
\ten|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ten|WideOr0~0_combout\ = (\myBcdConverter|tens[2]~2_combout\ & (!\myBcdConverter|tens[1]~1_combout\ & ((\myBcdConverter|tens[0]~0_combout\) # (\myBcdConverter|tens[3]~3_combout\)))) # (!\myBcdConverter|tens[2]~2_combout\ & 
-- (((\myBcdConverter|tens[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|tens[1]~1_combout\,
	datab => \myBcdConverter|tens[0]~0_combout\,
	datac => \myBcdConverter|tens[3]~3_combout\,
	datad => \myBcdConverter|tens[2]~2_combout\,
	combout => \ten|WideOr0~0_combout\);

-- Location: LCCOMB_X45_Y32_N30
\myInterface|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector9~0_combout\ = (\one|WideOr0~0_combout\ & (!\ten|WideOr0~0_combout\ & ((\myInterface|Selector11~1_combout\)))) # (!\one|WideOr0~0_combout\ & ((\myInterface|Selector11~2_combout\) # ((!\ten|WideOr0~0_combout\ & 
-- \myInterface|Selector11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \one|WideOr0~0_combout\,
	datab => \ten|WideOr0~0_combout\,
	datac => \myInterface|Selector11~2_combout\,
	datad => \myInterface|Selector11~1_combout\,
	combout => \myInterface|Selector9~0_combout\);

-- Location: LCCOMB_X44_Y32_N8
\myInterface|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector7~0_combout\ = (!\myBcdConverter|tenThou[2]~2_combout\ & (\myBcdConverter|tenThou[1]~1_combout\ & \myBcdConverter|tenThou[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myBcdConverter|tenThou[2]~2_combout\,
	datac => \myBcdConverter|tenThou[1]~1_combout\,
	datad => \myBcdConverter|tenThou[0]~3_combout\,
	combout => \myInterface|Selector7~0_combout\);

-- Location: LCCOMB_X43_Y32_N26
\thousand|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \thousand|WideOr0~0_combout\ = (\myBcdConverter|thou[2]~2_combout\ & (!\myBcdConverter|thou[1]~1_combout\ & ((\myBcdConverter|thou[3]~3_combout\) # (\myBcdConverter|thou[0]~0_combout\)))) # (!\myBcdConverter|thou[2]~2_combout\ & 
-- (\myBcdConverter|thou[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|thou[3]~3_combout\,
	datab => \myBcdConverter|thou[0]~0_combout\,
	datac => \myBcdConverter|thou[2]~2_combout\,
	datad => \myBcdConverter|thou[1]~1_combout\,
	combout => \thousand|WideOr0~0_combout\);

-- Location: LCCOMB_X42_Y32_N0
\hundred|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hundred|WideOr0~0_combout\ = (\myBcdConverter|hund[2]~2_combout\ & (!\myBcdConverter|hund[1]~1_combout\ & ((\myBcdConverter|hund[3]~3_combout\) # (\myBcdConverter|hund[0]~0_combout\)))) # (!\myBcdConverter|hund[2]~2_combout\ & 
-- (\myBcdConverter|hund[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|hund[3]~3_combout\,
	datab => \myBcdConverter|hund[1]~1_combout\,
	datac => \myBcdConverter|hund[2]~2_combout\,
	datad => \myBcdConverter|hund[0]~0_combout\,
	combout => \hundred|WideOr0~0_combout\);

-- Location: LCCOMB_X43_Y32_N8
\myInterface|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector9~1_combout\ = (\myInterface|Selector12~4_combout\ & (((!\hundred|WideOr0~0_combout\ & \myInterface|Selector11~4_combout\)) # (!\thousand|WideOr0~0_combout\))) # (!\myInterface|Selector12~4_combout\ & (((!\hundred|WideOr0~0_combout\ & 
-- \myInterface|Selector11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Selector12~4_combout\,
	datab => \thousand|WideOr0~0_combout\,
	datac => \hundred|WideOr0~0_combout\,
	datad => \myInterface|Selector11~4_combout\,
	combout => \myInterface|Selector9~1_combout\);

-- Location: LCCOMB_X44_Y32_N18
\myInterface|Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector9~2_combout\ = (\myInterface|Selector9~0_combout\) # ((\myInterface|Selector9~1_combout\) # ((\myInterface|Selector0~0_combout\ & !\myInterface|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Selector0~0_combout\,
	datab => \myInterface|Selector9~0_combout\,
	datac => \myInterface|Selector7~0_combout\,
	datad => \myInterface|Selector9~1_combout\,
	combout => \myInterface|Selector9~2_combout\);

-- Location: LCFF_X44_Y32_N19
\myInterface|inBus[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|Selector9~2_combout\,
	ena => \myController|ALT_INV_busLock~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|inBus[4]~reg0_regout\);

-- Location: LCFF_X48_Y32_N7
\myController|lcdBus[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|lcdBus[4]~reg0feeder_combout\,
	sdata => \myInterface|inBus[4]~reg0_regout\,
	sload => \myController|state.write~regout\,
	ena => \myController|lcdBus[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|lcdBus[4]~reg0_regout\);

-- Location: LCCOMB_X48_Y32_N28
\myController|lcdBus[4]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|lcdBus[4]~enfeeder_combout\ = \myController|Selector30~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myController|Selector30~0_combout\,
	combout => \myController|lcdBus[4]~enfeeder_combout\);

-- Location: LCFF_X48_Y32_N29
\myController|lcdBus[4]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|lcdBus[4]~enfeeder_combout\,
	ena => \myController|lcdBus[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|lcdBus[4]~en_regout\);

-- Location: LCCOMB_X48_Y32_N12
\myController|lcdBus[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|lcdBus[5]~reg0feeder_combout\ = \myController|Selector34~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myController|Selector34~0_combout\,
	combout => \myController|lcdBus[5]~reg0feeder_combout\);

-- Location: LCCOMB_X43_Y32_N22
\thousand|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \thousand|WideOr1~0_combout\ = (\myBcdConverter|thou[3]~3_combout\ & (((\myBcdConverter|thou[2]~2_combout\ & \myBcdConverter|thou[1]~1_combout\)))) # (!\myBcdConverter|thou[3]~3_combout\ & (((!\myBcdConverter|thou[2]~2_combout\)) # 
-- (!\myBcdConverter|thou[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|thou[3]~3_combout\,
	datab => \myBcdConverter|thou[0]~0_combout\,
	datac => \myBcdConverter|thou[2]~2_combout\,
	datad => \myBcdConverter|thou[1]~1_combout\,
	combout => \thousand|WideOr1~0_combout\);

-- Location: LCCOMB_X42_Y32_N30
\hundred|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hundred|WideOr1~0_combout\ = (\myBcdConverter|hund[3]~3_combout\ & (\myBcdConverter|hund[1]~1_combout\ & (\myBcdConverter|hund[2]~2_combout\))) # (!\myBcdConverter|hund[3]~3_combout\ & (((!\myBcdConverter|hund[0]~0_combout\) # 
-- (!\myBcdConverter|hund[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myBcdConverter|hund[3]~3_combout\,
	datab => \myBcdConverter|hund[1]~1_combout\,
	datac => \myBcdConverter|hund[2]~2_combout\,
	datad => \myBcdConverter|hund[0]~0_combout\,
	combout => \hundred|WideOr1~0_combout\);

-- Location: LCCOMB_X43_Y32_N0
\myInterface|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector8~2_combout\ = (\myInterface|Selector12~4_combout\ & ((\thousand|WideOr1~0_combout\) # ((\hundred|WideOr1~0_combout\ & \myInterface|Selector11~4_combout\)))) # (!\myInterface|Selector12~4_combout\ & (((\hundred|WideOr1~0_combout\ & 
-- \myInterface|Selector11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Selector12~4_combout\,
	datab => \thousand|WideOr1~0_combout\,
	datac => \hundred|WideOr1~0_combout\,
	datad => \myInterface|Selector11~4_combout\,
	combout => \myInterface|Selector8~2_combout\);

-- Location: LCCOMB_X44_Y32_N6
\myInterface|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector8~0_combout\ = (\myInterface|Selector0~0_combout\ & (((\myBcdConverter|tenThou[2]~2_combout\) # (\myBcdConverter|tenThou[3]~4_combout\)) # (!\myBcdConverter|tenThou[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Selector0~0_combout\,
	datab => \myBcdConverter|tenThou[0]~3_combout\,
	datac => \myBcdConverter|tenThou[2]~2_combout\,
	datad => \myBcdConverter|tenThou[3]~4_combout\,
	combout => \myInterface|Selector8~0_combout\);

-- Location: LCCOMB_X44_Y32_N0
\myInterface|Selector8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector8~3_combout\ = (\myInterface|Selector8~1_combout\) # ((\myInterface|Selector8~2_combout\) # (\myInterface|Selector8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Selector8~1_combout\,
	datac => \myInterface|Selector8~2_combout\,
	datad => \myInterface|Selector8~0_combout\,
	combout => \myInterface|Selector8~3_combout\);

-- Location: LCFF_X44_Y32_N1
\myInterface|inBus[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|Selector8~3_combout\,
	ena => \myController|ALT_INV_busLock~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|inBus[5]~reg0_regout\);

-- Location: LCFF_X48_Y32_N13
\myController|lcdBus[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|lcdBus[5]~reg0feeder_combout\,
	sdata => \myInterface|inBus[5]~reg0_regout\,
	sload => \myController|state.write~regout\,
	ena => \myController|lcdBus[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|lcdBus[5]~reg0_regout\);

-- Location: LCFF_X49_Y32_N9
\myController|lcdBus[5]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \myController|Selector30~0_combout\,
	sload => VCC,
	ena => \myController|lcdBus[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|lcdBus[5]~en_regout\);

-- Location: LCCOMB_X43_Y32_N18
\myInterface|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector7~2_combout\ = (\myInterface|Selector12~4_combout\ & ((\thousand|WideOr0~0_combout\) # ((\hundred|WideOr0~0_combout\ & \myInterface|Selector11~4_combout\)))) # (!\myInterface|Selector12~4_combout\ & (((\hundred|WideOr0~0_combout\ & 
-- \myInterface|Selector11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Selector12~4_combout\,
	datab => \thousand|WideOr0~0_combout\,
	datac => \hundred|WideOr0~0_combout\,
	datad => \myInterface|Selector11~4_combout\,
	combout => \myInterface|Selector7~2_combout\);

-- Location: LCCOMB_X45_Y32_N4
\myInterface|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector0~0_combout\ = (!\myInterface|state.tenThousand~regout\ & \myInterface|addrData~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myInterface|state.tenThousand~regout\,
	datac => \myInterface|addrData~regout\,
	combout => \myInterface|Selector0~0_combout\);

-- Location: LCCOMB_X44_Y32_N22
\myInterface|Selector7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector7~3_combout\ = (\myInterface|Selector7~1_combout\) # ((\myInterface|Selector7~2_combout\) # ((\myInterface|Selector7~0_combout\ & \myInterface|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Selector7~1_combout\,
	datab => \myInterface|Selector7~2_combout\,
	datac => \myInterface|Selector7~0_combout\,
	datad => \myInterface|Selector0~0_combout\,
	combout => \myInterface|Selector7~3_combout\);

-- Location: LCFF_X44_Y32_N23
\myInterface|inBus[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|Selector7~3_combout\,
	ena => \myController|ALT_INV_busLock~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|inBus[6]~reg0_regout\);

-- Location: LCCOMB_X44_Y32_N28
\myController|Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Selector36~0_combout\ = (\myInterface|inBus[6]~reg0_regout\ & \myController|state.write~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myInterface|inBus[6]~reg0_regout\,
	datad => \myController|state.write~regout\,
	combout => \myController|Selector36~0_combout\);

-- Location: LCFF_X44_Y32_N29
\myController|lcdBus[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|Selector36~0_combout\,
	ena => \myController|lcdBus[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|lcdBus[6]~reg0_regout\);

-- Location: LCCOMB_X48_Y32_N2
\myController|lcdBus[6]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|lcdBus[6]~enfeeder_combout\ = \myController|Selector30~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myController|Selector30~0_combout\,
	combout => \myController|lcdBus[6]~enfeeder_combout\);

-- Location: LCFF_X48_Y32_N3
\myController|lcdBus[6]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|lcdBus[6]~enfeeder_combout\,
	ena => \myController|lcdBus[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|lcdBus[6]~en_regout\);

-- Location: LCFF_X46_Y32_N27
\myInterface|addrOrData~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \myInterface|addrData~regout\,
	sload => VCC,
	ena => \myController|ALT_INV_busLock~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|addrOrData~reg0_regout\);

-- Location: LCCOMB_X49_Y32_N18
\myController|Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Selector38~0_combout\ = (\myController|state.write~regout\ & !\myInterface|addrOrData~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myController|state.write~regout\,
	datad => \myInterface|addrOrData~reg0_regout\,
	combout => \myController|Selector38~0_combout\);

-- Location: LCFF_X49_Y32_N19
\myController|lcdBus[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|Selector38~0_combout\,
	ena => \myController|lcdBus[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|lcdBus[7]~reg0_regout\);

-- Location: LCFF_X48_Y32_N21
\myController|lcdBus[7]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|Selector30~0_combout\,
	ena => \myController|lcdBus[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|lcdBus[7]~en_regout\);

-- Location: LCCOMB_X48_Y32_N24
\myController|Selector28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Selector28~2_combout\ = (\lcdBus[7]~7\ & ((\myController|state.displaySet~regout\) # ((\myController|state.displayClear~regout\) # (\myController|state.entryModeSet~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|state.displaySet~regout\,
	datab => \myController|state.displayClear~regout\,
	datac => \myController|state.entryModeSet~regout\,
	datad => \lcdBus[7]~7\,
	combout => \myController|Selector28~2_combout\);

-- Location: LCCOMB_X49_Y32_N6
\myController|Selector28~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Selector28~4_combout\ = (\myController|lcdReadWriteSel~regout\ & ((\myController|state.functionSet1~regout\) # (!\myController|state.powerOn~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myController|state.functionSet1~regout\,
	datac => \myController|lcdReadWriteSel~regout\,
	datad => \myController|state.powerOn~regout\,
	combout => \myController|Selector28~4_combout\);

-- Location: LCCOMB_X49_Y32_N24
\myController|Selector28~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Selector28~5_combout\ = (\myController|Selector28~2_combout\) # ((\myController|Selector28~4_combout\) # ((\myInterface|addrOrData~reg0_regout\ & \myController|state.write~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|addrOrData~reg0_regout\,
	datab => \myController|Selector28~2_combout\,
	datac => \myController|state.write~regout\,
	datad => \myController|Selector28~4_combout\,
	combout => \myController|Selector28~5_combout\);

-- Location: LCFF_X49_Y32_N25
\myController|lcdReadWriteSel\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|Selector28~5_combout\,
	ena => \lcdOn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|lcdReadWriteSel~regout\);

-- Location: LCCOMB_X49_Y32_N26
\myController|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|Selector27~0_combout\ = (\myController|Selector28~3_combout\) # ((\myController|lcdRsSelect~regout\ & ((\myController|state.functionSet1~regout\) # (!\myController|state.powerOn~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|Selector28~3_combout\,
	datab => \myController|state.functionSet1~regout\,
	datac => \myController|lcdRsSelect~regout\,
	datad => \myController|state.powerOn~regout\,
	combout => \myController|Selector27~0_combout\);

-- Location: LCFF_X49_Y32_N27
\myController|lcdRsSelect\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|Selector27~0_combout\,
	ena => \lcdOn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|lcdRsSelect~regout\);

-- Location: LCCOMB_X53_Y29_N28
\myController|lcdEnableOut~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myController|lcdEnableOut~0_combout\ = (\myController|state.write~regout\ & ((!\myController|Equal3~10_combout\))) # (!\myController|state.write~regout\ & (\myController|lcdEnableOut~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myController|state.write~regout\,
	datac => \myController|lcdEnableOut~regout\,
	datad => \myController|Equal3~10_combout\,
	combout => \myController|lcdEnableOut~0_combout\);

-- Location: LCFF_X53_Y29_N29
\myController|lcdEnableOut\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myController|lcdEnableOut~0_combout\,
	aclr => \ALT_INV_lcdOn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myController|lcdEnableOut~regout\);

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcdBus[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myController|lcdBus[0]~reg0_regout\,
	oe => \myController|lcdBus[0]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => lcdBus(0));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcdBus[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myController|lcdBus[1]~reg0_regout\,
	oe => \myController|lcdBus[1]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => lcdBus(1));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcdBus[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myController|lcdBus[2]~reg0_regout\,
	oe => \myController|lcdBus[2]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => lcdBus(2));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcdBus[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myController|lcdBus[3]~reg0_regout\,
	oe => \myController|lcdBus[3]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => lcdBus(3));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcdBus[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myController|lcdBus[4]~reg0_regout\,
	oe => \myController|lcdBus[4]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => lcdBus(4));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcdBus[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myController|lcdBus[5]~reg0_regout\,
	oe => \myController|lcdBus[5]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => lcdBus(5));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcdBus[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myController|lcdBus[6]~reg0_regout\,
	oe => \myController|lcdBus[6]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => lcdBus(6));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcdReadWriteSel~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myController|lcdReadWriteSel~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcdReadWriteSel);

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcdRsSelect~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myController|lcdRsSelect~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcdRsSelect);

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcdEnableOut~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myController|lcdEnableOut~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcdEnableOut);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\errorLed~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_errorLed);
END structure;


