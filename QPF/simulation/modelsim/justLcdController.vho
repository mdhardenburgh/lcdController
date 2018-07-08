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

-- DATE "07/03/2018 23:49:13"

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
SIGNAL \myStateMachine|Add1~11\ : std_logic;
SIGNAL \myStateMachine|Add1~12_combout\ : std_logic;
SIGNAL \myStateMachine|counter[0]~33_combout\ : std_logic;
SIGNAL \myStateMachine|counter[13]~68_combout\ : std_logic;
SIGNAL \myStateMachine|counter[16]~74_combout\ : std_logic;
SIGNAL \myStateMachine|counter[20]~82_combout\ : std_logic;
SIGNAL \myStateMachine|counter[29]~100_combout\ : std_logic;
SIGNAL \myStateMachine|counter[31]~105\ : std_logic;
SIGNAL \myStateMachine|counter[32]~106_combout\ : std_logic;
SIGNAL \myStateMachine|Selector148~0_combout\ : std_logic;
SIGNAL \myStateMachine|Equal0~0_combout\ : std_logic;
SIGNAL \myStateMachine|Equal6~0_combout\ : std_logic;
SIGNAL \myStateMachine|Selector263~0_combout\ : std_logic;
SIGNAL \myStateMachine|Selector263~1_combout\ : std_logic;
SIGNAL \myStateMachine|Selector263~2_combout\ : std_logic;
SIGNAL \myStateMachine|Equal0~5_combout\ : std_logic;
SIGNAL \myStateMachine|Equal0~6_combout\ : std_logic;
SIGNAL \myStateMachine|Equal0~7_combout\ : std_logic;
SIGNAL \myStateMachine|Selector77~0_combout\ : std_logic;
SIGNAL \myStateMachine|Selector261~0_combout\ : std_logic;
SIGNAL \myStateMachine|addrCounter~0_combout\ : std_logic;
SIGNAL \myStateMachine|Selector269~2_combout\ : std_logic;
SIGNAL \myStateMachine|Selector269~3_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~51_combout\ : std_logic;
SIGNAL \myStateMachine|Selector267~3_combout\ : std_logic;
SIGNAL \myStateMachine|Selector267~6_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \myStateMachine|counter[0]~34\ : std_logic;
SIGNAL \myStateMachine|counter[1]~35_combout\ : std_logic;
SIGNAL \lcdOnIn~combout\ : std_logic;
SIGNAL \myStateMachine|Equal1~4_combout\ : std_logic;
SIGNAL \myStateMachine|counter[11]~64_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~41_combout\ : std_logic;
SIGNAL \myStateMachine|Equal4~2_combout\ : std_logic;
SIGNAL \myStateMachine|counter[18]~78_combout\ : std_logic;
SIGNAL \myStateMachine|counter[14]~70_combout\ : std_logic;
SIGNAL \myStateMachine|Equal1~0_combout\ : std_logic;
SIGNAL \myStateMachine|Equal1~1_combout\ : std_logic;
SIGNAL \myStateMachine|Equal4~3_combout\ : std_logic;
SIGNAL \myStateMachine|state.writeData~0_combout\ : std_logic;
SIGNAL \myStateMachine|state.writeData~regout\ : std_logic;
SIGNAL \myStateMachine|state.entryModeSet~0_combout\ : std_logic;
SIGNAL \myStateMachine|state.entryModeSet~regout\ : std_logic;
SIGNAL \myStateMachine|counter[2]~37_combout\ : std_logic;
SIGNAL \myStateMachine|Equal4~0_combout\ : std_logic;
SIGNAL \myStateMachine|Equal4~1_combout\ : std_logic;
SIGNAL \myStateMachine|Equal4~4_combout\ : std_logic;
SIGNAL \myStateMachine|Selector265~0_combout\ : std_logic;
SIGNAL \myStateMachine|state.cursorLogicState~regout\ : std_logic;
SIGNAL \myStateMachine|Selector266~0_combout\ : std_logic;
SIGNAL \myStateMachine|state.shortDelay~regout\ : std_logic;
SIGNAL \myStateMachine|WideOr11~combout\ : std_logic;
SIGNAL \myStateMachine|subStates.subState2~0_combout\ : std_logic;
SIGNAL \myStateMachine|subStates.subState2~regout\ : std_logic;
SIGNAL \myStateMachine|displayOnOff~0_combout\ : std_logic;
SIGNAL \myStateMachine|displayOnOff~regout\ : std_logic;
SIGNAL \myStateMachine|Equal2~0_combout\ : std_logic;
SIGNAL \myStateMachine|Equal2~1_combout\ : std_logic;
SIGNAL \myStateMachine|Selector263~3_combout\ : std_logic;
SIGNAL \myStateMachine|state.writeAddr~regout\ : std_logic;
SIGNAL \myStateMachine|WideOr1~0_combout\ : std_logic;
SIGNAL \myStateMachine|Equal3~2_combout\ : std_logic;
SIGNAL \myStateMachine|Equal3~4_combout\ : std_logic;
SIGNAL \myStateMachine|Selector262~0_combout\ : std_logic;
SIGNAL \myStateMachine|Selector148~1_combout\ : std_logic;
SIGNAL \myStateMachine|Selector267~4_combout\ : std_logic;
SIGNAL \myStateMachine|Selector267~5_combout\ : std_logic;
SIGNAL \myStateMachine|subStates.00~regout\ : std_logic;
SIGNAL \myStateMachine|Selector35~0_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~53_combout\ : std_logic;
SIGNAL \myStateMachine|Equal1~2_combout\ : std_logic;
SIGNAL \myStateMachine|Equal1~3_combout\ : std_logic;
SIGNAL \myStateMachine|Equal1~5_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~45_combout\ : std_logic;
SIGNAL \myStateMachine|functionSetCase~14_combout\ : std_logic;
SIGNAL \myStateMachine|functionSetCase.00~regout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~49_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~46_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~47_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~48_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~50_combout\ : std_logic;
SIGNAL \myStateMachine|counter[4]~52_combout\ : std_logic;
SIGNAL \myStateMachine|counter[1]~36\ : std_logic;
SIGNAL \myStateMachine|counter[2]~38\ : std_logic;
SIGNAL \myStateMachine|counter[3]~39_combout\ : std_logic;
SIGNAL \myStateMachine|counter[3]~40\ : std_logic;
SIGNAL \myStateMachine|counter[4]~42\ : std_logic;
SIGNAL \myStateMachine|counter[5]~43_combout\ : std_logic;
SIGNAL \myStateMachine|counter[5]~44\ : std_logic;
SIGNAL \myStateMachine|counter[6]~54_combout\ : std_logic;
SIGNAL \myStateMachine|counter[6]~55\ : std_logic;
SIGNAL \myStateMachine|counter[7]~56_combout\ : std_logic;
SIGNAL \myStateMachine|counter[7]~57\ : std_logic;
SIGNAL \myStateMachine|counter[8]~58_combout\ : std_logic;
SIGNAL \myStateMachine|counter[8]~59\ : std_logic;
SIGNAL \myStateMachine|counter[9]~60_combout\ : std_logic;
SIGNAL \myStateMachine|counter[9]~61\ : std_logic;
SIGNAL \myStateMachine|counter[10]~62_combout\ : std_logic;
SIGNAL \myStateMachine|counter[10]~63\ : std_logic;
SIGNAL \myStateMachine|counter[11]~65\ : std_logic;
SIGNAL \myStateMachine|counter[12]~66_combout\ : std_logic;
SIGNAL \myStateMachine|counter[12]~67\ : std_logic;
SIGNAL \myStateMachine|counter[13]~69\ : std_logic;
SIGNAL \myStateMachine|counter[14]~71\ : std_logic;
SIGNAL \myStateMachine|counter[15]~72_combout\ : std_logic;
SIGNAL \myStateMachine|counter[15]~73\ : std_logic;
SIGNAL \myStateMachine|counter[16]~75\ : std_logic;
SIGNAL \myStateMachine|counter[17]~76_combout\ : std_logic;
SIGNAL \myStateMachine|counter[17]~77\ : std_logic;
SIGNAL \myStateMachine|counter[18]~79\ : std_logic;
SIGNAL \myStateMachine|counter[19]~80_combout\ : std_logic;
SIGNAL \myStateMachine|counter[19]~81\ : std_logic;
SIGNAL \myStateMachine|counter[20]~83\ : std_logic;
SIGNAL \myStateMachine|counter[21]~84_combout\ : std_logic;
SIGNAL \myStateMachine|counter[21]~85\ : std_logic;
SIGNAL \myStateMachine|counter[22]~86_combout\ : std_logic;
SIGNAL \myStateMachine|counter[22]~87\ : std_logic;
SIGNAL \myStateMachine|counter[23]~88_combout\ : std_logic;
SIGNAL \myStateMachine|counter[23]~89\ : std_logic;
SIGNAL \myStateMachine|counter[24]~90_combout\ : std_logic;
SIGNAL \myStateMachine|counter[24]~91\ : std_logic;
SIGNAL \myStateMachine|counter[25]~92_combout\ : std_logic;
SIGNAL \myStateMachine|counter[25]~93\ : std_logic;
SIGNAL \myStateMachine|counter[26]~94_combout\ : std_logic;
SIGNAL \myStateMachine|counter[26]~95\ : std_logic;
SIGNAL \myStateMachine|counter[27]~97\ : std_logic;
SIGNAL \myStateMachine|counter[28]~98_combout\ : std_logic;
SIGNAL \myStateMachine|counter[27]~96_combout\ : std_logic;
SIGNAL \myStateMachine|Equal0~2_combout\ : std_logic;
SIGNAL \myStateMachine|counter[28]~99\ : std_logic;
SIGNAL \myStateMachine|counter[29]~101\ : std_logic;
SIGNAL \myStateMachine|counter[30]~103\ : std_logic;
SIGNAL \myStateMachine|counter[31]~104_combout\ : std_logic;
SIGNAL \myStateMachine|counter[30]~102_combout\ : std_logic;
SIGNAL \myStateMachine|Equal0~3_combout\ : std_logic;
SIGNAL \myStateMachine|Equal0~1_combout\ : std_logic;
SIGNAL \myStateMachine|Equal0~4_combout\ : std_logic;
SIGNAL \myStateMachine|Equal0~8_combout\ : std_logic;
SIGNAL \myStateMachine|Equal0~9_combout\ : std_logic;
SIGNAL \myStateMachine|state.powerOn~0_combout\ : std_logic;
SIGNAL \myStateMachine|state.powerOn~regout\ : std_logic;
SIGNAL \myStateMachine|Selector259~0_combout\ : std_logic;
SIGNAL \myStateMachine|Selector76~0_combout\ : std_logic;
SIGNAL \myStateMachine|functionSetCase.functionSet2~regout\ : std_logic;
SIGNAL \myStateMachine|Selector77~1_combout\ : std_logic;
SIGNAL \myStateMachine|functionSetCase.functionSet3~regout\ : std_logic;
SIGNAL \myStateMachine|functionSetCase.functionSet4~0_combout\ : std_logic;
SIGNAL \myStateMachine|functionSetCase.functionSet4~regout\ : std_logic;
SIGNAL \myStateMachine|Selector259~1_combout\ : std_logic;
SIGNAL \myStateMachine|state.functionSet~regout\ : std_logic;
SIGNAL \myStateMachine|Selector267~2_combout\ : std_logic;
SIGNAL \myStateMachine|Selector223~3_combout\ : std_logic;
SIGNAL \myStateMachine|Selector269~1_combout\ : std_logic;
SIGNAL \myStateMachine|Equal3~3_combout\ : std_logic;
SIGNAL \myStateMachine|Equal3~5_combout\ : std_logic;
SIGNAL \myStateMachine|Selector74~0_combout\ : std_logic;
SIGNAL \myStateMachine|Selector269~4_combout\ : std_logic;
SIGNAL \myStateMachine|subStates.subState3~regout\ : std_logic;
SIGNAL \myStateMachine|Selector260~2_combout\ : std_logic;
SIGNAL \myStateMachine|Selector260~4_combout\ : std_logic;
SIGNAL \myStateMachine|Selector260~3_combout\ : std_logic;
SIGNAL \myStateMachine|state.displaySet~regout\ : std_logic;
SIGNAL \myStateMachine|Selector269~0_combout\ : std_logic;
SIGNAL \myStateMachine|Selector261~1_combout\ : std_logic;
SIGNAL \myStateMachine|state.displayClear~regout\ : std_logic;
SIGNAL \myStateMachine|Selector150~0_combout\ : std_logic;
SIGNAL \myStateMachine|Add1~0_combout\ : std_logic;
SIGNAL \myStateMachine|addrToRead[0]~0_combout\ : std_logic;
SIGNAL \myStateMachine|Add1~1\ : std_logic;
SIGNAL \myStateMachine|Add1~2_combout\ : std_logic;
SIGNAL \myStateMachine|addrToRead[1]~feeder_combout\ : std_logic;
SIGNAL \myStateMachine|Add1~3\ : std_logic;
SIGNAL \myStateMachine|Add1~4_combout\ : std_logic;
SIGNAL \myStateMachine|Add1~5\ : std_logic;
SIGNAL \myStateMachine|Add1~6_combout\ : std_logic;
SIGNAL \myStateMachine|addrToRead[3]~feeder_combout\ : std_logic;
SIGNAL \myStateMachine|Add1~7\ : std_logic;
SIGNAL \myStateMachine|Add1~8_combout\ : std_logic;
SIGNAL \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \myStateMachine|Selector71~0_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[0]~reg0_regout\ : std_logic;
SIGNAL \myStateMachine|Selector35~1_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[0]~enfeeder_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[0]~en_regout\ : std_logic;
SIGNAL \myStateMachine|Selector155~0_combout\ : std_logic;
SIGNAL \myRegisters|charCode_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \myStateMachine|lcdBus[1]~reg0_regout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[1]~enfeeder_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[1]~en_regout\ : std_logic;
SIGNAL \myStateMachine|Selector149~0_combout\ : std_logic;
SIGNAL \myStateMachine|Selector149~1_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[2]~reg0_regout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[2]~enfeeder_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[2]~en_regout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[3]~reg0feeder_combout\ : std_logic;
SIGNAL \myRegisters|charCode_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \myStateMachine|lcdBus[3]~reg0_regout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[3]~en_regout\ : std_logic;
SIGNAL \myStateMachine|Selector113~0_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[4]~reg0feeder_combout\ : std_logic;
SIGNAL \myRegisters|charCode_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \myStateMachine|lcdBus[4]~reg0_regout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[4]~enfeeder_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[4]~en_regout\ : std_logic;
SIGNAL \myStateMachine|addrCounter~1_combout\ : std_logic;
SIGNAL \myStateMachine|Add1~9\ : std_logic;
SIGNAL \myStateMachine|Add1~10_combout\ : std_logic;
SIGNAL \myStateMachine|addrCounter~2_combout\ : std_logic;
SIGNAL \myStateMachine|Selector112~0_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[5]~reg0feeder_combout\ : std_logic;
SIGNAL \myRegisters|charCode_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \myStateMachine|lcdBus[5]~reg0_regout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[5]~enfeeder_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[5]~en_regout\ : std_logic;
SIGNAL \myStateMachine|Selector72~0_combout\ : std_logic;
SIGNAL \myRegisters|charCode_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \myStateMachine|lcdBus[6]~reg0_regout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[6]~enfeeder_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[6]~en_regout\ : std_logic;
SIGNAL \myRegisters|charCode_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \myStateMachine|Selector37~0_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[7]~reg0_regout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[7]~enfeeder_combout\ : std_logic;
SIGNAL \myStateMachine|lcdBus[7]~en_regout\ : std_logic;
SIGNAL \myStateMachine|Selector224~0_combout\ : std_logic;
SIGNAL \myStateMachine|lcdRsSelect~regout\ : std_logic;
SIGNAL \myStateMachine|Selector223~2_combout\ : std_logic;
SIGNAL \myStateMachine|lcdEnableOut~regout\ : std_logic;
SIGNAL \myStateMachine|WideOr1~combout\ : std_logic;
SIGNAL \myStateMachine|errorLed~regout\ : std_logic;
SIGNAL \myStateMachine|counter\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \myStateMachine|addrToRead\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \myStateMachine|addrCounter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \writeAddr~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \charCode~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_lcdOnIn~combout\ : std_logic;
SIGNAL \myStateMachine|ALT_INV_lcdBus[7]~en_regout\ : std_logic;
SIGNAL \myStateMachine|ALT_INV_lcdBus[7]~reg0_regout\ : std_logic;
SIGNAL \myStateMachine|ALT_INV_lcdBus[6]~en_regout\ : std_logic;
SIGNAL \myStateMachine|ALT_INV_lcdBus[5]~en_regout\ : std_logic;
SIGNAL \myStateMachine|ALT_INV_lcdBus[4]~en_regout\ : std_logic;
SIGNAL \myStateMachine|ALT_INV_lcdBus[3]~en_regout\ : std_logic;
SIGNAL \myStateMachine|ALT_INV_lcdBus[2]~en_regout\ : std_logic;
SIGNAL \myStateMachine|ALT_INV_lcdBus[1]~en_regout\ : std_logic;
SIGNAL \myStateMachine|ALT_INV_lcdBus[0]~en_regout\ : std_logic;

BEGIN

ww_clk <= clk;
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
\ALT_INV_lcdOnIn~combout\ <= NOT \lcdOnIn~combout\;
\myStateMachine|ALT_INV_lcdBus[7]~en_regout\ <= NOT \myStateMachine|lcdBus[7]~en_regout\;
\myStateMachine|ALT_INV_lcdBus[7]~reg0_regout\ <= NOT \myStateMachine|lcdBus[7]~reg0_regout\;
\myStateMachine|ALT_INV_lcdBus[6]~en_regout\ <= NOT \myStateMachine|lcdBus[6]~en_regout\;
\myStateMachine|ALT_INV_lcdBus[5]~en_regout\ <= NOT \myStateMachine|lcdBus[5]~en_regout\;
\myStateMachine|ALT_INV_lcdBus[4]~en_regout\ <= NOT \myStateMachine|lcdBus[4]~en_regout\;
\myStateMachine|ALT_INV_lcdBus[3]~en_regout\ <= NOT \myStateMachine|lcdBus[3]~en_regout\;
\myStateMachine|ALT_INV_lcdBus[2]~en_regout\ <= NOT \myStateMachine|lcdBus[2]~en_regout\;
\myStateMachine|ALT_INV_lcdBus[1]~en_regout\ <= NOT \myStateMachine|lcdBus[1]~en_regout\;
\myStateMachine|ALT_INV_lcdBus[0]~en_regout\ <= NOT \myStateMachine|lcdBus[0]~en_regout\;

-- Location: M4K_X13_Y26
\myRegisters|charCode_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "lcdRegisterFile:myRegisters|altsyncram:charCode_rtl_0|altsyncram_2lg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCFF_X7_Y25_N11
\myStateMachine|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[13]~68_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(13));

-- Location: LCFF_X7_Y25_N25
\myStateMachine|counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[20]~82_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(20));

-- Location: LCFF_X7_Y24_N11
\myStateMachine|counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[29]~100_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(29));

-- Location: LCFF_X7_Y24_N17
\myStateMachine|counter[32]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[32]~106_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(32));

-- Location: LCFF_X7_Y25_N17
\myStateMachine|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[16]~74_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(16));

-- Location: LCFF_X7_Y26_N17
\myStateMachine|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[0]~33_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(0));

-- Location: LCCOMB_X12_Y26_N26
\myStateMachine|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Add1~10_combout\ = (\myStateMachine|addrCounter\(5) & (!\myStateMachine|Add1~9\)) # (!\myStateMachine|addrCounter\(5) & ((\myStateMachine|Add1~9\) # (GND)))
-- \myStateMachine|Add1~11\ = CARRY((!\myStateMachine|Add1~9\) # (!\myStateMachine|addrCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|addrCounter\(5),
	datad => VCC,
	cin => \myStateMachine|Add1~9\,
	combout => \myStateMachine|Add1~10_combout\,
	cout => \myStateMachine|Add1~11\);

-- Location: LCCOMB_X12_Y26_N28
\myStateMachine|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Add1~12_combout\ = \myStateMachine|addrCounter\(6) $ (!\myStateMachine|Add1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|addrCounter\(6),
	cin => \myStateMachine|Add1~11\,
	combout => \myStateMachine|Add1~12_combout\);

-- Location: LCCOMB_X7_Y26_N16
\myStateMachine|counter[0]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[0]~33_combout\ = \myStateMachine|counter\(0) $ (VCC)
-- \myStateMachine|counter[0]~34\ = CARRY(\myStateMachine|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(0),
	datad => VCC,
	combout => \myStateMachine|counter[0]~33_combout\,
	cout => \myStateMachine|counter[0]~34\);

-- Location: LCCOMB_X7_Y25_N10
\myStateMachine|counter[13]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[13]~68_combout\ = (\myStateMachine|counter\(13) & (!\myStateMachine|counter[12]~67\)) # (!\myStateMachine|counter\(13) & ((\myStateMachine|counter[12]~67\) # (GND)))
-- \myStateMachine|counter[13]~69\ = CARRY((!\myStateMachine|counter[12]~67\) # (!\myStateMachine|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(13),
	datad => VCC,
	cin => \myStateMachine|counter[12]~67\,
	combout => \myStateMachine|counter[13]~68_combout\,
	cout => \myStateMachine|counter[13]~69\);

-- Location: LCCOMB_X7_Y25_N16
\myStateMachine|counter[16]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[16]~74_combout\ = (\myStateMachine|counter\(16) & (\myStateMachine|counter[15]~73\ $ (GND))) # (!\myStateMachine|counter\(16) & (!\myStateMachine|counter[15]~73\ & VCC))
-- \myStateMachine|counter[16]~75\ = CARRY((\myStateMachine|counter\(16) & !\myStateMachine|counter[15]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(16),
	datad => VCC,
	cin => \myStateMachine|counter[15]~73\,
	combout => \myStateMachine|counter[16]~74_combout\,
	cout => \myStateMachine|counter[16]~75\);

-- Location: LCCOMB_X7_Y25_N24
\myStateMachine|counter[20]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[20]~82_combout\ = (\myStateMachine|counter\(20) & (\myStateMachine|counter[19]~81\ $ (GND))) # (!\myStateMachine|counter\(20) & (!\myStateMachine|counter[19]~81\ & VCC))
-- \myStateMachine|counter[20]~83\ = CARRY((\myStateMachine|counter\(20) & !\myStateMachine|counter[19]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(20),
	datad => VCC,
	cin => \myStateMachine|counter[19]~81\,
	combout => \myStateMachine|counter[20]~82_combout\,
	cout => \myStateMachine|counter[20]~83\);

-- Location: LCCOMB_X7_Y24_N10
\myStateMachine|counter[29]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[29]~100_combout\ = (\myStateMachine|counter\(29) & (!\myStateMachine|counter[28]~99\)) # (!\myStateMachine|counter\(29) & ((\myStateMachine|counter[28]~99\) # (GND)))
-- \myStateMachine|counter[29]~101\ = CARRY((!\myStateMachine|counter[28]~99\) # (!\myStateMachine|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(29),
	datad => VCC,
	cin => \myStateMachine|counter[28]~99\,
	combout => \myStateMachine|counter[29]~100_combout\,
	cout => \myStateMachine|counter[29]~101\);

-- Location: LCCOMB_X7_Y24_N14
\myStateMachine|counter[31]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[31]~104_combout\ = (\myStateMachine|counter\(31) & (!\myStateMachine|counter[30]~103\)) # (!\myStateMachine|counter\(31) & ((\myStateMachine|counter[30]~103\) # (GND)))
-- \myStateMachine|counter[31]~105\ = CARRY((!\myStateMachine|counter[30]~103\) # (!\myStateMachine|counter\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(31),
	datad => VCC,
	cin => \myStateMachine|counter[30]~103\,
	combout => \myStateMachine|counter[31]~104_combout\,
	cout => \myStateMachine|counter[31]~105\);

-- Location: LCCOMB_X7_Y24_N16
\myStateMachine|counter[32]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[32]~106_combout\ = \myStateMachine|counter\(32) $ (!\myStateMachine|counter[31]~105\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(32),
	cin => \myStateMachine|counter[31]~105\,
	combout => \myStateMachine|counter[32]~106_combout\);

-- Location: LCCOMB_X11_Y26_N20
\myStateMachine|Selector148~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector148~0_combout\ = (\myStateMachine|state.writeAddr~regout\ & (((\myStateMachine|addrCounter\(3))))) # (!\myStateMachine|state.writeAddr~regout\ & (!\myStateMachine|state.displayClear~regout\ & 
-- (!\myStateMachine|state.entryModeSet~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.writeAddr~regout\,
	datab => \myStateMachine|state.displayClear~regout\,
	datac => \myStateMachine|state.entryModeSet~regout\,
	datad => \myStateMachine|addrCounter\(3),
	combout => \myStateMachine|Selector148~0_combout\);

-- Location: LCFF_X12_Y26_N29
\myStateMachine|addrCounter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Add1~12_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|state.cursorLogicState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrCounter\(6));

-- Location: LCCOMB_X7_Y24_N18
\myStateMachine|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal0~0_combout\ = (!\myStateMachine|counter\(13) & (!\myStateMachine|counter\(20) & (!\myStateMachine|counter\(21) & !\myStateMachine|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(13),
	datab => \myStateMachine|counter\(20),
	datac => \myStateMachine|counter\(21),
	datad => \myStateMachine|counter\(5),
	combout => \myStateMachine|Equal0~0_combout\);

-- Location: LCCOMB_X7_Y26_N6
\myStateMachine|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal6~0_combout\ = (\myStateMachine|counter\(0) & (!\myStateMachine|counter\(1) & (!\myStateMachine|counter\(4) & !\myStateMachine|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(0),
	datab => \myStateMachine|counter\(1),
	datac => \myStateMachine|counter\(4),
	datad => \myStateMachine|counter\(3),
	combout => \myStateMachine|Equal6~0_combout\);

-- Location: LCCOMB_X6_Y26_N12
\myStateMachine|Selector263~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector263~0_combout\ = (\myStateMachine|state.shortDelay~regout\ & \myStateMachine|Equal6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|state.shortDelay~regout\,
	datad => \myStateMachine|Equal6~0_combout\,
	combout => \myStateMachine|Selector263~0_combout\);

-- Location: LCCOMB_X6_Y26_N22
\myStateMachine|Selector263~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector263~1_combout\ = (\myStateMachine|Selector263~0_combout\ & (\myStateMachine|Equal0~4_combout\ & (\myStateMachine|Equal1~1_combout\ & \myStateMachine|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector263~0_combout\,
	datab => \myStateMachine|Equal0~4_combout\,
	datac => \myStateMachine|Equal1~1_combout\,
	datad => \myStateMachine|Equal4~1_combout\,
	combout => \myStateMachine|Selector263~1_combout\);

-- Location: LCCOMB_X10_Y26_N12
\myStateMachine|Selector263~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector263~2_combout\ = (\myStateMachine|Selector263~1_combout\) # ((\myStateMachine|state.writeAddr~regout\ & ((!\myStateMachine|subStates.subState3~regout\) # (!\myStateMachine|Equal4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.writeAddr~regout\,
	datab => \myStateMachine|Selector263~1_combout\,
	datac => \myStateMachine|Equal4~3_combout\,
	datad => \myStateMachine|subStates.subState3~regout\,
	combout => \myStateMachine|Selector263~2_combout\);

-- Location: LCCOMB_X7_Y26_N10
\myStateMachine|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal0~5_combout\ = (\myStateMachine|counter\(14) & (!\myStateMachine|counter\(1) & (!\myStateMachine|counter\(0) & !\myStateMachine|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(14),
	datab => \myStateMachine|counter\(1),
	datac => \myStateMachine|counter\(0),
	datad => \myStateMachine|counter\(3),
	combout => \myStateMachine|Equal0~5_combout\);

-- Location: LCCOMB_X8_Y26_N20
\myStateMachine|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal0~6_combout\ = (\myStateMachine|Equal4~0_combout\ & (\myStateMachine|counter\(16) & (\myStateMachine|counter\(17) & \myStateMachine|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal4~0_combout\,
	datab => \myStateMachine|counter\(16),
	datac => \myStateMachine|counter\(17),
	datad => \myStateMachine|Equal0~5_combout\,
	combout => \myStateMachine|Equal0~6_combout\);

-- Location: LCCOMB_X7_Y26_N4
\myStateMachine|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal0~7_combout\ = (!\myStateMachine|counter\(12) & !\myStateMachine|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(12),
	datad => \myStateMachine|counter\(7),
	combout => \myStateMachine|Equal0~7_combout\);

-- Location: LCCOMB_X8_Y26_N10
\myStateMachine|Selector77~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector77~0_combout\ = (\myStateMachine|Equal1~5_combout\ & \myStateMachine|subStates.subState3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myStateMachine|Equal1~5_combout\,
	datad => \myStateMachine|subStates.subState3~regout\,
	combout => \myStateMachine|Selector77~0_combout\);

-- Location: LCCOMB_X11_Y26_N10
\myStateMachine|Selector261~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector261~0_combout\ = (!\myStateMachine|Selector262~0_combout\ & \myStateMachine|state.displayClear~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myStateMachine|Selector262~0_combout\,
	datad => \myStateMachine|state.displayClear~regout\,
	combout => \myStateMachine|Selector261~0_combout\);

-- Location: LCCOMB_X12_Y26_N12
\myStateMachine|addrCounter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|addrCounter~0_combout\ = (\myStateMachine|addrCounter\(6)) # (((\myStateMachine|addrCounter\(5)) # (!\myStateMachine|addrCounter\(4))) # (!\myStateMachine|addrCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|addrCounter\(6),
	datab => \myStateMachine|addrCounter\(3),
	datac => \myStateMachine|addrCounter\(4),
	datad => \myStateMachine|addrCounter\(5),
	combout => \myStateMachine|addrCounter~0_combout\);

-- Location: LCCOMB_X10_Y26_N10
\myStateMachine|Selector269~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector269~2_combout\ = (\myStateMachine|subStates.subState3~regout\ & ((\myStateMachine|WideOr11~combout\) # ((!\myStateMachine|Equal3~5_combout\ & !\myStateMachine|Selector148~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal3~5_combout\,
	datab => \myStateMachine|subStates.subState3~regout\,
	datac => \myStateMachine|WideOr11~combout\,
	datad => \myStateMachine|Selector148~1_combout\,
	combout => \myStateMachine|Selector269~2_combout\);

-- Location: LCCOMB_X10_Y26_N20
\myStateMachine|Selector269~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector269~3_combout\ = (\myStateMachine|Selector269~2_combout\) # ((!\myStateMachine|WideOr1~0_combout\ & (!\myStateMachine|Equal4~3_combout\ & \myStateMachine|subStates.subState3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector269~2_combout\,
	datab => \myStateMachine|WideOr1~0_combout\,
	datac => \myStateMachine|Equal4~3_combout\,
	datad => \myStateMachine|subStates.subState3~regout\,
	combout => \myStateMachine|Selector269~3_combout\);

-- Location: LCCOMB_X8_Y26_N22
\myStateMachine|counter[4]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~51_combout\ = (\myStateMachine|state.powerOn~regout\ & (((!\myStateMachine|functionSetCase.00~regout\) # (!\myStateMachine|state.functionSet~regout\)) # (!\myStateMachine|subStates.subState3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|subStates.subState3~regout\,
	datab => \myStateMachine|state.powerOn~regout\,
	datac => \myStateMachine|state.functionSet~regout\,
	datad => \myStateMachine|functionSetCase.00~regout\,
	combout => \myStateMachine|counter[4]~51_combout\);

-- Location: LCCOMB_X9_Y26_N12
\myStateMachine|Selector267~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector267~3_combout\ = (\myStateMachine|subStates.subState3~regout\ & (\myStateMachine|Equal4~3_combout\ & ((\myStateMachine|state.writeAddr~regout\) # (\myStateMachine|state.writeData~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|subStates.subState3~regout\,
	datab => \myStateMachine|Equal4~3_combout\,
	datac => \myStateMachine|state.writeAddr~regout\,
	datad => \myStateMachine|state.writeData~regout\,
	combout => \myStateMachine|Selector267~3_combout\);

-- Location: LCCOMB_X9_Y26_N10
\myStateMachine|Selector267~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector267~6_combout\ = (\myStateMachine|Selector267~3_combout\) # ((\myStateMachine|state.functionSet~regout\ & (\myStateMachine|Selector74~0_combout\ & \myStateMachine|subStates.subState3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector267~3_combout\,
	datab => \myStateMachine|state.functionSet~regout\,
	datac => \myStateMachine|Selector74~0_combout\,
	datad => \myStateMachine|subStates.subState3~regout\,
	combout => \myStateMachine|Selector267~6_combout\);

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

-- Location: LCCOMB_X7_Y26_N18
\myStateMachine|counter[1]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[1]~35_combout\ = (\myStateMachine|counter\(1) & (!\myStateMachine|counter[0]~34\)) # (!\myStateMachine|counter\(1) & ((\myStateMachine|counter[0]~34\) # (GND)))
-- \myStateMachine|counter[1]~36\ = CARRY((!\myStateMachine|counter[0]~34\) # (!\myStateMachine|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(1),
	datad => VCC,
	cin => \myStateMachine|counter[0]~34\,
	combout => \myStateMachine|counter[1]~35_combout\,
	cout => \myStateMachine|counter[1]~36\);

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

-- Location: LCCOMB_X6_Y26_N30
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

-- Location: LCCOMB_X7_Y25_N6
\myStateMachine|counter[11]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[11]~64_combout\ = (\myStateMachine|counter\(11) & (!\myStateMachine|counter[10]~63\)) # (!\myStateMachine|counter\(11) & ((\myStateMachine|counter[10]~63\) # (GND)))
-- \myStateMachine|counter[11]~65\ = CARRY((!\myStateMachine|counter[10]~63\) # (!\myStateMachine|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(11),
	datad => VCC,
	cin => \myStateMachine|counter[10]~63\,
	combout => \myStateMachine|counter[11]~64_combout\,
	cout => \myStateMachine|counter[11]~65\);

-- Location: LCCOMB_X7_Y26_N24
\myStateMachine|counter[4]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~41_combout\ = (\myStateMachine|counter\(4) & (\myStateMachine|counter[3]~40\ $ (GND))) # (!\myStateMachine|counter\(4) & (!\myStateMachine|counter[3]~40\ & VCC))
-- \myStateMachine|counter[4]~42\ = CARRY((\myStateMachine|counter\(4) & !\myStateMachine|counter[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(4),
	datad => VCC,
	cin => \myStateMachine|counter[3]~40\,
	combout => \myStateMachine|counter[4]~41_combout\,
	cout => \myStateMachine|counter[4]~42\);

-- Location: LCFF_X7_Y26_N25
\myStateMachine|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[4]~41_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(4));

-- Location: LCCOMB_X7_Y26_N12
\myStateMachine|Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal4~2_combout\ = (!\myStateMachine|counter\(0) & (\myStateMachine|counter\(1) & (\myStateMachine|counter\(4) & \myStateMachine|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(0),
	datab => \myStateMachine|counter\(1),
	datac => \myStateMachine|counter\(4),
	datad => \myStateMachine|counter\(3),
	combout => \myStateMachine|Equal4~2_combout\);

-- Location: LCCOMB_X7_Y25_N20
\myStateMachine|counter[18]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[18]~78_combout\ = (\myStateMachine|counter\(18) & (\myStateMachine|counter[17]~77\ $ (GND))) # (!\myStateMachine|counter\(18) & (!\myStateMachine|counter[17]~77\ & VCC))
-- \myStateMachine|counter[18]~79\ = CARRY((\myStateMachine|counter\(18) & !\myStateMachine|counter[17]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(18),
	datad => VCC,
	cin => \myStateMachine|counter[17]~77\,
	combout => \myStateMachine|counter[18]~78_combout\,
	cout => \myStateMachine|counter[18]~79\);

-- Location: LCFF_X7_Y25_N21
\myStateMachine|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[18]~78_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(18));

-- Location: LCCOMB_X7_Y25_N12
\myStateMachine|counter[14]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[14]~70_combout\ = (\myStateMachine|counter\(14) & (\myStateMachine|counter[13]~69\ $ (GND))) # (!\myStateMachine|counter\(14) & (!\myStateMachine|counter[13]~69\ & VCC))
-- \myStateMachine|counter[14]~71\ = CARRY((\myStateMachine|counter\(14) & !\myStateMachine|counter[13]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(14),
	datad => VCC,
	cin => \myStateMachine|counter[13]~69\,
	combout => \myStateMachine|counter[14]~70_combout\,
	cout => \myStateMachine|counter[14]~71\);

-- Location: LCFF_X7_Y25_N13
\myStateMachine|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[14]~70_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(14));

-- Location: LCCOMB_X5_Y26_N16
\myStateMachine|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal1~0_combout\ = (!\myStateMachine|counter\(19) & (!\myStateMachine|counter\(18) & (!\myStateMachine|counter\(14) & !\myStateMachine|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(19),
	datab => \myStateMachine|counter\(18),
	datac => \myStateMachine|counter\(14),
	datad => \myStateMachine|counter\(9),
	combout => \myStateMachine|Equal1~0_combout\);

-- Location: LCCOMB_X6_Y26_N6
\myStateMachine|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal1~1_combout\ = (!\myStateMachine|counter\(16) & (!\myStateMachine|counter\(17) & (!\myStateMachine|counter\(15) & \myStateMachine|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(16),
	datab => \myStateMachine|counter\(17),
	datac => \myStateMachine|counter\(15),
	datad => \myStateMachine|Equal1~0_combout\,
	combout => \myStateMachine|Equal1~1_combout\);

-- Location: LCCOMB_X6_Y26_N0
\myStateMachine|Equal4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal4~3_combout\ = (\myStateMachine|Equal4~1_combout\ & (\myStateMachine|Equal0~4_combout\ & (\myStateMachine|Equal4~2_combout\ & \myStateMachine|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal4~1_combout\,
	datab => \myStateMachine|Equal0~4_combout\,
	datac => \myStateMachine|Equal4~2_combout\,
	datad => \myStateMachine|Equal1~1_combout\,
	combout => \myStateMachine|Equal4~3_combout\);

-- Location: LCCOMB_X9_Y26_N28
\myStateMachine|state.writeData~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|state.writeData~0_combout\ = (\myStateMachine|Equal4~3_combout\ & ((\myStateMachine|subStates.subState3~regout\ & (\myStateMachine|state.writeAddr~regout\)) # (!\myStateMachine|subStates.subState3~regout\ & 
-- ((\myStateMachine|state.writeData~regout\))))) # (!\myStateMachine|Equal4~3_combout\ & (((\myStateMachine|state.writeData~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.writeAddr~regout\,
	datab => \myStateMachine|Equal4~3_combout\,
	datac => \myStateMachine|state.writeData~regout\,
	datad => \myStateMachine|subStates.subState3~regout\,
	combout => \myStateMachine|state.writeData~0_combout\);

-- Location: LCFF_X9_Y26_N29
\myStateMachine|state.writeData\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|state.writeData~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|state.writeData~regout\);

-- Location: LCCOMB_X11_Y26_N4
\myStateMachine|state.entryModeSet~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|state.entryModeSet~0_combout\ = (\myStateMachine|Selector262~0_combout\ & ((\myStateMachine|state.displayClear~regout\))) # (!\myStateMachine|Selector262~0_combout\ & (\myStateMachine|state.entryModeSet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector262~0_combout\,
	datac => \myStateMachine|state.entryModeSet~regout\,
	datad => \myStateMachine|state.displayClear~regout\,
	combout => \myStateMachine|state.entryModeSet~0_combout\);

-- Location: LCFF_X11_Y26_N5
\myStateMachine|state.entryModeSet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|state.entryModeSet~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|state.entryModeSet~regout\);

-- Location: LCCOMB_X7_Y26_N20
\myStateMachine|counter[2]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[2]~37_combout\ = (\myStateMachine|counter\(2) & (\myStateMachine|counter[1]~36\ $ (GND))) # (!\myStateMachine|counter\(2) & (!\myStateMachine|counter[1]~36\ & VCC))
-- \myStateMachine|counter[2]~38\ = CARRY((\myStateMachine|counter\(2) & !\myStateMachine|counter[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(2),
	datad => VCC,
	cin => \myStateMachine|counter[1]~36\,
	combout => \myStateMachine|counter[2]~37_combout\,
	cout => \myStateMachine|counter[2]~38\);

-- Location: LCFF_X7_Y26_N21
\myStateMachine|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[2]~37_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(2));

-- Location: LCCOMB_X7_Y26_N8
\myStateMachine|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal4~0_combout\ = (!\myStateMachine|counter\(11) & (!\myStateMachine|counter\(10) & (!\myStateMachine|counter\(2) & !\myStateMachine|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(11),
	datab => \myStateMachine|counter\(10),
	datac => \myStateMachine|counter\(2),
	datad => \myStateMachine|counter\(8),
	combout => \myStateMachine|Equal4~0_combout\);

-- Location: LCCOMB_X7_Y26_N2
\myStateMachine|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal4~1_combout\ = (!\myStateMachine|counter\(12) & (!\myStateMachine|counter\(7) & (\myStateMachine|Equal4~0_combout\ & !\myStateMachine|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(12),
	datab => \myStateMachine|counter\(7),
	datac => \myStateMachine|Equal4~0_combout\,
	datad => \myStateMachine|counter\(6),
	combout => \myStateMachine|Equal4~1_combout\);

-- Location: LCCOMB_X6_Y26_N18
\myStateMachine|Equal4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal4~4_combout\ = (\myStateMachine|Equal1~1_combout\ & (\myStateMachine|Equal0~4_combout\ & \myStateMachine|Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal1~1_combout\,
	datab => \myStateMachine|Equal0~4_combout\,
	datad => \myStateMachine|Equal4~1_combout\,
	combout => \myStateMachine|Equal4~4_combout\);

-- Location: LCCOMB_X9_Y26_N6
\myStateMachine|Selector265~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector265~0_combout\ = (\myStateMachine|state.writeData~regout\ & (\myStateMachine|Equal4~3_combout\ & \myStateMachine|subStates.subState3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|state.writeData~regout\,
	datac => \myStateMachine|Equal4~3_combout\,
	datad => \myStateMachine|subStates.subState3~regout\,
	combout => \myStateMachine|Selector265~0_combout\);

-- Location: LCFF_X9_Y26_N7
\myStateMachine|state.cursorLogicState\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector265~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|state.cursorLogicState~regout\);

-- Location: LCCOMB_X6_Y26_N28
\myStateMachine|Selector266~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector266~0_combout\ = (\myStateMachine|state.cursorLogicState~regout\) # ((\myStateMachine|state.shortDelay~regout\ & ((!\myStateMachine|Equal4~4_combout\) # (!\myStateMachine|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal6~0_combout\,
	datab => \myStateMachine|Equal4~4_combout\,
	datac => \myStateMachine|state.shortDelay~regout\,
	datad => \myStateMachine|state.cursorLogicState~regout\,
	combout => \myStateMachine|Selector266~0_combout\);

-- Location: LCFF_X6_Y26_N29
\myStateMachine|state.shortDelay\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector266~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|state.shortDelay~regout\);

-- Location: LCCOMB_X9_Y26_N14
\myStateMachine|WideOr11\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|WideOr11~combout\ = ((\myStateMachine|state.shortDelay~regout\) # (\myStateMachine|state.cursorLogicState~regout\)) # (!\myStateMachine|state.powerOn~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.powerOn~regout\,
	datab => \myStateMachine|state.shortDelay~regout\,
	datad => \myStateMachine|state.cursorLogicState~regout\,
	combout => \myStateMachine|WideOr11~combout\);

-- Location: LCCOMB_X9_Y26_N0
\myStateMachine|subStates.subState2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|subStates.subState2~0_combout\ = (\myStateMachine|WideOr11~combout\ & (((\myStateMachine|subStates.subState2~regout\)))) # (!\myStateMachine|WideOr11~combout\ & (((!\myStateMachine|Equal4~3_combout\ & 
-- \myStateMachine|subStates.subState2~regout\)) # (!\myStateMachine|subStates.00~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|subStates.00~regout\,
	datab => \myStateMachine|Equal4~3_combout\,
	datac => \myStateMachine|subStates.subState2~regout\,
	datad => \myStateMachine|WideOr11~combout\,
	combout => \myStateMachine|subStates.subState2~0_combout\);

-- Location: LCFF_X9_Y26_N1
\myStateMachine|subStates.subState2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|subStates.subState2~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|subStates.subState2~regout\);

-- Location: LCCOMB_X11_Y26_N2
\myStateMachine|displayOnOff~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|displayOnOff~0_combout\ = (\myStateMachine|displayOnOff~regout\) # ((\myStateMachine|state.entryModeSet~regout\ & \myStateMachine|subStates.subState2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|state.entryModeSet~regout\,
	datac => \myStateMachine|displayOnOff~regout\,
	datad => \myStateMachine|subStates.subState2~regout\,
	combout => \myStateMachine|displayOnOff~0_combout\);

-- Location: LCFF_X11_Y26_N3
\myStateMachine|displayOnOff\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|displayOnOff~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|displayOnOff~regout\);

-- Location: LCCOMB_X6_Y26_N2
\myStateMachine|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal2~0_combout\ = (!\myStateMachine|counter\(12) & (\myStateMachine|counter\(7) & (!\myStateMachine|counter\(10) & !\myStateMachine|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(12),
	datab => \myStateMachine|counter\(7),
	datac => \myStateMachine|counter\(10),
	datad => \myStateMachine|counter\(3),
	combout => \myStateMachine|Equal2~0_combout\);

-- Location: LCCOMB_X6_Y26_N20
\myStateMachine|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal2~1_combout\ = (\myStateMachine|Equal1~1_combout\ & (\myStateMachine|Equal2~0_combout\ & (\myStateMachine|Equal1~3_combout\ & \myStateMachine|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal1~1_combout\,
	datab => \myStateMachine|Equal2~0_combout\,
	datac => \myStateMachine|Equal1~3_combout\,
	datad => \myStateMachine|Equal0~4_combout\,
	combout => \myStateMachine|Equal2~1_combout\);

-- Location: LCCOMB_X11_Y26_N24
\myStateMachine|Selector263~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector263~3_combout\ = (\myStateMachine|Selector263~2_combout\) # ((\myStateMachine|displayOnOff~regout\ & (\myStateMachine|Equal2~1_combout\ & \myStateMachine|Selector269~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector263~2_combout\,
	datab => \myStateMachine|displayOnOff~regout\,
	datac => \myStateMachine|Equal2~1_combout\,
	datad => \myStateMachine|Selector269~0_combout\,
	combout => \myStateMachine|Selector263~3_combout\);

-- Location: LCFF_X11_Y26_N25
\myStateMachine|state.writeAddr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector263~3_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|state.writeAddr~regout\);

-- Location: LCCOMB_X9_Y26_N18
\myStateMachine|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|WideOr1~0_combout\ = (!\myStateMachine|state.writeData~regout\ & !\myStateMachine|state.writeAddr~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|state.writeData~regout\,
	datac => \myStateMachine|state.writeAddr~regout\,
	combout => \myStateMachine|WideOr1~0_combout\);

-- Location: LCCOMB_X8_Y26_N30
\myStateMachine|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal3~2_combout\ = (!\myStateMachine|counter\(19) & (!\myStateMachine|counter\(18) & (!\myStateMachine|counter\(9) & \myStateMachine|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(19),
	datab => \myStateMachine|counter\(18),
	datac => \myStateMachine|counter\(9),
	datad => \myStateMachine|counter\(4),
	combout => \myStateMachine|Equal3~2_combout\);

-- Location: LCCOMB_X8_Y26_N0
\myStateMachine|Equal3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal3~4_combout\ = (\myStateMachine|Equal3~3_combout\ & \myStateMachine|Equal3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal3~3_combout\,
	datad => \myStateMachine|Equal3~2_combout\,
	combout => \myStateMachine|Equal3~4_combout\);

-- Location: LCCOMB_X8_Y26_N18
\myStateMachine|Selector262~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector262~0_combout\ = (\myStateMachine|Equal0~6_combout\ & (\myStateMachine|Equal3~4_combout\ & (\myStateMachine|Equal0~4_combout\ & \myStateMachine|subStates.subState3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal0~6_combout\,
	datab => \myStateMachine|Equal3~4_combout\,
	datac => \myStateMachine|Equal0~4_combout\,
	datad => \myStateMachine|subStates.subState3~regout\,
	combout => \myStateMachine|Selector262~0_combout\);

-- Location: LCCOMB_X11_Y26_N28
\myStateMachine|Selector148~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector148~1_combout\ = (!\myStateMachine|state.displayClear~regout\ & !\myStateMachine|state.entryModeSet~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|state.displayClear~regout\,
	datac => \myStateMachine|state.entryModeSet~regout\,
	combout => \myStateMachine|Selector148~1_combout\);

-- Location: LCCOMB_X10_Y26_N4
\myStateMachine|Selector267~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector267~4_combout\ = (\myStateMachine|Equal2~1_combout\ & ((\myStateMachine|Selector269~0_combout\) # ((\myStateMachine|Selector262~0_combout\ & !\myStateMachine|Selector148~1_combout\)))) # (!\myStateMachine|Equal2~1_combout\ & 
-- (((\myStateMachine|Selector262~0_combout\ & !\myStateMachine|Selector148~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal2~1_combout\,
	datab => \myStateMachine|Selector269~0_combout\,
	datac => \myStateMachine|Selector262~0_combout\,
	datad => \myStateMachine|Selector148~1_combout\,
	combout => \myStateMachine|Selector267~4_combout\);

-- Location: LCCOMB_X9_Y26_N24
\myStateMachine|Selector267~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector267~5_combout\ = (!\myStateMachine|Selector267~6_combout\ & (!\myStateMachine|Selector267~4_combout\ & ((\myStateMachine|subStates.00~regout\) # (!\myStateMachine|WideOr11~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector267~6_combout\,
	datab => \myStateMachine|WideOr11~combout\,
	datac => \myStateMachine|subStates.00~regout\,
	datad => \myStateMachine|Selector267~4_combout\,
	combout => \myStateMachine|Selector267~5_combout\);

-- Location: LCFF_X9_Y26_N25
\myStateMachine|subStates.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector267~5_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|subStates.00~regout\);

-- Location: LCCOMB_X11_Y26_N6
\myStateMachine|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector35~0_combout\ = (!\myStateMachine|state.displaySet~regout\ & (!\myStateMachine|state.functionSet~regout\ & (!\myStateMachine|state.entryModeSet~regout\ & !\myStateMachine|state.displayClear~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.displaySet~regout\,
	datab => \myStateMachine|state.functionSet~regout\,
	datac => \myStateMachine|state.entryModeSet~regout\,
	datad => \myStateMachine|state.displayClear~regout\,
	combout => \myStateMachine|Selector35~0_combout\);

-- Location: LCCOMB_X9_Y26_N2
\myStateMachine|counter[4]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~53_combout\ = (!\myStateMachine|state.cursorLogicState~regout\ & ((\myStateMachine|subStates.00~regout\) # ((\myStateMachine|WideOr1~0_combout\ & \myStateMachine|Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.cursorLogicState~regout\,
	datab => \myStateMachine|WideOr1~0_combout\,
	datac => \myStateMachine|subStates.00~regout\,
	datad => \myStateMachine|Selector35~0_combout\,
	combout => \myStateMachine|counter[4]~53_combout\);

-- Location: LCFF_X7_Y25_N7
\myStateMachine|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[11]~64_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(11));

-- Location: LCCOMB_X7_Y26_N0
\myStateMachine|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal1~2_combout\ = (!\myStateMachine|counter\(0) & (!\myStateMachine|counter\(1) & (!\myStateMachine|counter\(4) & \myStateMachine|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(0),
	datab => \myStateMachine|counter\(1),
	datac => \myStateMachine|counter\(4),
	datad => \myStateMachine|counter\(6),
	combout => \myStateMachine|Equal1~2_combout\);

-- Location: LCCOMB_X6_Y26_N24
\myStateMachine|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal1~3_combout\ = (\myStateMachine|counter\(8) & (\myStateMachine|counter\(11) & (\myStateMachine|Equal1~2_combout\ & \myStateMachine|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(8),
	datab => \myStateMachine|counter\(11),
	datac => \myStateMachine|Equal1~2_combout\,
	datad => \myStateMachine|counter\(2),
	combout => \myStateMachine|Equal1~3_combout\);

-- Location: LCCOMB_X6_Y26_N16
\myStateMachine|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal1~5_combout\ = (\myStateMachine|Equal1~1_combout\ & (\myStateMachine|Equal1~4_combout\ & (\myStateMachine|Equal1~3_combout\ & \myStateMachine|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal1~1_combout\,
	datab => \myStateMachine|Equal1~4_combout\,
	datac => \myStateMachine|Equal1~3_combout\,
	datad => \myStateMachine|Equal0~4_combout\,
	combout => \myStateMachine|Equal1~5_combout\);

-- Location: LCCOMB_X8_Y26_N12
\myStateMachine|counter[4]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~45_combout\ = (\myStateMachine|functionSetCase.00~regout\ & (\myStateMachine|state.powerOn~regout\ & (\myStateMachine|Equal1~5_combout\ & \myStateMachine|Selector267~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|functionSetCase.00~regout\,
	datab => \myStateMachine|state.powerOn~regout\,
	datac => \myStateMachine|Equal1~5_combout\,
	datad => \myStateMachine|Selector267~2_combout\,
	combout => \myStateMachine|counter[4]~45_combout\);

-- Location: LCCOMB_X10_Y26_N6
\myStateMachine|functionSetCase~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|functionSetCase~14_combout\ = (\myStateMachine|functionSetCase.00~regout\) # ((\myStateMachine|Selector262~0_combout\ & \myStateMachine|state.functionSet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector262~0_combout\,
	datac => \myStateMachine|functionSetCase.00~regout\,
	datad => \myStateMachine|state.functionSet~regout\,
	combout => \myStateMachine|functionSetCase~14_combout\);

-- Location: LCFF_X10_Y26_N7
\myStateMachine|functionSetCase.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|functionSetCase~14_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|functionSetCase.00~regout\);

-- Location: LCCOMB_X10_Y26_N8
\myStateMachine|counter[4]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~49_combout\ = (\myStateMachine|Selector262~0_combout\ & (((\myStateMachine|state.functionSet~regout\ & !\myStateMachine|functionSetCase.00~regout\)) # (!\myStateMachine|Selector148~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.functionSet~regout\,
	datab => \myStateMachine|Selector148~1_combout\,
	datac => \myStateMachine|Selector262~0_combout\,
	datad => \myStateMachine|functionSetCase.00~regout\,
	combout => \myStateMachine|counter[4]~49_combout\);

-- Location: LCCOMB_X10_Y26_N26
\myStateMachine|counter[4]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~46_combout\ = (!\myStateMachine|state.displaySet~regout\ & (((\myStateMachine|functionSetCase.00~regout\ & \myStateMachine|state.functionSet~regout\)) # (!\myStateMachine|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|functionSetCase.00~regout\,
	datab => \myStateMachine|WideOr1~0_combout\,
	datac => \myStateMachine|state.functionSet~regout\,
	datad => \myStateMachine|state.displaySet~regout\,
	combout => \myStateMachine|counter[4]~46_combout\);

-- Location: LCCOMB_X10_Y26_N28
\myStateMachine|counter[4]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~47_combout\ = (!\myStateMachine|state.shortDelay~regout\ & ((\myStateMachine|counter[4]~46_combout\) # ((!\myStateMachine|Selector35~0_combout\ & !\myStateMachine|subStates.subState3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector35~0_combout\,
	datab => \myStateMachine|counter[4]~46_combout\,
	datac => \myStateMachine|state.shortDelay~regout\,
	datad => \myStateMachine|subStates.subState3~regout\,
	combout => \myStateMachine|counter[4]~47_combout\);

-- Location: LCCOMB_X10_Y26_N22
\myStateMachine|counter[4]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~48_combout\ = (\myStateMachine|Equal4~3_combout\ & ((\myStateMachine|counter[4]~47_combout\) # ((\myStateMachine|Selector269~0_combout\ & \myStateMachine|Equal2~1_combout\)))) # (!\myStateMachine|Equal4~3_combout\ & 
-- (\myStateMachine|Selector269~0_combout\ & (\myStateMachine|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal4~3_combout\,
	datab => \myStateMachine|Selector269~0_combout\,
	datac => \myStateMachine|Equal2~1_combout\,
	datad => \myStateMachine|counter[4]~47_combout\,
	combout => \myStateMachine|counter[4]~48_combout\);

-- Location: LCCOMB_X10_Y26_N18
\myStateMachine|counter[4]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~50_combout\ = (\myStateMachine|counter[4]~48_combout\) # ((!\myStateMachine|Selector269~0_combout\ & ((\myStateMachine|Selector263~1_combout\) # (\myStateMachine|counter[4]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector263~1_combout\,
	datab => \myStateMachine|counter[4]~49_combout\,
	datac => \myStateMachine|Selector269~0_combout\,
	datad => \myStateMachine|counter[4]~48_combout\,
	combout => \myStateMachine|counter[4]~50_combout\);

-- Location: LCCOMB_X7_Y24_N20
\myStateMachine|counter[4]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[4]~52_combout\ = (\myStateMachine|Selector259~0_combout\) # ((\myStateMachine|counter[4]~45_combout\) # ((\myStateMachine|counter[4]~51_combout\ & \myStateMachine|counter[4]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter[4]~51_combout\,
	datab => \myStateMachine|Selector259~0_combout\,
	datac => \myStateMachine|counter[4]~45_combout\,
	datad => \myStateMachine|counter[4]~50_combout\,
	combout => \myStateMachine|counter[4]~52_combout\);

-- Location: LCFF_X7_Y26_N19
\myStateMachine|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[1]~35_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(1));

-- Location: LCCOMB_X7_Y26_N22
\myStateMachine|counter[3]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[3]~39_combout\ = (\myStateMachine|counter\(3) & (!\myStateMachine|counter[2]~38\)) # (!\myStateMachine|counter\(3) & ((\myStateMachine|counter[2]~38\) # (GND)))
-- \myStateMachine|counter[3]~40\ = CARRY((!\myStateMachine|counter[2]~38\) # (!\myStateMachine|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(3),
	datad => VCC,
	cin => \myStateMachine|counter[2]~38\,
	combout => \myStateMachine|counter[3]~39_combout\,
	cout => \myStateMachine|counter[3]~40\);

-- Location: LCFF_X7_Y26_N23
\myStateMachine|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[3]~39_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(3));

-- Location: LCCOMB_X7_Y26_N26
\myStateMachine|counter[5]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[5]~43_combout\ = (\myStateMachine|counter\(5) & (!\myStateMachine|counter[4]~42\)) # (!\myStateMachine|counter\(5) & ((\myStateMachine|counter[4]~42\) # (GND)))
-- \myStateMachine|counter[5]~44\ = CARRY((!\myStateMachine|counter[4]~42\) # (!\myStateMachine|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(5),
	datad => VCC,
	cin => \myStateMachine|counter[4]~42\,
	combout => \myStateMachine|counter[5]~43_combout\,
	cout => \myStateMachine|counter[5]~44\);

-- Location: LCFF_X7_Y26_N27
\myStateMachine|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[5]~43_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(5));

-- Location: LCCOMB_X7_Y26_N28
\myStateMachine|counter[6]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[6]~54_combout\ = (\myStateMachine|counter\(6) & (\myStateMachine|counter[5]~44\ $ (GND))) # (!\myStateMachine|counter\(6) & (!\myStateMachine|counter[5]~44\ & VCC))
-- \myStateMachine|counter[6]~55\ = CARRY((\myStateMachine|counter\(6) & !\myStateMachine|counter[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(6),
	datad => VCC,
	cin => \myStateMachine|counter[5]~44\,
	combout => \myStateMachine|counter[6]~54_combout\,
	cout => \myStateMachine|counter[6]~55\);

-- Location: LCFF_X7_Y26_N29
\myStateMachine|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[6]~54_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(6));

-- Location: LCCOMB_X7_Y26_N30
\myStateMachine|counter[7]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[7]~56_combout\ = (\myStateMachine|counter\(7) & (!\myStateMachine|counter[6]~55\)) # (!\myStateMachine|counter\(7) & ((\myStateMachine|counter[6]~55\) # (GND)))
-- \myStateMachine|counter[7]~57\ = CARRY((!\myStateMachine|counter[6]~55\) # (!\myStateMachine|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(7),
	datad => VCC,
	cin => \myStateMachine|counter[6]~55\,
	combout => \myStateMachine|counter[7]~56_combout\,
	cout => \myStateMachine|counter[7]~57\);

-- Location: LCFF_X7_Y26_N31
\myStateMachine|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[7]~56_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(7));

-- Location: LCCOMB_X7_Y25_N0
\myStateMachine|counter[8]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[8]~58_combout\ = (\myStateMachine|counter\(8) & (\myStateMachine|counter[7]~57\ $ (GND))) # (!\myStateMachine|counter\(8) & (!\myStateMachine|counter[7]~57\ & VCC))
-- \myStateMachine|counter[8]~59\ = CARRY((\myStateMachine|counter\(8) & !\myStateMachine|counter[7]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(8),
	datad => VCC,
	cin => \myStateMachine|counter[7]~57\,
	combout => \myStateMachine|counter[8]~58_combout\,
	cout => \myStateMachine|counter[8]~59\);

-- Location: LCFF_X7_Y25_N1
\myStateMachine|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[8]~58_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(8));

-- Location: LCCOMB_X7_Y25_N2
\myStateMachine|counter[9]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[9]~60_combout\ = (\myStateMachine|counter\(9) & (!\myStateMachine|counter[8]~59\)) # (!\myStateMachine|counter\(9) & ((\myStateMachine|counter[8]~59\) # (GND)))
-- \myStateMachine|counter[9]~61\ = CARRY((!\myStateMachine|counter[8]~59\) # (!\myStateMachine|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(9),
	datad => VCC,
	cin => \myStateMachine|counter[8]~59\,
	combout => \myStateMachine|counter[9]~60_combout\,
	cout => \myStateMachine|counter[9]~61\);

-- Location: LCFF_X7_Y25_N3
\myStateMachine|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[9]~60_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(9));

-- Location: LCCOMB_X7_Y25_N4
\myStateMachine|counter[10]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[10]~62_combout\ = (\myStateMachine|counter\(10) & (\myStateMachine|counter[9]~61\ $ (GND))) # (!\myStateMachine|counter\(10) & (!\myStateMachine|counter[9]~61\ & VCC))
-- \myStateMachine|counter[10]~63\ = CARRY((\myStateMachine|counter\(10) & !\myStateMachine|counter[9]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(10),
	datad => VCC,
	cin => \myStateMachine|counter[9]~61\,
	combout => \myStateMachine|counter[10]~62_combout\,
	cout => \myStateMachine|counter[10]~63\);

-- Location: LCFF_X7_Y25_N5
\myStateMachine|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[10]~62_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(10));

-- Location: LCCOMB_X7_Y25_N8
\myStateMachine|counter[12]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[12]~66_combout\ = (\myStateMachine|counter\(12) & (\myStateMachine|counter[11]~65\ $ (GND))) # (!\myStateMachine|counter\(12) & (!\myStateMachine|counter[11]~65\ & VCC))
-- \myStateMachine|counter[12]~67\ = CARRY((\myStateMachine|counter\(12) & !\myStateMachine|counter[11]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(12),
	datad => VCC,
	cin => \myStateMachine|counter[11]~65\,
	combout => \myStateMachine|counter[12]~66_combout\,
	cout => \myStateMachine|counter[12]~67\);

-- Location: LCFF_X7_Y25_N9
\myStateMachine|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[12]~66_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(12));

-- Location: LCCOMB_X7_Y25_N14
\myStateMachine|counter[15]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[15]~72_combout\ = (\myStateMachine|counter\(15) & (!\myStateMachine|counter[14]~71\)) # (!\myStateMachine|counter\(15) & ((\myStateMachine|counter[14]~71\) # (GND)))
-- \myStateMachine|counter[15]~73\ = CARRY((!\myStateMachine|counter[14]~71\) # (!\myStateMachine|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(15),
	datad => VCC,
	cin => \myStateMachine|counter[14]~71\,
	combout => \myStateMachine|counter[15]~72_combout\,
	cout => \myStateMachine|counter[15]~73\);

-- Location: LCFF_X7_Y25_N15
\myStateMachine|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[15]~72_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(15));

-- Location: LCCOMB_X7_Y25_N18
\myStateMachine|counter[17]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[17]~76_combout\ = (\myStateMachine|counter\(17) & (!\myStateMachine|counter[16]~75\)) # (!\myStateMachine|counter\(17) & ((\myStateMachine|counter[16]~75\) # (GND)))
-- \myStateMachine|counter[17]~77\ = CARRY((!\myStateMachine|counter[16]~75\) # (!\myStateMachine|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(17),
	datad => VCC,
	cin => \myStateMachine|counter[16]~75\,
	combout => \myStateMachine|counter[17]~76_combout\,
	cout => \myStateMachine|counter[17]~77\);

-- Location: LCFF_X7_Y25_N19
\myStateMachine|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[17]~76_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(17));

-- Location: LCCOMB_X7_Y25_N22
\myStateMachine|counter[19]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[19]~80_combout\ = (\myStateMachine|counter\(19) & (!\myStateMachine|counter[18]~79\)) # (!\myStateMachine|counter\(19) & ((\myStateMachine|counter[18]~79\) # (GND)))
-- \myStateMachine|counter[19]~81\ = CARRY((!\myStateMachine|counter[18]~79\) # (!\myStateMachine|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(19),
	datad => VCC,
	cin => \myStateMachine|counter[18]~79\,
	combout => \myStateMachine|counter[19]~80_combout\,
	cout => \myStateMachine|counter[19]~81\);

-- Location: LCFF_X7_Y25_N23
\myStateMachine|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[19]~80_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(19));

-- Location: LCCOMB_X7_Y25_N26
\myStateMachine|counter[21]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[21]~84_combout\ = (\myStateMachine|counter\(21) & (!\myStateMachine|counter[20]~83\)) # (!\myStateMachine|counter\(21) & ((\myStateMachine|counter[20]~83\) # (GND)))
-- \myStateMachine|counter[21]~85\ = CARRY((!\myStateMachine|counter[20]~83\) # (!\myStateMachine|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(21),
	datad => VCC,
	cin => \myStateMachine|counter[20]~83\,
	combout => \myStateMachine|counter[21]~84_combout\,
	cout => \myStateMachine|counter[21]~85\);

-- Location: LCFF_X7_Y25_N27
\myStateMachine|counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[21]~84_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(21));

-- Location: LCCOMB_X7_Y25_N28
\myStateMachine|counter[22]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[22]~86_combout\ = (\myStateMachine|counter\(22) & (\myStateMachine|counter[21]~85\ $ (GND))) # (!\myStateMachine|counter\(22) & (!\myStateMachine|counter[21]~85\ & VCC))
-- \myStateMachine|counter[22]~87\ = CARRY((\myStateMachine|counter\(22) & !\myStateMachine|counter[21]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(22),
	datad => VCC,
	cin => \myStateMachine|counter[21]~85\,
	combout => \myStateMachine|counter[22]~86_combout\,
	cout => \myStateMachine|counter[22]~87\);

-- Location: LCFF_X7_Y25_N29
\myStateMachine|counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[22]~86_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(22));

-- Location: LCCOMB_X7_Y25_N30
\myStateMachine|counter[23]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[23]~88_combout\ = (\myStateMachine|counter\(23) & (!\myStateMachine|counter[22]~87\)) # (!\myStateMachine|counter\(23) & ((\myStateMachine|counter[22]~87\) # (GND)))
-- \myStateMachine|counter[23]~89\ = CARRY((!\myStateMachine|counter[22]~87\) # (!\myStateMachine|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(23),
	datad => VCC,
	cin => \myStateMachine|counter[22]~87\,
	combout => \myStateMachine|counter[23]~88_combout\,
	cout => \myStateMachine|counter[23]~89\);

-- Location: LCFF_X7_Y25_N31
\myStateMachine|counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[23]~88_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(23));

-- Location: LCCOMB_X7_Y24_N0
\myStateMachine|counter[24]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[24]~90_combout\ = (\myStateMachine|counter\(24) & (\myStateMachine|counter[23]~89\ $ (GND))) # (!\myStateMachine|counter\(24) & (!\myStateMachine|counter[23]~89\ & VCC))
-- \myStateMachine|counter[24]~91\ = CARRY((\myStateMachine|counter\(24) & !\myStateMachine|counter[23]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(24),
	datad => VCC,
	cin => \myStateMachine|counter[23]~89\,
	combout => \myStateMachine|counter[24]~90_combout\,
	cout => \myStateMachine|counter[24]~91\);

-- Location: LCFF_X7_Y24_N1
\myStateMachine|counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[24]~90_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(24));

-- Location: LCCOMB_X7_Y24_N2
\myStateMachine|counter[25]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[25]~92_combout\ = (\myStateMachine|counter\(25) & (!\myStateMachine|counter[24]~91\)) # (!\myStateMachine|counter\(25) & ((\myStateMachine|counter[24]~91\) # (GND)))
-- \myStateMachine|counter[25]~93\ = CARRY((!\myStateMachine|counter[24]~91\) # (!\myStateMachine|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(25),
	datad => VCC,
	cin => \myStateMachine|counter[24]~91\,
	combout => \myStateMachine|counter[25]~92_combout\,
	cout => \myStateMachine|counter[25]~93\);

-- Location: LCFF_X7_Y24_N3
\myStateMachine|counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[25]~92_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(25));

-- Location: LCCOMB_X7_Y24_N4
\myStateMachine|counter[26]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[26]~94_combout\ = (\myStateMachine|counter\(26) & (\myStateMachine|counter[25]~93\ $ (GND))) # (!\myStateMachine|counter\(26) & (!\myStateMachine|counter[25]~93\ & VCC))
-- \myStateMachine|counter[26]~95\ = CARRY((\myStateMachine|counter\(26) & !\myStateMachine|counter[25]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(26),
	datad => VCC,
	cin => \myStateMachine|counter[25]~93\,
	combout => \myStateMachine|counter[26]~94_combout\,
	cout => \myStateMachine|counter[26]~95\);

-- Location: LCFF_X7_Y24_N5
\myStateMachine|counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[26]~94_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(26));

-- Location: LCCOMB_X7_Y24_N6
\myStateMachine|counter[27]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[27]~96_combout\ = (\myStateMachine|counter\(27) & (!\myStateMachine|counter[26]~95\)) # (!\myStateMachine|counter\(27) & ((\myStateMachine|counter[26]~95\) # (GND)))
-- \myStateMachine|counter[27]~97\ = CARRY((!\myStateMachine|counter[26]~95\) # (!\myStateMachine|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(27),
	datad => VCC,
	cin => \myStateMachine|counter[26]~95\,
	combout => \myStateMachine|counter[27]~96_combout\,
	cout => \myStateMachine|counter[27]~97\);

-- Location: LCCOMB_X7_Y24_N8
\myStateMachine|counter[28]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[28]~98_combout\ = (\myStateMachine|counter\(28) & (\myStateMachine|counter[27]~97\ $ (GND))) # (!\myStateMachine|counter\(28) & (!\myStateMachine|counter[27]~97\ & VCC))
-- \myStateMachine|counter[28]~99\ = CARRY((\myStateMachine|counter\(28) & !\myStateMachine|counter[27]~97\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|counter\(28),
	datad => VCC,
	cin => \myStateMachine|counter[27]~97\,
	combout => \myStateMachine|counter[28]~98_combout\,
	cout => \myStateMachine|counter[28]~99\);

-- Location: LCFF_X7_Y24_N9
\myStateMachine|counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[28]~98_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(28));

-- Location: LCFF_X7_Y24_N7
\myStateMachine|counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[27]~96_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(27));

-- Location: LCCOMB_X7_Y24_N30
\myStateMachine|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal0~2_combout\ = (!\myStateMachine|counter\(29) & (!\myStateMachine|counter\(28) & (!\myStateMachine|counter\(26) & !\myStateMachine|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(29),
	datab => \myStateMachine|counter\(28),
	datac => \myStateMachine|counter\(26),
	datad => \myStateMachine|counter\(27),
	combout => \myStateMachine|Equal0~2_combout\);

-- Location: LCCOMB_X7_Y24_N12
\myStateMachine|counter[30]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|counter[30]~102_combout\ = (\myStateMachine|counter\(30) & (\myStateMachine|counter[29]~101\ $ (GND))) # (!\myStateMachine|counter\(30) & (!\myStateMachine|counter[29]~101\ & VCC))
-- \myStateMachine|counter[30]~103\ = CARRY((\myStateMachine|counter\(30) & !\myStateMachine|counter[29]~101\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(30),
	datad => VCC,
	cin => \myStateMachine|counter[29]~101\,
	combout => \myStateMachine|counter[30]~102_combout\,
	cout => \myStateMachine|counter[30]~103\);

-- Location: LCFF_X7_Y24_N15
\myStateMachine|counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[31]~104_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(31));

-- Location: LCFF_X7_Y24_N13
\myStateMachine|counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|counter[30]~102_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myStateMachine|counter[4]~52_combout\,
	ena => \myStateMachine|counter[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|counter\(30));

-- Location: LCCOMB_X7_Y24_N24
\myStateMachine|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal0~3_combout\ = (!\myStateMachine|counter\(32) & (!\myStateMachine|counter\(31) & !\myStateMachine|counter\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(32),
	datac => \myStateMachine|counter\(31),
	datad => \myStateMachine|counter\(30),
	combout => \myStateMachine|Equal0~3_combout\);

-- Location: LCCOMB_X7_Y24_N28
\myStateMachine|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal0~1_combout\ = (!\myStateMachine|counter\(22) & (!\myStateMachine|counter\(25) & (!\myStateMachine|counter\(23) & !\myStateMachine|counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(22),
	datab => \myStateMachine|counter\(25),
	datac => \myStateMachine|counter\(23),
	datad => \myStateMachine|counter\(24),
	combout => \myStateMachine|Equal0~1_combout\);

-- Location: LCCOMB_X7_Y24_N26
\myStateMachine|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal0~4_combout\ = (\myStateMachine|Equal0~0_combout\ & (\myStateMachine|Equal0~2_combout\ & (\myStateMachine|Equal0~3_combout\ & \myStateMachine|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal0~0_combout\,
	datab => \myStateMachine|Equal0~2_combout\,
	datac => \myStateMachine|Equal0~3_combout\,
	datad => \myStateMachine|Equal0~1_combout\,
	combout => \myStateMachine|Equal0~4_combout\);

-- Location: LCCOMB_X5_Y26_N26
\myStateMachine|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal0~8_combout\ = (!\myStateMachine|counter\(15) & (\myStateMachine|counter\(18) & (\myStateMachine|counter\(19) & \myStateMachine|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(15),
	datab => \myStateMachine|counter\(18),
	datac => \myStateMachine|counter\(19),
	datad => \myStateMachine|counter\(9),
	combout => \myStateMachine|Equal0~8_combout\);

-- Location: LCCOMB_X5_Y26_N4
\myStateMachine|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal0~9_combout\ = (\myStateMachine|Equal0~7_combout\ & (\myStateMachine|Equal0~8_combout\ & (!\myStateMachine|counter\(4) & \myStateMachine|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal0~7_combout\,
	datab => \myStateMachine|Equal0~8_combout\,
	datac => \myStateMachine|counter\(4),
	datad => \myStateMachine|counter\(6),
	combout => \myStateMachine|Equal0~9_combout\);

-- Location: LCCOMB_X8_Y26_N2
\myStateMachine|state.powerOn~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|state.powerOn~0_combout\ = (\myStateMachine|state.powerOn~regout\) # ((\myStateMachine|Equal0~6_combout\ & (\myStateMachine|Equal0~4_combout\ & \myStateMachine|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal0~6_combout\,
	datab => \myStateMachine|Equal0~4_combout\,
	datac => \myStateMachine|state.powerOn~regout\,
	datad => \myStateMachine|Equal0~9_combout\,
	combout => \myStateMachine|state.powerOn~0_combout\);

-- Location: LCFF_X8_Y26_N3
\myStateMachine|state.powerOn\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|state.powerOn~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|state.powerOn~regout\);

-- Location: LCCOMB_X8_Y26_N6
\myStateMachine|Selector259~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector259~0_combout\ = (\myStateMachine|Equal0~6_combout\ & (!\myStateMachine|state.powerOn~regout\ & (\myStateMachine|Equal0~4_combout\ & \myStateMachine|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal0~6_combout\,
	datab => \myStateMachine|state.powerOn~regout\,
	datac => \myStateMachine|Equal0~4_combout\,
	datad => \myStateMachine|Equal0~9_combout\,
	combout => \myStateMachine|Selector259~0_combout\);

-- Location: LCCOMB_X8_Y26_N26
\myStateMachine|Selector76~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector76~0_combout\ = (\myStateMachine|Selector77~0_combout\ & (\myStateMachine|Selector262~0_combout\ & ((!\myStateMachine|functionSetCase.00~regout\)))) # (!\myStateMachine|Selector77~0_combout\ & 
-- ((\myStateMachine|functionSetCase.functionSet2~regout\) # ((\myStateMachine|Selector262~0_combout\ & !\myStateMachine|functionSetCase.00~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector77~0_combout\,
	datab => \myStateMachine|Selector262~0_combout\,
	datac => \myStateMachine|functionSetCase.functionSet2~regout\,
	datad => \myStateMachine|functionSetCase.00~regout\,
	combout => \myStateMachine|Selector76~0_combout\);

-- Location: LCFF_X8_Y26_N27
\myStateMachine|functionSetCase.functionSet2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector76~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|state.functionSet~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|functionSetCase.functionSet2~regout\);

-- Location: LCCOMB_X8_Y26_N16
\myStateMachine|Selector77~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector77~1_combout\ = (\myStateMachine|Equal1~5_combout\ & ((\myStateMachine|subStates.subState3~regout\ & (\myStateMachine|functionSetCase.functionSet2~regout\)) # (!\myStateMachine|subStates.subState3~regout\ & 
-- ((\myStateMachine|functionSetCase.functionSet3~regout\))))) # (!\myStateMachine|Equal1~5_combout\ & (((\myStateMachine|functionSetCase.functionSet3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal1~5_combout\,
	datab => \myStateMachine|functionSetCase.functionSet2~regout\,
	datac => \myStateMachine|functionSetCase.functionSet3~regout\,
	datad => \myStateMachine|subStates.subState3~regout\,
	combout => \myStateMachine|Selector77~1_combout\);

-- Location: LCFF_X8_Y26_N17
\myStateMachine|functionSetCase.functionSet3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector77~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|state.functionSet~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|functionSetCase.functionSet3~regout\);

-- Location: LCCOMB_X8_Y26_N8
\myStateMachine|functionSetCase.functionSet4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|functionSetCase.functionSet4~0_combout\ = (\myStateMachine|functionSetCase.functionSet4~regout\) # ((\myStateMachine|Equal1~5_combout\ & (\myStateMachine|functionSetCase.functionSet3~regout\ & \myStateMachine|Selector267~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal1~5_combout\,
	datab => \myStateMachine|functionSetCase.functionSet3~regout\,
	datac => \myStateMachine|functionSetCase.functionSet4~regout\,
	datad => \myStateMachine|Selector267~2_combout\,
	combout => \myStateMachine|functionSetCase.functionSet4~0_combout\);

-- Location: LCFF_X8_Y26_N9
\myStateMachine|functionSetCase.functionSet4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|functionSetCase.functionSet4~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|functionSetCase.functionSet4~regout\);

-- Location: LCCOMB_X8_Y26_N24
\myStateMachine|Selector259~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector259~1_combout\ = (\myStateMachine|Selector259~0_combout\) # ((\myStateMachine|state.functionSet~regout\ & ((!\myStateMachine|functionSetCase.functionSet4~regout\) # (!\myStateMachine|Selector77~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector77~0_combout\,
	datab => \myStateMachine|Selector259~0_combout\,
	datac => \myStateMachine|state.functionSet~regout\,
	datad => \myStateMachine|functionSetCase.functionSet4~regout\,
	combout => \myStateMachine|Selector259~1_combout\);

-- Location: LCFF_X8_Y26_N25
\myStateMachine|state.functionSet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector259~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|state.functionSet~regout\);

-- Location: LCCOMB_X8_Y26_N28
\myStateMachine|Selector267~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector267~2_combout\ = (\myStateMachine|state.functionSet~regout\ & \myStateMachine|subStates.subState3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myStateMachine|state.functionSet~regout\,
	datad => \myStateMachine|subStates.subState3~regout\,
	combout => \myStateMachine|Selector267~2_combout\);

-- Location: LCCOMB_X9_Y26_N8
\myStateMachine|Selector223~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector223~3_combout\ = (\myStateMachine|subStates.subState2~regout\ & (((\myStateMachine|state.writeData~regout\) # (\myStateMachine|state.writeAddr~regout\)) # (!\myStateMachine|Selector35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector35~0_combout\,
	datab => \myStateMachine|state.writeData~regout\,
	datac => \myStateMachine|state.writeAddr~regout\,
	datad => \myStateMachine|subStates.subState2~regout\,
	combout => \myStateMachine|Selector223~3_combout\);

-- Location: LCCOMB_X10_Y26_N24
\myStateMachine|Selector269~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector269~1_combout\ = (\myStateMachine|Equal4~3_combout\ & ((\myStateMachine|Selector223~3_combout\) # ((\myStateMachine|Selector269~0_combout\ & !\myStateMachine|Equal2~1_combout\)))) # (!\myStateMachine|Equal4~3_combout\ & 
-- (\myStateMachine|Selector269~0_combout\ & (!\myStateMachine|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal4~3_combout\,
	datab => \myStateMachine|Selector269~0_combout\,
	datac => \myStateMachine|Equal2~1_combout\,
	datad => \myStateMachine|Selector223~3_combout\,
	combout => \myStateMachine|Selector269~1_combout\);

-- Location: LCCOMB_X7_Y26_N14
\myStateMachine|Equal3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal3~3_combout\ = (\myStateMachine|counter\(12) & (\myStateMachine|counter\(7) & (\myStateMachine|counter\(15) & !\myStateMachine|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|counter\(12),
	datab => \myStateMachine|counter\(7),
	datac => \myStateMachine|counter\(15),
	datad => \myStateMachine|counter\(6),
	combout => \myStateMachine|Equal3~3_combout\);

-- Location: LCCOMB_X8_Y26_N4
\myStateMachine|Equal3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Equal3~5_combout\ = (\myStateMachine|Equal0~6_combout\ & (\myStateMachine|Equal3~2_combout\ & (\myStateMachine|Equal0~4_combout\ & \myStateMachine|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal0~6_combout\,
	datab => \myStateMachine|Equal3~2_combout\,
	datac => \myStateMachine|Equal0~4_combout\,
	datad => \myStateMachine|Equal3~3_combout\,
	combout => \myStateMachine|Equal3~5_combout\);

-- Location: LCCOMB_X10_Y26_N16
\myStateMachine|Selector74~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector74~0_combout\ = (\myStateMachine|functionSetCase.00~regout\ & (\myStateMachine|Equal1~5_combout\)) # (!\myStateMachine|functionSetCase.00~regout\ & ((\myStateMachine|Equal3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|Equal1~5_combout\,
	datac => \myStateMachine|Equal3~5_combout\,
	datad => \myStateMachine|functionSetCase.00~regout\,
	combout => \myStateMachine|Selector74~0_combout\);

-- Location: LCCOMB_X10_Y26_N2
\myStateMachine|Selector269~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector269~4_combout\ = (\myStateMachine|Selector269~3_combout\) # ((\myStateMachine|Selector269~1_combout\) # ((\myStateMachine|Selector267~2_combout\ & !\myStateMachine|Selector74~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector269~3_combout\,
	datab => \myStateMachine|Selector267~2_combout\,
	datac => \myStateMachine|Selector269~1_combout\,
	datad => \myStateMachine|Selector74~0_combout\,
	combout => \myStateMachine|Selector269~4_combout\);

-- Location: LCFF_X10_Y26_N3
\myStateMachine|subStates.subState3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector269~4_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|subStates.subState3~regout\);

-- Location: LCCOMB_X10_Y26_N14
\myStateMachine|Selector260~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector260~2_combout\ = (\myStateMachine|state.displaySet~regout\ & ((!\myStateMachine|subStates.subState3~regout\) # (!\myStateMachine|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Equal2~1_combout\,
	datab => \myStateMachine|state.displaySet~regout\,
	datad => \myStateMachine|subStates.subState3~regout\,
	combout => \myStateMachine|Selector260~2_combout\);

-- Location: LCCOMB_X10_Y26_N30
\myStateMachine|Selector260~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector260~4_combout\ = (\myStateMachine|state.functionSet~regout\ & (\myStateMachine|Equal1~5_combout\ & (\myStateMachine|functionSetCase.functionSet4~regout\ & \myStateMachine|subStates.subState3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.functionSet~regout\,
	datab => \myStateMachine|Equal1~5_combout\,
	datac => \myStateMachine|functionSetCase.functionSet4~regout\,
	datad => \myStateMachine|subStates.subState3~regout\,
	combout => \myStateMachine|Selector260~4_combout\);

-- Location: LCCOMB_X10_Y26_N0
\myStateMachine|Selector260~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector260~3_combout\ = (\myStateMachine|Selector260~2_combout\) # ((\myStateMachine|Selector260~4_combout\) # ((\myStateMachine|state.entryModeSet~regout\ & \myStateMachine|Selector262~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.entryModeSet~regout\,
	datab => \myStateMachine|Selector260~2_combout\,
	datac => \myStateMachine|Selector262~0_combout\,
	datad => \myStateMachine|Selector260~4_combout\,
	combout => \myStateMachine|Selector260~3_combout\);

-- Location: LCFF_X10_Y26_N1
\myStateMachine|state.displaySet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector260~3_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|state.displaySet~regout\);

-- Location: LCCOMB_X11_Y26_N0
\myStateMachine|Selector269~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector269~0_combout\ = (\myStateMachine|state.displaySet~regout\ & \myStateMachine|subStates.subState3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myStateMachine|state.displaySet~regout\,
	datad => \myStateMachine|subStates.subState3~regout\,
	combout => \myStateMachine|Selector269~0_combout\);

-- Location: LCCOMB_X11_Y26_N26
\myStateMachine|Selector261~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector261~1_combout\ = (\myStateMachine|Selector261~0_combout\) # ((\myStateMachine|Selector269~0_combout\ & (\myStateMachine|Equal2~1_combout\ & !\myStateMachine|displayOnOff~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector261~0_combout\,
	datab => \myStateMachine|Selector269~0_combout\,
	datac => \myStateMachine|Equal2~1_combout\,
	datad => \myStateMachine|displayOnOff~regout\,
	combout => \myStateMachine|Selector261~1_combout\);

-- Location: LCFF_X11_Y26_N27
\myStateMachine|state.displayClear\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector261~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|state.displayClear~regout\);

-- Location: LCCOMB_X11_Y26_N16
\myStateMachine|Selector150~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector150~0_combout\ = (\myStateMachine|state.writeAddr~regout\ & (\myStateMachine|addrCounter\(0))) # (!\myStateMachine|state.writeAddr~regout\ & ((\myStateMachine|state.displayClear~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|addrCounter\(0),
	datab => \myStateMachine|state.displayClear~regout\,
	datad => \myStateMachine|state.writeAddr~regout\,
	combout => \myStateMachine|Selector150~0_combout\);

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

-- Location: LCCOMB_X12_Y26_N16
\myStateMachine|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Add1~0_combout\ = \myStateMachine|addrCounter\(0) $ (VCC)
-- \myStateMachine|Add1~1\ = CARRY(\myStateMachine|addrCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|addrCounter\(0),
	datad => VCC,
	combout => \myStateMachine|Add1~0_combout\,
	cout => \myStateMachine|Add1~1\);

-- Location: LCFF_X12_Y26_N17
\myStateMachine|addrCounter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Add1~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|state.cursorLogicState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrCounter\(0));

-- Location: LCCOMB_X9_Y26_N22
\myStateMachine|addrToRead[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|addrToRead[0]~0_combout\ = (\myStateMachine|state.writeAddr~regout\ & (\myStateMachine|subStates.subState2~regout\ & \lcdOnIn~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.writeAddr~regout\,
	datab => \myStateMachine|subStates.subState2~regout\,
	datac => \lcdOnIn~combout\,
	combout => \myStateMachine|addrToRead[0]~0_combout\);

-- Location: LCFF_X12_Y26_N3
\myStateMachine|addrToRead[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \myStateMachine|addrCounter\(0),
	sload => VCC,
	ena => \myStateMachine|addrToRead[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrToRead\(0));

-- Location: LCCOMB_X12_Y26_N18
\myStateMachine|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Add1~2_combout\ = (\myStateMachine|addrCounter\(1) & (!\myStateMachine|Add1~1\)) # (!\myStateMachine|addrCounter\(1) & ((\myStateMachine|Add1~1\) # (GND)))
-- \myStateMachine|Add1~3\ = CARRY((!\myStateMachine|Add1~1\) # (!\myStateMachine|addrCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|addrCounter\(1),
	datad => VCC,
	cin => \myStateMachine|Add1~1\,
	combout => \myStateMachine|Add1~2_combout\,
	cout => \myStateMachine|Add1~3\);

-- Location: LCFF_X12_Y26_N19
\myStateMachine|addrCounter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Add1~2_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|state.cursorLogicState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrCounter\(1));

-- Location: LCCOMB_X12_Y26_N4
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

-- Location: LCFF_X12_Y26_N5
\myStateMachine|addrToRead[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|addrToRead[1]~feeder_combout\,
	ena => \myStateMachine|addrToRead[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrToRead\(1));

-- Location: LCCOMB_X12_Y26_N20
\myStateMachine|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Add1~4_combout\ = (\myStateMachine|addrCounter\(2) & (\myStateMachine|Add1~3\ $ (GND))) # (!\myStateMachine|addrCounter\(2) & (!\myStateMachine|Add1~3\ & VCC))
-- \myStateMachine|Add1~5\ = CARRY((\myStateMachine|addrCounter\(2) & !\myStateMachine|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|addrCounter\(2),
	datad => VCC,
	cin => \myStateMachine|Add1~3\,
	combout => \myStateMachine|Add1~4_combout\,
	cout => \myStateMachine|Add1~5\);

-- Location: LCFF_X12_Y26_N21
\myStateMachine|addrCounter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Add1~4_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|state.cursorLogicState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrCounter\(2));

-- Location: LCFF_X12_Y26_N7
\myStateMachine|addrToRead[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \myStateMachine|addrCounter\(2),
	sload => VCC,
	ena => \myStateMachine|addrToRead[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrToRead\(2));

-- Location: LCCOMB_X12_Y26_N22
\myStateMachine|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Add1~6_combout\ = (\myStateMachine|addrCounter\(3) & (!\myStateMachine|Add1~5\)) # (!\myStateMachine|addrCounter\(3) & ((\myStateMachine|Add1~5\) # (GND)))
-- \myStateMachine|Add1~7\ = CARRY((!\myStateMachine|Add1~5\) # (!\myStateMachine|addrCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myStateMachine|addrCounter\(3),
	datad => VCC,
	cin => \myStateMachine|Add1~5\,
	combout => \myStateMachine|Add1~6_combout\,
	cout => \myStateMachine|Add1~7\);

-- Location: LCFF_X12_Y26_N23
\myStateMachine|addrCounter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Add1~6_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|state.cursorLogicState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrCounter\(3));

-- Location: LCCOMB_X12_Y26_N8
\myStateMachine|addrToRead[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|addrToRead[3]~feeder_combout\ = \myStateMachine|addrCounter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|addrCounter\(3),
	combout => \myStateMachine|addrToRead[3]~feeder_combout\);

-- Location: LCFF_X12_Y26_N9
\myStateMachine|addrToRead[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|addrToRead[3]~feeder_combout\,
	ena => \myStateMachine|addrToRead[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrToRead\(3));

-- Location: LCCOMB_X12_Y26_N24
\myStateMachine|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Add1~8_combout\ = (\myStateMachine|addrCounter\(4) & (\myStateMachine|Add1~7\ $ (GND))) # (!\myStateMachine|addrCounter\(4) & (!\myStateMachine|Add1~7\ & VCC))
-- \myStateMachine|Add1~9\ = CARRY((\myStateMachine|addrCounter\(4) & !\myStateMachine|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|addrCounter\(4),
	datad => VCC,
	cin => \myStateMachine|Add1~7\,
	combout => \myStateMachine|Add1~8_combout\,
	cout => \myStateMachine|Add1~9\);

-- Location: LCFF_X12_Y26_N25
\myStateMachine|addrCounter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Add1~8_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|state.cursorLogicState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrCounter\(4));

-- Location: LCFF_X12_Y26_N11
\myStateMachine|addrToRead[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \myStateMachine|addrCounter\(4),
	sload => VCC,
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

-- Location: LCCOMB_X9_Y26_N20
\myStateMachine|Selector71~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector71~0_combout\ = (!\myStateMachine|state.cursorLogicState~regout\ & (!\myStateMachine|state.shortDelay~regout\ & ((\myStateMachine|subStates.subState2~regout\) # (\myStateMachine|WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.cursorLogicState~regout\,
	datab => \myStateMachine|subStates.subState2~regout\,
	datac => \myStateMachine|state.shortDelay~regout\,
	datad => \myStateMachine|WideOr1~0_combout\,
	combout => \myStateMachine|Selector71~0_combout\);

-- Location: LCFF_X11_Y26_N17
\myStateMachine|lcdBus[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector150~0_combout\,
	sdata => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => \myStateMachine|state.writeData~regout\,
	ena => \myStateMachine|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[0]~reg0_regout\);

-- Location: LCCOMB_X9_Y26_N26
\myStateMachine|Selector35~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector35~1_combout\ = ((!\myStateMachine|subStates.subState2~regout\ & !\myStateMachine|Selector35~0_combout\)) # (!\myStateMachine|state.powerOn~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.powerOn~regout\,
	datab => \myStateMachine|subStates.subState2~regout\,
	datad => \myStateMachine|Selector35~0_combout\,
	combout => \myStateMachine|Selector35~1_combout\);

-- Location: LCCOMB_X5_Y26_N6
\myStateMachine|lcdBus[0]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|lcdBus[0]~enfeeder_combout\ = \myStateMachine|Selector35~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|Selector35~1_combout\,
	combout => \myStateMachine|lcdBus[0]~enfeeder_combout\);

-- Location: LCFF_X5_Y26_N7
\myStateMachine|lcdBus[0]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|lcdBus[0]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[0]~en_regout\);

-- Location: LCCOMB_X11_Y26_N18
\myStateMachine|Selector155~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector155~0_combout\ = (\myStateMachine|state.writeAddr~regout\ & ((\myStateMachine|addrCounter\(1)))) # (!\myStateMachine|state.writeAddr~regout\ & (\myStateMachine|state.entryModeSet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.writeAddr~regout\,
	datab => \myStateMachine|state.entryModeSet~regout\,
	datad => \myStateMachine|addrCounter\(1),
	combout => \myStateMachine|Selector155~0_combout\);

-- Location: LCFF_X11_Y26_N19
\myStateMachine|lcdBus[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector155~0_combout\,
	sdata => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a1\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => \myStateMachine|state.writeData~regout\,
	ena => \myStateMachine|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[1]~reg0_regout\);

-- Location: LCCOMB_X5_Y26_N24
\myStateMachine|lcdBus[1]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|lcdBus[1]~enfeeder_combout\ = \myStateMachine|Selector35~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|Selector35~1_combout\,
	combout => \myStateMachine|lcdBus[1]~enfeeder_combout\);

-- Location: LCFF_X5_Y26_N25
\myStateMachine|lcdBus[1]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|lcdBus[1]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[1]~en_regout\);

-- Location: LCCOMB_X11_Y26_N8
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

-- Location: LCCOMB_X11_Y26_N22
\myStateMachine|Selector149~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector149~1_combout\ = (\myStateMachine|Selector149~0_combout\) # ((\myStateMachine|state.entryModeSet~regout\) # ((\myStateMachine|state.displaySet~regout\ & \myStateMachine|displayOnOff~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.displaySet~regout\,
	datab => \myStateMachine|Selector149~0_combout\,
	datac => \myStateMachine|state.entryModeSet~regout\,
	datad => \myStateMachine|displayOnOff~regout\,
	combout => \myStateMachine|Selector149~1_combout\);

-- Location: LCFF_X11_Y26_N23
\myStateMachine|lcdBus[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector149~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[2]~reg0_regout\);

-- Location: LCCOMB_X5_Y26_N10
\myStateMachine|lcdBus[2]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|lcdBus[2]~enfeeder_combout\ = \myStateMachine|Selector35~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|Selector35~1_combout\,
	combout => \myStateMachine|lcdBus[2]~enfeeder_combout\);

-- Location: LCFF_X5_Y26_N11
\myStateMachine|lcdBus[2]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|lcdBus[2]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[2]~en_regout\);

-- Location: LCCOMB_X11_Y26_N12
\myStateMachine|lcdBus[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|lcdBus[3]~reg0feeder_combout\ = \myStateMachine|Selector148~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector148~0_combout\,
	combout => \myStateMachine|lcdBus[3]~reg0feeder_combout\);

-- Location: LCFF_X11_Y26_N13
\myStateMachine|lcdBus[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|lcdBus[3]~reg0feeder_combout\,
	sdata => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a3\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => \myStateMachine|state.writeData~regout\,
	ena => \myStateMachine|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[3]~reg0_regout\);

-- Location: LCFF_X9_Y26_N27
\myStateMachine|lcdBus[3]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector35~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[3]~en_regout\);

-- Location: LCCOMB_X11_Y26_N14
\myStateMachine|Selector113~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector113~0_combout\ = (!\myStateMachine|state.writeAddr~regout\ & (!\myStateMachine|state.entryModeSet~regout\ & (!\myStateMachine|state.displaySet~regout\ & !\myStateMachine|state.displayClear~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.writeAddr~regout\,
	datab => \myStateMachine|state.entryModeSet~regout\,
	datac => \myStateMachine|state.displaySet~regout\,
	datad => \myStateMachine|state.displayClear~regout\,
	combout => \myStateMachine|Selector113~0_combout\);

-- Location: LCCOMB_X5_Y26_N0
\myStateMachine|lcdBus[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|lcdBus[4]~reg0feeder_combout\ = \myStateMachine|Selector113~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|Selector113~0_combout\,
	combout => \myStateMachine|lcdBus[4]~reg0feeder_combout\);

-- Location: LCFF_X5_Y26_N1
\myStateMachine|lcdBus[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|lcdBus[4]~reg0feeder_combout\,
	sdata => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a4\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => \myStateMachine|state.writeData~regout\,
	ena => \myStateMachine|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[4]~reg0_regout\);

-- Location: LCCOMB_X5_Y26_N12
\myStateMachine|lcdBus[4]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|lcdBus[4]~enfeeder_combout\ = \myStateMachine|Selector35~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|Selector35~1_combout\,
	combout => \myStateMachine|lcdBus[4]~enfeeder_combout\);

-- Location: LCFF_X5_Y26_N13
\myStateMachine|lcdBus[4]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|lcdBus[4]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[4]~en_regout\);

-- Location: LCCOMB_X12_Y26_N30
\myStateMachine|addrCounter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|addrCounter~1_combout\ = ((!\myStateMachine|addrCounter\(1)) # (!\myStateMachine|addrCounter\(0))) # (!\myStateMachine|addrCounter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|addrCounter\(2),
	datac => \myStateMachine|addrCounter\(0),
	datad => \myStateMachine|addrCounter\(1),
	combout => \myStateMachine|addrCounter~1_combout\);

-- Location: LCCOMB_X12_Y26_N0
\myStateMachine|addrCounter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|addrCounter~2_combout\ = (\myStateMachine|Add1~10_combout\ & ((\myStateMachine|addrCounter~0_combout\) # (\myStateMachine|addrCounter~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|addrCounter~0_combout\,
	datab => \myStateMachine|addrCounter~1_combout\,
	datad => \myStateMachine|Add1~10_combout\,
	combout => \myStateMachine|addrCounter~2_combout\);

-- Location: LCFF_X12_Y26_N1
\myStateMachine|addrCounter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|addrCounter~2_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|state.cursorLogicState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|addrCounter\(5));

-- Location: LCCOMB_X5_Y26_N22
\myStateMachine|Selector112~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector112~0_combout\ = (\myStateMachine|Selector113~0_combout\) # ((\myStateMachine|addrCounter\(5) & (\myStateMachine|state.writeAddr~regout\ & !\myStateMachine|addrCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector113~0_combout\,
	datab => \myStateMachine|addrCounter\(5),
	datac => \myStateMachine|state.writeAddr~regout\,
	datad => \myStateMachine|addrCounter\(4),
	combout => \myStateMachine|Selector112~0_combout\);

-- Location: LCCOMB_X5_Y26_N18
\myStateMachine|lcdBus[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|lcdBus[5]~reg0feeder_combout\ = \myStateMachine|Selector112~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|Selector112~0_combout\,
	combout => \myStateMachine|lcdBus[5]~reg0feeder_combout\);

-- Location: LCFF_X5_Y26_N19
\myStateMachine|lcdBus[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|lcdBus[5]~reg0feeder_combout\,
	sdata => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a5\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => \myStateMachine|state.writeData~regout\,
	ena => \myStateMachine|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[5]~reg0_regout\);

-- Location: LCCOMB_X5_Y26_N30
\myStateMachine|lcdBus[5]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|lcdBus[5]~enfeeder_combout\ = \myStateMachine|Selector35~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|Selector35~1_combout\,
	combout => \myStateMachine|lcdBus[5]~enfeeder_combout\);

-- Location: LCFF_X5_Y26_N31
\myStateMachine|lcdBus[5]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|lcdBus[5]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[5]~en_regout\);

-- Location: LCCOMB_X5_Y26_N20
\myStateMachine|Selector72~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector72~0_combout\ = (\myStateMachine|state.writeAddr~regout\ & ((\myStateMachine|addrCounter\(6)) # (\myStateMachine|addrCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|addrCounter\(6),
	datab => \myStateMachine|state.writeAddr~regout\,
	datad => \myStateMachine|addrCounter\(4),
	combout => \myStateMachine|Selector72~0_combout\);

-- Location: LCFF_X5_Y26_N21
\myStateMachine|lcdBus[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector72~0_combout\,
	sdata => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a6\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => \myStateMachine|state.writeData~regout\,
	ena => \myStateMachine|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[6]~reg0_regout\);

-- Location: LCCOMB_X5_Y26_N8
\myStateMachine|lcdBus[6]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|lcdBus[6]~enfeeder_combout\ = \myStateMachine|Selector35~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|Selector35~1_combout\,
	combout => \myStateMachine|lcdBus[6]~enfeeder_combout\);

-- Location: LCFF_X5_Y26_N9
\myStateMachine|lcdBus[6]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|lcdBus[6]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[6]~en_regout\);

-- Location: LCCOMB_X5_Y26_N2
\myStateMachine|Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector37~0_combout\ = (\myStateMachine|state.writeData~regout\ & ((!\myRegisters|charCode_rtl_0|auto_generated|ram_block1a7\))) # (!\myStateMachine|state.writeData~regout\ & (!\myStateMachine|state.writeAddr~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.writeData~regout\,
	datac => \myStateMachine|state.writeAddr~regout\,
	datad => \myRegisters|charCode_rtl_0|auto_generated|ram_block1a7\,
	combout => \myStateMachine|Selector37~0_combout\);

-- Location: LCFF_X5_Y26_N3
\myStateMachine|lcdBus[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector37~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[7]~reg0_regout\);

-- Location: LCCOMB_X5_Y26_N28
\myStateMachine|lcdBus[7]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|lcdBus[7]~enfeeder_combout\ = \myStateMachine|Selector35~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myStateMachine|Selector35~1_combout\,
	combout => \myStateMachine|lcdBus[7]~enfeeder_combout\);

-- Location: LCFF_X5_Y26_N29
\myStateMachine|lcdBus[7]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|lcdBus[7]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myStateMachine|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdBus[7]~en_regout\);

-- Location: LCCOMB_X6_Y26_N8
\myStateMachine|Selector224~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector224~0_combout\ = (\myStateMachine|state.writeData~regout\) # ((\myStateMachine|lcdRsSelect~regout\ & ((\myStateMachine|state.shortDelay~regout\) # (\myStateMachine|state.cursorLogicState~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.writeData~regout\,
	datab => \myStateMachine|state.shortDelay~regout\,
	datac => \myStateMachine|lcdRsSelect~regout\,
	datad => \myStateMachine|state.cursorLogicState~regout\,
	combout => \myStateMachine|Selector224~0_combout\);

-- Location: LCFF_X6_Y26_N9
\myStateMachine|lcdRsSelect\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector224~0_combout\,
	ena => \lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdRsSelect~regout\);

-- Location: LCCOMB_X6_Y26_N26
\myStateMachine|Selector223~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|Selector223~2_combout\ = (\myStateMachine|Selector223~3_combout\) # ((\myStateMachine|lcdEnableOut~regout\ & ((\myStateMachine|state.shortDelay~regout\) # (\myStateMachine|state.cursorLogicState~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|Selector223~3_combout\,
	datab => \myStateMachine|state.shortDelay~regout\,
	datac => \myStateMachine|lcdEnableOut~regout\,
	datad => \myStateMachine|state.cursorLogicState~regout\,
	combout => \myStateMachine|Selector223~2_combout\);

-- Location: LCFF_X6_Y26_N27
\myStateMachine|lcdEnableOut\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|Selector223~2_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|lcdEnableOut~regout\);

-- Location: LCCOMB_X9_Y26_N16
\myStateMachine|WideOr1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myStateMachine|WideOr1~combout\ = (\myStateMachine|state.cursorLogicState~regout\) # ((\myStateMachine|state.writeData~regout\) # ((\myStateMachine|state.writeAddr~regout\) # (\myStateMachine|state.shortDelay~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myStateMachine|state.cursorLogicState~regout\,
	datab => \myStateMachine|state.writeData~regout\,
	datac => \myStateMachine|state.writeAddr~regout\,
	datad => \myStateMachine|state.shortDelay~regout\,
	combout => \myStateMachine|WideOr1~combout\);

-- Location: LCFF_X9_Y26_N17
\myStateMachine|errorLed\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myStateMachine|WideOr1~combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myStateMachine|errorLed~regout\);

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
	datain => \myStateMachine|errorLed~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_errorLed);
END structure;

