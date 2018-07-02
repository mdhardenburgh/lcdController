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

-- DATE "07/01/2018 02:09:24"

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

ENTITY 	lcdController IS
    PORT (
	clk : IN std_logic;
	writeEnable : IN std_logic;
	lcdOnIn : IN std_logic;
	writeAddr : IN std_logic_vector(4 DOWNTO 0);
	charCode : IN std_logic_vector(7 DOWNTO 0);
	lcdBus : OUT std_logic_vector(7 DOWNTO 0);
	lcdOnOut : OUT std_logic;
	lcdReadWriteSel : OUT std_logic;
	lcdRsSelect : OUT std_logic;
	lcdEnableOut : OUT std_logic;
	errorLed : OUT std_logic
	);
END lcdController;

-- Design Ports Information
-- lcdBus[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdBus[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdBus[2]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdBus[3]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdBus[4]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdBus[5]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdBus[6]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdBus[7]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdOnOut	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdReadWriteSel	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdRsSelect	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdEnableOut	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- errorLed	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdOnIn	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writeEnable	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- charCode[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writeAddr[0]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writeAddr[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writeAddr[2]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writeAddr[3]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writeAddr[4]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- charCode[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- charCode[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- charCode[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- charCode[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- charCode[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- charCode[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- charCode[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lcdController IS
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
SIGNAL ww_writeEnable : std_logic;
SIGNAL ww_lcdOnIn : std_logic;
SIGNAL ww_writeAddr : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_charCode : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lcdBus : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lcdOnOut : std_logic;
SIGNAL ww_lcdReadWriteSel : std_logic;
SIGNAL ww_lcdRsSelect : std_logic;
SIGNAL ww_lcdEnableOut : std_logic;
SIGNAL ww_errorLed : std_logic;
SIGNAL \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \myRegisters|charCode_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \myStateMachine|counter[6]~61_combout\ : std_logic;
SIGNAL \myStateMachine|counter[13]~75_combout\ : std_logic;
SIGNAL \myStateMachine|counter[27]~103_combout\ : std_logic;
SIGNAL \myStateMachine|counter[30]~109_combout\ : std_logic;
SIGNAL \myStateMachine|Equal0~1_combout\ : std_logic;
SIGNAL \myStateMachine|Equal4~1_combout\ : std_logic;
SIGNAL \myStateMachine|Selector264~0_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~35_combout\ : std_logic;
SIGNAL \myStateMachine|Equal0~5_combout\ : std_logic;
SIGNAL \myStateMachine|Equal0~7_combout\ : std_logic;
SIGNAL \myStateMachine|Selector114~1_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~43_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~44_combout\ : std_logic;
SIGNAL \myStateMachine|Selector267~2_combout\ : std_logic;
SIGNAL \myStateMachine|Selector270~2_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \myStateMachine|addrCounter[0]~7_combout\ : std_logic;
SIGNAL \lcdOnIn~combout\ : std_logic;
SIGNAL \myStateMachine|addrCounter[0]~8\ : std_logic;
SIGNAL \myStateMachine|addrCounter[1]~9_combout\ : std_logic;
SIGNAL \myStateMachine|counter[0]~38\ : std_logic;
SIGNAL \myStateMachine|counter[1]~51_combout\ : std_logic;
SIGNAL \myStateMachine|counter[8]~66\ : std_logic;
SIGNAL \myStateMachine|counter[9]~67_combout\ : std_logic;
SIGNAL \myStateMachine|subStates~7_combout\ : std_logic;
SIGNAL \myStateMachine|counter[18]~86\ : std_logic;
SIGNAL \myStateMachine|counter[19]~87_combout\ : std_logic;
SIGNAL \myStateMachine|counter[19]~88\ : std_logic;
SIGNAL \myStateMachine|counter[20]~90\ : std_logic;
SIGNAL \myStateMachine|counter[21]~91_combout\ : std_logic;
SIGNAL \myStateMachine|counter[21]~92\ : std_logic;
SIGNAL \myStateMachine|counter[22]~93_combout\ : std_logic;
SIGNAL \myStateMachine|counter[22]~94\ : std_logic;
SIGNAL \myStateMachine|counter[23]~95_combout\ : std_logic;
SIGNAL \myStateMachine|counter[23]~96\ : std_logic;
SIGNAL \myStateMachine|counter[24]~97_combout\ : std_logic;
SIGNAL \myStateMachine|counter[24]~98\ : std_logic;
SIGNAL \myStateMachine|counter[25]~99_combout\ : std_logic;
SIGNAL \myStateMachine|counter[25]~100\ : std_logic;
SIGNAL \myStateMachine|counter[26]~101_combout\ : std_logic;
SIGNAL \myStateMachine|counter[26]~102\ : std_logic;
SIGNAL \myStateMachine|counter[27]~104\ : std_logic;
SIGNAL \myStateMachine|counter[28]~105_combout\ : std_logic;
SIGNAL \myStateMachine|Equal0~2_combout\ : std_logic;
SIGNAL \myStateMachine|counter[20]~89_combout\ : std_logic;
SIGNAL \myStateMachine|counter[0]~37_combout\ : std_logic;
SIGNAL \myStateMachine|Equal0~0_combout\ : std_logic;
SIGNAL \myStateMachine|counter[28]~106\ : std_logic;
SIGNAL \myStateMachine|counter[29]~108\ : std_logic;
SIGNAL \myStateMachine|counter[30]~110\ : std_logic;
SIGNAL \myStateMachine|counter[31]~111_combout\ : std_logic;
SIGNAL \myStateMachine|counter[31]~112\ : std_logic;
SIGNAL \myStateMachine|counter[32]~113_combout\ : std_logic;
SIGNAL \myStateMachine|counter[29]~107_combout\ : std_logic;
SIGNAL \myStateMachine|Equal0~3_combout\ : std_logic;
SIGNAL \myStateMachine|Equal0~4_combout\ : std_logic;
SIGNAL \myStateMachine|counter[14]~77_combout\ : std_logic;
SIGNAL \myStateMachine|Equal1~0_combout\ : std_logic;
SIGNAL \myStateMachine|counter[16]~81_combout\ : std_logic;
SIGNAL \myStateMachine|Equal1~1_combout\ : std_logic;
SIGNAL \myStateMachine|Equal4~3_combout\ : std_logic;
SIGNAL \myStateMachine|subStates.subState2~0_combout\ : std_logic;
SIGNAL \myStateMachine|subStates.subState2~regout\ : std_logic;
SIGNAL \myStateMachine|displayOnOff~0_combout\ : std_logic;
SIGNAL \myStateMachine|displayOnOff~regout\ : std_logic;
SIGNAL \myStateMachine|Selector264~1_combout\ : std_logic;
SIGNAL \myStateMachine|state.writeAddr~regout\ : std_logic;
SIGNAL \myStateMachine|Selector37~0_combout\ : std_logic;
SIGNAL \myStateMachine|Equal3~0_combout\ : std_logic;
SIGNAL \myStateMachine|counter[11]~71_combout\ : std_logic;
SIGNAL \myStateMachine|Equal4~0_combout\ : std_logic;
SIGNAL \myStateMachine|Equal0~6_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~57_combout\ : std_logic;
SIGNAL \myStateMachine|Equal3~1_combout\ : std_logic;
SIGNAL \myStateMachine|Equal3~2_combout\ : std_logic;
SIGNAL \myStateMachine|functionSetCase~14_combout\ : std_logic;
SIGNAL \myStateMachine|functionSetCase.00~regout\ : std_logic;
SIGNAL \myStateMachine|Selector74~0_combout\ : std_logic;
SIGNAL \myStateMachine|Selector263~0_combout\ : std_logic;
SIGNAL \myStateMachine|Selector263~1_combout\ : std_logic;
SIGNAL \myStateMachine|Selector78~0_combout\ : std_logic;
SIGNAL \myStateMachine|Selector77~0_combout\ : std_logic;
SIGNAL \myStateMachine|functionSetCase.functionSet2~regout\ : std_logic;
SIGNAL \myStateMachine|Selector78~1_combout\ : std_logic;
SIGNAL \myStateMachine|functionSetCase.functionSet3~regout\ : std_logic;
SIGNAL \myStateMachine|Equal1~4_combout\ : std_logic;
SIGNAL \myStateMachine|Equal1~5_combout\ : std_logic;
SIGNAL \myStateMachine|functionSetCase.functionSet4~0_combout\ : std_logic;
SIGNAL \myStateMachine|functionSetCase.functionSet4~regout\ : std_logic;
SIGNAL \myStateMachine|Selector260~0_combout\ : std_logic;
SIGNAL \myStateMachine|Selector260~1_combout\ : std_logic;
SIGNAL \myStateMachine|state.functionSet~regout\ : std_logic;
SIGNAL \myStateMachine|Selector267~0_combout\ : std_logic;
SIGNAL \myStateMachine|Selector267~1_combout\ : std_logic;
SIGNAL \myStateMachine|Selector267~3_combout\ : std_logic;
SIGNAL \myStateMachine|subStates.00~regout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~50_combout\ : std_logic;
SIGNAL \myStateMachine|counter[9]~68\ : std_logic;
SIGNAL \myStateMachine|counter[10]~69_combout\ : std_logic;
SIGNAL \myStateMachine|counter[10]~70\ : std_logic;
SIGNAL \myStateMachine|counter[11]~72\ : std_logic;
SIGNAL \myStateMachine|counter[12]~73_combout\ : std_logic;
SIGNAL \myStateMachine|counter[12]~74\ : std_logic;
SIGNAL \myStateMachine|counter[13]~76\ : std_logic;
SIGNAL \myStateMachine|counter[14]~78\ : std_logic;
SIGNAL \myStateMachine|counter[15]~79_combout\ : std_logic;
SIGNAL \myStateMachine|counter[15]~80\ : std_logic;
SIGNAL \myStateMachine|counter[16]~82\ : std_logic;
SIGNAL \myStateMachine|counter[17]~83_combout\ : std_logic;
SIGNAL \myStateMachine|counter[17]~84\ : std_logic;
SIGNAL \myStateMachine|counter[18]~85_combout\ : std_logic;
SIGNAL \myStateMachine|Equal0~8_combout\ : std_logic;
SIGNAL \myStateMachine|Equal0~9_combout\ : std_logic;
SIGNAL \myStateMachine|state.powerOn~0_combout\ : std_logic;
SIGNAL \myStateMachine|state.powerOn~regout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~39_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~40_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~41_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~46_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~47_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~45_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~48_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~42_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~49_combout\ : std_logic;
SIGNAL \myStateMachine|counter[1]~52\ : std_logic;
SIGNAL \myStateMachine|counter[2]~53_combout\ : std_logic;
SIGNAL \myStateMachine|counter[2]~54\ : std_logic;
SIGNAL \myStateMachine|counter[3]~55_combout\ : std_logic;
SIGNAL \myStateMachine|counter[3]~56\ : std_logic;
SIGNAL \myStateMachine|counter[4]~58\ : std_logic;
SIGNAL \myStateMachine|counter[5]~59_combout\ : std_logic;
SIGNAL \myStateMachine|counter[5]~60\ : std_logic;
SIGNAL \myStateMachine|counter[6]~62\ : std_logic;
SIGNAL \myStateMachine|counter[7]~63_combout\ : std_logic;
SIGNAL \myStateMachine|counter[7]~64\ : std_logic;
SIGNAL \myStateMachine|counter[8]~65_combout\ : std_logic;
SIGNAL \myStateMachine|Equal1~2_combout\ : std_logic;
SIGNAL \myStateMachine|Equal1~3_combout\ : std_logic;
SIGNAL \myStateMachine|Equal2~0_combout\ : std_logic;
SIGNAL \myStateMachine|Equal2~1_combout\ : std_logic;
SIGNAL \myStateMachine|Selector261~2_combout\ : std_logic;
SIGNAL \myStateMachine|Selector261~4_combout\ : std_logic;
SIGNAL \myStateMachine|Selector261~3_combout\ : std_logic;
SIGNAL \myStateMachine|state.displaySet~regout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~115_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~36_combout\ : std_logic;
SIGNAL \myStateMachine|Selector262~0_combout\ : std_logic;
SIGNAL \myStateMachine|state.displayClear~regout\ : std_logic;
SIGNAL \myStateMachine|state.entryModeSet~0_combout\ : std_logic;
SIGNAL \myStateMachine|state.entryModeSet~regout\ : std_logic;
SIGNAL \myStateMachine|Selector269~6_combout\ : std_logic;
SIGNAL \myStateMachine|Selector0~0_combout\ : std_logic;
SIGNAL \myStateMachine|Selector269~2_combout\ : std_logic;
SIGNAL \myStateMachine|Selector269~3_combout\ : std_logic;
SIGNAL \myStateMachine|Selector269~4_combout\ : std_logic;
SIGNAL \myStateMachine|Selector269~5_combout\ : std_logic;
SIGNAL \myStateMachine|subStates.subState3~regout\ : std_logic;
SIGNAL \myStateMachine|Selector266~0_combout\ : std_logic;
SIGNAL \myStateMachine|state.writeData~0_combout\ : std_logic;
SIGNAL \myStateMachine|state.writeData~regout\ : std_logic;
SIGNAL \myStateMachine|Selector266~1_combout\ : std_logic;
SIGNAL \myStateMachine|Equal4~2_combout\ : std_logic;
SIGNAL \myStateMachine|Selector266~2_combout\ : std_logic;
SIGNAL \myStateMachine|state.cursorLogicState~regout\ : std_logic;
SIGNAL \myStateMachine|addrCounter[1]~10\ : std_logic;
SIGNAL \myStateMachine|addrCounter[2]~11_combout\ : std_logic;
SIGNAL \myStateMachine|LessThan0~0_combout\ : std_logic;
SIGNAL \myStateMachine|addrCounter[2]~12\ : std_logic;
SIGNAL \myStateMachine|addrCounter[3]~14\ : std_logic;
SIGNAL \myStateMachine|addrCounter[4]~15_combout\ : std_logic;
SIGNAL \myStateMachine|addrCounter[4]~16\ : std_logic;
SIGNAL \myStateMachine|addrCounter[5]~17_combout\ : std_logic;
SIGNAL \myStateMachine|LessThan0~1_combout\ : std_logic;
SIGNAL \myStateMachine|Selector151~0_combout\ : std_logic;
SIGNAL \myStateMachine|Selector270~3_combout\ : std_logic;
SIGNAL \myStateMachine|readEnable~regout\ : std_logic;
SIGNAL \writeEnable~combout\ : std_logic;
SIGNAL \myRegisters|always0~0_combout\ : std_logic;
SIGNAL \myRegisters|always1~0_combout\ : std_logic;
SIGNAL \myStateMachine|addrToRead[0]~feeder_combout\ : std_logic;
SIGNAL \myStateMachine|addrToRead[0]~0_combout\ : std_logic;
SIGNAL \myStateMachine|addrToRead[1]~feeder_combout\ : std_logic;
SIGNAL \myStateMachine|addrToRead[2]~feeder_combout\ : std_logic;
SIGNAL \myStateMachine|addrCounter[3]~13_combout\ : std_logic;
SIGNAL \myStateMachine|addrToRead[3]~feeder_combout\ : std_logic;
SIGNAL \myStateMachine|addrToRead[4]~feeder_combout\ : std_logic;
SIGNAL \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \myStateMachine|Selector37~1_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[0]~reg0_regout\ : std_logic;
SIGNAL \myStateMachine|Selector0~1_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[0]~enfeeder_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[0]~en_regout\ : std_logic;
SIGNAL \myStateMachine|Selector150~0_combout\ : std_logic;
SIGNAL \myRegisters|charCode_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \myStateMachine|lcdBus[1]~reg0_regout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[1]~enfeeder_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[1]~en_regout\ : std_logic;
SIGNAL \myStateMachine|Selector149~0_combout\ : std_logic;
SIGNAL \myStateMachine|Selector149~1_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[2]~reg0_regout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[2]~enfeeder_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[2]~en_regout\ : std_logic;
SIGNAL \myStateMachine|Selector114~0_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[3]~reg0feeder_combout\ : std_logic;
SIGNAL \myRegisters|charCode_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \myStateMachine|lcdBus[3]~reg0_regout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[3]~enfeeder_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[3]~en_regout\ : std_logic;
SIGNAL \myStateMachine|Selector113~0_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[4]~reg0feeder_combout\ : std_logic;
SIGNAL \myRegisters|charCode_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \myStateMachine|lcdBus[4]~reg0_regout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[4]~enfeeder_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[4]~en_regout\ : std_logic;
SIGNAL \myStateMachine|Selector73~0_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[5]~reg0feeder_combout\ : std_logic;
SIGNAL \myRegisters|charCode_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \myStateMachine|lcdBus[5]~reg0_regout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[5]~en_regout\ : std_logic;
SIGNAL \myStateMachine|addrCounter[5]~18\ : std_logic;
SIGNAL \myStateMachine|addrCounter[6]~19_combout\ : std_logic;
SIGNAL \myStateMachine|Selector72~0_combout\ : std_logic;
SIGNAL \myRegisters|charCode_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \myStateMachine|lcdBus[6]~reg0_regout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[6]~enfeeder_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[6]~en_regout\ : std_logic;
SIGNAL \myRegisters|charCode_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \myStateMachine|Selector36~0_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[7]~reg0_regout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[7]~enfeeder_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[7]~en_regout\ : std_logic;
SIGNAL \myStateMachine|Selector225~0_combout\ : std_logic;
SIGNAL \myStateMachine|lcdRsSelect~regout\ : std_logic;
SIGNAL \myStateMachine|Selector224~0_combout\ : std_logic;
SIGNAL \myStateMachine|Selector224~1_combout\ : std_logic;
SIGNAL \myStateMachine|lcdEnableOut~regout\ : std_logic;
SIGNAL \myStateMachine|counter\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \myStateMachine|addrToRead\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \myStateMachine|addrCounter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \writeAddr~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \charCode~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \myStateMachine|ALT_INV_lcdBus[7]~en_regout\ : std_logic;
SIGNAL \myStateMachine|ALT_INV_lcdBus[7]~reg0_regout\ : std_logic;
SIGNAL \myStateMachine|ALT_INV_lcdBus[6]~en_regout\ : std_logic;
SIGNAL \myStateMachine|ALT_INV_lcdBus[5]~en_regout\ : std_logic;
SIGNAL \myStateMachine|ALT_INV_lcdBus[4]~en_regout\ : std_logic;
SIGNAL \myStateMachine|ALT_INV_lcdBus[3]~en_regout\ : std_logic;
SIGNAL \myStateMachine|ALT_INV_lcdBus[2]~en_regout\ : std_logic;
SIGNAL \myStateMachine|ALT_INV_lcdBus[1]~en_regout\ : std_logic;
SIGNAL \myStateMachine|ALT_INV_lcdBus[0]~en_regout\ : std_logic;
SIGNAL \ALT_INV_lcdOnIn~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_writeEnable <= writeEnable;
ww_lcdOnIn <= lcdOnIn;
ww_writeAddr <= writeAddr;
ww_charCode <= charCode;
lcdBus <= ww_lcdBus;
lcdOnOut <= ww_lcdOnOut;
lcdReadWriteSel <= ww_lcdReadWriteSel;
lcdRsSelect <= ww_lcdRsSelect;
lcdEnableOut <= ww_lcdEnableOut;
errorLed <= ww_errorLed;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\charCode~combout\(7) & \charCode~combout\(6) & \charCode~combout\(5) & \charCode~combout\(4) & \charCode~combout\(3) & \charCode~combout\(2) & 
\charCode~combout\(1) & \charCode~combout\(0));

\myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\writeAddr~combout\(4) & \writeAddr~combout\(3) & \writeAddr~combout\(2) & \writeAddr~combout\(1) & \writeAddr~combout\(0));

\myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\myStateMachine|addrToRead\(4) & \myStateMachine|addrToRead\(3) & \myStateMachine|addrToRead\(2) & \myStateMachine|addrToRead\(1) & \myStateMachine|addrToRead\(0));

\myRegisters|charCode_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\myRegisters|charCode_rtl_0|auto_generated|ram_block1a1\ <= \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\myRegisters|charCode_rtl_0|auto_generated|ram_block1a2\ <= \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\myRegisters|charCode_rtl_0|auto_generated|ram_block1a3\ <= \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\myRegisters|charCode_rtl_0|auto_generated|ram_block1a4\ <= \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\myRegisters|charCode_rtl_0|auto_generated|ram_block1a5\ <= \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\myRegisters|charCode_rtl_0|auto_generated|ram_block1a6\ <= \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\myRegisters|charCode_rtl_0|auto_generated|ram_block1a7\ <= \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\myStateMachine|ALT_INV_lcdBus[7]~en_regout\ <= NOT \myStateMachine|lcdBus[7]~en_regout\;
\myStateMachine|ALT_INV_lcdBus[7]~reg0_regout\ <= NOT \myStateMachine|lcdBus[7]~reg0_regout\;
\myStateMachine|ALT_INV_lcdBus[6]~en_regout\ <= NOT \myStateMachine|lcdBus[6]~en_regout\;
\myStateMachine|ALT_INV_lcdBus[5]~en_regout\ <= NOT \myStateMachine|lcdBus[5]~en_regout\;
\myStateMachine|ALT_INV_lcdBus[4]~en_regout\ <= NOT \myStateMachine|lcdBus[4]~en_regout\;
\myStateMachine|ALT_INV_lcdBus[3]~en_regout\ <= NOT \myStateMachine|lcdBus[3]~en_regout\;
\myStateMachine|ALT_INV_lcdBus[2]~en_regout\ <= NOT \myStateMachine|lcdBus[2]~en_regout\;
\myStateMachine|ALT_INV_lcdBus[1]~en_regout\ <= NOT \myStateMachine|lcdBus[1]~en_regout\;
\myStateMachine|ALT_INV_lcdBus[0]~en_regout\ <= NOT \myStateMachine|lcdBus[0]~en_regout\;
\ALT_INV_lcdOnIn~combout\ <= NOT \lcdOnIn~combout\;

-- Location: M4K_X13_Y27
\myRegisters|charCode_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "lcdRegisterFile:myRegisters|altsyncram:charCode_rtl_0|altsyncram_ohd1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 8,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \myRegisters|always0~0_combout\,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	clk1 => \clk~clkctrl_outclk\,
	ena0 => \myRegisters|always0~0_combout\,
	ena1 => \myRegisters|always1~0_combout\,
	portadatain => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCFF_X8_Y28_N11
\myStateMachine|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[13]~75_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(13));

-- Location: LCFF_X8_Y27_N7
\myStateMachine|counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[27]~103_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(27));

-- Location: LCFF_X8_Y27_N13
\myStateMachine|counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[30]~109_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(30));

-- Location: LCFF_X8_Y29_N29
\myStateMachine|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[6]~61_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(6));

-- Location: LCCOMB_X8_Y29_N28
\myStateMachine|counter[6]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[6]~61_combout\ = (\myStateMachine|counter\(6) & (\myStateMachine|counter[5]~60\ $ (GND))) # (!\myStateMachine|counter\(6) & (!\myStateMachine|counter[5]~60\ & VCC))
-- \myStateMachine|counter[6]~62\ = CARRY((\myStateMachine|counter\(6) & !\myStateMachine|counter[5]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(6),
	datad => VCC,
	cin => \myStateMachine|counter[5]~60\,
	combout => \myStateMachine|counter[6]~61_combout\,
	cout => \myStateMachine|counter[6]~62\);

-- Location: LCCOMB_X8_Y28_N10
\myStateMachine|counter[13]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[13]~75_combout\ = (\myStateMachine|counter\(13) & (!\myStateMachine|counter[12]~74\)) # (!\myStateMachine|counter\(13) & ((\myStateMachine|counter[12]~74\) # (GND)))
-- \myStateMachine|counter[13]~76\ = CARRY((!\myStateMachine|counter[12]~74\) # (!\myStateMachine|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(13),
	datad => VCC,
	cin => \myStateMachine|counter[12]~74\,
	combout => \myStateMachine|counter[13]~75_combout\,
	cout => \myStateMachine|counter[13]~76\);

-- Location: LCCOMB_X8_Y27_N6
\myStateMachine|counter[27]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[27]~103_combout\ = (\myStateMachine|counter\(27) & (!\myStateMachine|counter[26]~102\)) # (!\myStateMachine|counter\(27) & ((\myStateMachine|counter[26]~102\) # (GND)))
-- \myStateMachine|counter[27]~104\ = CARRY((!\myStateMachine|counter[26]~102\) # (!\myStateMachine|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(27),
	datad => VCC,
	cin => \myStateMachine|counter[26]~102\,
	combout => \myStateMachine|counter[27]~103_combout\,
	cout => \myStateMachine|counter[27]~104\);

-- Location: LCCOMB_X8_Y27_N12
\myStateMachine|counter[30]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[30]~109_combout\ = (\myStateMachine|counter\(30) & (\myStateMachine|counter[29]~108\ $ (GND))) # (!\myStateMachine|counter\(30) & (!\myStateMachine|counter[29]~108\ & VCC))
-- \myStateMachine|counter[30]~110\ = CARRY((\myStateMachine|counter\(30) & !\myStateMachine|counter[29]~108\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(30),
	datad => VCC,
	cin => \myStateMachine|counter[29]~108\,
	combout => \myStateMachine|counter[30]~109_combout\,
	cout => \myStateMachine|counter[30]~110\);

-- Location: LCCOMB_X8_Y27_N20
\myStateMachine|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal0~1_combout\ = (!\myStateMachine|counter\(22) & (!\myStateMachine|counter\(24) & (!\myStateMachine|counter\(21) & !\myStateMachine|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(22),
	datab => \myStateMachine|counter\(24),
	datac => \myStateMachine|counter\(21),
	datad => \myStateMachine|counter\(23),
	combout => \myStateMachine|Equal0~1_combout\);

-- Location: LCCOMB_X8_Y29_N10
\myStateMachine|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal4~1_combout\ = (!\myStateMachine|counter\(6) & (!\myStateMachine|counter\(7) & (\myStateMachine|counter\(4) & \myStateMachine|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(6),
	datab => \myStateMachine|counter\(7),
	datac => \myStateMachine|counter\(4),
	datad => \myStateMachine|counter\(3),
	combout => \myStateMachine|Equal4~1_combout\);

-- Location: LCCOMB_X10_Y27_N6
\myStateMachine|Selector264~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector264~0_combout\ = (\myStateMachine|state.writeAddr~regout\ & !\myStateMachine|Selector266~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|state.writeAddr~regout\,
	datac => \myStateMachine|Selector266~0_combout\,
	combout => \myStateMachine|Selector264~0_combout\);

-- Location: LCCOMB_X9_Y26_N16
\myStateMachine|counter[4]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~35_combout\ = (\myStateMachine|state.displaySet~regout\ & \myStateMachine|subStates.subState3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.displaySet~regout\,
	datac => \myStateMachine|subStates.subState3~regout\,
	combout => \myStateMachine|counter[4]~35_combout\);

-- Location: LCCOMB_X8_Y29_N8
\myStateMachine|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal0~5_combout\ = (\myStateMachine|counter\(16) & (!\myStateMachine|counter\(1) & (\myStateMachine|counter\(14) & !\myStateMachine|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(16),
	datab => \myStateMachine|counter\(1),
	datac => \myStateMachine|counter\(14),
	datad => \myStateMachine|counter\(3),
	combout => \myStateMachine|Equal0~5_combout\);

-- Location: LCCOMB_X8_Y29_N2
\myStateMachine|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal0~7_combout\ = (\myStateMachine|counter\(6) & (\myStateMachine|counter\(9) & (!\myStateMachine|counter\(4) & !\myStateMachine|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(6),
	datab => \myStateMachine|counter\(9),
	datac => \myStateMachine|counter\(4),
	datad => \myStateMachine|counter\(7),
	combout => \myStateMachine|Equal0~7_combout\);

-- Location: LCCOMB_X10_Y27_N0
\myStateMachine|Selector114~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector114~1_combout\ = (!\myStateMachine|state.displayClear~regout\ & !\myStateMachine|state.entryModeSet~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.displayClear~regout\,
	datad => \myStateMachine|state.entryModeSet~regout\,
	combout => \myStateMachine|Selector114~1_combout\);

-- Location: LCCOMB_X9_Y26_N2
\myStateMachine|counter[4]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~43_combout\ = (\myStateMachine|counter[4]~36_combout\) # ((\myStateMachine|Selector263~1_combout\ & (!\myStateMachine|counter[4]~35_combout\ & !\myStateMachine|Selector114~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter[4]~36_combout\,
	datab => \myStateMachine|Selector263~1_combout\,
	datac => \myStateMachine|counter[4]~35_combout\,
	datad => \myStateMachine|Selector114~1_combout\,
	combout => \myStateMachine|counter[4]~43_combout\);

-- Location: LCCOMB_X9_Y26_N12
\myStateMachine|counter[4]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~44_combout\ = (\myStateMachine|Equal3~0_combout\ & (\myStateMachine|Equal3~1_combout\ & (!\myStateMachine|counter[4]~35_combout\ & !\myStateMachine|functionSetCase.00~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal3~0_combout\,
	datab => \myStateMachine|Equal3~1_combout\,
	datac => \myStateMachine|counter[4]~35_combout\,
	datad => \myStateMachine|functionSetCase.00~regout\,
	combout => \myStateMachine|counter[4]~44_combout\);

-- Location: LCCOMB_X10_Y27_N26
\myStateMachine|Selector267~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector267~2_combout\ = (\myStateMachine|Selector263~1_combout\ & (((\myStateMachine|Selector266~0_combout\ & \myStateMachine|state.writeAddr~regout\)) # (!\myStateMachine|Selector114~1_combout\))) # 
-- (!\myStateMachine|Selector263~1_combout\ & (\myStateMachine|Selector266~0_combout\ & (\myStateMachine|state.writeAddr~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector263~1_combout\,
	datab => \myStateMachine|Selector266~0_combout\,
	datac => \myStateMachine|state.writeAddr~regout\,
	datad => \myStateMachine|Selector114~1_combout\,
	combout => \myStateMachine|Selector267~2_combout\);

-- Location: LCCOMB_X9_Y27_N12
\myStateMachine|Selector270~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector270~2_combout\ = (\myStateMachine|state.writeData~regout\ & ((\myStateMachine|subStates.subState2~regout\) # ((!\myStateMachine|subStates.00~regout\ & \myStateMachine|readEnable~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|subStates.00~regout\,
	datab => \myStateMachine|subStates.subState2~regout\,
	datac => \myStateMachine|readEnable~regout\,
	datad => \myStateMachine|state.writeData~regout\,
	combout => \myStateMachine|Selector270~2_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X11_Y27_N14
\myStateMachine|addrCounter[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|addrCounter[0]~7_combout\ = \myStateMachine|addrCounter\(0) $ (VCC)
-- \myStateMachine|addrCounter[0]~8\ = CARRY(\myStateMachine|addrCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|addrCounter\(0),
	datad => VCC,
	combout => \myStateMachine|addrCounter[0]~7_combout\,
	cout => \myStateMachine|addrCounter[0]~8\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcdOnIn~I\ : cycloneii_io
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
	padio => ww_lcdOnIn,
	combout => \lcdOnIn~combout\);

-- Location: LCCOMB_X11_Y27_N16
\myStateMachine|addrCounter[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|addrCounter[1]~9_combout\ = (\myStateMachine|addrCounter\(1) & (!\myStateMachine|addrCounter[0]~8\)) # (!\myStateMachine|addrCounter\(1) & ((\myStateMachine|addrCounter[0]~8\) # (GND)))
-- \myStateMachine|addrCounter[1]~10\ = CARRY((!\myStateMachine|addrCounter[0]~8\) # (!\myStateMachine|addrCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|addrCounter\(1),
	datad => VCC,
	cin => \myStateMachine|addrCounter[0]~8\,
	combout => \myStateMachine|addrCounter[1]~9_combout\,
	cout => \myStateMachine|addrCounter[1]~10\);

-- Location: LCCOMB_X8_Y29_N16
\myStateMachine|counter[0]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[0]~37_combout\ = \myStateMachine|counter\(0) $ (VCC)
-- \myStateMachine|counter[0]~38\ = CARRY(\myStateMachine|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(0),
	datad => VCC,
	combout => \myStateMachine|counter[0]~37_combout\,
	cout => \myStateMachine|counter[0]~38\);

-- Location: LCCOMB_X8_Y29_N18
\myStateMachine|counter[1]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[1]~51_combout\ = (\myStateMachine|counter\(1) & (!\myStateMachine|counter[0]~38\)) # (!\myStateMachine|counter\(1) & ((\myStateMachine|counter[0]~38\) # (GND)))
-- \myStateMachine|counter[1]~52\ = CARRY((!\myStateMachine|counter[0]~38\) # (!\myStateMachine|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(1),
	datad => VCC,
	cin => \myStateMachine|counter[0]~38\,
	combout => \myStateMachine|counter[1]~51_combout\,
	cout => \myStateMachine|counter[1]~52\);

-- Location: LCCOMB_X8_Y28_N0
\myStateMachine|counter[8]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[8]~65_combout\ = (\myStateMachine|counter\(8) & (\myStateMachine|counter[7]~64\ $ (GND))) # (!\myStateMachine|counter\(8) & (!\myStateMachine|counter[7]~64\ & VCC))
-- \myStateMachine|counter[8]~66\ = CARRY((\myStateMachine|counter\(8) & !\myStateMachine|counter[7]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(8),
	datad => VCC,
	cin => \myStateMachine|counter[7]~64\,
	combout => \myStateMachine|counter[8]~65_combout\,
	cout => \myStateMachine|counter[8]~66\);

-- Location: LCCOMB_X8_Y28_N2
\myStateMachine|counter[9]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[9]~67_combout\ = (\myStateMachine|counter\(9) & (!\myStateMachine|counter[8]~66\)) # (!\myStateMachine|counter\(9) & ((\myStateMachine|counter[8]~66\) # (GND)))
-- \myStateMachine|counter[9]~68\ = CARRY((!\myStateMachine|counter[8]~66\) # (!\myStateMachine|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(9),
	datad => VCC,
	cin => \myStateMachine|counter[8]~66\,
	combout => \myStateMachine|counter[9]~67_combout\,
	cout => \myStateMachine|counter[9]~68\);

-- Location: LCCOMB_X9_Y27_N0
\myStateMachine|subStates~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|subStates~7_combout\ = (\myStateMachine|state.cursorLogicState~regout\) # (!\myStateMachine|state.powerOn~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|state.cursorLogicState~regout\,
	datac => \myStateMachine|state.powerOn~regout\,
	combout => \myStateMachine|subStates~7_combout\);

-- Location: LCCOMB_X8_Y28_N20
\myStateMachine|counter[18]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[18]~85_combout\ = (\myStateMachine|counter\(18) & (\myStateMachine|counter[17]~84\ $ (GND))) # (!\myStateMachine|counter\(18) & (!\myStateMachine|counter[17]~84\ & VCC))
-- \myStateMachine|counter[18]~86\ = CARRY((\myStateMachine|counter\(18) & !\myStateMachine|counter[17]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(18),
	datad => VCC,
	cin => \myStateMachine|counter[17]~84\,
	combout => \myStateMachine|counter[18]~85_combout\,
	cout => \myStateMachine|counter[18]~86\);

-- Location: LCCOMB_X8_Y28_N22
\myStateMachine|counter[19]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[19]~87_combout\ = (\myStateMachine|counter\(19) & (!\myStateMachine|counter[18]~86\)) # (!\myStateMachine|counter\(19) & ((\myStateMachine|counter[18]~86\) # (GND)))
-- \myStateMachine|counter[19]~88\ = CARRY((!\myStateMachine|counter[18]~86\) # (!\myStateMachine|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(19),
	datad => VCC,
	cin => \myStateMachine|counter[18]~86\,
	combout => \myStateMachine|counter[19]~87_combout\,
	cout => \myStateMachine|counter[19]~88\);

-- Location: LCFF_X8_Y28_N23
\myStateMachine|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[19]~87_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(19));

-- Location: LCCOMB_X8_Y28_N24
\myStateMachine|counter[20]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[20]~89_combout\ = (\myStateMachine|counter\(20) & (\myStateMachine|counter[19]~88\ $ (GND))) # (!\myStateMachine|counter\(20) & (!\myStateMachine|counter[19]~88\ & VCC))
-- \myStateMachine|counter[20]~90\ = CARRY((\myStateMachine|counter\(20) & !\myStateMachine|counter[19]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(20),
	datad => VCC,
	cin => \myStateMachine|counter[19]~88\,
	combout => \myStateMachine|counter[20]~89_combout\,
	cout => \myStateMachine|counter[20]~90\);

-- Location: LCCOMB_X8_Y28_N26
\myStateMachine|counter[21]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[21]~91_combout\ = (\myStateMachine|counter\(21) & (!\myStateMachine|counter[20]~90\)) # (!\myStateMachine|counter\(21) & ((\myStateMachine|counter[20]~90\) # (GND)))
-- \myStateMachine|counter[21]~92\ = CARRY((!\myStateMachine|counter[20]~90\) # (!\myStateMachine|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(21),
	datad => VCC,
	cin => \myStateMachine|counter[20]~90\,
	combout => \myStateMachine|counter[21]~91_combout\,
	cout => \myStateMachine|counter[21]~92\);

-- Location: LCFF_X8_Y28_N27
\myStateMachine|counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[21]~91_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(21));

-- Location: LCCOMB_X8_Y28_N28
\myStateMachine|counter[22]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[22]~93_combout\ = (\myStateMachine|counter\(22) & (\myStateMachine|counter[21]~92\ $ (GND))) # (!\myStateMachine|counter\(22) & (!\myStateMachine|counter[21]~92\ & VCC))
-- \myStateMachine|counter[22]~94\ = CARRY((\myStateMachine|counter\(22) & !\myStateMachine|counter[21]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(22),
	datad => VCC,
	cin => \myStateMachine|counter[21]~92\,
	combout => \myStateMachine|counter[22]~93_combout\,
	cout => \myStateMachine|counter[22]~94\);

-- Location: LCFF_X8_Y28_N29
\myStateMachine|counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[22]~93_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(22));

-- Location: LCCOMB_X8_Y28_N30
\myStateMachine|counter[23]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[23]~95_combout\ = (\myStateMachine|counter\(23) & (!\myStateMachine|counter[22]~94\)) # (!\myStateMachine|counter\(23) & ((\myStateMachine|counter[22]~94\) # (GND)))
-- \myStateMachine|counter[23]~96\ = CARRY((!\myStateMachine|counter[22]~94\) # (!\myStateMachine|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(23),
	datad => VCC,
	cin => \myStateMachine|counter[22]~94\,
	combout => \myStateMachine|counter[23]~95_combout\,
	cout => \myStateMachine|counter[23]~96\);

-- Location: LCFF_X8_Y28_N31
\myStateMachine|counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[23]~95_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(23));

-- Location: LCCOMB_X8_Y27_N0
\myStateMachine|counter[24]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[24]~97_combout\ = (\myStateMachine|counter\(24) & (\myStateMachine|counter[23]~96\ $ (GND))) # (!\myStateMachine|counter\(24) & (!\myStateMachine|counter[23]~96\ & VCC))
-- \myStateMachine|counter[24]~98\ = CARRY((\myStateMachine|counter\(24) & !\myStateMachine|counter[23]~96\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(24),
	datad => VCC,
	cin => \myStateMachine|counter[23]~96\,
	combout => \myStateMachine|counter[24]~97_combout\,
	cout => \myStateMachine|counter[24]~98\);

-- Location: LCFF_X8_Y27_N1
\myStateMachine|counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[24]~97_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(24));

-- Location: LCCOMB_X8_Y27_N2
\myStateMachine|counter[25]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[25]~99_combout\ = (\myStateMachine|counter\(25) & (!\myStateMachine|counter[24]~98\)) # (!\myStateMachine|counter\(25) & ((\myStateMachine|counter[24]~98\) # (GND)))
-- \myStateMachine|counter[25]~100\ = CARRY((!\myStateMachine|counter[24]~98\) # (!\myStateMachine|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(25),
	datad => VCC,
	cin => \myStateMachine|counter[24]~98\,
	combout => \myStateMachine|counter[25]~99_combout\,
	cout => \myStateMachine|counter[25]~100\);

-- Location: LCFF_X8_Y27_N3
\myStateMachine|counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[25]~99_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(25));

-- Location: LCCOMB_X8_Y27_N4
\myStateMachine|counter[26]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[26]~101_combout\ = (\myStateMachine|counter\(26) & (\myStateMachine|counter[25]~100\ $ (GND))) # (!\myStateMachine|counter\(26) & (!\myStateMachine|counter[25]~100\ & VCC))
-- \myStateMachine|counter[26]~102\ = CARRY((\myStateMachine|counter\(26) & !\myStateMachine|counter[25]~100\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(26),
	datad => VCC,
	cin => \myStateMachine|counter[25]~100\,
	combout => \myStateMachine|counter[26]~101_combout\,
	cout => \myStateMachine|counter[26]~102\);

-- Location: LCFF_X8_Y27_N5
\myStateMachine|counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[26]~101_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(26));

-- Location: LCCOMB_X8_Y27_N8
\myStateMachine|counter[28]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[28]~105_combout\ = (\myStateMachine|counter\(28) & (\myStateMachine|counter[27]~104\ $ (GND))) # (!\myStateMachine|counter\(28) & (!\myStateMachine|counter[27]~104\ & VCC))
-- \myStateMachine|counter[28]~106\ = CARRY((\myStateMachine|counter\(28) & !\myStateMachine|counter[27]~104\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(28),
	datad => VCC,
	cin => \myStateMachine|counter[27]~104\,
	combout => \myStateMachine|counter[28]~105_combout\,
	cout => \myStateMachine|counter[28]~106\);

-- Location: LCFF_X8_Y27_N9
\myStateMachine|counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[28]~105_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(28));

-- Location: LCCOMB_X8_Y27_N22
\myStateMachine|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal0~2_combout\ = (!\myStateMachine|counter\(27) & (!\myStateMachine|counter\(28) & (!\myStateMachine|counter\(26) & !\myStateMachine|counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(27),
	datab => \myStateMachine|counter\(28),
	datac => \myStateMachine|counter\(26),
	datad => \myStateMachine|counter\(25),
	combout => \myStateMachine|Equal0~2_combout\);

-- Location: LCFF_X8_Y28_N25
\myStateMachine|counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[20]~89_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(20));

-- Location: LCFF_X8_Y29_N17
\myStateMachine|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[0]~37_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(0));

-- Location: LCCOMB_X8_Y29_N0
\myStateMachine|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal0~0_combout\ = (!\myStateMachine|counter\(13) & (!\myStateMachine|counter\(20) & (!\myStateMachine|counter\(0) & !\myStateMachine|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(13),
	datab => \myStateMachine|counter\(20),
	datac => \myStateMachine|counter\(0),
	datad => \myStateMachine|counter\(5),
	combout => \myStateMachine|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y27_N10
\myStateMachine|counter[29]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[29]~107_combout\ = (\myStateMachine|counter\(29) & (!\myStateMachine|counter[28]~106\)) # (!\myStateMachine|counter\(29) & ((\myStateMachine|counter[28]~106\) # (GND)))
-- \myStateMachine|counter[29]~108\ = CARRY((!\myStateMachine|counter[28]~106\) # (!\myStateMachine|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(29),
	datad => VCC,
	cin => \myStateMachine|counter[28]~106\,
	combout => \myStateMachine|counter[29]~107_combout\,
	cout => \myStateMachine|counter[29]~108\);

-- Location: LCCOMB_X8_Y27_N14
\myStateMachine|counter[31]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[31]~111_combout\ = (\myStateMachine|counter\(31) & (!\myStateMachine|counter[30]~110\)) # (!\myStateMachine|counter\(31) & ((\myStateMachine|counter[30]~110\) # (GND)))
-- \myStateMachine|counter[31]~112\ = CARRY((!\myStateMachine|counter[30]~110\) # (!\myStateMachine|counter\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(31),
	datad => VCC,
	cin => \myStateMachine|counter[30]~110\,
	combout => \myStateMachine|counter[31]~111_combout\,
	cout => \myStateMachine|counter[31]~112\);

-- Location: LCFF_X8_Y27_N15
\myStateMachine|counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[31]~111_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(31));

-- Location: LCCOMB_X8_Y27_N16
\myStateMachine|counter[32]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[32]~113_combout\ = \myStateMachine|counter\(32) $ (!\myStateMachine|counter[31]~112\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(32),
	cin => \myStateMachine|counter[31]~112\,
	combout => \myStateMachine|counter[32]~113_combout\);

-- Location: LCFF_X8_Y27_N17
\myStateMachine|counter[32]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[32]~113_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(32));

-- Location: LCFF_X8_Y27_N11
\myStateMachine|counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[29]~107_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(29));

-- Location: LCCOMB_X8_Y27_N24
\myStateMachine|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal0~3_combout\ = (!\myStateMachine|counter\(30) & (!\myStateMachine|counter\(31) & (!\myStateMachine|counter\(32) & !\myStateMachine|counter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(30),
	datab => \myStateMachine|counter\(31),
	datac => \myStateMachine|counter\(32),
	datad => \myStateMachine|counter\(29),
	combout => \myStateMachine|Equal0~3_combout\);

-- Location: LCCOMB_X8_Y27_N18
\myStateMachine|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal0~4_combout\ = (\myStateMachine|Equal0~1_combout\ & (\myStateMachine|Equal0~2_combout\ & (\myStateMachine|Equal0~0_combout\ & \myStateMachine|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal0~1_combout\,
	datab => \myStateMachine|Equal0~2_combout\,
	datac => \myStateMachine|Equal0~0_combout\,
	datad => \myStateMachine|Equal0~3_combout\,
	combout => \myStateMachine|Equal0~4_combout\);

-- Location: LCCOMB_X8_Y28_N12
\myStateMachine|counter[14]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[14]~77_combout\ = (\myStateMachine|counter\(14) & (\myStateMachine|counter[13]~76\ $ (GND))) # (!\myStateMachine|counter\(14) & (!\myStateMachine|counter[13]~76\ & VCC))
-- \myStateMachine|counter[14]~78\ = CARRY((\myStateMachine|counter\(14) & !\myStateMachine|counter[13]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(14),
	datad => VCC,
	cin => \myStateMachine|counter[13]~76\,
	combout => \myStateMachine|counter[14]~77_combout\,
	cout => \myStateMachine|counter[14]~78\);

-- Location: LCFF_X8_Y28_N13
\myStateMachine|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[14]~77_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(14));

-- Location: LCCOMB_X9_Y29_N24
\myStateMachine|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal1~0_combout\ = (!\myStateMachine|counter\(9) & (!\myStateMachine|counter\(18) & (!\myStateMachine|counter\(19) & !\myStateMachine|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(9),
	datab => \myStateMachine|counter\(18),
	datac => \myStateMachine|counter\(19),
	datad => \myStateMachine|counter\(14),
	combout => \myStateMachine|Equal1~0_combout\);

-- Location: LCCOMB_X8_Y28_N16
\myStateMachine|counter[16]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[16]~81_combout\ = (\myStateMachine|counter\(16) & (\myStateMachine|counter[15]~80\ $ (GND))) # (!\myStateMachine|counter\(16) & (!\myStateMachine|counter[15]~80\ & VCC))
-- \myStateMachine|counter[16]~82\ = CARRY((\myStateMachine|counter\(16) & !\myStateMachine|counter[15]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(16),
	datad => VCC,
	cin => \myStateMachine|counter[15]~80\,
	combout => \myStateMachine|counter[16]~81_combout\,
	cout => \myStateMachine|counter[16]~82\);

-- Location: LCFF_X8_Y28_N17
\myStateMachine|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[16]~81_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(16));

-- Location: LCCOMB_X9_Y29_N10
\myStateMachine|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal1~1_combout\ = (!\myStateMachine|counter\(15) & (!\myStateMachine|counter\(17) & (\myStateMachine|Equal1~0_combout\ & !\myStateMachine|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(15),
	datab => \myStateMachine|counter\(17),
	datac => \myStateMachine|Equal1~0_combout\,
	datad => \myStateMachine|counter\(16),
	combout => \myStateMachine|Equal1~1_combout\);

-- Location: LCCOMB_X9_Y29_N8
\myStateMachine|Equal4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal4~3_combout\ = (\myStateMachine|Equal4~2_combout\ & (\myStateMachine|Equal0~4_combout\ & \myStateMachine|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal4~2_combout\,
	datac => \myStateMachine|Equal0~4_combout\,
	datad => \myStateMachine|Equal1~1_combout\,
	combout => \myStateMachine|Equal4~3_combout\);

-- Location: LCCOMB_X9_Y27_N18
\myStateMachine|subStates.subState2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|subStates.subState2~0_combout\ = (\myStateMachine|subStates~7_combout\ & (((\myStateMachine|subStates.subState2~regout\)))) # (!\myStateMachine|subStates~7_combout\ & (((\myStateMachine|subStates.subState2~regout\ & 
-- !\myStateMachine|Equal4~3_combout\)) # (!\myStateMachine|subStates.00~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|subStates.00~regout\,
	datab => \myStateMachine|subStates~7_combout\,
	datac => \myStateMachine|subStates.subState2~regout\,
	datad => \myStateMachine|Equal4~3_combout\,
	combout => \myStateMachine|subStates.subState2~0_combout\);

-- Location: LCFF_X9_Y27_N19
\myStateMachine|subStates.subState2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|subStates.subState2~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|subStates.subState2~regout\);

-- Location: LCCOMB_X10_Y27_N2
\myStateMachine|displayOnOff~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|displayOnOff~0_combout\ = (\myStateMachine|displayOnOff~regout\) # ((\myStateMachine|subStates.subState2~regout\ & \myStateMachine|state.entryModeSet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|subStates.subState2~regout\,
	datac => \myStateMachine|displayOnOff~regout\,
	datad => \myStateMachine|state.entryModeSet~regout\,
	combout => \myStateMachine|displayOnOff~0_combout\);

-- Location: LCFF_X10_Y27_N3
\myStateMachine|displayOnOff\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|displayOnOff~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|displayOnOff~regout\);

-- Location: LCCOMB_X10_Y27_N14
\myStateMachine|Selector264~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector264~1_combout\ = (\myStateMachine|Selector264~0_combout\) # ((\myStateMachine|state.cursorLogicState~regout\) # ((\myStateMachine|counter[4]~36_combout\ & \myStateMachine|displayOnOff~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector264~0_combout\,
	datab => \myStateMachine|counter[4]~36_combout\,
	datac => \myStateMachine|state.cursorLogicState~regout\,
	datad => \myStateMachine|displayOnOff~regout\,
	combout => \myStateMachine|Selector264~1_combout\);

-- Location: LCFF_X10_Y27_N15
\myStateMachine|state.writeAddr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector264~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|state.writeAddr~regout\);

-- Location: LCCOMB_X10_Y27_N24
\myStateMachine|Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector37~0_combout\ = (!\myStateMachine|state.writeAddr~regout\ & !\myStateMachine|state.writeData~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myStateMachine|state.writeAddr~regout\,
	datad => \myStateMachine|state.writeData~regout\,
	combout => \myStateMachine|Selector37~0_combout\);

-- Location: LCCOMB_X9_Y26_N26
\myStateMachine|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal3~0_combout\ = (!\myStateMachine|counter\(9) & (!\myStateMachine|counter\(18) & (!\myStateMachine|counter\(19) & \myStateMachine|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(9),
	datab => \myStateMachine|counter\(18),
	datac => \myStateMachine|counter\(19),
	datad => \myStateMachine|counter\(7),
	combout => \myStateMachine|Equal3~0_combout\);

-- Location: LCCOMB_X8_Y28_N6
\myStateMachine|counter[11]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[11]~71_combout\ = (\myStateMachine|counter\(11) & (!\myStateMachine|counter[10]~70\)) # (!\myStateMachine|counter\(11) & ((\myStateMachine|counter[10]~70\) # (GND)))
-- \myStateMachine|counter[11]~72\ = CARRY((!\myStateMachine|counter[10]~70\) # (!\myStateMachine|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(11),
	datad => VCC,
	cin => \myStateMachine|counter[10]~70\,
	combout => \myStateMachine|counter[11]~71_combout\,
	cout => \myStateMachine|counter[11]~72\);

-- Location: LCFF_X8_Y28_N7
\myStateMachine|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[11]~71_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(11));

-- Location: LCCOMB_X9_Y29_N4
\myStateMachine|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal4~0_combout\ = (!\myStateMachine|counter\(10) & (!\myStateMachine|counter\(11) & (!\myStateMachine|counter\(2) & !\myStateMachine|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(10),
	datab => \myStateMachine|counter\(11),
	datac => \myStateMachine|counter\(2),
	datad => \myStateMachine|counter\(8),
	combout => \myStateMachine|Equal4~0_combout\);

-- Location: LCCOMB_X9_Y29_N0
\myStateMachine|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal0~6_combout\ = (\myStateMachine|Equal0~5_combout\ & (\myStateMachine|Equal4~0_combout\ & \myStateMachine|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal0~5_combout\,
	datab => \myStateMachine|Equal4~0_combout\,
	datac => \myStateMachine|counter\(17),
	combout => \myStateMachine|Equal0~6_combout\);

-- Location: LCCOMB_X8_Y29_N24
\myStateMachine|counter[4]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~57_combout\ = (\myStateMachine|counter\(4) & (\myStateMachine|counter[3]~56\ $ (GND))) # (!\myStateMachine|counter\(4) & (!\myStateMachine|counter[3]~56\ & VCC))
-- \myStateMachine|counter[4]~58\ = CARRY((\myStateMachine|counter\(4) & !\myStateMachine|counter[3]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(4),
	datad => VCC,
	cin => \myStateMachine|counter[3]~56\,
	combout => \myStateMachine|counter[4]~57_combout\,
	cout => \myStateMachine|counter[4]~58\);

-- Location: LCFF_X8_Y29_N25
\myStateMachine|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[4]~57_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(4));

-- Location: LCCOMB_X9_Y26_N28
\myStateMachine|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal3~1_combout\ = (!\myStateMachine|counter\(6) & (\myStateMachine|counter\(12) & (\myStateMachine|counter\(4) & \myStateMachine|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(6),
	datab => \myStateMachine|counter\(12),
	datac => \myStateMachine|counter\(4),
	datad => \myStateMachine|counter\(15),
	combout => \myStateMachine|Equal3~1_combout\);

-- Location: LCCOMB_X9_Y26_N10
\myStateMachine|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal3~2_combout\ = (\myStateMachine|Equal0~4_combout\ & (\myStateMachine|Equal3~0_combout\ & (\myStateMachine|Equal0~6_combout\ & \myStateMachine|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal0~4_combout\,
	datab => \myStateMachine|Equal3~0_combout\,
	datac => \myStateMachine|Equal0~6_combout\,
	datad => \myStateMachine|Equal3~1_combout\,
	combout => \myStateMachine|Equal3~2_combout\);

-- Location: LCCOMB_X10_Y29_N24
\myStateMachine|functionSetCase~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|functionSetCase~14_combout\ = (\myStateMachine|functionSetCase.00~regout\) # ((\myStateMachine|state.functionSet~regout\ & (\myStateMachine|Equal3~2_combout\ & \myStateMachine|subStates.subState3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.functionSet~regout\,
	datab => \myStateMachine|Equal3~2_combout\,
	datac => \myStateMachine|functionSetCase.00~regout\,
	datad => \myStateMachine|subStates.subState3~regout\,
	combout => \myStateMachine|functionSetCase~14_combout\);

-- Location: LCFF_X10_Y29_N25
\myStateMachine|functionSetCase.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|functionSetCase~14_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|functionSetCase.00~regout\);

-- Location: LCCOMB_X10_Y29_N26
\myStateMachine|Selector74~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector74~0_combout\ = (\myStateMachine|functionSetCase.00~regout\ & (\myStateMachine|Equal1~5_combout\)) # (!\myStateMachine|functionSetCase.00~regout\ & ((\myStateMachine|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal1~5_combout\,
	datab => \myStateMachine|Equal3~2_combout\,
	datac => \myStateMachine|functionSetCase.00~regout\,
	combout => \myStateMachine|Selector74~0_combout\);

-- Location: LCCOMB_X9_Y26_N6
\myStateMachine|Selector263~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector263~0_combout\ = (\myStateMachine|Equal3~1_combout\ & \myStateMachine|subStates.subState3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|Equal3~1_combout\,
	datac => \myStateMachine|subStates.subState3~regout\,
	combout => \myStateMachine|Selector263~0_combout\);

-- Location: LCCOMB_X9_Y26_N0
\myStateMachine|Selector263~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector263~1_combout\ = (\myStateMachine|Equal0~4_combout\ & (\myStateMachine|Equal3~0_combout\ & (\myStateMachine|Equal0~6_combout\ & \myStateMachine|Selector263~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal0~4_combout\,
	datab => \myStateMachine|Equal3~0_combout\,
	datac => \myStateMachine|Equal0~6_combout\,
	datad => \myStateMachine|Selector263~0_combout\,
	combout => \myStateMachine|Selector263~1_combout\);

-- Location: LCCOMB_X10_Y29_N10
\myStateMachine|Selector78~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector78~0_combout\ = (\myStateMachine|Equal1~5_combout\ & \myStateMachine|subStates.subState3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal1~5_combout\,
	datad => \myStateMachine|subStates.subState3~regout\,
	combout => \myStateMachine|Selector78~0_combout\);

-- Location: LCCOMB_X10_Y29_N12
\myStateMachine|Selector77~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector77~0_combout\ = (\myStateMachine|functionSetCase.00~regout\ & (((\myStateMachine|functionSetCase.functionSet2~regout\ & !\myStateMachine|Selector78~0_combout\)))) # (!\myStateMachine|functionSetCase.00~regout\ & 
-- ((\myStateMachine|Selector263~1_combout\) # ((\myStateMachine|functionSetCase.functionSet2~regout\ & !\myStateMachine|Selector78~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|functionSetCase.00~regout\,
	datab => \myStateMachine|Selector263~1_combout\,
	datac => \myStateMachine|functionSetCase.functionSet2~regout\,
	datad => \myStateMachine|Selector78~0_combout\,
	combout => \myStateMachine|Selector77~0_combout\);

-- Location: LCFF_X10_Y29_N13
\myStateMachine|functionSetCase.functionSet2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector77~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|state.functionSet~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|functionSetCase.functionSet2~regout\);

-- Location: LCCOMB_X10_Y29_N2
\myStateMachine|Selector78~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector78~1_combout\ = (\myStateMachine|Equal1~5_combout\ & ((\myStateMachine|subStates.subState3~regout\ & ((\myStateMachine|functionSetCase.functionSet2~regout\))) # (!\myStateMachine|subStates.subState3~regout\ & 
-- (\myStateMachine|functionSetCase.functionSet3~regout\)))) # (!\myStateMachine|Equal1~5_combout\ & (((\myStateMachine|functionSetCase.functionSet3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal1~5_combout\,
	datab => \myStateMachine|subStates.subState3~regout\,
	datac => \myStateMachine|functionSetCase.functionSet3~regout\,
	datad => \myStateMachine|functionSetCase.functionSet2~regout\,
	combout => \myStateMachine|Selector78~1_combout\);

-- Location: LCFF_X10_Y29_N3
\myStateMachine|functionSetCase.functionSet3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector78~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|state.functionSet~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|functionSetCase.functionSet3~regout\);

-- Location: LCCOMB_X8_Y29_N4
\myStateMachine|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal1~4_combout\ = (\myStateMachine|counter\(12) & (!\myStateMachine|counter\(7) & (\myStateMachine|counter\(10) & \myStateMachine|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(12),
	datab => \myStateMachine|counter\(7),
	datac => \myStateMachine|counter\(10),
	datad => \myStateMachine|counter\(3),
	combout => \myStateMachine|Equal1~4_combout\);

-- Location: LCCOMB_X9_Y29_N14
\myStateMachine|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal1~5_combout\ = (\myStateMachine|Equal1~1_combout\ & (\myStateMachine|Equal1~4_combout\ & (\myStateMachine|Equal0~4_combout\ & \myStateMachine|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal1~1_combout\,
	datab => \myStateMachine|Equal1~4_combout\,
	datac => \myStateMachine|Equal0~4_combout\,
	datad => \myStateMachine|Equal1~3_combout\,
	combout => \myStateMachine|Equal1~5_combout\);

-- Location: LCCOMB_X10_Y29_N0
\myStateMachine|functionSetCase.functionSet4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|functionSetCase.functionSet4~0_combout\ = (\myStateMachine|functionSetCase.functionSet4~regout\) # ((\myStateMachine|Selector267~0_combout\ & (\myStateMachine|functionSetCase.functionSet3~regout\ & \myStateMachine|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector267~0_combout\,
	datab => \myStateMachine|functionSetCase.functionSet3~regout\,
	datac => \myStateMachine|functionSetCase.functionSet4~regout\,
	datad => \myStateMachine|Equal1~5_combout\,
	combout => \myStateMachine|functionSetCase.functionSet4~0_combout\);

-- Location: LCFF_X10_Y29_N1
\myStateMachine|functionSetCase.functionSet4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|functionSetCase.functionSet4~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|functionSetCase.functionSet4~regout\);

-- Location: LCCOMB_X10_Y29_N22
\myStateMachine|Selector260~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector260~0_combout\ = (!\myStateMachine|state.powerOn~regout\ & \myStateMachine|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myStateMachine|state.powerOn~regout\,
	datad => \myStateMachine|Equal0~9_combout\,
	combout => \myStateMachine|Selector260~0_combout\);

-- Location: LCCOMB_X10_Y29_N16
\myStateMachine|Selector260~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector260~1_combout\ = (\myStateMachine|Selector260~0_combout\) # ((\myStateMachine|state.functionSet~regout\ & ((!\myStateMachine|functionSetCase.functionSet4~regout\) # (!\myStateMachine|Selector78~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector78~0_combout\,
	datab => \myStateMachine|functionSetCase.functionSet4~regout\,
	datac => \myStateMachine|state.functionSet~regout\,
	datad => \myStateMachine|Selector260~0_combout\,
	combout => \myStateMachine|Selector260~1_combout\);

-- Location: LCFF_X10_Y29_N17
\myStateMachine|state.functionSet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector260~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|state.functionSet~regout\);

-- Location: LCCOMB_X10_Y29_N20
\myStateMachine|Selector267~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector267~0_combout\ = (\myStateMachine|subStates.subState3~regout\ & \myStateMachine|state.functionSet~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|subStates.subState3~regout\,
	datac => \myStateMachine|state.functionSet~regout\,
	combout => \myStateMachine|Selector267~0_combout\);

-- Location: LCCOMB_X10_Y29_N8
\myStateMachine|Selector267~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector267~1_combout\ = (\myStateMachine|counter[4]~36_combout\) # ((\myStateMachine|Selector266~2_combout\) # ((\myStateMachine|Selector74~0_combout\ & \myStateMachine|Selector267~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter[4]~36_combout\,
	datab => \myStateMachine|Selector74~0_combout\,
	datac => \myStateMachine|Selector267~0_combout\,
	datad => \myStateMachine|Selector266~2_combout\,
	combout => \myStateMachine|Selector267~1_combout\);

-- Location: LCCOMB_X9_Y27_N2
\myStateMachine|Selector267~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector267~3_combout\ = (!\myStateMachine|Selector267~2_combout\ & (!\myStateMachine|Selector267~1_combout\ & ((\myStateMachine|subStates.00~regout\) # (!\myStateMachine|subStates~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector267~2_combout\,
	datab => \myStateMachine|subStates~7_combout\,
	datac => \myStateMachine|subStates.00~regout\,
	datad => \myStateMachine|Selector267~1_combout\,
	combout => \myStateMachine|Selector267~3_combout\);

-- Location: LCFF_X9_Y27_N3
\myStateMachine|subStates.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector267~3_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|subStates.00~regout\);

-- Location: LCCOMB_X9_Y27_N10
\myStateMachine|counter[4]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~50_combout\ = (!\myStateMachine|state.cursorLogicState~regout\ & ((\myStateMachine|subStates.00~regout\) # ((\myStateMachine|Selector0~0_combout\ & \myStateMachine|Selector37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector0~0_combout\,
	datab => \myStateMachine|state.cursorLogicState~regout\,
	datac => \myStateMachine|Selector37~0_combout\,
	datad => \myStateMachine|subStates.00~regout\,
	combout => \myStateMachine|counter[4]~50_combout\);

-- Location: LCFF_X8_Y28_N3
\myStateMachine|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[9]~67_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(9));

-- Location: LCCOMB_X8_Y28_N4
\myStateMachine|counter[10]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[10]~69_combout\ = (\myStateMachine|counter\(10) & (\myStateMachine|counter[9]~68\ $ (GND))) # (!\myStateMachine|counter\(10) & (!\myStateMachine|counter[9]~68\ & VCC))
-- \myStateMachine|counter[10]~70\ = CARRY((\myStateMachine|counter\(10) & !\myStateMachine|counter[9]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(10),
	datad => VCC,
	cin => \myStateMachine|counter[9]~68\,
	combout => \myStateMachine|counter[10]~69_combout\,
	cout => \myStateMachine|counter[10]~70\);

-- Location: LCFF_X8_Y28_N5
\myStateMachine|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[10]~69_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(10));

-- Location: LCCOMB_X8_Y28_N8
\myStateMachine|counter[12]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[12]~73_combout\ = (\myStateMachine|counter\(12) & (\myStateMachine|counter[11]~72\ $ (GND))) # (!\myStateMachine|counter\(12) & (!\myStateMachine|counter[11]~72\ & VCC))
-- \myStateMachine|counter[12]~74\ = CARRY((\myStateMachine|counter\(12) & !\myStateMachine|counter[11]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(12),
	datad => VCC,
	cin => \myStateMachine|counter[11]~72\,
	combout => \myStateMachine|counter[12]~73_combout\,
	cout => \myStateMachine|counter[12]~74\);

-- Location: LCFF_X8_Y28_N9
\myStateMachine|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[12]~73_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(12));

-- Location: LCCOMB_X8_Y28_N14
\myStateMachine|counter[15]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[15]~79_combout\ = (\myStateMachine|counter\(15) & (!\myStateMachine|counter[14]~78\)) # (!\myStateMachine|counter\(15) & ((\myStateMachine|counter[14]~78\) # (GND)))
-- \myStateMachine|counter[15]~80\ = CARRY((!\myStateMachine|counter[14]~78\) # (!\myStateMachine|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(15),
	datad => VCC,
	cin => \myStateMachine|counter[14]~78\,
	combout => \myStateMachine|counter[15]~79_combout\,
	cout => \myStateMachine|counter[15]~80\);

-- Location: LCFF_X8_Y28_N15
\myStateMachine|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[15]~79_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(15));

-- Location: LCCOMB_X8_Y28_N18
\myStateMachine|counter[17]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[17]~83_combout\ = (\myStateMachine|counter\(17) & (!\myStateMachine|counter[16]~82\)) # (!\myStateMachine|counter\(17) & ((\myStateMachine|counter[16]~82\) # (GND)))
-- \myStateMachine|counter[17]~84\ = CARRY((!\myStateMachine|counter[16]~82\) # (!\myStateMachine|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(17),
	datad => VCC,
	cin => \myStateMachine|counter[16]~82\,
	combout => \myStateMachine|counter[17]~83_combout\,
	cout => \myStateMachine|counter[17]~84\);

-- Location: LCFF_X8_Y28_N19
\myStateMachine|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[17]~83_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(17));

-- Location: LCFF_X8_Y28_N21
\myStateMachine|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[18]~85_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(18));

-- Location: LCCOMB_X9_Y29_N2
\myStateMachine|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal0~8_combout\ = (\myStateMachine|counter\(19) & (\myStateMachine|counter\(18) & (!\myStateMachine|counter\(12) & !\myStateMachine|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(19),
	datab => \myStateMachine|counter\(18),
	datac => \myStateMachine|counter\(12),
	datad => \myStateMachine|counter\(15),
	combout => \myStateMachine|Equal0~8_combout\);

-- Location: LCCOMB_X9_Y29_N12
\myStateMachine|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal0~9_combout\ = (\myStateMachine|Equal0~7_combout\ & (\myStateMachine|Equal0~8_combout\ & (\myStateMachine|Equal0~4_combout\ & \myStateMachine|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal0~7_combout\,
	datab => \myStateMachine|Equal0~8_combout\,
	datac => \myStateMachine|Equal0~4_combout\,
	datad => \myStateMachine|Equal0~6_combout\,
	combout => \myStateMachine|Equal0~9_combout\);

-- Location: LCCOMB_X9_Y27_N14
\myStateMachine|state.powerOn~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|state.powerOn~0_combout\ = (\myStateMachine|state.powerOn~regout\) # (\myStateMachine|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myStateMachine|state.powerOn~regout\,
	datad => \myStateMachine|Equal0~9_combout\,
	combout => \myStateMachine|state.powerOn~0_combout\);

-- Location: LCFF_X9_Y27_N15
\myStateMachine|state.powerOn\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|state.powerOn~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|state.powerOn~regout\);

-- Location: LCCOMB_X10_Y29_N4
\myStateMachine|counter[4]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~39_combout\ = (\myStateMachine|functionSetCase.00~regout\ & (\myStateMachine|state.powerOn~regout\ & (\myStateMachine|Selector267~0_combout\ & \myStateMachine|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|functionSetCase.00~regout\,
	datab => \myStateMachine|state.powerOn~regout\,
	datac => \myStateMachine|Selector267~0_combout\,
	datad => \myStateMachine|Equal1~4_combout\,
	combout => \myStateMachine|counter[4]~39_combout\);

-- Location: LCCOMB_X9_Y29_N18
\myStateMachine|counter[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~40_combout\ = (\myStateMachine|Equal1~1_combout\ & (\myStateMachine|Equal1~3_combout\ & (\myStateMachine|Equal0~4_combout\ & \myStateMachine|counter[4]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal1~1_combout\,
	datab => \myStateMachine|Equal1~3_combout\,
	datac => \myStateMachine|Equal0~4_combout\,
	datad => \myStateMachine|counter[4]~39_combout\,
	combout => \myStateMachine|counter[4]~40_combout\);

-- Location: LCCOMB_X9_Y29_N28
\myStateMachine|counter[4]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~41_combout\ = (\myStateMachine|counter[4]~40_combout\) # ((\myStateMachine|Equal0~9_combout\ & !\myStateMachine|state.powerOn~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal0~9_combout\,
	datac => \myStateMachine|state.powerOn~regout\,
	datad => \myStateMachine|counter[4]~40_combout\,
	combout => \myStateMachine|counter[4]~41_combout\);

-- Location: LCCOMB_X9_Y26_N8
\myStateMachine|counter[4]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~46_combout\ = (\myStateMachine|state.displaySet~regout\) # (((\myStateMachine|functionSetCase.00~regout\ & \myStateMachine|state.functionSet~regout\)) # (!\myStateMachine|Selector37~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.displaySet~regout\,
	datab => \myStateMachine|functionSetCase.00~regout\,
	datac => \myStateMachine|Selector37~0_combout\,
	datad => \myStateMachine|state.functionSet~regout\,
	combout => \myStateMachine|counter[4]~46_combout\);

-- Location: LCCOMB_X9_Y26_N18
\myStateMachine|counter[4]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~47_combout\ = (\myStateMachine|counter[4]~46_combout\) # ((!\myStateMachine|subStates.subState3~regout\ & ((\myStateMachine|state.functionSet~regout\) # (!\myStateMachine|Selector114~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector114~1_combout\,
	datab => \myStateMachine|counter[4]~46_combout\,
	datac => \myStateMachine|subStates.subState3~regout\,
	datad => \myStateMachine|state.functionSet~regout\,
	combout => \myStateMachine|counter[4]~47_combout\);

-- Location: LCCOMB_X9_Y26_N14
\myStateMachine|counter[4]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~45_combout\ = (\myStateMachine|counter[4]~44_combout\ & (\myStateMachine|Equal0~6_combout\ & (\myStateMachine|Equal0~4_combout\ & \myStateMachine|Selector267~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter[4]~44_combout\,
	datab => \myStateMachine|Equal0~6_combout\,
	datac => \myStateMachine|Equal0~4_combout\,
	datad => \myStateMachine|Selector267~0_combout\,
	combout => \myStateMachine|counter[4]~45_combout\);

-- Location: LCCOMB_X9_Y26_N4
\myStateMachine|counter[4]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~48_combout\ = (\myStateMachine|counter[4]~45_combout\) # ((!\myStateMachine|counter[4]~35_combout\ & (\myStateMachine|counter[4]~47_combout\ & \myStateMachine|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter[4]~35_combout\,
	datab => \myStateMachine|counter[4]~47_combout\,
	datac => \myStateMachine|counter[4]~45_combout\,
	datad => \myStateMachine|Equal4~3_combout\,
	combout => \myStateMachine|counter[4]~48_combout\);

-- Location: LCCOMB_X10_Y29_N6
\myStateMachine|counter[4]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~42_combout\ = (\myStateMachine|state.powerOn~regout\ & (((!\myStateMachine|functionSetCase.00~regout\) # (!\myStateMachine|subStates.subState3~regout\)) # (!\myStateMachine|state.functionSet~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.functionSet~regout\,
	datab => \myStateMachine|subStates.subState3~regout\,
	datac => \myStateMachine|state.powerOn~regout\,
	datad => \myStateMachine|functionSetCase.00~regout\,
	combout => \myStateMachine|counter[4]~42_combout\);

-- Location: LCCOMB_X8_Y29_N6
\myStateMachine|counter[4]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~49_combout\ = (\myStateMachine|counter[4]~41_combout\) # ((\myStateMachine|counter[4]~42_combout\ & ((\myStateMachine|counter[4]~43_combout\) # (\myStateMachine|counter[4]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter[4]~43_combout\,
	datab => \myStateMachine|counter[4]~41_combout\,
	datac => \myStateMachine|counter[4]~48_combout\,
	datad => \myStateMachine|counter[4]~42_combout\,
	combout => \myStateMachine|counter[4]~49_combout\);

-- Location: LCFF_X8_Y29_N19
\myStateMachine|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[1]~51_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(1));

-- Location: LCCOMB_X8_Y29_N20
\myStateMachine|counter[2]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[2]~53_combout\ = (\myStateMachine|counter\(2) & (\myStateMachine|counter[1]~52\ $ (GND))) # (!\myStateMachine|counter\(2) & (!\myStateMachine|counter[1]~52\ & VCC))
-- \myStateMachine|counter[2]~54\ = CARRY((\myStateMachine|counter\(2) & !\myStateMachine|counter[1]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(2),
	datad => VCC,
	cin => \myStateMachine|counter[1]~52\,
	combout => \myStateMachine|counter[2]~53_combout\,
	cout => \myStateMachine|counter[2]~54\);

-- Location: LCFF_X8_Y29_N21
\myStateMachine|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[2]~53_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(2));

-- Location: LCCOMB_X8_Y29_N22
\myStateMachine|counter[3]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[3]~55_combout\ = (\myStateMachine|counter\(3) & (!\myStateMachine|counter[2]~54\)) # (!\myStateMachine|counter\(3) & ((\myStateMachine|counter[2]~54\) # (GND)))
-- \myStateMachine|counter[3]~56\ = CARRY((!\myStateMachine|counter[2]~54\) # (!\myStateMachine|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(3),
	datad => VCC,
	cin => \myStateMachine|counter[2]~54\,
	combout => \myStateMachine|counter[3]~55_combout\,
	cout => \myStateMachine|counter[3]~56\);

-- Location: LCFF_X8_Y29_N23
\myStateMachine|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[3]~55_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(3));

-- Location: LCCOMB_X8_Y29_N26
\myStateMachine|counter[5]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[5]~59_combout\ = (\myStateMachine|counter\(5) & (!\myStateMachine|counter[4]~58\)) # (!\myStateMachine|counter\(5) & ((\myStateMachine|counter[4]~58\) # (GND)))
-- \myStateMachine|counter[5]~60\ = CARRY((!\myStateMachine|counter[4]~58\) # (!\myStateMachine|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(5),
	datad => VCC,
	cin => \myStateMachine|counter[4]~58\,
	combout => \myStateMachine|counter[5]~59_combout\,
	cout => \myStateMachine|counter[5]~60\);

-- Location: LCFF_X8_Y29_N27
\myStateMachine|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[5]~59_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(5));

-- Location: LCCOMB_X8_Y29_N30
\myStateMachine|counter[7]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[7]~63_combout\ = (\myStateMachine|counter\(7) & (!\myStateMachine|counter[6]~62\)) # (!\myStateMachine|counter\(7) & ((\myStateMachine|counter[6]~62\) # (GND)))
-- \myStateMachine|counter[7]~64\ = CARRY((!\myStateMachine|counter[6]~62\) # (!\myStateMachine|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(7),
	datad => VCC,
	cin => \myStateMachine|counter[6]~62\,
	combout => \myStateMachine|counter[7]~63_combout\,
	cout => \myStateMachine|counter[7]~64\);

-- Location: LCFF_X8_Y29_N31
\myStateMachine|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[7]~63_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(7));

-- Location: LCFF_X8_Y28_N1
\myStateMachine|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[8]~65_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~49_combout\,
	ena => \myStateMachine|counter[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(8));

-- Location: LCCOMB_X8_Y29_N14
\myStateMachine|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal1~2_combout\ = (\myStateMachine|counter\(6) & (!\myStateMachine|counter\(1) & (!\myStateMachine|counter\(4) & \myStateMachine|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(6),
	datab => \myStateMachine|counter\(1),
	datac => \myStateMachine|counter\(4),
	datad => \myStateMachine|counter\(2),
	combout => \myStateMachine|Equal1~2_combout\);

-- Location: LCCOMB_X9_Y29_N26
\myStateMachine|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal1~3_combout\ = (\myStateMachine|counter\(8) & (\myStateMachine|counter\(11) & \myStateMachine|Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(8),
	datac => \myStateMachine|counter\(11),
	datad => \myStateMachine|Equal1~2_combout\,
	combout => \myStateMachine|Equal1~3_combout\);

-- Location: LCCOMB_X9_Y29_N20
\myStateMachine|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal2~0_combout\ = (!\myStateMachine|counter\(10) & (!\myStateMachine|counter\(12) & (\myStateMachine|counter\(7) & !\myStateMachine|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(10),
	datab => \myStateMachine|counter\(12),
	datac => \myStateMachine|counter\(7),
	datad => \myStateMachine|counter\(3),
	combout => \myStateMachine|Equal2~0_combout\);

-- Location: LCCOMB_X9_Y29_N16
\myStateMachine|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal2~1_combout\ = (\myStateMachine|Equal2~0_combout\ & (\myStateMachine|Equal1~3_combout\ & (\myStateMachine|Equal0~4_combout\ & \myStateMachine|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal2~0_combout\,
	datab => \myStateMachine|Equal1~3_combout\,
	datac => \myStateMachine|Equal0~4_combout\,
	datad => \myStateMachine|Equal1~1_combout\,
	combout => \myStateMachine|Equal2~1_combout\);

-- Location: LCCOMB_X10_Y29_N14
\myStateMachine|Selector261~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector261~2_combout\ = (\myStateMachine|state.displaySet~regout\ & ((!\myStateMachine|subStates.subState3~regout\) # (!\myStateMachine|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|Equal2~1_combout\,
	datac => \myStateMachine|state.displaySet~regout\,
	datad => \myStateMachine|subStates.subState3~regout\,
	combout => \myStateMachine|Selector261~2_combout\);

-- Location: LCCOMB_X10_Y29_N30
\myStateMachine|Selector261~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector261~4_combout\ = (\myStateMachine|Equal1~5_combout\ & (\myStateMachine|subStates.subState3~regout\ & (\myStateMachine|state.functionSet~regout\ & \myStateMachine|functionSetCase.functionSet4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal1~5_combout\,
	datab => \myStateMachine|subStates.subState3~regout\,
	datac => \myStateMachine|state.functionSet~regout\,
	datad => \myStateMachine|functionSetCase.functionSet4~regout\,
	combout => \myStateMachine|Selector261~4_combout\);

-- Location: LCCOMB_X10_Y29_N18
\myStateMachine|Selector261~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector261~3_combout\ = (\myStateMachine|Selector261~2_combout\) # ((\myStateMachine|Selector261~4_combout\) # ((\myStateMachine|Selector263~1_combout\ & \myStateMachine|state.entryModeSet~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector263~1_combout\,
	datab => \myStateMachine|state.entryModeSet~regout\,
	datac => \myStateMachine|Selector261~2_combout\,
	datad => \myStateMachine|Selector261~4_combout\,
	combout => \myStateMachine|Selector261~3_combout\);

-- Location: LCFF_X10_Y29_N19
\myStateMachine|state.displaySet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector261~3_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|state.displaySet~regout\);

-- Location: LCCOMB_X9_Y29_N22
\myStateMachine|counter[4]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~115_combout\ = (\myStateMachine|subStates.subState3~regout\ & (\myStateMachine|Equal2~0_combout\ & \myStateMachine|state.displaySet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|subStates.subState3~regout\,
	datac => \myStateMachine|Equal2~0_combout\,
	datad => \myStateMachine|state.displaySet~regout\,
	combout => \myStateMachine|counter[4]~115_combout\);

-- Location: LCCOMB_X9_Y29_N6
\myStateMachine|counter[4]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~36_combout\ = (\myStateMachine|Equal1~1_combout\ & (\myStateMachine|Equal1~3_combout\ & (\myStateMachine|Equal0~4_combout\ & \myStateMachine|counter[4]~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal1~1_combout\,
	datab => \myStateMachine|Equal1~3_combout\,
	datac => \myStateMachine|Equal0~4_combout\,
	datad => \myStateMachine|counter[4]~115_combout\,
	combout => \myStateMachine|counter[4]~36_combout\);

-- Location: LCCOMB_X10_Y27_N10
\myStateMachine|Selector262~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector262~0_combout\ = (\myStateMachine|Selector263~1_combout\ & (\myStateMachine|counter[4]~36_combout\ & ((!\myStateMachine|displayOnOff~regout\)))) # (!\myStateMachine|Selector263~1_combout\ & 
-- ((\myStateMachine|state.displayClear~regout\) # ((\myStateMachine|counter[4]~36_combout\ & !\myStateMachine|displayOnOff~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector263~1_combout\,
	datab => \myStateMachine|counter[4]~36_combout\,
	datac => \myStateMachine|state.displayClear~regout\,
	datad => \myStateMachine|displayOnOff~regout\,
	combout => \myStateMachine|Selector262~0_combout\);

-- Location: LCFF_X10_Y27_N11
\myStateMachine|state.displayClear\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector262~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|state.displayClear~regout\);

-- Location: LCCOMB_X10_Y27_N12
\myStateMachine|state.entryModeSet~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|state.entryModeSet~0_combout\ = (\myStateMachine|Equal3~2_combout\ & ((\myStateMachine|subStates.subState3~regout\ & ((\myStateMachine|state.displayClear~regout\))) # (!\myStateMachine|subStates.subState3~regout\ & 
-- (\myStateMachine|state.entryModeSet~regout\)))) # (!\myStateMachine|Equal3~2_combout\ & (((\myStateMachine|state.entryModeSet~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal3~2_combout\,
	datab => \myStateMachine|subStates.subState3~regout\,
	datac => \myStateMachine|state.entryModeSet~regout\,
	datad => \myStateMachine|state.displayClear~regout\,
	combout => \myStateMachine|state.entryModeSet~0_combout\);

-- Location: LCFF_X10_Y27_N13
\myStateMachine|state.entryModeSet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|state.entryModeSet~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|state.entryModeSet~regout\);

-- Location: LCCOMB_X9_Y26_N30
\myStateMachine|Selector269~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector269~6_combout\ = (!\myStateMachine|Equal3~2_combout\ & (\myStateMachine|subStates.subState3~regout\ & ((\myStateMachine|state.entryModeSet~regout\) # (\myStateMachine|state.displayClear~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal3~2_combout\,
	datab => \myStateMachine|state.entryModeSet~regout\,
	datac => \myStateMachine|subStates.subState3~regout\,
	datad => \myStateMachine|state.displayClear~regout\,
	combout => \myStateMachine|Selector269~6_combout\);

-- Location: LCCOMB_X10_Y27_N22
\myStateMachine|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector0~0_combout\ = (!\myStateMachine|state.entryModeSet~regout\ & (!\myStateMachine|state.displayClear~regout\ & (!\myStateMachine|state.displaySet~regout\ & !\myStateMachine|state.functionSet~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.entryModeSet~regout\,
	datab => \myStateMachine|state.displayClear~regout\,
	datac => \myStateMachine|state.displaySet~regout\,
	datad => \myStateMachine|state.functionSet~regout\,
	combout => \myStateMachine|Selector0~0_combout\);

-- Location: LCCOMB_X9_Y26_N20
\myStateMachine|Selector269~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector269~2_combout\ = (\myStateMachine|Equal4~3_combout\ & (\myStateMachine|subStates.subState2~regout\ & ((!\myStateMachine|Selector0~0_combout\) # (!\myStateMachine|Selector37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal4~3_combout\,
	datab => \myStateMachine|subStates.subState2~regout\,
	datac => \myStateMachine|Selector37~0_combout\,
	datad => \myStateMachine|Selector0~0_combout\,
	combout => \myStateMachine|Selector269~2_combout\);

-- Location: LCCOMB_X9_Y26_N22
\myStateMachine|Selector269~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector269~3_combout\ = (\myStateMachine|Selector269~6_combout\) # ((\myStateMachine|Selector269~2_combout\) # ((\myStateMachine|counter[4]~35_combout\ & !\myStateMachine|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter[4]~35_combout\,
	datab => \myStateMachine|Selector269~6_combout\,
	datac => \myStateMachine|Selector269~2_combout\,
	datad => \myStateMachine|Equal2~1_combout\,
	combout => \myStateMachine|Selector269~3_combout\);

-- Location: LCCOMB_X9_Y26_N24
\myStateMachine|Selector269~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector269~4_combout\ = (\myStateMachine|subStates.subState3~regout\ & ((\myStateMachine|subStates~7_combout\) # ((!\myStateMachine|Equal4~3_combout\ & !\myStateMachine|Selector37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal4~3_combout\,
	datab => \myStateMachine|Selector37~0_combout\,
	datac => \myStateMachine|subStates.subState3~regout\,
	datad => \myStateMachine|subStates~7_combout\,
	combout => \myStateMachine|Selector269~4_combout\);

-- Location: LCCOMB_X10_Y29_N28
\myStateMachine|Selector269~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector269~5_combout\ = (\myStateMachine|Selector269~3_combout\) # ((\myStateMachine|Selector269~4_combout\) # ((\myStateMachine|Selector267~0_combout\ & !\myStateMachine|Selector74~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector267~0_combout\,
	datab => \myStateMachine|Selector269~3_combout\,
	datac => \myStateMachine|Selector269~4_combout\,
	datad => \myStateMachine|Selector74~0_combout\,
	combout => \myStateMachine|Selector269~5_combout\);

-- Location: LCFF_X10_Y29_N29
\myStateMachine|subStates.subState3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector269~5_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|subStates.subState3~regout\);

-- Location: LCCOMB_X9_Y29_N30
\myStateMachine|Selector266~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector266~0_combout\ = (\myStateMachine|Equal4~2_combout\ & (\myStateMachine|subStates.subState3~regout\ & (\myStateMachine|Equal0~4_combout\ & \myStateMachine|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal4~2_combout\,
	datab => \myStateMachine|subStates.subState3~regout\,
	datac => \myStateMachine|Equal0~4_combout\,
	datad => \myStateMachine|Equal1~1_combout\,
	combout => \myStateMachine|Selector266~0_combout\);

-- Location: LCCOMB_X10_Y27_N28
\myStateMachine|state.writeData~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|state.writeData~0_combout\ = (\myStateMachine|Selector266~0_combout\ & ((\myStateMachine|state.writeAddr~regout\))) # (!\myStateMachine|Selector266~0_combout\ & (\myStateMachine|state.writeData~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|Selector266~0_combout\,
	datac => \myStateMachine|state.writeData~regout\,
	datad => \myStateMachine|state.writeAddr~regout\,
	combout => \myStateMachine|state.writeData~0_combout\);

-- Location: LCFF_X10_Y27_N29
\myStateMachine|state.writeData\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|state.writeData~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|state.writeData~regout\);

-- Location: LCCOMB_X8_Y27_N28
\myStateMachine|Selector266~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector266~1_combout\ = (\myStateMachine|state.writeData~regout\ & \myStateMachine|subStates.subState3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|state.writeData~regout\,
	datac => \myStateMachine|subStates.subState3~regout\,
	combout => \myStateMachine|Selector266~1_combout\);

-- Location: LCCOMB_X8_Y29_N12
\myStateMachine|Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal4~2_combout\ = (\myStateMachine|Equal4~1_combout\ & (\myStateMachine|counter\(1) & (!\myStateMachine|counter\(12) & \myStateMachine|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal4~1_combout\,
	datab => \myStateMachine|counter\(1),
	datac => \myStateMachine|counter\(12),
	datad => \myStateMachine|Equal4~0_combout\,
	combout => \myStateMachine|Equal4~2_combout\);

-- Location: LCCOMB_X9_Y27_N30
\myStateMachine|Selector266~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector266~2_combout\ = (\myStateMachine|Equal0~4_combout\ & (\myStateMachine|Selector266~1_combout\ & (\myStateMachine|Equal1~1_combout\ & \myStateMachine|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal0~4_combout\,
	datab => \myStateMachine|Selector266~1_combout\,
	datac => \myStateMachine|Equal1~1_combout\,
	datad => \myStateMachine|Equal4~2_combout\,
	combout => \myStateMachine|Selector266~2_combout\);

-- Location: LCFF_X9_Y27_N31
\myStateMachine|state.cursorLogicState\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector266~2_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|state.cursorLogicState~regout\);

-- Location: LCFF_X11_Y27_N17
\myStateMachine|addrCounter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|addrCounter[1]~9_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|LessThan0~1_combout\,
	ena => \myStateMachine|state.cursorLogicState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrCounter\(1));

-- Location: LCCOMB_X11_Y27_N18
\myStateMachine|addrCounter[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|addrCounter[2]~11_combout\ = (\myStateMachine|addrCounter\(2) & (\myStateMachine|addrCounter[1]~10\ $ (GND))) # (!\myStateMachine|addrCounter\(2) & (!\myStateMachine|addrCounter[1]~10\ & VCC))
-- \myStateMachine|addrCounter[2]~12\ = CARRY((\myStateMachine|addrCounter\(2) & !\myStateMachine|addrCounter[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|addrCounter\(2),
	datad => VCC,
	cin => \myStateMachine|addrCounter[1]~10\,
	combout => \myStateMachine|addrCounter[2]~11_combout\,
	cout => \myStateMachine|addrCounter[2]~12\);

-- Location: LCFF_X11_Y27_N19
\myStateMachine|addrCounter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|addrCounter[2]~11_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|LessThan0~1_combout\,
	ena => \myStateMachine|state.cursorLogicState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrCounter\(2));

-- Location: LCCOMB_X11_Y27_N2
\myStateMachine|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|LessThan0~0_combout\ = (((!\myStateMachine|addrCounter\(2)) # (!\myStateMachine|addrCounter\(0))) # (!\myStateMachine|addrCounter\(1))) # (!\myStateMachine|addrCounter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|addrCounter\(3),
	datab => \myStateMachine|addrCounter\(1),
	datac => \myStateMachine|addrCounter\(0),
	datad => \myStateMachine|addrCounter\(2),
	combout => \myStateMachine|LessThan0~0_combout\);

-- Location: LCCOMB_X11_Y27_N20
\myStateMachine|addrCounter[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|addrCounter[3]~13_combout\ = (\myStateMachine|addrCounter\(3) & (!\myStateMachine|addrCounter[2]~12\)) # (!\myStateMachine|addrCounter\(3) & ((\myStateMachine|addrCounter[2]~12\) # (GND)))
-- \myStateMachine|addrCounter[3]~14\ = CARRY((!\myStateMachine|addrCounter[2]~12\) # (!\myStateMachine|addrCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|addrCounter\(3),
	datad => VCC,
	cin => \myStateMachine|addrCounter[2]~12\,
	combout => \myStateMachine|addrCounter[3]~13_combout\,
	cout => \myStateMachine|addrCounter[3]~14\);

-- Location: LCCOMB_X11_Y27_N22
\myStateMachine|addrCounter[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|addrCounter[4]~15_combout\ = (\myStateMachine|addrCounter\(4) & (\myStateMachine|addrCounter[3]~14\ $ (GND))) # (!\myStateMachine|addrCounter\(4) & (!\myStateMachine|addrCounter[3]~14\ & VCC))
-- \myStateMachine|addrCounter[4]~16\ = CARRY((\myStateMachine|addrCounter\(4) & !\myStateMachine|addrCounter[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|addrCounter\(4),
	datad => VCC,
	cin => \myStateMachine|addrCounter[3]~14\,
	combout => \myStateMachine|addrCounter[4]~15_combout\,
	cout => \myStateMachine|addrCounter[4]~16\);

-- Location: LCFF_X11_Y27_N23
\myStateMachine|addrCounter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|addrCounter[4]~15_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|LessThan0~1_combout\,
	ena => \myStateMachine|state.cursorLogicState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrCounter\(4));

-- Location: LCCOMB_X11_Y27_N24
\myStateMachine|addrCounter[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|addrCounter[5]~17_combout\ = (\myStateMachine|addrCounter\(5) & (!\myStateMachine|addrCounter[4]~16\)) # (!\myStateMachine|addrCounter\(5) & ((\myStateMachine|addrCounter[4]~16\) # (GND)))
-- \myStateMachine|addrCounter[5]~18\ = CARRY((!\myStateMachine|addrCounter[4]~16\) # (!\myStateMachine|addrCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|addrCounter\(5),
	datad => VCC,
	cin => \myStateMachine|addrCounter[4]~16\,
	combout => \myStateMachine|addrCounter[5]~17_combout\,
	cout => \myStateMachine|addrCounter[5]~18\);

-- Location: LCFF_X11_Y27_N25
\myStateMachine|addrCounter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|addrCounter[5]~17_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|LessThan0~1_combout\,
	ena => \myStateMachine|state.cursorLogicState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrCounter\(5));

-- Location: LCCOMB_X11_Y27_N4
\myStateMachine|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|LessThan0~1_combout\ = (\myStateMachine|addrCounter\(6)) # ((\myStateMachine|addrCounter\(5)) # ((!\myStateMachine|LessThan0~0_combout\ & \myStateMachine|addrCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|addrCounter\(6),
	datab => \myStateMachine|LessThan0~0_combout\,
	datac => \myStateMachine|addrCounter\(5),
	datad => \myStateMachine|addrCounter\(4),
	combout => \myStateMachine|LessThan0~1_combout\);

-- Location: LCFF_X11_Y27_N15
\myStateMachine|addrCounter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|addrCounter[0]~7_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|LessThan0~1_combout\,
	ena => \myStateMachine|state.cursorLogicState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrCounter\(0));

-- Location: LCCOMB_X10_Y27_N16
\myStateMachine|Selector151~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector151~0_combout\ = (\myStateMachine|state.writeAddr~regout\ & ((\myStateMachine|addrCounter\(0)))) # (!\myStateMachine|state.writeAddr~regout\ & (\myStateMachine|state.displayClear~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.displayClear~regout\,
	datab => \myStateMachine|addrCounter\(0),
	datad => \myStateMachine|state.writeAddr~regout\,
	combout => \myStateMachine|Selector151~0_combout\);

-- Location: LCCOMB_X9_Y27_N4
\myStateMachine|Selector270~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector270~3_combout\ = (\myStateMachine|Selector270~2_combout\) # ((!\myStateMachine|state.writeData~regout\ & (\myStateMachine|readEnable~regout\ & !\myStateMachine|state.writeAddr~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector270~2_combout\,
	datab => \myStateMachine|state.writeData~regout\,
	datac => \myStateMachine|readEnable~regout\,
	datad => \myStateMachine|state.writeAddr~regout\,
	combout => \myStateMachine|Selector270~3_combout\);

-- Location: LCFF_X9_Y27_N5
\myStateMachine|readEnable\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector270~3_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|readEnable~regout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writeEnable~I\ : cycloneii_io
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
	padio => ww_writeEnable,
	combout => \writeEnable~combout\);

-- Location: LCCOMB_X9_Y27_N6
\myRegisters|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myRegisters|always0~0_combout\ = (!\myStateMachine|readEnable~regout\ & !\writeEnable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myStateMachine|readEnable~regout\,
	datad => \writeEnable~combout\,
	combout => \myRegisters|always0~0_combout\);

-- Location: LCCOMB_X9_Y27_N8
\myRegisters|always1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myRegisters|always1~0_combout\ = (\myStateMachine|readEnable~regout\ & \writeEnable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myStateMachine|readEnable~regout\,
	datad => \writeEnable~combout\,
	combout => \myRegisters|always1~0_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\charCode[0]~I\ : cycloneii_io
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
	padio => ww_charCode(0),
	combout => \charCode~combout\(0));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writeAddr[0]~I\ : cycloneii_io
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
	padio => ww_writeAddr(0),
	combout => \writeAddr~combout\(0));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writeAddr[1]~I\ : cycloneii_io
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
	padio => ww_writeAddr(1),
	combout => \writeAddr~combout\(1));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writeAddr[2]~I\ : cycloneii_io
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
	padio => ww_writeAddr(2),
	combout => \writeAddr~combout\(2));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writeAddr[3]~I\ : cycloneii_io
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
	padio => ww_writeAddr(3),
	combout => \writeAddr~combout\(3));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writeAddr[4]~I\ : cycloneii_io
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
	padio => ww_writeAddr(4),
	combout => \writeAddr~combout\(4));

-- Location: LCCOMB_X11_Y27_N6
\myStateMachine|addrToRead[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|addrToRead[0]~feeder_combout\ = \myStateMachine|addrCounter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myStateMachine|addrCounter\(0),
	combout => \myStateMachine|addrToRead[0]~feeder_combout\);

-- Location: LCCOMB_X9_Y27_N22
\myStateMachine|addrToRead[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|addrToRead[0]~0_combout\ = (\lcdOnIn~combout\ & (\myStateMachine|subStates.subState2~regout\ & \myStateMachine|state.writeAddr~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcdOnIn~combout\,
	datab => \myStateMachine|subStates.subState2~regout\,
	datad => \myStateMachine|state.writeAddr~regout\,
	combout => \myStateMachine|addrToRead[0]~0_combout\);

-- Location: LCFF_X11_Y27_N7
\myStateMachine|addrToRead[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|addrToRead[0]~feeder_combout\,
	ena => \myStateMachine|addrToRead[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrToRead\(0));

-- Location: LCCOMB_X11_Y27_N0
\myStateMachine|addrToRead[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|addrToRead[1]~feeder_combout\ = \myStateMachine|addrCounter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|addrCounter\(1),
	combout => \myStateMachine|addrToRead[1]~feeder_combout\);

-- Location: LCFF_X11_Y27_N1
\myStateMachine|addrToRead[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|addrToRead[1]~feeder_combout\,
	ena => \myStateMachine|addrToRead[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrToRead\(1));

-- Location: LCCOMB_X11_Y27_N10
\myStateMachine|addrToRead[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|addrToRead[2]~feeder_combout\ = \myStateMachine|addrCounter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|addrCounter\(2),
	combout => \myStateMachine|addrToRead[2]~feeder_combout\);

-- Location: LCFF_X11_Y27_N11
\myStateMachine|addrToRead[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|addrToRead[2]~feeder_combout\,
	ena => \myStateMachine|addrToRead[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrToRead\(2));

-- Location: LCFF_X11_Y27_N21
\myStateMachine|addrCounter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|addrCounter[3]~13_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|LessThan0~1_combout\,
	ena => \myStateMachine|state.cursorLogicState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrCounter\(3));

-- Location: LCCOMB_X11_Y27_N12
\myStateMachine|addrToRead[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|addrToRead[3]~feeder_combout\ = \myStateMachine|addrCounter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myStateMachine|addrCounter\(3),
	combout => \myStateMachine|addrToRead[3]~feeder_combout\);

-- Location: LCFF_X11_Y27_N13
\myStateMachine|addrToRead[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|addrToRead[3]~feeder_combout\,
	ena => \myStateMachine|addrToRead[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrToRead\(3));

-- Location: LCCOMB_X11_Y27_N28
\myStateMachine|addrToRead[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|addrToRead[4]~feeder_combout\ = \myStateMachine|addrCounter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|addrCounter\(4),
	combout => \myStateMachine|addrToRead[4]~feeder_combout\);

-- Location: LCFF_X11_Y27_N29
\myStateMachine|addrToRead[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|addrToRead[4]~feeder_combout\,
	ena => \myStateMachine|addrToRead[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrToRead\(4));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\charCode[1]~I\ : cycloneii_io
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
	padio => ww_charCode(1),
	combout => \charCode~combout\(1));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\charCode[2]~I\ : cycloneii_io
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
	padio => ww_charCode(2),
	combout => \charCode~combout\(2));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\charCode[3]~I\ : cycloneii_io
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
	padio => ww_charCode(3),
	combout => \charCode~combout\(3));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\charCode[4]~I\ : cycloneii_io
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
	padio => ww_charCode(4),
	combout => \charCode~combout\(4));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\charCode[5]~I\ : cycloneii_io
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
	padio => ww_charCode(5),
	combout => \charCode~combout\(5));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\charCode[6]~I\ : cycloneii_io
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
	padio => ww_charCode(6),
	combout => \charCode~combout\(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\charCode[7]~I\ : cycloneii_io
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
	padio => ww_charCode(7),
	combout => \charCode~combout\(7));

-- Location: LCCOMB_X9_Y27_N20
\myStateMachine|Selector37~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector37~1_combout\ = (!\myStateMachine|state.cursorLogicState~regout\ & ((\myStateMachine|subStates.subState2~regout\) # ((!\myStateMachine|state.writeAddr~regout\ & !\myStateMachine|state.writeData~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.writeAddr~regout\,
	datab => \myStateMachine|state.cursorLogicState~regout\,
	datac => \myStateMachine|subStates.subState2~regout\,
	datad => \myStateMachine|state.writeData~regout\,
	combout => \myStateMachine|Selector37~1_combout\);

-- Location: LCFF_X10_Y27_N17
\myStateMachine|lcdBus[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector151~0_combout\,
	sdata => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => \myStateMachine|state.writeData~regout\,
	ena => \myStateMachine|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[0]~reg0_regout\);

-- Location: LCCOMB_X9_Y27_N26
\myStateMachine|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector0~1_combout\ = ((!\myStateMachine|Selector0~0_combout\ & !\myStateMachine|subStates.subState2~regout\)) # (!\myStateMachine|state.powerOn~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector0~0_combout\,
	datab => \myStateMachine|subStates.subState2~regout\,
	datac => \myStateMachine|state.powerOn~regout\,
	combout => \myStateMachine|Selector0~1_combout\);

-- Location: LCCOMB_X7_Y27_N18
\myStateMachine|lcdBus[0]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|lcdBus[0]~enfeeder_combout\ = \myStateMachine|Selector0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|Selector0~1_combout\,
	combout => \myStateMachine|lcdBus[0]~enfeeder_combout\);

-- Location: LCFF_X7_Y27_N19
\myStateMachine|lcdBus[0]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|lcdBus[0]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[0]~en_regout\);

-- Location: LCCOMB_X7_Y27_N16
\myStateMachine|Selector150~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector150~0_combout\ = (\myStateMachine|state.writeAddr~regout\ & ((\myStateMachine|addrCounter\(1)))) # (!\myStateMachine|state.writeAddr~regout\ & (\myStateMachine|state.entryModeSet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.entryModeSet~regout\,
	datab => \myStateMachine|state.writeAddr~regout\,
	datad => \myStateMachine|addrCounter\(1),
	combout => \myStateMachine|Selector150~0_combout\);

-- Location: LCFF_X7_Y27_N17
\myStateMachine|lcdBus[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector150~0_combout\,
	sdata => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a1\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => \myStateMachine|state.writeData~regout\,
	ena => \myStateMachine|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[1]~reg0_regout\);

-- Location: LCCOMB_X7_Y27_N20
\myStateMachine|lcdBus[1]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|lcdBus[1]~enfeeder_combout\ = \myStateMachine|Selector0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|Selector0~1_combout\,
	combout => \myStateMachine|lcdBus[1]~enfeeder_combout\);

-- Location: LCFF_X7_Y27_N21
\myStateMachine|lcdBus[1]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|lcdBus[1]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[1]~en_regout\);

-- Location: LCCOMB_X10_Y27_N8
\myStateMachine|Selector149~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector149~0_combout\ = (\myRegisters|charCode_rtl_0|auto_generated|ram_block1a2\ & ((\myStateMachine|state.writeData~regout\) # ((\myStateMachine|state.writeAddr~regout\ & \myStateMachine|addrCounter\(2))))) # 
-- (!\myRegisters|charCode_rtl_0|auto_generated|ram_block1a2\ & (((\myStateMachine|state.writeAddr~regout\ & \myStateMachine|addrCounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a2\,
	datab => \myStateMachine|state.writeData~regout\,
	datac => \myStateMachine|state.writeAddr~regout\,
	datad => \myStateMachine|addrCounter\(2),
	combout => \myStateMachine|Selector149~0_combout\);

-- Location: LCCOMB_X10_Y27_N18
\myStateMachine|Selector149~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector149~1_combout\ = (\myStateMachine|state.entryModeSet~regout\) # ((\myStateMachine|Selector149~0_combout\) # ((\myStateMachine|displayOnOff~regout\ & \myStateMachine|state.displaySet~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.entryModeSet~regout\,
	datab => \myStateMachine|displayOnOff~regout\,
	datac => \myStateMachine|state.displaySet~regout\,
	datad => \myStateMachine|Selector149~0_combout\,
	combout => \myStateMachine|Selector149~1_combout\);

-- Location: LCFF_X10_Y27_N19
\myStateMachine|lcdBus[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector149~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[2]~reg0_regout\);

-- Location: LCCOMB_X7_Y27_N6
\myStateMachine|lcdBus[2]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|lcdBus[2]~enfeeder_combout\ = \myStateMachine|Selector0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|Selector0~1_combout\,
	combout => \myStateMachine|lcdBus[2]~enfeeder_combout\);

-- Location: LCFF_X7_Y27_N7
\myStateMachine|lcdBus[2]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|lcdBus[2]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[2]~en_regout\);

-- Location: LCCOMB_X7_Y27_N0
\myStateMachine|Selector114~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector114~0_combout\ = (\myStateMachine|state.writeAddr~regout\ & (((\myStateMachine|addrCounter\(3))))) # (!\myStateMachine|state.writeAddr~regout\ & (!\myStateMachine|state.displayClear~regout\ & 
-- ((!\myStateMachine|state.entryModeSet~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.displayClear~regout\,
	datab => \myStateMachine|addrCounter\(3),
	datac => \myStateMachine|state.writeAddr~regout\,
	datad => \myStateMachine|state.entryModeSet~regout\,
	combout => \myStateMachine|Selector114~0_combout\);

-- Location: LCCOMB_X7_Y27_N10
\myStateMachine|lcdBus[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|lcdBus[3]~reg0feeder_combout\ = \myStateMachine|Selector114~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|Selector114~0_combout\,
	combout => \myStateMachine|lcdBus[3]~reg0feeder_combout\);

-- Location: LCFF_X7_Y27_N11
\myStateMachine|lcdBus[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|lcdBus[3]~reg0feeder_combout\,
	sdata => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a3\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => \myStateMachine|state.writeData~regout\,
	ena => \myStateMachine|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[3]~reg0_regout\);

-- Location: LCCOMB_X7_Y27_N24
\myStateMachine|lcdBus[3]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|lcdBus[3]~enfeeder_combout\ = \myStateMachine|Selector0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|Selector0~1_combout\,
	combout => \myStateMachine|lcdBus[3]~enfeeder_combout\);

-- Location: LCFF_X7_Y27_N25
\myStateMachine|lcdBus[3]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|lcdBus[3]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[3]~en_regout\);

-- Location: LCCOMB_X10_Y27_N4
\myStateMachine|Selector113~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector113~0_combout\ = (!\myStateMachine|state.displayClear~regout\ & (!\myStateMachine|state.displaySet~regout\ & (!\myStateMachine|state.writeAddr~regout\ & !\myStateMachine|state.entryModeSet~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.displayClear~regout\,
	datab => \myStateMachine|state.displaySet~regout\,
	datac => \myStateMachine|state.writeAddr~regout\,
	datad => \myStateMachine|state.entryModeSet~regout\,
	combout => \myStateMachine|Selector113~0_combout\);

-- Location: LCCOMB_X7_Y27_N28
\myStateMachine|lcdBus[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|lcdBus[4]~reg0feeder_combout\ = \myStateMachine|Selector113~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|Selector113~0_combout\,
	combout => \myStateMachine|lcdBus[4]~reg0feeder_combout\);

-- Location: LCFF_X7_Y27_N29
\myStateMachine|lcdBus[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|lcdBus[4]~reg0feeder_combout\,
	sdata => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a4\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => \myStateMachine|state.writeData~regout\,
	ena => \myStateMachine|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[4]~reg0_regout\);

-- Location: LCCOMB_X7_Y27_N26
\myStateMachine|lcdBus[4]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|lcdBus[4]~enfeeder_combout\ = \myStateMachine|Selector0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|Selector0~1_combout\,
	combout => \myStateMachine|lcdBus[4]~enfeeder_combout\);

-- Location: LCFF_X7_Y27_N27
\myStateMachine|lcdBus[4]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|lcdBus[4]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[4]~en_regout\);

-- Location: LCCOMB_X11_Y27_N8
\myStateMachine|Selector73~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector73~0_combout\ = (\myStateMachine|Selector113~0_combout\) # ((\myStateMachine|state.writeAddr~regout\ & (\myStateMachine|addrCounter\(5) & !\myStateMachine|addrCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.writeAddr~regout\,
	datab => \myStateMachine|Selector113~0_combout\,
	datac => \myStateMachine|addrCounter\(5),
	datad => \myStateMachine|addrCounter\(4),
	combout => \myStateMachine|Selector73~0_combout\);

-- Location: LCCOMB_X7_Y27_N30
\myStateMachine|lcdBus[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|lcdBus[5]~reg0feeder_combout\ = \myStateMachine|Selector73~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|Selector73~0_combout\,
	combout => \myStateMachine|lcdBus[5]~reg0feeder_combout\);

-- Location: LCFF_X7_Y27_N31
\myStateMachine|lcdBus[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|lcdBus[5]~reg0feeder_combout\,
	sdata => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a5\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => \myStateMachine|state.writeData~regout\,
	ena => \myStateMachine|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[5]~reg0_regout\);

-- Location: LCFF_X9_Y27_N27
\myStateMachine|lcdBus[5]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector0~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[5]~en_regout\);

-- Location: LCCOMB_X11_Y27_N26
\myStateMachine|addrCounter[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|addrCounter[6]~19_combout\ = \myStateMachine|addrCounter\(6) $ (!\myStateMachine|addrCounter[5]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|addrCounter\(6),
	cin => \myStateMachine|addrCounter[5]~18\,
	combout => \myStateMachine|addrCounter[6]~19_combout\);

-- Location: LCFF_X11_Y27_N27
\myStateMachine|addrCounter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|addrCounter[6]~19_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|LessThan0~1_combout\,
	ena => \myStateMachine|state.cursorLogicState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrCounter\(6));

-- Location: LCCOMB_X7_Y27_N8
\myStateMachine|Selector72~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector72~0_combout\ = (\myStateMachine|state.writeAddr~regout\ & ((\myStateMachine|addrCounter\(4)) # (\myStateMachine|addrCounter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|addrCounter\(4),
	datab => \myStateMachine|addrCounter\(6),
	datad => \myStateMachine|state.writeAddr~regout\,
	combout => \myStateMachine|Selector72~0_combout\);

-- Location: LCFF_X7_Y27_N9
\myStateMachine|lcdBus[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector72~0_combout\,
	sdata => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a6\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => \myStateMachine|state.writeData~regout\,
	ena => \myStateMachine|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[6]~reg0_regout\);

-- Location: LCCOMB_X7_Y27_N4
\myStateMachine|lcdBus[6]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|lcdBus[6]~enfeeder_combout\ = \myStateMachine|Selector0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|Selector0~1_combout\,
	combout => \myStateMachine|lcdBus[6]~enfeeder_combout\);

-- Location: LCFF_X7_Y27_N5
\myStateMachine|lcdBus[6]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|lcdBus[6]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[6]~en_regout\);

-- Location: LCCOMB_X9_Y27_N28
\myStateMachine|Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector36~0_combout\ = (\myStateMachine|state.writeData~regout\ & ((!\myRegisters|charCode_rtl_0|auto_generated|ram_block1a7\))) # (!\myStateMachine|state.writeData~regout\ & (!\myStateMachine|state.writeAddr~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.writeAddr~regout\,
	datab => \myStateMachine|state.writeData~regout\,
	datad => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a7\,
	combout => \myStateMachine|Selector36~0_combout\);

-- Location: LCFF_X9_Y27_N29
\myStateMachine|lcdBus[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector36~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[7]~reg0_regout\);

-- Location: LCCOMB_X7_Y27_N22
\myStateMachine|lcdBus[7]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|lcdBus[7]~enfeeder_combout\ = \myStateMachine|Selector0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|Selector0~1_combout\,
	combout => \myStateMachine|lcdBus[7]~enfeeder_combout\);

-- Location: LCFF_X7_Y27_N23
\myStateMachine|lcdBus[7]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|lcdBus[7]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[7]~en_regout\);

-- Location: LCCOMB_X8_Y27_N26
\myStateMachine|Selector225~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector225~0_combout\ = (\myStateMachine|state.writeData~regout\) # ((\myStateMachine|state.cursorLogicState~regout\ & \myStateMachine|lcdRsSelect~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|state.cursorLogicState~regout\,
	datac => \myStateMachine|lcdRsSelect~regout\,
	datad => \myStateMachine|state.writeData~regout\,
	combout => \myStateMachine|Selector225~0_combout\);

-- Location: LCFF_X8_Y27_N27
\myStateMachine|lcdRsSelect\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector225~0_combout\,
	ena => \lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdRsSelect~regout\);

-- Location: LCCOMB_X9_Y27_N24
\myStateMachine|Selector224~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector224~0_combout\ = (\myStateMachine|state.cursorLogicState~regout\ & \myStateMachine|lcdEnableOut~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|state.cursorLogicState~regout\,
	datac => \myStateMachine|lcdEnableOut~regout\,
	combout => \myStateMachine|Selector224~0_combout\);

-- Location: LCCOMB_X9_Y27_N16
\myStateMachine|Selector224~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector224~1_combout\ = (\myStateMachine|Selector224~0_combout\) # ((\myStateMachine|subStates.subState2~regout\ & ((!\myStateMachine|Selector37~0_combout\) # (!\myStateMachine|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector0~0_combout\,
	datab => \myStateMachine|subStates.subState2~regout\,
	datac => \myStateMachine|Selector37~0_combout\,
	datad => \myStateMachine|Selector224~0_combout\,
	combout => \myStateMachine|Selector224~1_combout\);

-- Location: LCFF_X9_Y27_N17
\myStateMachine|lcdEnableOut\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector224~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdEnableOut~regout\);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myStateMachine|lcdBus[0]~reg0_regout\,
	oe => \myStateMachine|ALT_INV_lcdBus[0]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_lcdBus(0));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myStateMachine|lcdBus[1]~reg0_regout\,
	oe => \myStateMachine|ALT_INV_lcdBus[1]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_lcdBus(1));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myStateMachine|lcdBus[2]~reg0_regout\,
	oe => \myStateMachine|ALT_INV_lcdBus[2]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_lcdBus(2));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myStateMachine|lcdBus[3]~reg0_regout\,
	oe => \myStateMachine|ALT_INV_lcdBus[3]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_lcdBus(3));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myStateMachine|lcdBus[4]~reg0_regout\,
	oe => \myStateMachine|ALT_INV_lcdBus[4]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_lcdBus(4));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myStateMachine|lcdBus[5]~reg0_regout\,
	oe => \myStateMachine|ALT_INV_lcdBus[5]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_lcdBus(5));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myStateMachine|lcdBus[6]~reg0_regout\,
	oe => \myStateMachine|ALT_INV_lcdBus[6]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_lcdBus(6));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \myStateMachine|ALT_INV_lcdBus[7]~reg0_regout\,
	oe => \myStateMachine|ALT_INV_lcdBus[7]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_lcdBus(7));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcdOnOut~I\ : cycloneii_io
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
	datain => \lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcdOnOut);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcdReadWriteSel);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \myStateMachine|lcdRsSelect~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcdRsSelect);

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \myStateMachine|lcdEnableOut~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcdEnableOut);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_errorLed);
END structure;


