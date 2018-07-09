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

-- DATE "07/08/2018 22:15:39"

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

ENTITY 	lcdControllerDemonstration IS
    PORT (
	clk : IN std_logic;
	backLight : IN std_logic;
	lcdOnIn : IN std_logic;
	\in\ : IN std_logic_vector(15 DOWNTO 0);
	backLightOut : OUT std_logic;
	lcdBus : OUT std_logic_vector(7 DOWNTO 0);
	lcdOnOut : OUT std_logic;
	lcdReadWriteSel : OUT std_logic;
	lcdRsSelect : OUT std_logic;
	lcdEnableOut : OUT std_logic;
	errorLed1 : OUT std_logic;
	errorLed2 : OUT std_logic
	);
END lcdControllerDemonstration;

-- Design Ports Information
-- lcdBus[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdBus[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdBus[2]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdBus[3]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdBus[4]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdBus[5]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdBus[6]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdBus[7]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- backLightOut	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdOnOut	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdReadWriteSel	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdRsSelect	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcdEnableOut	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- errorLed1	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- errorLed2	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- backLight	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lcdOnIn	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lcdControllerDemonstration IS
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
SIGNAL ww_backLight : std_logic;
SIGNAL ww_lcdOnIn : std_logic;
SIGNAL \ww_in\ : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_backLightOut : std_logic;
SIGNAL ww_lcdBus : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lcdOnOut : std_logic;
SIGNAL ww_lcdReadWriteSel : std_logic;
SIGNAL ww_lcdRsSelect : std_logic;
SIGNAL ww_lcdEnableOut : std_logic;
SIGNAL ww_errorLed1 : std_logic;
SIGNAL ww_errorLed2 : std_logic;
SIGNAL \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[13]~70_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[27]~98_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[31]~107\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[32]~108_combout\ : std_logic;
SIGNAL \myInterface|Add0~0_combout\ : std_logic;
SIGNAL \myInterface|Add0~6_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector151~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector150~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal5~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|displayOnOff~regout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector112~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal0~1_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector229~1_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|displayOnOff~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector232~2_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector226~1_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[20]~33_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector234~2_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector234~3_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[20]~36_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[20]~37_combout\ : std_logic;
SIGNAL \myConverter|n~33_combout\ : std_logic;
SIGNAL \myConverter|n~36_combout\ : std_logic;
SIGNAL \myConverter|n~42_combout\ : std_logic;
SIGNAL \myConverter|n~44_combout\ : std_logic;
SIGNAL \myConverter|n~48_combout\ : std_logic;
SIGNAL \myConverter|n~51_combout\ : std_logic;
SIGNAL \myConverter|n~53_combout\ : std_logic;
SIGNAL \myConverter|n~55_combout\ : std_logic;
SIGNAL \myConverter|n~59_combout\ : std_logic;
SIGNAL \myConverter|n~61_combout\ : std_logic;
SIGNAL \myConverter|n~65_combout\ : std_logic;
SIGNAL \myConverter|n~67_combout\ : std_logic;
SIGNAL \myConverter|n~74_combout\ : std_logic;
SIGNAL \myConverter|n~78_combout\ : std_logic;
SIGNAL \myConverter|n~81_combout\ : std_logic;
SIGNAL \myConverter|n~86_combout\ : std_logic;
SIGNAL \myConverter|n~91_combout\ : std_logic;
SIGNAL \myConverter|n~95_combout\ : std_logic;
SIGNAL \myConverter|n~104_combout\ : std_logic;
SIGNAL \myConverter|n~114_combout\ : std_logic;
SIGNAL \myConverter|n~117_combout\ : std_logic;
SIGNAL \myConverter|n~123_combout\ : std_logic;
SIGNAL \myConverter|tens[1]~1_combout\ : std_logic;
SIGNAL \myConverter|ones[3]~2_combout\ : std_logic;
SIGNAL \converter5|WideOr1~0_combout\ : std_logic;
SIGNAL \myConverter|n~128_combout\ : std_logic;
SIGNAL \myConverter|n~130_combout\ : std_logic;
SIGNAL \myConverter|hund[1]~1_combout\ : std_logic;
SIGNAL \myInterface|Selector10~4_combout\ : std_logic;
SIGNAL \myInterface|Selector10~5_combout\ : std_logic;
SIGNAL \myInterface|Selector9~0_combout\ : std_logic;
SIGNAL \myInterface|Selector9~1_combout\ : std_logic;
SIGNAL \myInterface|Selector9~2_combout\ : std_logic;
SIGNAL \myInterface|Selector8~3_combout\ : std_logic;
SIGNAL \myInterface|Selector8~4_combout\ : std_logic;
SIGNAL \myInterface|counter[0]~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|functionSetCase.functionSet2~regout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector74~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal4~8_combout\ : std_logic;
SIGNAL \myConverter|n~135_combout\ : std_logic;
SIGNAL \myConverter|LessThan0~0_combout\ : std_logic;
SIGNAL \myConverter|n~140_combout\ : std_logic;
SIGNAL \myConverter|n~7_combout\ : std_logic;
SIGNAL \myConverter|n~141_combout\ : std_logic;
SIGNAL \myConverter|n~142_combout\ : std_logic;
SIGNAL \myConverter|n~20_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \lcdOnIn~combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[0]~35\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[1]~46_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[18]~80_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[14]~72_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal1~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[16]~76_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal1~1_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[11]~66_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal2~1_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[2]~48_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal2~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal2~2_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal2~3_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal2~4_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector75~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector75~1_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|functionSetCase.functionSet3~regout\ : std_logic;
SIGNAL \myControler|myStateMachine|functionSetCase.functionSet4~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|functionSetCase.functionSet4~regout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector225~1_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|state.functionSet~regout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal4~4_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[4]~52_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal4~5_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal4~6_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal1~2_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal4~2_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal4~3_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector229~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector227~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|state.displayClear~regout\ : std_logic;
SIGNAL \myControler|myStateMachine|state.entryModeSet~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|state.entryModeSet~regout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal3~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector226~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector226~2_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|state.displaySet~regout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector232~4_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector148~2_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector232~3_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector232~5_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal4~7_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|functionSetCase~14_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|functionSetCase.00~regout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector72~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector232~6_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|subStates.00~regout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[20]~45_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal0~6_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal0~5_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|state.powerOn~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|state.powerOn~regout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector225~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal1~3_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal1~4_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[20]~38_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[20]~39_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[20]~40_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[20]~41_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[20]~42_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[20]~43_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[20]~44_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[1]~47\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[2]~49\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[3]~50_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[3]~51\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[4]~53\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[5]~54_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[5]~55\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[6]~56_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[6]~57\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[7]~58_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[7]~59\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[8]~60_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[8]~61\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[9]~62_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[9]~63\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[10]~64_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[10]~65\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[11]~67\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[12]~68_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[12]~69\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[13]~71\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[14]~73\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[15]~74_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[15]~75\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[16]~77\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[17]~78_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[17]~79\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[18]~81\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[19]~82_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[19]~83\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[20]~85\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[21]~86_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[21]~87\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[22]~88_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[22]~89\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[23]~90_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[23]~91\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[24]~92_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[24]~93\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[25]~94_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[25]~95\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[26]~96_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[26]~97\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[27]~99\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[28]~100_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal0~2_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[20]~84_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[0]~34_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal0~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[28]~101\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[29]~103\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[30]~104_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[30]~105\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[31]~106_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter[29]~102_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal0~3_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal0~4_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal1~5_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector234~6_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector234~4_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector234~5_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|subStates.subState3~regout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector155~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|state.cursorShift~regout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector229~2_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|state.writeAddr~regout\ : std_logic;
SIGNAL \myControler|myStateMachine|state.writeData~regout\ : std_logic;
SIGNAL \myConverter|n~138_combout\ : std_logic;
SIGNAL \myConverter|n~143_combout\ : std_logic;
SIGNAL \myConverter|n~144_combout\ : std_logic;
SIGNAL \myConverter|n~34_combout\ : std_logic;
SIGNAL \myConverter|n~32_combout\ : std_logic;
SIGNAL \myConverter|n~37_combout\ : std_logic;
SIGNAL \myConverter|n~35_combout\ : std_logic;
SIGNAL \myConverter|n~136_combout\ : std_logic;
SIGNAL \myConverter|n~56_combout\ : std_logic;
SIGNAL \myConverter|n~137_combout\ : std_logic;
SIGNAL \myConverter|LessThan6~0_combout\ : std_logic;
SIGNAL \myConverter|n~39_combout\ : std_logic;
SIGNAL \myConverter|n~40_combout\ : std_logic;
SIGNAL \myConverter|n~38_combout\ : std_logic;
SIGNAL \myConverter|n~54_combout\ : std_logic;
SIGNAL \myConverter|LessThan8~0_combout\ : std_logic;
SIGNAL \myConverter|n~57_combout\ : std_logic;
SIGNAL \myConverter|n~139_combout\ : std_logic;
SIGNAL \myConverter|tenThou[3]~1_combout\ : std_logic;
SIGNAL \myConverter|n~76_combout\ : std_logic;
SIGNAL \myConverter|n~77_combout\ : std_logic;
SIGNAL \myConverter|n~58_combout\ : std_logic;
SIGNAL \myConverter|n~60_combout\ : std_logic;
SIGNAL \myConverter|n~41_combout\ : std_logic;
SIGNAL \myConverter|n~43_combout\ : std_logic;
SIGNAL \myConverter|n~62_combout\ : std_logic;
SIGNAL \myConverter|n~79_combout\ : std_logic;
SIGNAL \myConverter|n~80_combout\ : std_logic;
SIGNAL \myConverter|n~46_combout\ : std_logic;
SIGNAL \myConverter|n~45_combout\ : std_logic;
SIGNAL \myConverter|n~66_combout\ : std_logic;
SIGNAL \myConverter|n~63_combout\ : std_logic;
SIGNAL \myConverter|n~64_combout\ : std_logic;
SIGNAL \myConverter|n~75_combout\ : std_logic;
SIGNAL \myConverter|n~82_combout\ : std_logic;
SIGNAL \myConverter|n~101_combout\ : std_logic;
SIGNAL \myConverter|n~100_combout\ : std_logic;
SIGNAL \myConverter|n~85_combout\ : std_logic;
SIGNAL \myConverter|n~83_combout\ : std_logic;
SIGNAL \myConverter|n~49_combout\ : std_logic;
SIGNAL \myConverter|n~47_combout\ : std_logic;
SIGNAL \myConverter|n~70_combout\ : std_logic;
SIGNAL \myConverter|n~69_combout\ : std_logic;
SIGNAL \myConverter|n~68_combout\ : std_logic;
SIGNAL \myConverter|n~84_combout\ : std_logic;
SIGNAL \myConverter|n~99_combout\ : std_logic;
SIGNAL \myConverter|n~102_combout\ : std_logic;
SIGNAL \myConverter|n~88_combout\ : std_logic;
SIGNAL \myConverter|n~87_combout\ : std_logic;
SIGNAL \myConverter|n~89_combout\ : std_logic;
SIGNAL \myConverter|n~105_combout\ : std_logic;
SIGNAL \myConverter|n~103_combout\ : std_logic;
SIGNAL \myConverter|n~108_combout\ : std_logic;
SIGNAL \myConverter|n~127_combout\ : std_logic;
SIGNAL \myConverter|n~72_combout\ : std_logic;
SIGNAL \myConverter|n~71_combout\ : std_logic;
SIGNAL \myConverter|n~73_combout\ : std_logic;
SIGNAL \myConverter|n~94_combout\ : std_logic;
SIGNAL \myConverter|n~52_combout\ : std_logic;
SIGNAL \myConverter|n~50_combout\ : std_logic;
SIGNAL \myConverter|n~92_combout\ : std_logic;
SIGNAL \myConverter|n~90_combout\ : std_logic;
SIGNAL \myConverter|n~93_combout\ : std_logic;
SIGNAL \myConverter|n~96_combout\ : std_logic;
SIGNAL \myConverter|n~97_combout\ : std_logic;
SIGNAL \myConverter|n~98_combout\ : std_logic;
SIGNAL \myConverter|n~132_combout\ : std_logic;
SIGNAL \myConverter|n~107_combout\ : std_logic;
SIGNAL \myConverter|thou[3]~3_combout\ : std_logic;
SIGNAL \myConverter|n~131_combout\ : std_logic;
SIGNAL \myConverter|n~129_combout\ : std_logic;
SIGNAL \myConverter|n~120_combout\ : std_logic;
SIGNAL \myConverter|n~118_combout\ : std_logic;
SIGNAL \myConverter|n~119_combout\ : std_logic;
SIGNAL \myConverter|n~126_combout\ : std_logic;
SIGNAL \myConverter|thou[0]~0_combout\ : std_logic;
SIGNAL \myConverter|thou[2]~2_combout\ : std_logic;
SIGNAL \converter2|WideOr1~0_combout\ : std_logic;
SIGNAL \myConverter|hund[2]~2_combout\ : std_logic;
SIGNAL \myConverter|hund[3]~3_combout\ : std_logic;
SIGNAL \myConverter|n~111_combout\ : std_logic;
SIGNAL \myConverter|n~110_combout\ : std_logic;
SIGNAL \myConverter|n~109_combout\ : std_logic;
SIGNAL \myConverter|n~121_combout\ : std_logic;
SIGNAL \myConverter|n~124_combout\ : std_logic;
SIGNAL \myConverter|n~122_combout\ : std_logic;
SIGNAL \myConverter|n~112_combout\ : std_logic;
SIGNAL \myConverter|n~113_combout\ : std_logic;
SIGNAL \myConverter|n~125_combout\ : std_logic;
SIGNAL \myConverter|hund[0]~0_combout\ : std_logic;
SIGNAL \converter3|WideOr1~0_combout\ : std_logic;
SIGNAL \myInterface|state.hundred~regout\ : std_logic;
SIGNAL \myInterface|state.ten~regout\ : std_logic;
SIGNAL \myInterface|state.one~regout\ : std_logic;
SIGNAL \myInterface|Selector0~0_combout\ : std_logic;
SIGNAL \myInterface|state.spin~regout\ : std_logic;
SIGNAL \myInterface|Selector16~0_combout\ : std_logic;
SIGNAL \myInterface|Selector13~0_combout\ : std_logic;
SIGNAL \myInterface|Selector13~1_combout\ : std_logic;
SIGNAL \myInterface|Add0~3\ : std_logic;
SIGNAL \myInterface|Add0~5\ : std_logic;
SIGNAL \myInterface|Add0~7\ : std_logic;
SIGNAL \myInterface|Add0~8_combout\ : std_logic;
SIGNAL \myInterface|Selector12~0_combout\ : std_logic;
SIGNAL \myInterface|Selector12~1_combout\ : std_logic;
SIGNAL \myInterface|Equal0~0_combout\ : std_logic;
SIGNAL \myInterface|counter[0]~1_combout\ : std_logic;
SIGNAL \myInterface|Add0~1\ : std_logic;
SIGNAL \myInterface|Add0~2_combout\ : std_logic;
SIGNAL \myInterface|Selector15~0_combout\ : std_logic;
SIGNAL \myInterface|Selector15~1_combout\ : std_logic;
SIGNAL \myInterface|state~16_combout\ : std_logic;
SIGNAL \myInterface|state.tenThousand~regout\ : std_logic;
SIGNAL \myInterface|state.thousand~0_combout\ : std_logic;
SIGNAL \myInterface|state.thousand~regout\ : std_logic;
SIGNAL \myInterface|Selector11~2_combout\ : std_logic;
SIGNAL \myConverter|tens[2]~2_combout\ : std_logic;
SIGNAL \myConverter|tens[3]~3_combout\ : std_logic;
SIGNAL \myConverter|n~115_combout\ : std_logic;
SIGNAL \myConverter|n~116_combout\ : std_logic;
SIGNAL \myConverter|tens[0]~0_combout\ : std_logic;
SIGNAL \converter4|WideOr1~0_combout\ : std_logic;
SIGNAL \myInterface|Selector11~1_combout\ : std_logic;
SIGNAL \myConverter|LessThan24~0_combout\ : std_logic;
SIGNAL \myConverter|LessThan28~0_combout\ : std_logic;
SIGNAL \myConverter|n~106_combout\ : std_logic;
SIGNAL \myConverter|LessThan33~0_combout\ : std_logic;
SIGNAL \myInterface|Selector11~0_combout\ : std_logic;
SIGNAL \myInterface|Selector11~3_combout\ : std_logic;
SIGNAL \myInterface|Selector3~0_combout\ : std_logic;
SIGNAL \myInterface|Selector2~0_combout\ : std_logic;
SIGNAL \myInterface|Add0~4_combout\ : std_logic;
SIGNAL \myInterface|Selector14~0_combout\ : std_logic;
SIGNAL \myInterface|Selector1~0_combout\ : std_logic;
SIGNAL \myInterface|addr~0_combout\ : std_logic;
SIGNAL \myInterface|addr~1_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Add1~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|addrCounter[0]~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector0~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|subStates.subState2~regout\ : std_logic;
SIGNAL \myControler|myStateMachine|addrToRead[0]~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Add1~1\ : std_logic;
SIGNAL \myControler|myStateMachine|Add1~2_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|addrToRead[1]~feeder_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Add1~3\ : std_logic;
SIGNAL \myControler|myStateMachine|Add1~4_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Add1~5\ : std_logic;
SIGNAL \myControler|myStateMachine|Add1~6_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|addrToRead[3]~feeder_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Add1~7\ : std_logic;
SIGNAL \myControler|myStateMachine|Add1~8_combout\ : std_logic;
SIGNAL \myInterface|Selector10~0_combout\ : std_logic;
SIGNAL \myConverter|LessThan21~1_combout\ : std_logic;
SIGNAL \myConverter|n~133_combout\ : std_logic;
SIGNAL \myConverter|LessThan21~0_combout\ : std_logic;
SIGNAL \myInterface|Selector10~1_combout\ : std_logic;
SIGNAL \myConverter|n~134_combout\ : std_logic;
SIGNAL \myConverter|tenThou[3]~0_combout\ : std_logic;
SIGNAL \myInterface|Selector10~2_combout\ : std_logic;
SIGNAL \myConverter|thou[1]~1_combout\ : std_logic;
SIGNAL \myInterface|Selector10~3_combout\ : std_logic;
SIGNAL \myInterface|Selector10~6_combout\ : std_logic;
SIGNAL \myInterface|Selector9~5_combout\ : std_logic;
SIGNAL \myInterface|Selector9~3_combout\ : std_logic;
SIGNAL \myConverter|ones[2]~1_combout\ : std_logic;
SIGNAL \myInterface|Selector9~4_combout\ : std_logic;
SIGNAL \myInterface|Selector9~6_combout\ : std_logic;
SIGNAL \myConverter|ones[1]~0_combout\ : std_logic;
SIGNAL \myInterface|Selector8~2_combout\ : std_logic;
SIGNAL \myInterface|Selector8~1_combout\ : std_logic;
SIGNAL \myInterface|Selector8~0_combout\ : std_logic;
SIGNAL \myInterface|Selector8~5_combout\ : std_logic;
SIGNAL \myInterface|Selector7~3_combout\ : std_logic;
SIGNAL \myInterface|Selector7~4_combout\ : std_logic;
SIGNAL \myInterface|Selector7~1_combout\ : std_logic;
SIGNAL \myInterface|Selector7~0_combout\ : std_logic;
SIGNAL \myInterface|Selector7~2_combout\ : std_logic;
SIGNAL \myInterface|Selector7~5_combout\ : std_logic;
SIGNAL \myInterface|characterCode[7]~feeder_combout\ : std_logic;
SIGNAL \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector151~1_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector77~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[0]~reg0_regout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[0]~1_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[0]~en_regout\ : std_logic;
SIGNAL \myControler|myStateMachine|Equal5~1_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector150~1_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[1]~reg0_regout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[1]~2_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[1]~en_regout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector149~0_combout\ : std_logic;
SIGNAL \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector149~1_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector149~2_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[2]~reg0_regout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[2]~3_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[2]~en_regout\ : std_logic;
SIGNAL \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector148~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector148~1_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[3]~reg0_regout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[3]~4_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[3]~en_regout\ : std_logic;
SIGNAL \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector147~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector147~1_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[4]~reg0_regout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[4]~5_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[4]~en_regout\ : std_logic;
SIGNAL \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector112~1_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[5]~reg0_regout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[5]~6_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[5]~en_regout\ : std_logic;
SIGNAL \myControler|myStateMachine|Add1~9\ : std_logic;
SIGNAL \myControler|myStateMachine|Add1~10_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|addrCounter~1_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Add1~11\ : std_logic;
SIGNAL \myControler|myStateMachine|Add1~12_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[6]~reg0_regout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[6]~7_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[6]~en_regout\ : std_logic;
SIGNAL \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector70~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[7]~reg0_regout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[7]~9_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdBus[7]~en_regout\ : std_logic;
SIGNAL \backLight~combout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector190~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdRsSelect~regout\ : std_logic;
SIGNAL \myControler|myStateMachine|Selector189~0_combout\ : std_logic;
SIGNAL \myControler|myStateMachine|lcdEnableOut~regout\ : std_logic;
SIGNAL \myControler|myStateMachine|counter\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \myControler|myStateMachine|addrToRead\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \myControler|myStateMachine|addrCounter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \in~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \myInterface|addr\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \myInterface|characterCode\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \myInterface|counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_lcdOnIn~combout\ : std_logic;
SIGNAL \myControler|myStateMachine|ALT_INV_state.writeAddr~regout\ : std_logic;
SIGNAL \myControler|myStateMachine|ALT_INV_lcdBus[7]~en_regout\ : std_logic;
SIGNAL \myControler|myStateMachine|ALT_INV_lcdBus[7]~reg0_regout\ : std_logic;
SIGNAL \myControler|myStateMachine|ALT_INV_lcdBus[6]~en_regout\ : std_logic;
SIGNAL \myControler|myStateMachine|ALT_INV_lcdBus[5]~en_regout\ : std_logic;
SIGNAL \myControler|myStateMachine|ALT_INV_lcdBus[4]~en_regout\ : std_logic;
SIGNAL \myControler|myStateMachine|ALT_INV_lcdBus[3]~en_regout\ : std_logic;
SIGNAL \myControler|myStateMachine|ALT_INV_lcdBus[2]~en_regout\ : std_logic;
SIGNAL \myControler|myStateMachine|ALT_INV_lcdBus[1]~en_regout\ : std_logic;
SIGNAL \myControler|myStateMachine|ALT_INV_lcdBus[0]~en_regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_backLight <= backLight;
ww_lcdOnIn <= lcdOnIn;
\ww_in\ <= \in\;
backLightOut <= ww_backLightOut;
lcdBus <= ww_lcdBus;
lcdOnOut <= ww_lcdOnOut;
lcdReadWriteSel <= ww_lcdReadWriteSel;
lcdRsSelect <= ww_lcdRsSelect;
lcdEnableOut <= ww_lcdEnableOut;
errorLed1 <= ww_errorLed1;
errorLed2 <= ww_errorLed2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\myInterface|characterCode\(7) & \myInterface|characterCode\(4) & \myInterface|characterCode\(4) & \myInterface|characterCode\(3) & 
\myInterface|characterCode\(2) & \myInterface|characterCode\(1) & \myInterface|characterCode\(0));

\myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\myInterface|addr\(4) & \myInterface|addr\(3) & \myInterface|addr\(2) & \myInterface|addr\(1) & \myInterface|addr\(0));

\myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\myControler|myStateMachine|addrToRead\(4) & \myControler|myStateMachine|addrToRead\(3) & \myControler|myStateMachine|addrToRead\(2) & 
\myControler|myStateMachine|addrToRead\(1) & \myControler|myStateMachine|addrToRead\(0));

\myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a1\ <= \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a2\ <= \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a3\ <= \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a4\ <= \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a5\ <= \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a6\ <= \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_lcdOnIn~combout\ <= NOT \lcdOnIn~combout\;
\myControler|myStateMachine|ALT_INV_state.writeAddr~regout\ <= NOT \myControler|myStateMachine|state.writeAddr~regout\;
\myControler|myStateMachine|ALT_INV_lcdBus[7]~en_regout\ <= NOT \myControler|myStateMachine|lcdBus[7]~en_regout\;
\myControler|myStateMachine|ALT_INV_lcdBus[7]~reg0_regout\ <= NOT \myControler|myStateMachine|lcdBus[7]~reg0_regout\;
\myControler|myStateMachine|ALT_INV_lcdBus[6]~en_regout\ <= NOT \myControler|myStateMachine|lcdBus[6]~en_regout\;
\myControler|myStateMachine|ALT_INV_lcdBus[5]~en_regout\ <= NOT \myControler|myStateMachine|lcdBus[5]~en_regout\;
\myControler|myStateMachine|ALT_INV_lcdBus[4]~en_regout\ <= NOT \myControler|myStateMachine|lcdBus[4]~en_regout\;
\myControler|myStateMachine|ALT_INV_lcdBus[3]~en_regout\ <= NOT \myControler|myStateMachine|lcdBus[3]~en_regout\;
\myControler|myStateMachine|ALT_INV_lcdBus[2]~en_regout\ <= NOT \myControler|myStateMachine|lcdBus[2]~en_regout\;
\myControler|myStateMachine|ALT_INV_lcdBus[1]~en_regout\ <= NOT \myControler|myStateMachine|lcdBus[1]~en_regout\;
\myControler|myStateMachine|ALT_INV_lcdBus[0]~en_regout\ <= NOT \myControler|myStateMachine|lcdBus[0]~en_regout\;

-- Location: M4K_X26_Y17
\myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "lcdController:myControler|lcdRegisterFile:myRegisters|altsyncram:charCode_rtl_0|altsyncram_0lg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 7,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 7,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 7,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 7,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCFF_X31_Y16_N11
\myControler|myStateMachine|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[13]~70_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(13));

-- Location: LCFF_X31_Y15_N7
\myControler|myStateMachine|counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[27]~98_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(27));

-- Location: LCFF_X31_Y15_N17
\myControler|myStateMachine|counter[32]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[32]~108_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(32));

-- Location: LCCOMB_X31_Y16_N10
\myControler|myStateMachine|counter[13]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[13]~70_combout\ = (\myControler|myStateMachine|counter\(13) & (!\myControler|myStateMachine|counter[12]~69\)) # (!\myControler|myStateMachine|counter\(13) & ((\myControler|myStateMachine|counter[12]~69\) # (GND)))
-- \myControler|myStateMachine|counter[13]~71\ = CARRY((!\myControler|myStateMachine|counter[12]~69\) # (!\myControler|myStateMachine|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(13),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[12]~69\,
	combout => \myControler|myStateMachine|counter[13]~70_combout\,
	cout => \myControler|myStateMachine|counter[13]~71\);

-- Location: LCCOMB_X31_Y15_N6
\myControler|myStateMachine|counter[27]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[27]~98_combout\ = (\myControler|myStateMachine|counter\(27) & (!\myControler|myStateMachine|counter[26]~97\)) # (!\myControler|myStateMachine|counter\(27) & ((\myControler|myStateMachine|counter[26]~97\) # (GND)))
-- \myControler|myStateMachine|counter[27]~99\ = CARRY((!\myControler|myStateMachine|counter[26]~97\) # (!\myControler|myStateMachine|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(27),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[26]~97\,
	combout => \myControler|myStateMachine|counter[27]~98_combout\,
	cout => \myControler|myStateMachine|counter[27]~99\);

-- Location: LCCOMB_X31_Y15_N14
\myControler|myStateMachine|counter[31]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[31]~106_combout\ = (\myControler|myStateMachine|counter\(31) & (!\myControler|myStateMachine|counter[30]~105\)) # (!\myControler|myStateMachine|counter\(31) & ((\myControler|myStateMachine|counter[30]~105\) # (GND)))
-- \myControler|myStateMachine|counter[31]~107\ = CARRY((!\myControler|myStateMachine|counter[30]~105\) # (!\myControler|myStateMachine|counter\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(31),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[30]~105\,
	combout => \myControler|myStateMachine|counter[31]~106_combout\,
	cout => \myControler|myStateMachine|counter[31]~107\);

-- Location: LCCOMB_X31_Y15_N16
\myControler|myStateMachine|counter[32]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[32]~108_combout\ = \myControler|myStateMachine|counter\(32) $ (!\myControler|myStateMachine|counter[31]~107\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(32),
	cin => \myControler|myStateMachine|counter[31]~107\,
	combout => \myControler|myStateMachine|counter[32]~108_combout\);

-- Location: LCCOMB_X48_Y21_N6
\myInterface|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Add0~0_combout\ = \myInterface|counter\(0) $ (VCC)
-- \myInterface|Add0~1\ = CARRY(\myInterface|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myInterface|counter\(0),
	datad => VCC,
	combout => \myInterface|Add0~0_combout\,
	cout => \myInterface|Add0~1\);

-- Location: LCCOMB_X48_Y21_N12
\myInterface|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Add0~6_combout\ = (\myInterface|counter\(3) & (!\myInterface|Add0~5\)) # (!\myInterface|counter\(3) & ((\myInterface|Add0~5\) # (GND)))
-- \myInterface|Add0~7\ = CARRY((!\myInterface|Add0~5\) # (!\myInterface|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myInterface|counter\(3),
	datad => VCC,
	cin => \myInterface|Add0~5\,
	combout => \myInterface|Add0~6_combout\,
	cout => \myInterface|Add0~7\);

-- Location: LCCOMB_X28_Y17_N8
\myControler|myStateMachine|Selector151~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector151~0_combout\ = (!\myControler|myStateMachine|state.writeData~regout\ & ((\myControler|myStateMachine|state.writeAddr~regout\ & (\myControler|myStateMachine|addrCounter\(0))) # 
-- (!\myControler|myStateMachine|state.writeAddr~regout\ & ((\myControler|myStateMachine|state.displayClear~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|state.writeData~regout\,
	datab => \myControler|myStateMachine|addrCounter\(0),
	datac => \myControler|myStateMachine|state.writeAddr~regout\,
	datad => \myControler|myStateMachine|state.displayClear~regout\,
	combout => \myControler|myStateMachine|Selector151~0_combout\);

-- Location: LCCOMB_X28_Y17_N22
\myControler|myStateMachine|Selector150~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector150~0_combout\ = (\myControler|myStateMachine|state.writeData~regout\ & ((\myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a1\) # ((\myControler|myStateMachine|addrCounter\(1) & 
-- \myControler|myStateMachine|state.writeAddr~regout\)))) # (!\myControler|myStateMachine|state.writeData~regout\ & (\myControler|myStateMachine|addrCounter\(1) & ((\myControler|myStateMachine|state.writeAddr~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|state.writeData~regout\,
	datab => \myControler|myStateMachine|addrCounter\(1),
	datac => \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a1\,
	datad => \myControler|myStateMachine|state.writeAddr~regout\,
	combout => \myControler|myStateMachine|Selector150~0_combout\);

-- Location: LCCOMB_X27_Y17_N2
\myControler|myStateMachine|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal5~0_combout\ = (\myControler|myStateMachine|addrCounter\(3) & (!\myControler|myStateMachine|addrCounter\(6) & (\myControler|myStateMachine|addrCounter\(4) & !\myControler|myStateMachine|addrCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|addrCounter\(3),
	datab => \myControler|myStateMachine|addrCounter\(6),
	datac => \myControler|myStateMachine|addrCounter\(4),
	datad => \myControler|myStateMachine|addrCounter\(5),
	combout => \myControler|myStateMachine|Equal5~0_combout\);

-- Location: LCFF_X28_Y17_N11
\myControler|myStateMachine|displayOnOff\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|displayOnOff~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|displayOnOff~regout\);

-- Location: LCCOMB_X27_Y17_N4
\myControler|myStateMachine|Selector112~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector112~0_combout\ = (\myControler|myStateMachine|state.functionSet~regout\) # ((\myControler|myStateMachine|state.writeAddr~regout\ & (\myControler|myStateMachine|addrCounter\(5) & 
-- !\myControler|myStateMachine|addrCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|state.writeAddr~regout\,
	datab => \myControler|myStateMachine|addrCounter\(5),
	datac => \myControler|myStateMachine|addrCounter\(4),
	datad => \myControler|myStateMachine|state.functionSet~regout\,
	combout => \myControler|myStateMachine|Selector112~0_combout\);

-- Location: LCCOMB_X31_Y15_N28
\myControler|myStateMachine|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal0~1_combout\ = (!\myControler|myStateMachine|counter\(21) & (!\myControler|myStateMachine|counter\(24) & (!\myControler|myStateMachine|counter\(23) & !\myControler|myStateMachine|counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(21),
	datab => \myControler|myStateMachine|counter\(24),
	datac => \myControler|myStateMachine|counter\(23),
	datad => \myControler|myStateMachine|counter\(22),
	combout => \myControler|myStateMachine|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y17_N30
\myControler|myStateMachine|Selector229~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector229~1_combout\ = (\myControler|myStateMachine|displayOnOff~regout\ & (\myControler|myStateMachine|state.displayClear~regout\ & \myControler|myStateMachine|Selector229~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|displayOnOff~regout\,
	datab => \myControler|myStateMachine|state.displayClear~regout\,
	datad => \myControler|myStateMachine|Selector229~0_combout\,
	combout => \myControler|myStateMachine|Selector229~1_combout\);

-- Location: LCCOMB_X28_Y17_N10
\myControler|myStateMachine|displayOnOff~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|displayOnOff~0_combout\ = (\myControler|myStateMachine|displayOnOff~regout\) # ((\myControler|myStateMachine|subStates.subState2~regout\ & \myControler|myStateMachine|state.entryModeSet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|subStates.subState2~regout\,
	datab => \myControler|myStateMachine|state.entryModeSet~regout\,
	datac => \myControler|myStateMachine|displayOnOff~regout\,
	combout => \myControler|myStateMachine|displayOnOff~0_combout\);

-- Location: LCCOMB_X30_Y17_N16
\myControler|myStateMachine|Selector232~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector232~2_combout\ = (\myControler|myStateMachine|state.functionSet~regout\ & \myControler|myStateMachine|subStates.subState3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myControler|myStateMachine|state.functionSet~regout\,
	datad => \myControler|myStateMachine|subStates.subState3~regout\,
	combout => \myControler|myStateMachine|Selector232~2_combout\);

-- Location: LCCOMB_X30_Y17_N10
\myControler|myStateMachine|Selector226~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector226~1_combout\ = (\myControler|myStateMachine|Equal2~3_combout\ & (\myControler|myStateMachine|Equal2~2_combout\ & (\myControler|myStateMachine|Selector232~2_combout\ & 
-- \myControler|myStateMachine|functionSetCase.functionSet4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Equal2~3_combout\,
	datab => \myControler|myStateMachine|Equal2~2_combout\,
	datac => \myControler|myStateMachine|Selector232~2_combout\,
	datad => \myControler|myStateMachine|functionSetCase.functionSet4~regout\,
	combout => \myControler|myStateMachine|Selector226~1_combout\);

-- Location: LCCOMB_X28_Y17_N12
\myControler|myStateMachine|counter[20]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[20]~33_combout\ = (!\myControler|myStateMachine|state.writeData~regout\ & (!\myControler|myStateMachine|state.displaySet~regout\ & (!\myControler|myStateMachine|state.cursorShift~regout\ & 
-- !\myControler|myStateMachine|state.writeAddr~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|state.writeData~regout\,
	datab => \myControler|myStateMachine|state.displaySet~regout\,
	datac => \myControler|myStateMachine|state.cursorShift~regout\,
	datad => \myControler|myStateMachine|state.writeAddr~regout\,
	combout => \myControler|myStateMachine|counter[20]~33_combout\);

-- Location: LCCOMB_X29_Y17_N20
\myControler|myStateMachine|Selector234~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector234~2_combout\ = (\myControler|myStateMachine|subStates.subState2~regout\ & (((\myControler|myStateMachine|state.functionSet~regout\) # (!\myControler|myStateMachine|Selector148~2_combout\)) # 
-- (!\myControler|myStateMachine|counter[20]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter[20]~33_combout\,
	datab => \myControler|myStateMachine|Selector148~2_combout\,
	datac => \myControler|myStateMachine|state.functionSet~regout\,
	datad => \myControler|myStateMachine|subStates.subState2~regout\,
	combout => \myControler|myStateMachine|Selector234~2_combout\);

-- Location: LCCOMB_X31_Y17_N14
\myControler|myStateMachine|Selector234~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector234~3_combout\ = (!\myControler|myStateMachine|counter[20]~33_combout\ & ((!\myControler|myStateMachine|Equal3~0_combout\) # (!\myControler|myStateMachine|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter[20]~33_combout\,
	datac => \myControler|myStateMachine|Equal2~2_combout\,
	datad => \myControler|myStateMachine|Equal3~0_combout\,
	combout => \myControler|myStateMachine|Selector234~3_combout\);

-- Location: LCCOMB_X29_Y17_N8
\myControler|myStateMachine|counter[20]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[20]~36_combout\ = ((\myControler|myStateMachine|state.displayClear~regout\) # ((\myControler|myStateMachine|state.functionSet~regout\) # (\myControler|myStateMachine|state.entryModeSet~regout\))) # 
-- (!\myControler|myStateMachine|subStates.subState3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|subStates.subState3~regout\,
	datab => \myControler|myStateMachine|state.displayClear~regout\,
	datac => \myControler|myStateMachine|state.functionSet~regout\,
	datad => \myControler|myStateMachine|state.entryModeSet~regout\,
	combout => \myControler|myStateMachine|counter[20]~36_combout\);

-- Location: LCCOMB_X29_Y17_N2
\myControler|myStateMachine|counter[20]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[20]~37_combout\ = (!\myControler|myStateMachine|counter[20]~33_combout\ & ((\myControler|myStateMachine|Selector155~0_combout\) # ((\myControler|myStateMachine|Equal1~5_combout\ & 
-- \myControler|myStateMachine|counter[20]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter[20]~33_combout\,
	datab => \myControler|myStateMachine|Equal1~5_combout\,
	datac => \myControler|myStateMachine|counter[20]~36_combout\,
	datad => \myControler|myStateMachine|Selector155~0_combout\,
	combout => \myControler|myStateMachine|counter[20]~37_combout\);

-- Location: LCCOMB_X33_Y21_N10
\myConverter|n~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~33_combout\ = (\in~combout\(14) & (!\in~combout\(12) & (\in~combout\(15) $ (!\in~combout\(13))))) # (!\in~combout\(14) & (\in~combout\(15) & (!\in~combout\(13) & \in~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(15),
	datab => \in~combout\(14),
	datac => \in~combout\(13),
	datad => \in~combout\(12),
	combout => \myConverter|n~33_combout\);

-- Location: LCCOMB_X33_Y21_N16
\myConverter|n~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~36_combout\ = (\myConverter|n~34_combout\ & (((!\in~combout\(11) & !\myConverter|n~32_combout\)))) # (!\myConverter|n~34_combout\ & (\myConverter|n~33_combout\ & ((\in~combout\(11)) # (\myConverter|n~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~33_combout\,
	datab => \myConverter|n~34_combout\,
	datac => \in~combout\(11),
	datad => \myConverter|n~32_combout\,
	combout => \myConverter|n~36_combout\);

-- Location: LCCOMB_X35_Y21_N16
\myConverter|n~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~42_combout\ = (\myConverter|n~40_combout\ & (!\in~combout\(9) & ((!\myConverter|n~38_combout\)))) # (!\myConverter|n~40_combout\ & (\myConverter|n~39_combout\ & ((\in~combout\(9)) # (\myConverter|n~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(9),
	datab => \myConverter|n~39_combout\,
	datac => \myConverter|n~40_combout\,
	datad => \myConverter|n~38_combout\,
	combout => \myConverter|n~42_combout\);

-- Location: LCCOMB_X35_Y21_N12
\myConverter|n~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~44_combout\ = (\myConverter|n~42_combout\ & (!\in~combout\(8))) # (!\myConverter|n~42_combout\ & ((\in~combout\(8) & ((!\myConverter|n~43_combout\))) # (!\in~combout\(8) & (\myConverter|n~41_combout\ & \myConverter|n~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~42_combout\,
	datab => \in~combout\(8),
	datac => \myConverter|n~41_combout\,
	datad => \myConverter|n~43_combout\,
	combout => \myConverter|n~44_combout\);

-- Location: LCCOMB_X35_Y21_N28
\myConverter|n~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~48_combout\ = (\myConverter|n~46_combout\ & (!\myConverter|n~44_combout\ & (!\in~combout\(7)))) # (!\myConverter|n~46_combout\ & (\myConverter|n~45_combout\ & ((\myConverter|n~44_combout\) # (\in~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~44_combout\,
	datab => \myConverter|n~46_combout\,
	datac => \in~combout\(7),
	datad => \myConverter|n~45_combout\,
	combout => \myConverter|n~48_combout\);

-- Location: LCCOMB_X37_Y21_N10
\myConverter|n~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~51_combout\ = (\myConverter|n~49_combout\ & (((!\in~combout\(6) & !\myConverter|n~47_combout\)))) # (!\myConverter|n~49_combout\ & (\myConverter|n~48_combout\ & ((\in~combout\(6)) # (\myConverter|n~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~48_combout\,
	datab => \in~combout\(6),
	datac => \myConverter|n~49_combout\,
	datad => \myConverter|n~47_combout\,
	combout => \myConverter|n~51_combout\);

-- Location: LCCOMB_X37_Y21_N6
\myConverter|n~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~53_combout\ = \myConverter|n~51_combout\ $ ((((!\myConverter|n~52_combout\ & !\in~combout\(5))) # (!\myConverter|n~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~51_combout\,
	datab => \myConverter|n~52_combout\,
	datac => \in~combout\(5),
	datad => \myConverter|n~50_combout\,
	combout => \myConverter|n~53_combout\);

-- Location: LCCOMB_X33_Y21_N12
\myConverter|n~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~55_combout\ = (\in~combout\(15) & (\in~combout\(14) & (\in~combout\(13) & \in~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(15),
	datab => \in~combout\(14),
	datac => \in~combout\(13),
	datad => \in~combout\(12),
	combout => \myConverter|n~55_combout\);

-- Location: LCCOMB_X34_Y21_N10
\myConverter|n~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~59_combout\ = (\myConverter|n~138_combout\ & ((\myConverter|LessThan0~0_combout\ & ((\myConverter|n~136_combout\) # (!\myConverter|n~137_combout\))) # (!\myConverter|LessThan0~0_combout\ & ((\myConverter|n~137_combout\) # 
-- (!\myConverter|n~136_combout\))))) # (!\myConverter|n~138_combout\ & (\myConverter|n~136_combout\ $ (((\myConverter|LessThan0~0_combout\ & \myConverter|n~137_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|LessThan0~0_combout\,
	datab => \myConverter|n~137_combout\,
	datac => \myConverter|n~138_combout\,
	datad => \myConverter|n~136_combout\,
	combout => \myConverter|n~59_combout\);

-- Location: LCCOMB_X34_Y21_N14
\myConverter|n~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~61_combout\ = (\myConverter|n~56_combout\ & (!\myConverter|LessThan8~0_combout\)) # (!\myConverter|n~56_combout\ & (\myConverter|LessThan8~0_combout\ & \myConverter|n~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myConverter|n~56_combout\,
	datac => \myConverter|LessThan8~0_combout\,
	datad => \myConverter|n~57_combout\,
	combout => \myConverter|n~61_combout\);

-- Location: LCCOMB_X38_Y21_N12
\myConverter|n~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~65_combout\ = (\myConverter|n~60_combout\ & (\myConverter|n~61_combout\ & ((!\myConverter|n~62_combout\) # (!\myConverter|n~58_combout\)))) # (!\myConverter|n~60_combout\ & (((\myConverter|n~58_combout\ & \myConverter|n~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~61_combout\,
	datab => \myConverter|n~58_combout\,
	datac => \myConverter|n~60_combout\,
	datad => \myConverter|n~62_combout\,
	combout => \myConverter|n~65_combout\);

-- Location: LCCOMB_X38_Y21_N14
\myConverter|n~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~67_combout\ = (\myConverter|n~65_combout\ & (!\myConverter|n~66_combout\)) # (!\myConverter|n~65_combout\ & ((\myConverter|n~66_combout\ & ((\myConverter|n~63_combout\) # (\myConverter|n~64_combout\))) # (!\myConverter|n~66_combout\ & 
-- ((!\myConverter|n~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~65_combout\,
	datab => \myConverter|n~66_combout\,
	datac => \myConverter|n~63_combout\,
	datad => \myConverter|n~64_combout\,
	combout => \myConverter|n~67_combout\);

-- Location: LCCOMB_X41_Y21_N14
\myConverter|n~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~74_combout\ = \myConverter|n~73_combout\ $ (((\myConverter|n~72_combout\) # ((\myConverter|n~53_combout\ & \myConverter|n~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~53_combout\,
	datab => \myConverter|n~72_combout\,
	datac => \myConverter|n~71_combout\,
	datad => \myConverter|n~73_combout\,
	combout => \myConverter|n~74_combout\);

-- Location: LCCOMB_X34_Y21_N12
\myConverter|n~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~78_combout\ = (\myConverter|n~141_combout\ & (\myConverter|n~57_combout\ $ (((!\myConverter|n~56_combout\) # (!\myConverter|LessThan8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|LessThan8~0_combout\,
	datab => \myConverter|n~57_combout\,
	datac => \myConverter|n~141_combout\,
	datad => \myConverter|n~56_combout\,
	combout => \myConverter|n~78_combout\);

-- Location: LCCOMB_X38_Y21_N10
\myConverter|n~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~81_combout\ = (\myConverter|n~78_combout\ & ((\myConverter|n~77_combout\ $ (\myConverter|n~79_combout\)))) # (!\myConverter|n~78_combout\ & (\myConverter|n~77_combout\ & ((!\myConverter|n~79_combout\) # (!\myConverter|n~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~78_combout\,
	datab => \myConverter|n~76_combout\,
	datac => \myConverter|n~77_combout\,
	datad => \myConverter|n~79_combout\,
	combout => \myConverter|n~81_combout\);

-- Location: LCCOMB_X38_Y21_N2
\myConverter|n~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~86_combout\ = (\myConverter|n~80_combout\ & (((!\myConverter|n~82_combout\) # (!\myConverter|n~75_combout\)))) # (!\myConverter|n~80_combout\ & (\myConverter|n~75_combout\ & ((\myConverter|n~81_combout\) # (\myConverter|n~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~81_combout\,
	datab => \myConverter|n~80_combout\,
	datac => \myConverter|n~75_combout\,
	datad => \myConverter|n~82_combout\,
	combout => \myConverter|n~86_combout\);

-- Location: LCCOMB_X37_Y21_N12
\myConverter|n~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~91_combout\ = (\myConverter|n~50_combout\ & (((!\myConverter|n~52_combout\ & !\in~combout\(5))))) # (!\myConverter|n~50_combout\ & (\myConverter|n~51_combout\ & ((\myConverter|n~52_combout\) # (\in~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~51_combout\,
	datab => \myConverter|n~52_combout\,
	datac => \in~combout\(5),
	datad => \myConverter|n~50_combout\,
	combout => \myConverter|n~91_combout\);

-- Location: LCCOMB_X41_Y21_N12
\myConverter|n~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~95_combout\ = (\myConverter|n~53_combout\ & ((\myConverter|n~71_combout\ & ((!\myConverter|n~73_combout\))) # (!\myConverter|n~71_combout\ & ((\myConverter|n~73_combout\) # (!\myConverter|n~72_combout\))))) # (!\myConverter|n~53_combout\ & 
-- (((\myConverter|n~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~53_combout\,
	datab => \myConverter|n~72_combout\,
	datac => \myConverter|n~71_combout\,
	datad => \myConverter|n~73_combout\,
	combout => \myConverter|n~95_combout\);

-- Location: LCCOMB_X50_Y21_N12
\myConverter|n~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~104_combout\ = (\myConverter|n~100_combout\ & (\myConverter|n~99_combout\ & (\myConverter|n~142_combout\ $ (\myConverter|n~101_combout\)))) # (!\myConverter|n~100_combout\ & (\myConverter|n~142_combout\ & (\myConverter|n~101_combout\ & 
-- !\myConverter|n~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~142_combout\,
	datab => \myConverter|n~101_combout\,
	datac => \myConverter|n~100_combout\,
	datad => \myConverter|n~99_combout\,
	combout => \myConverter|n~104_combout\);

-- Location: LCCOMB_X37_Y21_N4
\myConverter|n~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~114_combout\ = (\in~combout\(3) & (((\myConverter|n~109_combout\)))) # (!\in~combout\(3) & ((\myConverter|n~110_combout\ & ((!\myConverter|n~109_combout\))) # (!\myConverter|n~110_combout\ & (!\myConverter|n~111_combout\ & 
-- \myConverter|n~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(3),
	datab => \myConverter|n~111_combout\,
	datac => \myConverter|n~110_combout\,
	datad => \myConverter|n~109_combout\,
	combout => \myConverter|n~114_combout\);

-- Location: LCCOMB_X45_Y21_N20
\myConverter|n~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~117_combout\ = (\myConverter|n~114_combout\ & (!\in~combout\(2) & ((\myConverter|n~112_combout\) # (\myConverter|n~113_combout\)))) # (!\myConverter|n~114_combout\ & ((\myConverter|n~113_combout\ $ (\in~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~114_combout\,
	datab => \myConverter|n~112_combout\,
	datac => \myConverter|n~113_combout\,
	datad => \in~combout\(2),
	combout => \myConverter|n~117_combout\);

-- Location: LCCOMB_X45_Y21_N10
\myConverter|n~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~123_combout\ = (\myConverter|n~118_combout\ & (((!\myConverter|n~121_combout\)) # (!\myConverter|n~120_combout\))) # (!\myConverter|n~118_combout\ & (\myConverter|n~121_combout\ & ((\myConverter|n~120_combout\) # 
-- (!\myConverter|n~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~118_combout\,
	datab => \myConverter|n~120_combout\,
	datac => \myConverter|n~121_combout\,
	datad => \myConverter|n~119_combout\,
	combout => \myConverter|n~123_combout\);

-- Location: LCCOMB_X45_Y21_N16
\myConverter|tens[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|tens[1]~1_combout\ = (\myConverter|n~123_combout\ & (\myConverter|n~124_combout\ $ (((\myConverter|n~125_combout\))))) # (!\myConverter|n~123_combout\ & (((!\myConverter|n~124_combout\ & \myConverter|n~122_combout\)) # 
-- (!\myConverter|n~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~123_combout\,
	datab => \myConverter|n~124_combout\,
	datac => \myConverter|n~122_combout\,
	datad => \myConverter|n~125_combout\,
	combout => \myConverter|tens[1]~1_combout\);

-- Location: LCCOMB_X45_Y21_N2
\myConverter|ones[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|ones[3]~2_combout\ = (\myConverter|n~115_combout\ & (!\myConverter|n~117_combout\ & (!\in~combout\(1)))) # (!\myConverter|n~115_combout\ & (\myConverter|n~116_combout\ & ((\myConverter|n~117_combout\) # (\in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~117_combout\,
	datab => \myConverter|n~115_combout\,
	datac => \in~combout\(1),
	datad => \myConverter|n~116_combout\,
	combout => \myConverter|ones[3]~2_combout\);

-- Location: LCCOMB_X46_Y21_N30
\converter5|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \converter5|WideOr1~0_combout\ = (\in~combout\(0) & (((!\myConverter|ones[2]~1_combout\ & !\myConverter|ones[1]~0_combout\)) # (!\myConverter|ones[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|ones[3]~2_combout\,
	datab => \myConverter|ones[2]~1_combout\,
	datac => \in~combout\(0),
	datad => \myConverter|ones[1]~0_combout\,
	combout => \converter5|WideOr1~0_combout\);

-- Location: LCCOMB_X42_Y21_N10
\myConverter|n~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~128_combout\ = (\myConverter|n~74_combout\ & ((\myConverter|n~88_combout\ & (!\myConverter|n~87_combout\)) # (!\myConverter|n~88_combout\ & ((\myConverter|n~87_combout\) # (!\myConverter|n~89_combout\))))) # (!\myConverter|n~74_combout\ & 
-- (\myConverter|n~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~74_combout\,
	datab => \myConverter|n~88_combout\,
	datac => \myConverter|n~87_combout\,
	datad => \myConverter|n~89_combout\,
	combout => \myConverter|n~128_combout\);

-- Location: LCCOMB_X42_Y21_N14
\myConverter|n~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~130_combout\ = (\myConverter|n~127_combout\ & (((!\myConverter|n~98_combout\) # (!\myConverter|n~97_combout\)))) # (!\myConverter|n~127_combout\ & (\myConverter|n~97_combout\ & ((\myConverter|n~98_combout\) # 
-- (!\myConverter|n~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~128_combout\,
	datab => \myConverter|n~127_combout\,
	datac => \myConverter|n~97_combout\,
	datad => \myConverter|n~98_combout\,
	combout => \myConverter|n~130_combout\);

-- Location: LCCOMB_X43_Y21_N20
\myConverter|hund[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|hund[1]~1_combout\ = (\myConverter|n~130_combout\ & (\myConverter|n~131_combout\ $ (((\myConverter|n~126_combout\))))) # (!\myConverter|n~130_combout\ & (((!\myConverter|n~131_combout\ & \myConverter|n~129_combout\)) # 
-- (!\myConverter|n~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~130_combout\,
	datab => \myConverter|n~131_combout\,
	datac => \myConverter|n~129_combout\,
	datad => \myConverter|n~126_combout\,
	combout => \myConverter|hund[1]~1_combout\);

-- Location: LCCOMB_X46_Y21_N14
\myInterface|Selector10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector10~4_combout\ = (!\myConverter|ones[3]~2_combout\ & (\myInterface|state.one~regout\ & \myConverter|ones[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|ones[3]~2_combout\,
	datac => \myInterface|state.one~regout\,
	datad => \myConverter|ones[1]~0_combout\,
	combout => \myInterface|Selector10~4_combout\);

-- Location: LCCOMB_X46_Y21_N2
\myInterface|Selector10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector10~5_combout\ = (\myInterface|Selector10~4_combout\) # ((!\myConverter|hund[1]~1_combout\ & (!\myConverter|hund[3]~3_combout\ & \myInterface|state.hundred~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|hund[1]~1_combout\,
	datab => \myInterface|Selector10~4_combout\,
	datac => \myConverter|hund[3]~3_combout\,
	datad => \myInterface|state.hundred~regout\,
	combout => \myInterface|Selector10~5_combout\);

-- Location: LCCOMB_X50_Y21_N26
\myInterface|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector9~0_combout\ = (!\myInterface|state.tenThousand~regout\ & !\myConverter|n~134_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myInterface|state.tenThousand~regout\,
	datad => \myConverter|n~134_combout\,
	combout => \myInterface|Selector9~0_combout\);

-- Location: LCCOMB_X50_Y21_N20
\myInterface|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector9~1_combout\ = (\myInterface|Selector9~0_combout\ & (((!\myConverter|LessThan21~0_combout\) # (!\myConverter|n~133_combout\)) # (!\myConverter|LessThan21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|LessThan21~1_combout\,
	datab => \myInterface|Selector9~0_combout\,
	datac => \myConverter|n~133_combout\,
	datad => \myConverter|LessThan21~0_combout\,
	combout => \myInterface|Selector9~1_combout\);

-- Location: LCCOMB_X47_Y21_N2
\myInterface|Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector9~2_combout\ = (\myInterface|Selector9~1_combout\) # ((!\myConverter|tens[2]~2_combout\ & (!\myConverter|tens[3]~3_combout\ & \myInterface|state.ten~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Selector9~1_combout\,
	datab => \myConverter|tens[2]~2_combout\,
	datac => \myConverter|tens[3]~3_combout\,
	datad => \myInterface|state.ten~regout\,
	combout => \myInterface|Selector9~2_combout\);

-- Location: LCCOMB_X49_Y21_N12
\myInterface|Selector8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector8~3_combout\ = (\myConverter|thou[2]~2_combout\ & (\myConverter|thou[1]~1_combout\ & \myInterface|state.thousand~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myConverter|thou[2]~2_combout\,
	datac => \myConverter|thou[1]~1_combout\,
	datad => \myInterface|state.thousand~regout\,
	combout => \myInterface|Selector8~3_combout\);

-- Location: LCCOMB_X49_Y21_N30
\myInterface|Selector8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector8~4_combout\ = (\myInterface|Selector8~3_combout\ & ((\myConverter|thou[3]~3_combout\) # ((!\myInterface|state.tenThousand~regout\ & \myConverter|tenThou[3]~0_combout\)))) # (!\myInterface|Selector8~3_combout\ & 
-- (((!\myInterface|state.tenThousand~regout\ & \myConverter|tenThou[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Selector8~3_combout\,
	datab => \myConverter|thou[3]~3_combout\,
	datac => \myInterface|state.tenThousand~regout\,
	datad => \myConverter|tenThou[3]~0_combout\,
	combout => \myInterface|Selector8~4_combout\);

-- Location: LCCOMB_X47_Y21_N6
\myInterface|counter[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|counter[0]~0_combout\ = (\lcdOnIn~combout\ & ((\myInterface|state.one~regout\) # (\myInterface|state.spin~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcdOnIn~combout\,
	datac => \myInterface|state.one~regout\,
	datad => \myInterface|state.spin~regout\,
	combout => \myInterface|counter[0]~0_combout\);

-- Location: LCFF_X25_Y17_N7
\myControler|myStateMachine|functionSetCase.functionSet2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Selector74~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|state.functionSet~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|functionSetCase.functionSet2~regout\);

-- Location: LCCOMB_X25_Y17_N6
\myControler|myStateMachine|Selector74~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector74~0_combout\ = (\myControler|myStateMachine|functionSetCase.00~regout\ & (((\myControler|myStateMachine|functionSetCase.functionSet2~regout\ & !\myControler|myStateMachine|Selector75~0_combout\)))) # 
-- (!\myControler|myStateMachine|functionSetCase.00~regout\ & ((\myControler|myStateMachine|Selector229~0_combout\) # ((\myControler|myStateMachine|functionSetCase.functionSet2~regout\ & !\myControler|myStateMachine|Selector75~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|functionSetCase.00~regout\,
	datab => \myControler|myStateMachine|Selector229~0_combout\,
	datac => \myControler|myStateMachine|functionSetCase.functionSet2~regout\,
	datad => \myControler|myStateMachine|Selector75~0_combout\,
	combout => \myControler|myStateMachine|Selector74~0_combout\);

-- Location: LCCOMB_X30_Y16_N6
\myControler|myStateMachine|Equal4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal4~8_combout\ = (\myControler|myStateMachine|Equal0~4_combout\ & (\myControler|myStateMachine|Equal1~2_combout\ & (\myControler|myStateMachine|Equal4~2_combout\ & \myControler|myStateMachine|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Equal0~4_combout\,
	datab => \myControler|myStateMachine|Equal1~2_combout\,
	datac => \myControler|myStateMachine|Equal4~2_combout\,
	datad => \myControler|myStateMachine|counter\(17),
	combout => \myControler|myStateMachine|Equal4~8_combout\);

-- Location: LCCOMB_X34_Y21_N6
\myConverter|n~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~135_combout\ = (\myConverter|LessThan0~0_combout\ & (!\myConverter|n~137_combout\ & \myConverter|n~55_combout\)) # (!\myConverter|LessThan0~0_combout\ & ((\myConverter|n~55_combout\) # (!\myConverter|n~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|LessThan0~0_combout\,
	datab => \myConverter|n~137_combout\,
	datad => \myConverter|n~55_combout\,
	combout => \myConverter|n~135_combout\);

-- Location: LCCOMB_X33_Y21_N14
\myConverter|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|LessThan0~0_combout\ = (\in~combout\(15) & ((\in~combout\(14)) # (\in~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(15),
	datab => \in~combout\(14),
	datac => \in~combout\(13),
	combout => \myConverter|LessThan0~0_combout\);

-- Location: LCCOMB_X34_Y21_N20
\myConverter|n~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~140_combout\ = (\myConverter|LessThan0~0_combout\ & ((\myConverter|n~137_combout\ & (\myConverter|n~138_combout\)) # (!\myConverter|n~137_combout\ & ((\myConverter|n~136_combout\) # (!\myConverter|n~138_combout\))))) # 
-- (!\myConverter|LessThan0~0_combout\ & (((\myConverter|n~137_combout\ & \myConverter|n~136_combout\)) # (!\myConverter|n~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|LessThan0~0_combout\,
	datab => \myConverter|n~137_combout\,
	datac => \myConverter|n~138_combout\,
	datad => \myConverter|n~136_combout\,
	combout => \myConverter|n~140_combout\);

-- Location: LCCOMB_X33_Y21_N20
\myConverter|n~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~7_combout\ = (\in~combout\(13)) # (\in~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in~combout\(13),
	datad => \in~combout\(11),
	combout => \myConverter|n~7_combout\);

-- Location: LCCOMB_X33_Y21_N6
\myConverter|n~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~141_combout\ = (\in~combout\(14) & (\in~combout\(15) & ((\in~combout\(12)) # (\myConverter|n~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(12),
	datab => \in~combout\(14),
	datac => \myConverter|n~7_combout\,
	datad => \in~combout\(15),
	combout => \myConverter|n~141_combout\);

-- Location: LCCOMB_X33_Y21_N8
\myConverter|n~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~142_combout\ = (\in~combout\(15) & (\in~combout\(14) & (\in~combout\(13) & \myConverter|n~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(15),
	datab => \in~combout\(14),
	datac => \in~combout\(13),
	datad => \myConverter|n~20_combout\,
	combout => \myConverter|n~142_combout\);

-- Location: LCCOMB_X33_Y21_N2
\myConverter|n~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~20_combout\ = (\in~combout\(11) & (\in~combout\(12) & ((\in~combout\(10)) # (\in~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(10),
	datab => \in~combout\(11),
	datac => \in~combout\(9),
	datad => \in~combout\(12),
	combout => \myConverter|n~20_combout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[9]~I\ : cycloneii_io
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
	padio => \ww_in\(9),
	combout => \in~combout\(9));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[3]~I\ : cycloneii_io
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
	padio => \ww_in\(3),
	combout => \in~combout\(3));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[0]~I\ : cycloneii_io
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
	padio => \ww_in\(0),
	combout => \in~combout\(0));

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

-- Location: LCCOMB_X31_Y17_N16
\myControler|myStateMachine|counter[0]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[0]~34_combout\ = \myControler|myStateMachine|counter\(0) $ (VCC)
-- \myControler|myStateMachine|counter[0]~35\ = CARRY(\myControler|myStateMachine|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(0),
	datad => VCC,
	combout => \myControler|myStateMachine|counter[0]~34_combout\,
	cout => \myControler|myStateMachine|counter[0]~35\);

-- Location: LCCOMB_X31_Y17_N18
\myControler|myStateMachine|counter[1]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[1]~46_combout\ = (\myControler|myStateMachine|counter\(1) & (!\myControler|myStateMachine|counter[0]~35\)) # (!\myControler|myStateMachine|counter\(1) & ((\myControler|myStateMachine|counter[0]~35\) # (GND)))
-- \myControler|myStateMachine|counter[1]~47\ = CARRY((!\myControler|myStateMachine|counter[0]~35\) # (!\myControler|myStateMachine|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(1),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[0]~35\,
	combout => \myControler|myStateMachine|counter[1]~46_combout\,
	cout => \myControler|myStateMachine|counter[1]~47\);

-- Location: LCCOMB_X31_Y16_N20
\myControler|myStateMachine|counter[18]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[18]~80_combout\ = (\myControler|myStateMachine|counter\(18) & (\myControler|myStateMachine|counter[17]~79\ $ (GND))) # (!\myControler|myStateMachine|counter\(18) & (!\myControler|myStateMachine|counter[17]~79\ & VCC))
-- \myControler|myStateMachine|counter[18]~81\ = CARRY((\myControler|myStateMachine|counter\(18) & !\myControler|myStateMachine|counter[17]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(18),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[17]~79\,
	combout => \myControler|myStateMachine|counter[18]~80_combout\,
	cout => \myControler|myStateMachine|counter[18]~81\);

-- Location: LCCOMB_X31_Y16_N12
\myControler|myStateMachine|counter[14]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[14]~72_combout\ = (\myControler|myStateMachine|counter\(14) & (\myControler|myStateMachine|counter[13]~71\ $ (GND))) # (!\myControler|myStateMachine|counter\(14) & (!\myControler|myStateMachine|counter[13]~71\ & VCC))
-- \myControler|myStateMachine|counter[14]~73\ = CARRY((\myControler|myStateMachine|counter\(14) & !\myControler|myStateMachine|counter[13]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(14),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[13]~71\,
	combout => \myControler|myStateMachine|counter[14]~72_combout\,
	cout => \myControler|myStateMachine|counter[14]~73\);

-- Location: LCFF_X31_Y16_N13
\myControler|myStateMachine|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[14]~72_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(14));

-- Location: LCCOMB_X30_Y16_N2
\myControler|myStateMachine|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal1~0_combout\ = (!\myControler|myStateMachine|counter\(19) & (!\myControler|myStateMachine|counter\(14) & (!\myControler|myStateMachine|counter\(18) & !\myControler|myStateMachine|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(19),
	datab => \myControler|myStateMachine|counter\(14),
	datac => \myControler|myStateMachine|counter\(18),
	datad => \myControler|myStateMachine|counter\(9),
	combout => \myControler|myStateMachine|Equal1~0_combout\);

-- Location: LCCOMB_X31_Y16_N16
\myControler|myStateMachine|counter[16]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[16]~76_combout\ = (\myControler|myStateMachine|counter\(16) & (\myControler|myStateMachine|counter[15]~75\ $ (GND))) # (!\myControler|myStateMachine|counter\(16) & (!\myControler|myStateMachine|counter[15]~75\ & VCC))
-- \myControler|myStateMachine|counter[16]~77\ = CARRY((\myControler|myStateMachine|counter\(16) & !\myControler|myStateMachine|counter[15]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(16),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[15]~75\,
	combout => \myControler|myStateMachine|counter[16]~76_combout\,
	cout => \myControler|myStateMachine|counter[16]~77\);

-- Location: LCFF_X31_Y16_N17
\myControler|myStateMachine|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[16]~76_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(16));

-- Location: LCCOMB_X30_Y16_N4
\myControler|myStateMachine|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal1~1_combout\ = (!\myControler|myStateMachine|counter\(15) & (\myControler|myStateMachine|Equal1~0_combout\ & (!\myControler|myStateMachine|counter\(16) & !\myControler|myStateMachine|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(15),
	datab => \myControler|myStateMachine|Equal1~0_combout\,
	datac => \myControler|myStateMachine|counter\(16),
	datad => \myControler|myStateMachine|counter\(17),
	combout => \myControler|myStateMachine|Equal1~1_combout\);

-- Location: LCCOMB_X31_Y16_N6
\myControler|myStateMachine|counter[11]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[11]~66_combout\ = (\myControler|myStateMachine|counter\(11) & (!\myControler|myStateMachine|counter[10]~65\)) # (!\myControler|myStateMachine|counter\(11) & ((\myControler|myStateMachine|counter[10]~65\) # (GND)))
-- \myControler|myStateMachine|counter[11]~67\ = CARRY((!\myControler|myStateMachine|counter[10]~65\) # (!\myControler|myStateMachine|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(11),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[10]~65\,
	combout => \myControler|myStateMachine|counter[11]~66_combout\,
	cout => \myControler|myStateMachine|counter[11]~67\);

-- Location: LCFF_X31_Y16_N7
\myControler|myStateMachine|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[11]~66_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(11));

-- Location: LCCOMB_X30_Y16_N14
\myControler|myStateMachine|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal2~1_combout\ = (\myControler|myStateMachine|counter\(11) & \myControler|myStateMachine|counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(11),
	datac => \myControler|myStateMachine|counter\(8),
	combout => \myControler|myStateMachine|Equal2~1_combout\);

-- Location: LCCOMB_X31_Y17_N20
\myControler|myStateMachine|counter[2]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[2]~48_combout\ = (\myControler|myStateMachine|counter\(2) & (\myControler|myStateMachine|counter[1]~47\ $ (GND))) # (!\myControler|myStateMachine|counter\(2) & (!\myControler|myStateMachine|counter[1]~47\ & VCC))
-- \myControler|myStateMachine|counter[2]~49\ = CARRY((\myControler|myStateMachine|counter\(2) & !\myControler|myStateMachine|counter[1]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(2),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[1]~47\,
	combout => \myControler|myStateMachine|counter[2]~48_combout\,
	cout => \myControler|myStateMachine|counter[2]~49\);

-- Location: LCFF_X31_Y17_N21
\myControler|myStateMachine|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[2]~48_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(2));

-- Location: LCCOMB_X31_Y17_N2
\myControler|myStateMachine|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal2~0_combout\ = (!\myControler|myStateMachine|counter\(4) & (\myControler|myStateMachine|counter\(6) & (\myControler|myStateMachine|counter\(2) & !\myControler|myStateMachine|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(4),
	datab => \myControler|myStateMachine|counter\(6),
	datac => \myControler|myStateMachine|counter\(2),
	datad => \myControler|myStateMachine|counter\(1),
	combout => \myControler|myStateMachine|Equal2~0_combout\);

-- Location: LCCOMB_X30_Y16_N0
\myControler|myStateMachine|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal2~2_combout\ = (\myControler|myStateMachine|Equal0~4_combout\ & (\myControler|myStateMachine|Equal1~1_combout\ & (\myControler|myStateMachine|Equal2~1_combout\ & \myControler|myStateMachine|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Equal0~4_combout\,
	datab => \myControler|myStateMachine|Equal1~1_combout\,
	datac => \myControler|myStateMachine|Equal2~1_combout\,
	datad => \myControler|myStateMachine|Equal2~0_combout\,
	combout => \myControler|myStateMachine|Equal2~2_combout\);

-- Location: LCCOMB_X31_Y17_N4
\myControler|myStateMachine|Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal2~3_combout\ = (\myControler|myStateMachine|counter\(12) & (\myControler|myStateMachine|counter\(3) & (\myControler|myStateMachine|counter\(10) & !\myControler|myStateMachine|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(12),
	datab => \myControler|myStateMachine|counter\(3),
	datac => \myControler|myStateMachine|counter\(10),
	datad => \myControler|myStateMachine|counter\(7),
	combout => \myControler|myStateMachine|Equal2~3_combout\);

-- Location: LCCOMB_X30_Y17_N26
\myControler|myStateMachine|Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal2~4_combout\ = (\myControler|myStateMachine|Equal2~2_combout\ & \myControler|myStateMachine|Equal2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|Equal2~2_combout\,
	datad => \myControler|myStateMachine|Equal2~3_combout\,
	combout => \myControler|myStateMachine|Equal2~4_combout\);

-- Location: LCCOMB_X30_Y17_N28
\myControler|myStateMachine|Selector75~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector75~0_combout\ = (\myControler|myStateMachine|subStates.subState3~regout\ & (\myControler|myStateMachine|Equal2~2_combout\ & \myControler|myStateMachine|Equal2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|subStates.subState3~regout\,
	datab => \myControler|myStateMachine|Equal2~2_combout\,
	datad => \myControler|myStateMachine|Equal2~3_combout\,
	combout => \myControler|myStateMachine|Selector75~0_combout\);

-- Location: LCCOMB_X25_Y17_N20
\myControler|myStateMachine|Selector75~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector75~1_combout\ = (\myControler|myStateMachine|Selector75~0_combout\ & (\myControler|myStateMachine|functionSetCase.functionSet2~regout\)) # (!\myControler|myStateMachine|Selector75~0_combout\ & 
-- ((\myControler|myStateMachine|functionSetCase.functionSet3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|functionSetCase.functionSet2~regout\,
	datac => \myControler|myStateMachine|functionSetCase.functionSet3~regout\,
	datad => \myControler|myStateMachine|Selector75~0_combout\,
	combout => \myControler|myStateMachine|Selector75~1_combout\);

-- Location: LCFF_X25_Y17_N21
\myControler|myStateMachine|functionSetCase.functionSet3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Selector75~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|state.functionSet~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|functionSetCase.functionSet3~regout\);

-- Location: LCCOMB_X30_Y17_N30
\myControler|myStateMachine|functionSetCase.functionSet4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|functionSetCase.functionSet4~0_combout\ = (\myControler|myStateMachine|functionSetCase.functionSet4~regout\) # ((\myControler|myStateMachine|Selector232~2_combout\ & (\myControler|myStateMachine|Equal2~4_combout\ & 
-- \myControler|myStateMachine|functionSetCase.functionSet3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Selector232~2_combout\,
	datab => \myControler|myStateMachine|Equal2~4_combout\,
	datac => \myControler|myStateMachine|functionSetCase.functionSet4~regout\,
	datad => \myControler|myStateMachine|functionSetCase.functionSet3~regout\,
	combout => \myControler|myStateMachine|functionSetCase.functionSet4~0_combout\);

-- Location: LCFF_X30_Y17_N31
\myControler|myStateMachine|functionSetCase.functionSet4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|functionSetCase.functionSet4~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|functionSetCase.functionSet4~regout\);

-- Location: LCCOMB_X30_Y17_N8
\myControler|myStateMachine|Selector225~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector225~1_combout\ = (\myControler|myStateMachine|Selector225~0_combout\) # ((\myControler|myStateMachine|state.functionSet~regout\ & ((!\myControler|myStateMachine|Selector75~0_combout\) # 
-- (!\myControler|myStateMachine|functionSetCase.functionSet4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Selector225~0_combout\,
	datab => \myControler|myStateMachine|functionSetCase.functionSet4~regout\,
	datac => \myControler|myStateMachine|state.functionSet~regout\,
	datad => \myControler|myStateMachine|Selector75~0_combout\,
	combout => \myControler|myStateMachine|Selector225~1_combout\);

-- Location: LCFF_X30_Y17_N9
\myControler|myStateMachine|state.functionSet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Selector225~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|state.functionSet~regout\);

-- Location: LCCOMB_X30_Y16_N30
\myControler|myStateMachine|Equal4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal4~4_combout\ = (!\myControler|myStateMachine|counter\(18) & (\myControler|myStateMachine|counter\(7) & (!\myControler|myStateMachine|counter\(19) & !\myControler|myStateMachine|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(18),
	datab => \myControler|myStateMachine|counter\(7),
	datac => \myControler|myStateMachine|counter\(19),
	datad => \myControler|myStateMachine|counter\(9),
	combout => \myControler|myStateMachine|Equal4~4_combout\);

-- Location: LCCOMB_X31_Y17_N24
\myControler|myStateMachine|counter[4]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[4]~52_combout\ = (\myControler|myStateMachine|counter\(4) & (\myControler|myStateMachine|counter[3]~51\ $ (GND))) # (!\myControler|myStateMachine|counter\(4) & (!\myControler|myStateMachine|counter[3]~51\ & VCC))
-- \myControler|myStateMachine|counter[4]~53\ = CARRY((\myControler|myStateMachine|counter\(4) & !\myControler|myStateMachine|counter[3]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(4),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[3]~51\,
	combout => \myControler|myStateMachine|counter[4]~52_combout\,
	cout => \myControler|myStateMachine|counter[4]~53\);

-- Location: LCFF_X31_Y17_N25
\myControler|myStateMachine|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[4]~52_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(4));

-- Location: LCCOMB_X31_Y17_N10
\myControler|myStateMachine|Equal4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal4~5_combout\ = (\myControler|myStateMachine|counter\(15) & (!\myControler|myStateMachine|counter\(6) & (\myControler|myStateMachine|counter\(4) & \myControler|myStateMachine|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(15),
	datab => \myControler|myStateMachine|counter\(6),
	datac => \myControler|myStateMachine|counter\(4),
	datad => \myControler|myStateMachine|counter\(12),
	combout => \myControler|myStateMachine|Equal4~5_combout\);

-- Location: LCCOMB_X30_Y16_N8
\myControler|myStateMachine|Equal4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal4~6_combout\ = (\myControler|myStateMachine|Equal4~4_combout\ & \myControler|myStateMachine|Equal4~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|Equal4~4_combout\,
	datad => \myControler|myStateMachine|Equal4~5_combout\,
	combout => \myControler|myStateMachine|Equal4~6_combout\);

-- Location: LCCOMB_X30_Y16_N28
\myControler|myStateMachine|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal1~2_combout\ = (!\myControler|myStateMachine|counter\(10) & (!\myControler|myStateMachine|counter\(11) & (!\myControler|myStateMachine|counter\(8) & !\myControler|myStateMachine|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(10),
	datab => \myControler|myStateMachine|counter\(11),
	datac => \myControler|myStateMachine|counter\(8),
	datad => \myControler|myStateMachine|counter\(2),
	combout => \myControler|myStateMachine|Equal1~2_combout\);

-- Location: LCCOMB_X30_Y16_N24
\myControler|myStateMachine|Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal4~2_combout\ = (\myControler|myStateMachine|counter\(16) & (!\myControler|myStateMachine|counter\(1) & (\myControler|myStateMachine|counter\(14) & !\myControler|myStateMachine|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(16),
	datab => \myControler|myStateMachine|counter\(1),
	datac => \myControler|myStateMachine|counter\(14),
	datad => \myControler|myStateMachine|counter\(3),
	combout => \myControler|myStateMachine|Equal4~2_combout\);

-- Location: LCCOMB_X30_Y16_N26
\myControler|myStateMachine|Equal4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal4~3_combout\ = (\myControler|myStateMachine|Equal1~2_combout\ & (\myControler|myStateMachine|Equal4~2_combout\ & \myControler|myStateMachine|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|Equal1~2_combout\,
	datac => \myControler|myStateMachine|Equal4~2_combout\,
	datad => \myControler|myStateMachine|counter\(17),
	combout => \myControler|myStateMachine|Equal4~3_combout\);

-- Location: LCCOMB_X30_Y16_N10
\myControler|myStateMachine|Selector229~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector229~0_combout\ = (\myControler|myStateMachine|Equal0~4_combout\ & (\myControler|myStateMachine|subStates.subState3~regout\ & (\myControler|myStateMachine|Equal4~6_combout\ & 
-- \myControler|myStateMachine|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Equal0~4_combout\,
	datab => \myControler|myStateMachine|subStates.subState3~regout\,
	datac => \myControler|myStateMachine|Equal4~6_combout\,
	datad => \myControler|myStateMachine|Equal4~3_combout\,
	combout => \myControler|myStateMachine|Selector229~0_combout\);

-- Location: LCCOMB_X28_Y17_N26
\myControler|myStateMachine|Selector227~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector227~0_combout\ = (\myControler|myStateMachine|Selector155~0_combout\ & ((\myControler|myStateMachine|state.displaySet~regout\) # ((\myControler|myStateMachine|state.displayClear~regout\ & 
-- !\myControler|myStateMachine|Selector229~0_combout\)))) # (!\myControler|myStateMachine|Selector155~0_combout\ & (((\myControler|myStateMachine|state.displayClear~regout\ & !\myControler|myStateMachine|Selector229~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Selector155~0_combout\,
	datab => \myControler|myStateMachine|state.displaySet~regout\,
	datac => \myControler|myStateMachine|state.displayClear~regout\,
	datad => \myControler|myStateMachine|Selector229~0_combout\,
	combout => \myControler|myStateMachine|Selector227~0_combout\);

-- Location: LCFF_X28_Y17_N27
\myControler|myStateMachine|state.displayClear\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Selector227~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|state.displayClear~regout\);

-- Location: LCCOMB_X28_Y17_N18
\myControler|myStateMachine|state.entryModeSet~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|state.entryModeSet~0_combout\ = (\myControler|myStateMachine|Selector229~0_combout\ & (!\myControler|myStateMachine|displayOnOff~regout\ & (\myControler|myStateMachine|state.displayClear~regout\))) # 
-- (!\myControler|myStateMachine|Selector229~0_combout\ & (((\myControler|myStateMachine|state.entryModeSet~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|displayOnOff~regout\,
	datab => \myControler|myStateMachine|state.displayClear~regout\,
	datac => \myControler|myStateMachine|state.entryModeSet~regout\,
	datad => \myControler|myStateMachine|Selector229~0_combout\,
	combout => \myControler|myStateMachine|state.entryModeSet~0_combout\);

-- Location: LCFF_X28_Y17_N19
\myControler|myStateMachine|state.entryModeSet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|state.entryModeSet~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|state.entryModeSet~regout\);

-- Location: LCCOMB_X31_Y17_N12
\myControler|myStateMachine|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal3~0_combout\ = (!\myControler|myStateMachine|counter\(12) & (!\myControler|myStateMachine|counter\(3) & (!\myControler|myStateMachine|counter\(10) & \myControler|myStateMachine|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(12),
	datab => \myControler|myStateMachine|counter\(3),
	datac => \myControler|myStateMachine|counter\(10),
	datad => \myControler|myStateMachine|counter\(7),
	combout => \myControler|myStateMachine|Equal3~0_combout\);

-- Location: LCCOMB_X28_Y17_N14
\myControler|myStateMachine|Selector226~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector226~0_combout\ = (\myControler|myStateMachine|state.displaySet~regout\ & (((!\myControler|myStateMachine|Equal2~2_combout\) # (!\myControler|myStateMachine|Equal3~0_combout\)) # 
-- (!\myControler|myStateMachine|subStates.subState3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|subStates.subState3~regout\,
	datab => \myControler|myStateMachine|state.displaySet~regout\,
	datac => \myControler|myStateMachine|Equal3~0_combout\,
	datad => \myControler|myStateMachine|Equal2~2_combout\,
	combout => \myControler|myStateMachine|Selector226~0_combout\);

-- Location: LCCOMB_X28_Y17_N2
\myControler|myStateMachine|Selector226~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector226~2_combout\ = (\myControler|myStateMachine|Selector226~1_combout\) # ((\myControler|myStateMachine|Selector226~0_combout\) # ((\myControler|myStateMachine|state.entryModeSet~regout\ & 
-- \myControler|myStateMachine|Selector229~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Selector226~1_combout\,
	datab => \myControler|myStateMachine|state.entryModeSet~regout\,
	datac => \myControler|myStateMachine|Selector226~0_combout\,
	datad => \myControler|myStateMachine|Selector229~0_combout\,
	combout => \myControler|myStateMachine|Selector226~2_combout\);

-- Location: LCFF_X28_Y17_N3
\myControler|myStateMachine|state.displaySet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Selector226~2_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|state.displaySet~regout\);

-- Location: LCCOMB_X28_Y17_N0
\myControler|myStateMachine|Selector232~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector232~4_combout\ = (!\myControler|myStateMachine|state.displaySet~regout\ & (!\myControler|myStateMachine|state.writeData~regout\ & !\myControler|myStateMachine|state.writeAddr~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|state.displaySet~regout\,
	datac => \myControler|myStateMachine|state.writeData~regout\,
	datad => \myControler|myStateMachine|state.writeAddr~regout\,
	combout => \myControler|myStateMachine|Selector232~4_combout\);

-- Location: LCCOMB_X29_Y17_N18
\myControler|myStateMachine|Selector148~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector148~2_combout\ = (!\myControler|myStateMachine|state.entryModeSet~regout\ & !\myControler|myStateMachine|state.displayClear~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|state.entryModeSet~regout\,
	datad => \myControler|myStateMachine|state.displayClear~regout\,
	combout => \myControler|myStateMachine|Selector148~2_combout\);

-- Location: LCCOMB_X29_Y17_N30
\myControler|myStateMachine|Selector232~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector232~3_combout\ = (\myControler|myStateMachine|Selector229~0_combout\ & (((!\myControler|myStateMachine|subStates.00~regout\ & !\myControler|myStateMachine|state.powerOn~regout\)) # 
-- (!\myControler|myStateMachine|Selector148~2_combout\))) # (!\myControler|myStateMachine|Selector229~0_combout\ & (((!\myControler|myStateMachine|subStates.00~regout\ & !\myControler|myStateMachine|state.powerOn~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Selector229~0_combout\,
	datab => \myControler|myStateMachine|Selector148~2_combout\,
	datac => \myControler|myStateMachine|subStates.00~regout\,
	datad => \myControler|myStateMachine|state.powerOn~regout\,
	combout => \myControler|myStateMachine|Selector232~3_combout\);

-- Location: LCCOMB_X28_Y17_N6
\myControler|myStateMachine|Selector232~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector232~5_combout\ = (\myControler|myStateMachine|Selector232~3_combout\) # ((\myControler|myStateMachine|Selector155~0_combout\ & ((\myControler|myStateMachine|state.cursorShift~regout\) # 
-- (!\myControler|myStateMachine|Selector232~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Selector155~0_combout\,
	datab => \myControler|myStateMachine|Selector232~4_combout\,
	datac => \myControler|myStateMachine|state.cursorShift~regout\,
	datad => \myControler|myStateMachine|Selector232~3_combout\,
	combout => \myControler|myStateMachine|Selector232~5_combout\);

-- Location: LCCOMB_X30_Y16_N12
\myControler|myStateMachine|Equal4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal4~7_combout\ = (\myControler|myStateMachine|Equal4~4_combout\ & (\myControler|myStateMachine|Equal4~3_combout\ & (\myControler|myStateMachine|Equal0~4_combout\ & \myControler|myStateMachine|Equal4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Equal4~4_combout\,
	datab => \myControler|myStateMachine|Equal4~3_combout\,
	datac => \myControler|myStateMachine|Equal0~4_combout\,
	datad => \myControler|myStateMachine|Equal4~5_combout\,
	combout => \myControler|myStateMachine|Equal4~7_combout\);

-- Location: LCCOMB_X30_Y17_N22
\myControler|myStateMachine|functionSetCase~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|functionSetCase~14_combout\ = (\myControler|myStateMachine|functionSetCase.00~regout\) # ((\myControler|myStateMachine|Selector229~0_combout\ & \myControler|myStateMachine|state.functionSet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Selector229~0_combout\,
	datab => \myControler|myStateMachine|state.functionSet~regout\,
	datac => \myControler|myStateMachine|functionSetCase.00~regout\,
	combout => \myControler|myStateMachine|functionSetCase~14_combout\);

-- Location: LCFF_X30_Y17_N23
\myControler|myStateMachine|functionSetCase.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|functionSetCase~14_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|functionSetCase.00~regout\);

-- Location: LCCOMB_X30_Y17_N24
\myControler|myStateMachine|Selector72~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector72~0_combout\ = (\myControler|myStateMachine|functionSetCase.00~regout\ & (\myControler|myStateMachine|Equal2~3_combout\ & (\myControler|myStateMachine|Equal2~2_combout\))) # 
-- (!\myControler|myStateMachine|functionSetCase.00~regout\ & (((\myControler|myStateMachine|Equal4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Equal2~3_combout\,
	datab => \myControler|myStateMachine|Equal2~2_combout\,
	datac => \myControler|myStateMachine|Equal4~7_combout\,
	datad => \myControler|myStateMachine|functionSetCase.00~regout\,
	combout => \myControler|myStateMachine|Selector72~0_combout\);

-- Location: LCCOMB_X29_Y17_N24
\myControler|myStateMachine|Selector232~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector232~6_combout\ = (!\myControler|myStateMachine|Selector232~5_combout\ & (((!\myControler|myStateMachine|Selector72~0_combout\) # (!\myControler|myStateMachine|state.functionSet~regout\)) # 
-- (!\myControler|myStateMachine|subStates.subState3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|subStates.subState3~regout\,
	datab => \myControler|myStateMachine|state.functionSet~regout\,
	datac => \myControler|myStateMachine|Selector232~5_combout\,
	datad => \myControler|myStateMachine|Selector72~0_combout\,
	combout => \myControler|myStateMachine|Selector232~6_combout\);

-- Location: LCFF_X29_Y17_N25
\myControler|myStateMachine|subStates.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Selector232~6_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|subStates.00~regout\);

-- Location: LCCOMB_X29_Y17_N28
\myControler|myStateMachine|counter[20]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[20]~45_combout\ = (\myControler|myStateMachine|subStates.00~regout\) # (!\myControler|myStateMachine|state.powerOn~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myControler|myStateMachine|subStates.00~regout\,
	datad => \myControler|myStateMachine|state.powerOn~regout\,
	combout => \myControler|myStateMachine|counter[20]~45_combout\);

-- Location: LCFF_X31_Y16_N21
\myControler|myStateMachine|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[18]~80_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(18));

-- Location: LCCOMB_X30_Y16_N20
\myControler|myStateMachine|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal0~6_combout\ = (\myControler|myStateMachine|counter\(19) & (!\myControler|myStateMachine|counter\(15) & (\myControler|myStateMachine|counter\(18) & \myControler|myStateMachine|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(19),
	datab => \myControler|myStateMachine|counter\(15),
	datac => \myControler|myStateMachine|counter\(18),
	datad => \myControler|myStateMachine|counter\(9),
	combout => \myControler|myStateMachine|Equal0~6_combout\);

-- Location: LCCOMB_X31_Y17_N8
\myControler|myStateMachine|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal0~5_combout\ = (!\myControler|myStateMachine|counter\(12) & (\myControler|myStateMachine|counter\(6) & (!\myControler|myStateMachine|counter\(4) & !\myControler|myStateMachine|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(12),
	datab => \myControler|myStateMachine|counter\(6),
	datac => \myControler|myStateMachine|counter\(4),
	datad => \myControler|myStateMachine|counter\(7),
	combout => \myControler|myStateMachine|Equal0~5_combout\);

-- Location: LCCOMB_X31_Y15_N18
\myControler|myStateMachine|state.powerOn~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|state.powerOn~0_combout\ = (\myControler|myStateMachine|state.powerOn~regout\) # ((\myControler|myStateMachine|Equal4~8_combout\ & (\myControler|myStateMachine|Equal0~6_combout\ & 
-- \myControler|myStateMachine|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Equal4~8_combout\,
	datab => \myControler|myStateMachine|Equal0~6_combout\,
	datac => \myControler|myStateMachine|state.powerOn~regout\,
	datad => \myControler|myStateMachine|Equal0~5_combout\,
	combout => \myControler|myStateMachine|state.powerOn~0_combout\);

-- Location: LCFF_X31_Y15_N19
\myControler|myStateMachine|state.powerOn\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|state.powerOn~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|state.powerOn~regout\);

-- Location: LCCOMB_X31_Y15_N26
\myControler|myStateMachine|Selector225~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector225~0_combout\ = (\myControler|myStateMachine|Equal4~8_combout\ & (!\myControler|myStateMachine|state.powerOn~regout\ & (\myControler|myStateMachine|Equal0~6_combout\ & \myControler|myStateMachine|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Equal4~8_combout\,
	datab => \myControler|myStateMachine|state.powerOn~regout\,
	datac => \myControler|myStateMachine|Equal0~6_combout\,
	datad => \myControler|myStateMachine|Equal0~5_combout\,
	combout => \myControler|myStateMachine|Selector225~0_combout\);

-- Location: LCCOMB_X31_Y17_N6
\myControler|myStateMachine|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal1~3_combout\ = (!\myControler|myStateMachine|counter\(12) & (!\myControler|myStateMachine|counter\(6) & (\myControler|myStateMachine|counter\(4) & !\myControler|myStateMachine|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(12),
	datab => \myControler|myStateMachine|counter\(6),
	datac => \myControler|myStateMachine|counter\(4),
	datad => \myControler|myStateMachine|counter\(7),
	combout => \myControler|myStateMachine|Equal1~3_combout\);

-- Location: LCCOMB_X30_Y16_N22
\myControler|myStateMachine|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal1~4_combout\ = (\myControler|myStateMachine|counter\(3) & (\myControler|myStateMachine|Equal1~2_combout\ & (\myControler|myStateMachine|counter\(1) & \myControler|myStateMachine|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(3),
	datab => \myControler|myStateMachine|Equal1~2_combout\,
	datac => \myControler|myStateMachine|counter\(1),
	datad => \myControler|myStateMachine|Equal1~3_combout\,
	combout => \myControler|myStateMachine|Equal1~4_combout\);

-- Location: LCCOMB_X30_Y17_N12
\myControler|myStateMachine|counter[20]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[20]~38_combout\ = (\myControler|myStateMachine|subStates.subState3~regout\ & (((\myControler|myStateMachine|state.functionSet~regout\ & \myControler|myStateMachine|functionSetCase.00~regout\)))) # 
-- (!\myControler|myStateMachine|subStates.subState3~regout\ & (((\myControler|myStateMachine|state.functionSet~regout\)) # (!\myControler|myStateMachine|Selector148~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|subStates.subState3~regout\,
	datab => \myControler|myStateMachine|Selector148~2_combout\,
	datac => \myControler|myStateMachine|state.functionSet~regout\,
	datad => \myControler|myStateMachine|functionSetCase.00~regout\,
	combout => \myControler|myStateMachine|counter[20]~38_combout\);

-- Location: LCCOMB_X30_Y17_N14
\myControler|myStateMachine|counter[20]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[20]~39_combout\ = (\myControler|myStateMachine|Equal0~4_combout\ & (\myControler|myStateMachine|Equal1~4_combout\ & (\myControler|myStateMachine|Equal1~1_combout\ & \myControler|myStateMachine|counter[20]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Equal0~4_combout\,
	datab => \myControler|myStateMachine|Equal1~4_combout\,
	datac => \myControler|myStateMachine|Equal1~1_combout\,
	datad => \myControler|myStateMachine|counter[20]~38_combout\,
	combout => \myControler|myStateMachine|counter[20]~39_combout\);

-- Location: LCCOMB_X30_Y17_N0
\myControler|myStateMachine|counter[20]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[20]~40_combout\ = (\myControler|myStateMachine|subStates.subState3~regout\ & (!\myControler|myStateMachine|functionSetCase.00~regout\ & (\myControler|myStateMachine|state.functionSet~regout\ & 
-- \myControler|myStateMachine|Equal4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|subStates.subState3~regout\,
	datab => \myControler|myStateMachine|functionSetCase.00~regout\,
	datac => \myControler|myStateMachine|state.functionSet~regout\,
	datad => \myControler|myStateMachine|Equal4~7_combout\,
	combout => \myControler|myStateMachine|counter[20]~40_combout\);

-- Location: LCCOMB_X30_Y17_N2
\myControler|myStateMachine|counter[20]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[20]~41_combout\ = (\myControler|myStateMachine|counter[20]~39_combout\) # ((\myControler|myStateMachine|counter[20]~40_combout\) # ((\myControler|myStateMachine|Selector229~0_combout\ & 
-- !\myControler|myStateMachine|Selector148~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Selector229~0_combout\,
	datab => \myControler|myStateMachine|Selector148~2_combout\,
	datac => \myControler|myStateMachine|counter[20]~39_combout\,
	datad => \myControler|myStateMachine|counter[20]~40_combout\,
	combout => \myControler|myStateMachine|counter[20]~41_combout\);

-- Location: LCCOMB_X30_Y17_N20
\myControler|myStateMachine|counter[20]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[20]~42_combout\ = (\myControler|myStateMachine|functionSetCase.00~regout\ & (\myControler|myStateMachine|state.functionSet~regout\ & \myControler|myStateMachine|subStates.subState3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|functionSetCase.00~regout\,
	datac => \myControler|myStateMachine|state.functionSet~regout\,
	datad => \myControler|myStateMachine|subStates.subState3~regout\,
	combout => \myControler|myStateMachine|counter[20]~42_combout\);

-- Location: LCCOMB_X30_Y17_N6
\myControler|myStateMachine|counter[20]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[20]~43_combout\ = (\myControler|myStateMachine|counter[20]~42_combout\ & (((\myControler|myStateMachine|Equal2~4_combout\)))) # (!\myControler|myStateMachine|counter[20]~42_combout\ & 
-- ((\myControler|myStateMachine|counter[20]~37_combout\) # ((\myControler|myStateMachine|counter[20]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter[20]~37_combout\,
	datab => \myControler|myStateMachine|counter[20]~41_combout\,
	datac => \myControler|myStateMachine|counter[20]~42_combout\,
	datad => \myControler|myStateMachine|Equal2~4_combout\,
	combout => \myControler|myStateMachine|counter[20]~43_combout\);

-- Location: LCCOMB_X31_Y15_N20
\myControler|myStateMachine|counter[20]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[20]~44_combout\ = (\myControler|myStateMachine|Selector225~0_combout\) # ((\myControler|myStateMachine|counter[20]~43_combout\ & \myControler|myStateMachine|state.powerOn~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|Selector225~0_combout\,
	datac => \myControler|myStateMachine|counter[20]~43_combout\,
	datad => \myControler|myStateMachine|state.powerOn~regout\,
	combout => \myControler|myStateMachine|counter[20]~44_combout\);

-- Location: LCFF_X31_Y17_N19
\myControler|myStateMachine|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[1]~46_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(1));

-- Location: LCCOMB_X31_Y17_N22
\myControler|myStateMachine|counter[3]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[3]~50_combout\ = (\myControler|myStateMachine|counter\(3) & (!\myControler|myStateMachine|counter[2]~49\)) # (!\myControler|myStateMachine|counter\(3) & ((\myControler|myStateMachine|counter[2]~49\) # (GND)))
-- \myControler|myStateMachine|counter[3]~51\ = CARRY((!\myControler|myStateMachine|counter[2]~49\) # (!\myControler|myStateMachine|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(3),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[2]~49\,
	combout => \myControler|myStateMachine|counter[3]~50_combout\,
	cout => \myControler|myStateMachine|counter[3]~51\);

-- Location: LCFF_X31_Y17_N23
\myControler|myStateMachine|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[3]~50_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(3));

-- Location: LCCOMB_X31_Y17_N26
\myControler|myStateMachine|counter[5]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[5]~54_combout\ = (\myControler|myStateMachine|counter\(5) & (!\myControler|myStateMachine|counter[4]~53\)) # (!\myControler|myStateMachine|counter\(5) & ((\myControler|myStateMachine|counter[4]~53\) # (GND)))
-- \myControler|myStateMachine|counter[5]~55\ = CARRY((!\myControler|myStateMachine|counter[4]~53\) # (!\myControler|myStateMachine|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(5),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[4]~53\,
	combout => \myControler|myStateMachine|counter[5]~54_combout\,
	cout => \myControler|myStateMachine|counter[5]~55\);

-- Location: LCFF_X31_Y17_N27
\myControler|myStateMachine|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[5]~54_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(5));

-- Location: LCCOMB_X31_Y17_N28
\myControler|myStateMachine|counter[6]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[6]~56_combout\ = (\myControler|myStateMachine|counter\(6) & (\myControler|myStateMachine|counter[5]~55\ $ (GND))) # (!\myControler|myStateMachine|counter\(6) & (!\myControler|myStateMachine|counter[5]~55\ & VCC))
-- \myControler|myStateMachine|counter[6]~57\ = CARRY((\myControler|myStateMachine|counter\(6) & !\myControler|myStateMachine|counter[5]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(6),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[5]~55\,
	combout => \myControler|myStateMachine|counter[6]~56_combout\,
	cout => \myControler|myStateMachine|counter[6]~57\);

-- Location: LCFF_X31_Y17_N29
\myControler|myStateMachine|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[6]~56_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(6));

-- Location: LCCOMB_X31_Y17_N30
\myControler|myStateMachine|counter[7]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[7]~58_combout\ = (\myControler|myStateMachine|counter\(7) & (!\myControler|myStateMachine|counter[6]~57\)) # (!\myControler|myStateMachine|counter\(7) & ((\myControler|myStateMachine|counter[6]~57\) # (GND)))
-- \myControler|myStateMachine|counter[7]~59\ = CARRY((!\myControler|myStateMachine|counter[6]~57\) # (!\myControler|myStateMachine|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(7),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[6]~57\,
	combout => \myControler|myStateMachine|counter[7]~58_combout\,
	cout => \myControler|myStateMachine|counter[7]~59\);

-- Location: LCFF_X31_Y17_N31
\myControler|myStateMachine|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[7]~58_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(7));

-- Location: LCCOMB_X31_Y16_N0
\myControler|myStateMachine|counter[8]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[8]~60_combout\ = (\myControler|myStateMachine|counter\(8) & (\myControler|myStateMachine|counter[7]~59\ $ (GND))) # (!\myControler|myStateMachine|counter\(8) & (!\myControler|myStateMachine|counter[7]~59\ & VCC))
-- \myControler|myStateMachine|counter[8]~61\ = CARRY((\myControler|myStateMachine|counter\(8) & !\myControler|myStateMachine|counter[7]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(8),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[7]~59\,
	combout => \myControler|myStateMachine|counter[8]~60_combout\,
	cout => \myControler|myStateMachine|counter[8]~61\);

-- Location: LCFF_X31_Y16_N1
\myControler|myStateMachine|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[8]~60_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(8));

-- Location: LCCOMB_X31_Y16_N2
\myControler|myStateMachine|counter[9]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[9]~62_combout\ = (\myControler|myStateMachine|counter\(9) & (!\myControler|myStateMachine|counter[8]~61\)) # (!\myControler|myStateMachine|counter\(9) & ((\myControler|myStateMachine|counter[8]~61\) # (GND)))
-- \myControler|myStateMachine|counter[9]~63\ = CARRY((!\myControler|myStateMachine|counter[8]~61\) # (!\myControler|myStateMachine|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(9),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[8]~61\,
	combout => \myControler|myStateMachine|counter[9]~62_combout\,
	cout => \myControler|myStateMachine|counter[9]~63\);

-- Location: LCFF_X31_Y16_N3
\myControler|myStateMachine|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[9]~62_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(9));

-- Location: LCCOMB_X31_Y16_N4
\myControler|myStateMachine|counter[10]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[10]~64_combout\ = (\myControler|myStateMachine|counter\(10) & (\myControler|myStateMachine|counter[9]~63\ $ (GND))) # (!\myControler|myStateMachine|counter\(10) & (!\myControler|myStateMachine|counter[9]~63\ & VCC))
-- \myControler|myStateMachine|counter[10]~65\ = CARRY((\myControler|myStateMachine|counter\(10) & !\myControler|myStateMachine|counter[9]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(10),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[9]~63\,
	combout => \myControler|myStateMachine|counter[10]~64_combout\,
	cout => \myControler|myStateMachine|counter[10]~65\);

-- Location: LCFF_X31_Y16_N5
\myControler|myStateMachine|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[10]~64_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(10));

-- Location: LCCOMB_X31_Y16_N8
\myControler|myStateMachine|counter[12]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[12]~68_combout\ = (\myControler|myStateMachine|counter\(12) & (\myControler|myStateMachine|counter[11]~67\ $ (GND))) # (!\myControler|myStateMachine|counter\(12) & (!\myControler|myStateMachine|counter[11]~67\ & VCC))
-- \myControler|myStateMachine|counter[12]~69\ = CARRY((\myControler|myStateMachine|counter\(12) & !\myControler|myStateMachine|counter[11]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(12),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[11]~67\,
	combout => \myControler|myStateMachine|counter[12]~68_combout\,
	cout => \myControler|myStateMachine|counter[12]~69\);

-- Location: LCFF_X31_Y16_N9
\myControler|myStateMachine|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[12]~68_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(12));

-- Location: LCCOMB_X31_Y16_N14
\myControler|myStateMachine|counter[15]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[15]~74_combout\ = (\myControler|myStateMachine|counter\(15) & (!\myControler|myStateMachine|counter[14]~73\)) # (!\myControler|myStateMachine|counter\(15) & ((\myControler|myStateMachine|counter[14]~73\) # (GND)))
-- \myControler|myStateMachine|counter[15]~75\ = CARRY((!\myControler|myStateMachine|counter[14]~73\) # (!\myControler|myStateMachine|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(15),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[14]~73\,
	combout => \myControler|myStateMachine|counter[15]~74_combout\,
	cout => \myControler|myStateMachine|counter[15]~75\);

-- Location: LCFF_X31_Y16_N15
\myControler|myStateMachine|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[15]~74_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(15));

-- Location: LCCOMB_X31_Y16_N18
\myControler|myStateMachine|counter[17]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[17]~78_combout\ = (\myControler|myStateMachine|counter\(17) & (!\myControler|myStateMachine|counter[16]~77\)) # (!\myControler|myStateMachine|counter\(17) & ((\myControler|myStateMachine|counter[16]~77\) # (GND)))
-- \myControler|myStateMachine|counter[17]~79\ = CARRY((!\myControler|myStateMachine|counter[16]~77\) # (!\myControler|myStateMachine|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(17),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[16]~77\,
	combout => \myControler|myStateMachine|counter[17]~78_combout\,
	cout => \myControler|myStateMachine|counter[17]~79\);

-- Location: LCFF_X31_Y16_N19
\myControler|myStateMachine|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[17]~78_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(17));

-- Location: LCCOMB_X31_Y16_N22
\myControler|myStateMachine|counter[19]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[19]~82_combout\ = (\myControler|myStateMachine|counter\(19) & (!\myControler|myStateMachine|counter[18]~81\)) # (!\myControler|myStateMachine|counter\(19) & ((\myControler|myStateMachine|counter[18]~81\) # (GND)))
-- \myControler|myStateMachine|counter[19]~83\ = CARRY((!\myControler|myStateMachine|counter[18]~81\) # (!\myControler|myStateMachine|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(19),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[18]~81\,
	combout => \myControler|myStateMachine|counter[19]~82_combout\,
	cout => \myControler|myStateMachine|counter[19]~83\);

-- Location: LCFF_X31_Y16_N23
\myControler|myStateMachine|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[19]~82_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(19));

-- Location: LCCOMB_X31_Y16_N24
\myControler|myStateMachine|counter[20]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[20]~84_combout\ = (\myControler|myStateMachine|counter\(20) & (\myControler|myStateMachine|counter[19]~83\ $ (GND))) # (!\myControler|myStateMachine|counter\(20) & (!\myControler|myStateMachine|counter[19]~83\ & VCC))
-- \myControler|myStateMachine|counter[20]~85\ = CARRY((\myControler|myStateMachine|counter\(20) & !\myControler|myStateMachine|counter[19]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(20),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[19]~83\,
	combout => \myControler|myStateMachine|counter[20]~84_combout\,
	cout => \myControler|myStateMachine|counter[20]~85\);

-- Location: LCCOMB_X31_Y16_N26
\myControler|myStateMachine|counter[21]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[21]~86_combout\ = (\myControler|myStateMachine|counter\(21) & (!\myControler|myStateMachine|counter[20]~85\)) # (!\myControler|myStateMachine|counter\(21) & ((\myControler|myStateMachine|counter[20]~85\) # (GND)))
-- \myControler|myStateMachine|counter[21]~87\ = CARRY((!\myControler|myStateMachine|counter[20]~85\) # (!\myControler|myStateMachine|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(21),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[20]~85\,
	combout => \myControler|myStateMachine|counter[21]~86_combout\,
	cout => \myControler|myStateMachine|counter[21]~87\);

-- Location: LCFF_X31_Y16_N27
\myControler|myStateMachine|counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[21]~86_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(21));

-- Location: LCCOMB_X31_Y16_N28
\myControler|myStateMachine|counter[22]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[22]~88_combout\ = (\myControler|myStateMachine|counter\(22) & (\myControler|myStateMachine|counter[21]~87\ $ (GND))) # (!\myControler|myStateMachine|counter\(22) & (!\myControler|myStateMachine|counter[21]~87\ & VCC))
-- \myControler|myStateMachine|counter[22]~89\ = CARRY((\myControler|myStateMachine|counter\(22) & !\myControler|myStateMachine|counter[21]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(22),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[21]~87\,
	combout => \myControler|myStateMachine|counter[22]~88_combout\,
	cout => \myControler|myStateMachine|counter[22]~89\);

-- Location: LCFF_X31_Y16_N29
\myControler|myStateMachine|counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[22]~88_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(22));

-- Location: LCCOMB_X31_Y16_N30
\myControler|myStateMachine|counter[23]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[23]~90_combout\ = (\myControler|myStateMachine|counter\(23) & (!\myControler|myStateMachine|counter[22]~89\)) # (!\myControler|myStateMachine|counter\(23) & ((\myControler|myStateMachine|counter[22]~89\) # (GND)))
-- \myControler|myStateMachine|counter[23]~91\ = CARRY((!\myControler|myStateMachine|counter[22]~89\) # (!\myControler|myStateMachine|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(23),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[22]~89\,
	combout => \myControler|myStateMachine|counter[23]~90_combout\,
	cout => \myControler|myStateMachine|counter[23]~91\);

-- Location: LCFF_X31_Y16_N31
\myControler|myStateMachine|counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[23]~90_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(23));

-- Location: LCCOMB_X31_Y15_N0
\myControler|myStateMachine|counter[24]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[24]~92_combout\ = (\myControler|myStateMachine|counter\(24) & (\myControler|myStateMachine|counter[23]~91\ $ (GND))) # (!\myControler|myStateMachine|counter\(24) & (!\myControler|myStateMachine|counter[23]~91\ & VCC))
-- \myControler|myStateMachine|counter[24]~93\ = CARRY((\myControler|myStateMachine|counter\(24) & !\myControler|myStateMachine|counter[23]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(24),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[23]~91\,
	combout => \myControler|myStateMachine|counter[24]~92_combout\,
	cout => \myControler|myStateMachine|counter[24]~93\);

-- Location: LCFF_X31_Y15_N1
\myControler|myStateMachine|counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[24]~92_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(24));

-- Location: LCCOMB_X31_Y15_N2
\myControler|myStateMachine|counter[25]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[25]~94_combout\ = (\myControler|myStateMachine|counter\(25) & (!\myControler|myStateMachine|counter[24]~93\)) # (!\myControler|myStateMachine|counter\(25) & ((\myControler|myStateMachine|counter[24]~93\) # (GND)))
-- \myControler|myStateMachine|counter[25]~95\ = CARRY((!\myControler|myStateMachine|counter[24]~93\) # (!\myControler|myStateMachine|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(25),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[24]~93\,
	combout => \myControler|myStateMachine|counter[25]~94_combout\,
	cout => \myControler|myStateMachine|counter[25]~95\);

-- Location: LCFF_X31_Y15_N3
\myControler|myStateMachine|counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[25]~94_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(25));

-- Location: LCCOMB_X31_Y15_N4
\myControler|myStateMachine|counter[26]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[26]~96_combout\ = (\myControler|myStateMachine|counter\(26) & (\myControler|myStateMachine|counter[25]~95\ $ (GND))) # (!\myControler|myStateMachine|counter\(26) & (!\myControler|myStateMachine|counter[25]~95\ & VCC))
-- \myControler|myStateMachine|counter[26]~97\ = CARRY((\myControler|myStateMachine|counter\(26) & !\myControler|myStateMachine|counter[25]~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(26),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[25]~95\,
	combout => \myControler|myStateMachine|counter[26]~96_combout\,
	cout => \myControler|myStateMachine|counter[26]~97\);

-- Location: LCFF_X31_Y15_N5
\myControler|myStateMachine|counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[26]~96_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(26));

-- Location: LCCOMB_X31_Y15_N8
\myControler|myStateMachine|counter[28]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[28]~100_combout\ = (\myControler|myStateMachine|counter\(28) & (\myControler|myStateMachine|counter[27]~99\ $ (GND))) # (!\myControler|myStateMachine|counter\(28) & (!\myControler|myStateMachine|counter[27]~99\ & VCC))
-- \myControler|myStateMachine|counter[28]~101\ = CARRY((\myControler|myStateMachine|counter\(28) & !\myControler|myStateMachine|counter[27]~99\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(28),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[27]~99\,
	combout => \myControler|myStateMachine|counter[28]~100_combout\,
	cout => \myControler|myStateMachine|counter[28]~101\);

-- Location: LCFF_X31_Y15_N9
\myControler|myStateMachine|counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[28]~100_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(28));

-- Location: LCCOMB_X31_Y15_N30
\myControler|myStateMachine|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal0~2_combout\ = (!\myControler|myStateMachine|counter\(27) & (!\myControler|myStateMachine|counter\(28) & (!\myControler|myStateMachine|counter\(26) & !\myControler|myStateMachine|counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(27),
	datab => \myControler|myStateMachine|counter\(28),
	datac => \myControler|myStateMachine|counter\(26),
	datad => \myControler|myStateMachine|counter\(25),
	combout => \myControler|myStateMachine|Equal0~2_combout\);

-- Location: LCFF_X31_Y16_N25
\myControler|myStateMachine|counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[20]~84_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(20));

-- Location: LCFF_X31_Y17_N17
\myControler|myStateMachine|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[0]~34_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(0));

-- Location: LCCOMB_X31_Y17_N0
\myControler|myStateMachine|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal0~0_combout\ = (!\myControler|myStateMachine|counter\(13) & (!\myControler|myStateMachine|counter\(20) & (!\myControler|myStateMachine|counter\(0) & !\myControler|myStateMachine|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(13),
	datab => \myControler|myStateMachine|counter\(20),
	datac => \myControler|myStateMachine|counter\(0),
	datad => \myControler|myStateMachine|counter\(5),
	combout => \myControler|myStateMachine|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y15_N10
\myControler|myStateMachine|counter[29]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[29]~102_combout\ = (\myControler|myStateMachine|counter\(29) & (!\myControler|myStateMachine|counter[28]~101\)) # (!\myControler|myStateMachine|counter\(29) & ((\myControler|myStateMachine|counter[28]~101\) # (GND)))
-- \myControler|myStateMachine|counter[29]~103\ = CARRY((!\myControler|myStateMachine|counter[28]~101\) # (!\myControler|myStateMachine|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(29),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[28]~101\,
	combout => \myControler|myStateMachine|counter[29]~102_combout\,
	cout => \myControler|myStateMachine|counter[29]~103\);

-- Location: LCCOMB_X31_Y15_N12
\myControler|myStateMachine|counter[30]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|counter[30]~104_combout\ = (\myControler|myStateMachine|counter\(30) & (\myControler|myStateMachine|counter[29]~103\ $ (GND))) # (!\myControler|myStateMachine|counter\(30) & (!\myControler|myStateMachine|counter[29]~103\ & 
-- VCC))
-- \myControler|myStateMachine|counter[30]~105\ = CARRY((\myControler|myStateMachine|counter\(30) & !\myControler|myStateMachine|counter[29]~103\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|counter\(30),
	datad => VCC,
	cin => \myControler|myStateMachine|counter[29]~103\,
	combout => \myControler|myStateMachine|counter[30]~104_combout\,
	cout => \myControler|myStateMachine|counter[30]~105\);

-- Location: LCFF_X31_Y15_N13
\myControler|myStateMachine|counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[30]~104_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(30));

-- Location: LCFF_X31_Y15_N15
\myControler|myStateMachine|counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[31]~106_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(31));

-- Location: LCFF_X31_Y15_N11
\myControler|myStateMachine|counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|counter[29]~102_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|counter[20]~44_combout\,
	ena => \myControler|myStateMachine|counter[20]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|counter\(29));

-- Location: LCCOMB_X31_Y15_N24
\myControler|myStateMachine|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal0~3_combout\ = (!\myControler|myStateMachine|counter\(32) & (!\myControler|myStateMachine|counter\(30) & (!\myControler|myStateMachine|counter\(31) & !\myControler|myStateMachine|counter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|counter\(32),
	datab => \myControler|myStateMachine|counter\(30),
	datac => \myControler|myStateMachine|counter\(31),
	datad => \myControler|myStateMachine|counter\(29),
	combout => \myControler|myStateMachine|Equal0~3_combout\);

-- Location: LCCOMB_X30_Y16_N16
\myControler|myStateMachine|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal0~4_combout\ = (\myControler|myStateMachine|Equal0~1_combout\ & (\myControler|myStateMachine|Equal0~2_combout\ & (\myControler|myStateMachine|Equal0~0_combout\ & \myControler|myStateMachine|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Equal0~1_combout\,
	datab => \myControler|myStateMachine|Equal0~2_combout\,
	datac => \myControler|myStateMachine|Equal0~0_combout\,
	datad => \myControler|myStateMachine|Equal0~3_combout\,
	combout => \myControler|myStateMachine|Equal0~4_combout\);

-- Location: LCCOMB_X29_Y17_N22
\myControler|myStateMachine|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal1~5_combout\ = (\myControler|myStateMachine|Equal1~4_combout\ & (\myControler|myStateMachine|Equal0~4_combout\ & \myControler|myStateMachine|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Equal1~4_combout\,
	datac => \myControler|myStateMachine|Equal0~4_combout\,
	datad => \myControler|myStateMachine|Equal1~1_combout\,
	combout => \myControler|myStateMachine|Equal1~5_combout\);

-- Location: LCCOMB_X29_Y17_N16
\myControler|myStateMachine|Selector234~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector234~6_combout\ = ((!\myControler|myStateMachine|Equal4~7_combout\ & ((\myControler|myStateMachine|state.displayClear~regout\) # (\myControler|myStateMachine|state.entryModeSet~regout\)))) # 
-- (!\myControler|myStateMachine|state.powerOn~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|state.powerOn~regout\,
	datab => \myControler|myStateMachine|state.displayClear~regout\,
	datac => \myControler|myStateMachine|Equal4~7_combout\,
	datad => \myControler|myStateMachine|state.entryModeSet~regout\,
	combout => \myControler|myStateMachine|Selector234~6_combout\);

-- Location: LCCOMB_X29_Y17_N6
\myControler|myStateMachine|Selector234~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector234~4_combout\ = (\myControler|myStateMachine|Selector234~3_combout\) # ((\myControler|myStateMachine|Selector234~6_combout\) # ((\myControler|myStateMachine|state.functionSet~regout\ & 
-- !\myControler|myStateMachine|Selector72~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Selector234~3_combout\,
	datab => \myControler|myStateMachine|state.functionSet~regout\,
	datac => \myControler|myStateMachine|Selector234~6_combout\,
	datad => \myControler|myStateMachine|Selector72~0_combout\,
	combout => \myControler|myStateMachine|Selector234~4_combout\);

-- Location: LCCOMB_X29_Y17_N12
\myControler|myStateMachine|Selector234~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector234~5_combout\ = (\myControler|myStateMachine|Selector234~2_combout\ & ((\myControler|myStateMachine|Equal1~5_combout\) # ((\myControler|myStateMachine|subStates.subState3~regout\ & 
-- \myControler|myStateMachine|Selector234~4_combout\)))) # (!\myControler|myStateMachine|Selector234~2_combout\ & (((\myControler|myStateMachine|subStates.subState3~regout\ & \myControler|myStateMachine|Selector234~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Selector234~2_combout\,
	datab => \myControler|myStateMachine|Equal1~5_combout\,
	datac => \myControler|myStateMachine|subStates.subState3~regout\,
	datad => \myControler|myStateMachine|Selector234~4_combout\,
	combout => \myControler|myStateMachine|Selector234~5_combout\);

-- Location: LCFF_X29_Y17_N13
\myControler|myStateMachine|subStates.subState3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Selector234~5_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|subStates.subState3~regout\);

-- Location: LCCOMB_X30_Y16_N18
\myControler|myStateMachine|Selector155~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector155~0_combout\ = (\myControler|myStateMachine|subStates.subState3~regout\ & (\myControler|myStateMachine|Equal3~0_combout\ & \myControler|myStateMachine|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|subStates.subState3~regout\,
	datac => \myControler|myStateMachine|Equal3~0_combout\,
	datad => \myControler|myStateMachine|Equal2~2_combout\,
	combout => \myControler|myStateMachine|Selector155~0_combout\);

-- Location: LCFF_X28_Y17_N13
\myControler|myStateMachine|state.cursorShift\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \myControler|myStateMachine|state.writeData~regout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => VCC,
	ena => \myControler|myStateMachine|Selector155~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|state.cursorShift~regout\);

-- Location: LCCOMB_X28_Y17_N28
\myControler|myStateMachine|Selector229~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector229~2_combout\ = (\myControler|myStateMachine|Selector229~1_combout\) # ((\myControler|myStateMachine|Selector155~0_combout\ & (\myControler|myStateMachine|state.cursorShift~regout\)) # 
-- (!\myControler|myStateMachine|Selector155~0_combout\ & ((\myControler|myStateMachine|state.writeAddr~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Selector229~1_combout\,
	datab => \myControler|myStateMachine|state.cursorShift~regout\,
	datac => \myControler|myStateMachine|state.writeAddr~regout\,
	datad => \myControler|myStateMachine|Selector155~0_combout\,
	combout => \myControler|myStateMachine|Selector229~2_combout\);

-- Location: LCFF_X28_Y17_N29
\myControler|myStateMachine|state.writeAddr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Selector229~2_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|state.writeAddr~regout\);

-- Location: LCFF_X28_Y17_N1
\myControler|myStateMachine|state.writeData\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \myControler|myStateMachine|state.writeAddr~regout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => VCC,
	ena => \myControler|myStateMachine|Selector155~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|state.writeData~regout\);

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[14]~I\ : cycloneii_io
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
	padio => \ww_in\(14),
	combout => \in~combout\(14));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[13]~I\ : cycloneii_io
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
	padio => \ww_in\(13),
	combout => \in~combout\(13));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[12]~I\ : cycloneii_io
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
	padio => \ww_in\(12),
	combout => \in~combout\(12));

-- Location: LCCOMB_X33_Y21_N26
\myConverter|n~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~138_combout\ = (\in~combout\(15) & ((\in~combout\(14) & (\in~combout\(13) & \in~combout\(12))) # (!\in~combout\(14) & (!\in~combout\(13))))) # (!\in~combout\(15) & (\in~combout\(14) & ((\in~combout\(13)) # (\in~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(15),
	datab => \in~combout\(14),
	datac => \in~combout\(13),
	datad => \in~combout\(12),
	combout => \myConverter|n~138_combout\);

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[15]~I\ : cycloneii_io
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
	padio => \ww_in\(15),
	combout => \in~combout\(15));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[11]~I\ : cycloneii_io
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
	padio => \ww_in\(11),
	combout => \in~combout\(11));

-- Location: LCCOMB_X33_Y21_N4
\myConverter|n~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~143_combout\ = (\in~combout\(11) & ((\in~combout\(12) $ (!\in~combout\(15))) # (!\in~combout\(14)))) # (!\in~combout\(11) & ((\in~combout\(15)) # (\in~combout\(12) $ (\in~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(12),
	datab => \in~combout\(14),
	datac => \in~combout\(15),
	datad => \in~combout\(11),
	combout => \myConverter|n~143_combout\);

-- Location: LCCOMB_X33_Y21_N30
\myConverter|n~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~144_combout\ = (\myConverter|n~143_combout\ & (\in~combout\(13) $ (((\in~combout\(14) & !\in~combout\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(13),
	datab => \in~combout\(14),
	datac => \myConverter|n~143_combout\,
	datad => \in~combout\(12),
	combout => \myConverter|n~144_combout\);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[10]~I\ : cycloneii_io
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
	padio => \ww_in\(10),
	combout => \in~combout\(10));

-- Location: LCCOMB_X33_Y21_N28
\myConverter|n~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~34_combout\ = (\in~combout\(15) & (!\in~combout\(13) & ((\in~combout\(14)) # (!\in~combout\(12))))) # (!\in~combout\(15) & (\in~combout\(13) & ((\in~combout\(12)) # (!\in~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(15),
	datab => \in~combout\(14),
	datac => \in~combout\(13),
	datad => \in~combout\(12),
	combout => \myConverter|n~34_combout\);

-- Location: LCCOMB_X33_Y21_N0
\myConverter|n~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~32_combout\ = (\in~combout\(14) & ((\in~combout\(15) & (!\in~combout\(13) & \in~combout\(12))) # (!\in~combout\(15) & (\in~combout\(13) & !\in~combout\(12))))) # (!\in~combout\(14) & (\in~combout\(12) $ (((\in~combout\(15) & 
-- !\in~combout\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(15),
	datab => \in~combout\(14),
	datac => \in~combout\(13),
	datad => \in~combout\(12),
	combout => \myConverter|n~32_combout\);

-- Location: LCCOMB_X33_Y21_N18
\myConverter|n~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~37_combout\ = (\myConverter|n~33_combout\ & ((\in~combout\(11) $ (!\myConverter|n~32_combout\)))) # (!\myConverter|n~33_combout\ & (\myConverter|n~32_combout\ & ((\in~combout\(11)) # (!\myConverter|n~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~33_combout\,
	datab => \myConverter|n~34_combout\,
	datac => \in~combout\(11),
	datad => \myConverter|n~32_combout\,
	combout => \myConverter|n~37_combout\);

-- Location: LCCOMB_X33_Y21_N22
\myConverter|n~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~35_combout\ = (\myConverter|n~33_combout\ & (((!\in~combout\(11))))) # (!\myConverter|n~33_combout\ & ((\myConverter|n~34_combout\ & (!\in~combout\(11) & \myConverter|n~32_combout\)) # (!\myConverter|n~34_combout\ & (\in~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~33_combout\,
	datab => \myConverter|n~34_combout\,
	datac => \in~combout\(11),
	datad => \myConverter|n~32_combout\,
	combout => \myConverter|n~35_combout\);

-- Location: LCCOMB_X35_Y21_N30
\myConverter|n~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~136_combout\ = \myConverter|n~36_combout\ $ ((((!\in~combout\(10) & !\myConverter|n~35_combout\)) # (!\myConverter|n~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~36_combout\,
	datab => \in~combout\(10),
	datac => \myConverter|n~37_combout\,
	datad => \myConverter|n~35_combout\,
	combout => \myConverter|n~136_combout\);

-- Location: LCCOMB_X34_Y21_N28
\myConverter|n~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~56_combout\ = (\myConverter|n~136_combout\ & (((\myConverter|n~144_combout\)))) # (!\myConverter|n~136_combout\ & (\myConverter|n~135_combout\ $ (((\myConverter|n~138_combout\ & \myConverter|n~144_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~135_combout\,
	datab => \myConverter|n~138_combout\,
	datac => \myConverter|n~144_combout\,
	datad => \myConverter|n~136_combout\,
	combout => \myConverter|n~56_combout\);

-- Location: LCCOMB_X33_Y21_N24
\myConverter|n~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~137_combout\ = \myConverter|n~33_combout\ $ ((((!\in~combout\(11) & !\myConverter|n~32_combout\)) # (!\myConverter|n~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~33_combout\,
	datab => \myConverter|n~34_combout\,
	datac => \in~combout\(11),
	datad => \myConverter|n~32_combout\,
	combout => \myConverter|n~137_combout\);

-- Location: LCCOMB_X34_Y21_N0
\myConverter|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|LessThan6~0_combout\ = (\myConverter|LessThan0~0_combout\ & ((\myConverter|n~137_combout\ & (!\myConverter|n~138_combout\)) # (!\myConverter|n~137_combout\ & (\myConverter|n~138_combout\ & !\myConverter|n~136_combout\)))) # 
-- (!\myConverter|LessThan0~0_combout\ & (\myConverter|n~138_combout\ & ((!\myConverter|n~136_combout\) # (!\myConverter|n~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|LessThan0~0_combout\,
	datab => \myConverter|n~137_combout\,
	datac => \myConverter|n~138_combout\,
	datad => \myConverter|n~136_combout\,
	combout => \myConverter|LessThan6~0_combout\);

-- Location: LCCOMB_X35_Y21_N2
\myConverter|n~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~39_combout\ = (\myConverter|n~37_combout\ & (((!\in~combout\(10) & !\myConverter|n~35_combout\)))) # (!\myConverter|n~37_combout\ & (\myConverter|n~36_combout\ & ((\in~combout\(10)) # (\myConverter|n~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~36_combout\,
	datab => \in~combout\(10),
	datac => \myConverter|n~37_combout\,
	datad => \myConverter|n~35_combout\,
	combout => \myConverter|n~39_combout\);

-- Location: LCCOMB_X35_Y21_N4
\myConverter|n~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~40_combout\ = (\myConverter|n~36_combout\ & (\in~combout\(10) $ (((!\myConverter|n~35_combout\))))) # (!\myConverter|n~36_combout\ & (\myConverter|n~35_combout\ & ((\in~combout\(10)) # (!\myConverter|n~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~36_combout\,
	datab => \in~combout\(10),
	datac => \myConverter|n~37_combout\,
	datad => \myConverter|n~35_combout\,
	combout => \myConverter|n~40_combout\);

-- Location: LCCOMB_X35_Y21_N0
\myConverter|n~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~38_combout\ = (\myConverter|n~36_combout\ & (!\in~combout\(10))) # (!\myConverter|n~36_combout\ & ((\in~combout\(10) & (!\myConverter|n~37_combout\)) # (!\in~combout\(10) & (\myConverter|n~37_combout\ & \myConverter|n~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~36_combout\,
	datab => \in~combout\(10),
	datac => \myConverter|n~37_combout\,
	datad => \myConverter|n~35_combout\,
	combout => \myConverter|n~38_combout\);

-- Location: LCCOMB_X35_Y21_N24
\myConverter|n~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~54_combout\ = \myConverter|n~39_combout\ $ ((((!\in~combout\(9) & !\myConverter|n~38_combout\)) # (!\myConverter|n~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(9),
	datab => \myConverter|n~39_combout\,
	datac => \myConverter|n~40_combout\,
	datad => \myConverter|n~38_combout\,
	combout => \myConverter|n~54_combout\);

-- Location: LCCOMB_X34_Y21_N18
\myConverter|LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|LessThan8~0_combout\ = (\myConverter|n~136_combout\ $ (!\myConverter|LessThan6~0_combout\)) # (!\myConverter|n~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myConverter|n~136_combout\,
	datac => \myConverter|LessThan6~0_combout\,
	datad => \myConverter|n~54_combout\,
	combout => \myConverter|LessThan8~0_combout\);

-- Location: LCCOMB_X34_Y21_N30
\myConverter|n~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~57_combout\ = (\myConverter|n~138_combout\ & (\myConverter|n~136_combout\ & (\myConverter|LessThan0~0_combout\ $ (\myConverter|n~137_combout\)))) # (!\myConverter|n~138_combout\ & (\myConverter|LessThan0~0_combout\ & 
-- (\myConverter|n~137_combout\ & !\myConverter|n~136_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|LessThan0~0_combout\,
	datab => \myConverter|n~137_combout\,
	datac => \myConverter|n~138_combout\,
	datad => \myConverter|n~136_combout\,
	combout => \myConverter|n~57_combout\);

-- Location: LCCOMB_X34_Y21_N8
\myConverter|n~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~139_combout\ = \myConverter|n~57_combout\ $ (((!\myConverter|LessThan8~0_combout\) # (!\myConverter|n~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myConverter|n~56_combout\,
	datac => \myConverter|LessThan8~0_combout\,
	datad => \myConverter|n~57_combout\,
	combout => \myConverter|n~139_combout\);

-- Location: LCCOMB_X34_Y21_N26
\myConverter|tenThou[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|tenThou[3]~1_combout\ = (\myConverter|LessThan0~0_combout\ & ((\myConverter|n~138_combout\) # (!\myConverter|n~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|LessThan0~0_combout\,
	datab => \myConverter|n~138_combout\,
	datad => \myConverter|n~137_combout\,
	combout => \myConverter|tenThou[3]~1_combout\);

-- Location: LCCOMB_X34_Y21_N16
\myConverter|n~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~76_combout\ = (!\myConverter|n~140_combout\ & ((!\myConverter|tenThou[3]~1_combout\) # (!\myConverter|n~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~140_combout\,
	datac => \myConverter|n~139_combout\,
	datad => \myConverter|tenThou[3]~1_combout\,
	combout => \myConverter|n~76_combout\);

-- Location: LCCOMB_X34_Y21_N2
\myConverter|n~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~77_combout\ = (!\myConverter|tenThou[3]~1_combout\ & (\myConverter|n~57_combout\ $ (((\myConverter|LessThan8~0_combout\ & \myConverter|n~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|tenThou[3]~1_combout\,
	datab => \myConverter|n~57_combout\,
	datac => \myConverter|LessThan8~0_combout\,
	datad => \myConverter|n~56_combout\,
	combout => \myConverter|n~77_combout\);

-- Location: LCCOMB_X34_Y21_N24
\myConverter|n~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~58_combout\ = \myConverter|n~54_combout\ $ (((\myConverter|n~57_combout\) # ((\myConverter|n~56_combout\ & \myConverter|LessThan8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~56_combout\,
	datab => \myConverter|n~57_combout\,
	datac => \myConverter|LessThan8~0_combout\,
	datad => \myConverter|n~54_combout\,
	combout => \myConverter|n~58_combout\);

-- Location: LCCOMB_X34_Y21_N4
\myConverter|n~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~60_combout\ = (\myConverter|n~59_combout\ & (((!\myConverter|n~54_combout\)) # (!\myConverter|n~57_combout\))) # (!\myConverter|n~59_combout\ & (\myConverter|n~54_combout\ & ((\myConverter|n~57_combout\) # (\myConverter|n~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~59_combout\,
	datab => \myConverter|n~57_combout\,
	datac => \myConverter|n~56_combout\,
	datad => \myConverter|n~54_combout\,
	combout => \myConverter|n~60_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[8]~I\ : cycloneii_io
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
	padio => \ww_in\(8),
	combout => \in~combout\(8));

-- Location: LCCOMB_X35_Y21_N14
\myConverter|n~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~41_combout\ = (\in~combout\(9) & (!\myConverter|n~39_combout\ & (!\myConverter|n~40_combout\))) # (!\in~combout\(9) & ((\myConverter|n~39_combout\) # ((\myConverter|n~40_combout\ & \myConverter|n~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(9),
	datab => \myConverter|n~39_combout\,
	datac => \myConverter|n~40_combout\,
	datad => \myConverter|n~38_combout\,
	combout => \myConverter|n~41_combout\);

-- Location: LCCOMB_X35_Y21_N10
\myConverter|n~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~43_combout\ = (\in~combout\(9) & (((\myConverter|n~38_combout\)))) # (!\in~combout\(9) & ((\myConverter|n~39_combout\ & ((!\myConverter|n~38_combout\))) # (!\myConverter|n~39_combout\ & (!\myConverter|n~40_combout\ & 
-- \myConverter|n~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(9),
	datab => \myConverter|n~39_combout\,
	datac => \myConverter|n~40_combout\,
	datad => \myConverter|n~38_combout\,
	combout => \myConverter|n~43_combout\);

-- Location: LCCOMB_X35_Y21_N26
\myConverter|n~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~62_combout\ = \myConverter|n~42_combout\ $ ((((!\in~combout\(8) & !\myConverter|n~41_combout\)) # (!\myConverter|n~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~42_combout\,
	datab => \in~combout\(8),
	datac => \myConverter|n~41_combout\,
	datad => \myConverter|n~43_combout\,
	combout => \myConverter|n~62_combout\);

-- Location: LCCOMB_X38_Y21_N30
\myConverter|n~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~79_combout\ = \myConverter|n~61_combout\ $ (((\myConverter|n~60_combout\) # ((\myConverter|n~58_combout\ & \myConverter|n~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~61_combout\,
	datab => \myConverter|n~58_combout\,
	datac => \myConverter|n~60_combout\,
	datad => \myConverter|n~62_combout\,
	combout => \myConverter|n~79_combout\);

-- Location: LCCOMB_X38_Y21_N0
\myConverter|n~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~80_combout\ = (\myConverter|n~78_combout\ & (((!\myConverter|n~79_combout\)))) # (!\myConverter|n~78_combout\ & ((\myConverter|n~76_combout\ & ((!\myConverter|n~79_combout\) # (!\myConverter|n~77_combout\))) # (!\myConverter|n~76_combout\ & 
-- ((\myConverter|n~79_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~78_combout\,
	datab => \myConverter|n~76_combout\,
	datac => \myConverter|n~77_combout\,
	datad => \myConverter|n~79_combout\,
	combout => \myConverter|n~80_combout\);

-- Location: LCCOMB_X35_Y21_N8
\myConverter|n~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~46_combout\ = (\myConverter|n~42_combout\ & (\in~combout\(8) $ ((!\myConverter|n~41_combout\)))) # (!\myConverter|n~42_combout\ & (\myConverter|n~41_combout\ & ((\in~combout\(8)) # (!\myConverter|n~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~42_combout\,
	datab => \in~combout\(8),
	datac => \myConverter|n~41_combout\,
	datad => \myConverter|n~43_combout\,
	combout => \myConverter|n~46_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[7]~I\ : cycloneii_io
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
	padio => \ww_in\(7),
	combout => \in~combout\(7));

-- Location: LCCOMB_X35_Y21_N6
\myConverter|n~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~45_combout\ = (\myConverter|n~43_combout\ & (((!\in~combout\(8) & !\myConverter|n~41_combout\)))) # (!\myConverter|n~43_combout\ & (\myConverter|n~42_combout\ & ((\in~combout\(8)) # (\myConverter|n~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~42_combout\,
	datab => \in~combout\(8),
	datac => \myConverter|n~41_combout\,
	datad => \myConverter|n~43_combout\,
	combout => \myConverter|n~45_combout\);

-- Location: LCCOMB_X35_Y21_N20
\myConverter|n~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~66_combout\ = \myConverter|n~45_combout\ $ ((((!\myConverter|n~44_combout\ & !\in~combout\(7))) # (!\myConverter|n~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~44_combout\,
	datab => \myConverter|n~46_combout\,
	datac => \in~combout\(7),
	datad => \myConverter|n~45_combout\,
	combout => \myConverter|n~66_combout\);

-- Location: LCCOMB_X38_Y21_N8
\myConverter|n~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~63_combout\ = (\myConverter|n~61_combout\ & (((!\myConverter|n~62_combout\)))) # (!\myConverter|n~61_combout\ & ((\myConverter|n~60_combout\ & ((\myConverter|n~62_combout\))) # (!\myConverter|n~60_combout\ & ((\myConverter|n~58_combout\) # 
-- (!\myConverter|n~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~61_combout\,
	datab => \myConverter|n~58_combout\,
	datac => \myConverter|n~60_combout\,
	datad => \myConverter|n~62_combout\,
	combout => \myConverter|n~63_combout\);

-- Location: LCCOMB_X38_Y21_N26
\myConverter|n~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~64_combout\ = (\myConverter|n~61_combout\ & (\myConverter|n~58_combout\ $ (((\myConverter|n~62_combout\))))) # (!\myConverter|n~61_combout\ & ((\myConverter|n~58_combout\) # ((!\myConverter|n~60_combout\ & \myConverter|n~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~61_combout\,
	datab => \myConverter|n~58_combout\,
	datac => \myConverter|n~60_combout\,
	datad => \myConverter|n~62_combout\,
	combout => \myConverter|n~64_combout\);

-- Location: LCCOMB_X38_Y21_N20
\myConverter|n~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~75_combout\ = \myConverter|n~65_combout\ $ (((\myConverter|n~64_combout\) # ((\myConverter|n~66_combout\ & \myConverter|n~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~65_combout\,
	datab => \myConverter|n~66_combout\,
	datac => \myConverter|n~63_combout\,
	datad => \myConverter|n~64_combout\,
	combout => \myConverter|n~75_combout\);

-- Location: LCCOMB_X38_Y21_N28
\myConverter|n~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~82_combout\ = (\myConverter|n~76_combout\ & (((!\myConverter|n~77_combout\ & \myConverter|n~79_combout\)))) # (!\myConverter|n~76_combout\ & (\myConverter|n~78_combout\ & ((\myConverter|n~77_combout\) # (!\myConverter|n~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~78_combout\,
	datab => \myConverter|n~76_combout\,
	datac => \myConverter|n~77_combout\,
	datad => \myConverter|n~79_combout\,
	combout => \myConverter|n~82_combout\);

-- Location: LCCOMB_X38_Y21_N6
\myConverter|n~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~101_combout\ = \myConverter|n~82_combout\ $ ((((\myConverter|n~80_combout\ & \myConverter|n~75_combout\)) # (!\myConverter|n~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~81_combout\,
	datab => \myConverter|n~80_combout\,
	datac => \myConverter|n~75_combout\,
	datad => \myConverter|n~82_combout\,
	combout => \myConverter|n~101_combout\);

-- Location: LCCOMB_X38_Y21_N4
\myConverter|n~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~100_combout\ = \myConverter|n~78_combout\ $ (((\myConverter|n~76_combout\ & ((\myConverter|n~77_combout\) # (!\myConverter|n~79_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~78_combout\,
	datab => \myConverter|n~76_combout\,
	datac => \myConverter|n~77_combout\,
	datad => \myConverter|n~79_combout\,
	combout => \myConverter|n~100_combout\);

-- Location: LCCOMB_X38_Y21_N16
\myConverter|n~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~85_combout\ = (\myConverter|n~81_combout\ & (((\myConverter|n~80_combout\ & !\myConverter|n~82_combout\)) # (!\myConverter|n~75_combout\))) # (!\myConverter|n~81_combout\ & ((\myConverter|n~75_combout\ $ (\myConverter|n~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~81_combout\,
	datab => \myConverter|n~80_combout\,
	datac => \myConverter|n~75_combout\,
	datad => \myConverter|n~82_combout\,
	combout => \myConverter|n~85_combout\);

-- Location: LCCOMB_X38_Y21_N22
\myConverter|n~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~83_combout\ = (\myConverter|n~81_combout\ & (\myConverter|n~80_combout\ & (\myConverter|n~75_combout\))) # (!\myConverter|n~81_combout\ & (\myConverter|n~82_combout\ & ((!\myConverter|n~75_combout\) # (!\myConverter|n~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~81_combout\,
	datab => \myConverter|n~80_combout\,
	datac => \myConverter|n~75_combout\,
	datad => \myConverter|n~82_combout\,
	combout => \myConverter|n~83_combout\);

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[6]~I\ : cycloneii_io
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
	padio => \ww_in\(6),
	combout => \in~combout\(6));

-- Location: LCCOMB_X35_Y21_N22
\myConverter|n~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~49_combout\ = (\myConverter|n~44_combout\ & ((\in~combout\(7)) # ((!\myConverter|n~46_combout\ & !\myConverter|n~45_combout\)))) # (!\myConverter|n~44_combout\ & (((!\in~combout\(7) & \myConverter|n~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~44_combout\,
	datab => \myConverter|n~46_combout\,
	datac => \in~combout\(7),
	datad => \myConverter|n~45_combout\,
	combout => \myConverter|n~49_combout\);

-- Location: LCCOMB_X35_Y21_N18
\myConverter|n~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~47_combout\ = (\myConverter|n~46_combout\ & (!\in~combout\(7) & ((\myConverter|n~44_combout\) # (\myConverter|n~45_combout\)))) # (!\myConverter|n~46_combout\ & ((\in~combout\(7) $ (\myConverter|n~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~44_combout\,
	datab => \myConverter|n~46_combout\,
	datac => \in~combout\(7),
	datad => \myConverter|n~45_combout\,
	combout => \myConverter|n~47_combout\);

-- Location: LCCOMB_X37_Y21_N16
\myConverter|n~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~70_combout\ = \myConverter|n~48_combout\ $ ((((!\in~combout\(6) & !\myConverter|n~47_combout\)) # (!\myConverter|n~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~48_combout\,
	datab => \in~combout\(6),
	datac => \myConverter|n~49_combout\,
	datad => \myConverter|n~47_combout\,
	combout => \myConverter|n~70_combout\);

-- Location: LCCOMB_X38_Y21_N18
\myConverter|n~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~69_combout\ = (\myConverter|n~64_combout\ & (\myConverter|n~65_combout\ & ((!\myConverter|n~63_combout\) # (!\myConverter|n~66_combout\)))) # (!\myConverter|n~64_combout\ & (((\myConverter|n~66_combout\ & \myConverter|n~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~65_combout\,
	datab => \myConverter|n~66_combout\,
	datac => \myConverter|n~63_combout\,
	datad => \myConverter|n~64_combout\,
	combout => \myConverter|n~69_combout\);

-- Location: LCCOMB_X38_Y21_N24
\myConverter|n~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~68_combout\ = (\myConverter|n~65_combout\ & (\myConverter|n~66_combout\ $ ((\myConverter|n~63_combout\)))) # (!\myConverter|n~65_combout\ & ((\myConverter|n~63_combout\) # ((\myConverter|n~66_combout\ & !\myConverter|n~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~65_combout\,
	datab => \myConverter|n~66_combout\,
	datac => \myConverter|n~63_combout\,
	datad => \myConverter|n~64_combout\,
	combout => \myConverter|n~68_combout\);

-- Location: LCCOMB_X41_Y21_N16
\myConverter|n~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~84_combout\ = \myConverter|n~69_combout\ $ (((\myConverter|n~68_combout\) # ((\myConverter|n~67_combout\ & \myConverter|n~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~67_combout\,
	datab => \myConverter|n~70_combout\,
	datac => \myConverter|n~69_combout\,
	datad => \myConverter|n~68_combout\,
	combout => \myConverter|n~84_combout\);

-- Location: LCCOMB_X42_Y21_N4
\myConverter|n~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~99_combout\ = \myConverter|n~83_combout\ $ (((\myConverter|n~86_combout\) # ((\myConverter|n~85_combout\ & \myConverter|n~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~86_combout\,
	datab => \myConverter|n~85_combout\,
	datac => \myConverter|n~83_combout\,
	datad => \myConverter|n~84_combout\,
	combout => \myConverter|n~99_combout\);

-- Location: LCCOMB_X50_Y21_N0
\myConverter|n~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~102_combout\ = (\myConverter|n~100_combout\ & ((\myConverter|n~142_combout\ & ((\myConverter|n~99_combout\) # (!\myConverter|n~101_combout\))) # (!\myConverter|n~142_combout\ & ((\myConverter|n~101_combout\) # 
-- (!\myConverter|n~99_combout\))))) # (!\myConverter|n~100_combout\ & (\myConverter|n~99_combout\ $ (((\myConverter|n~142_combout\ & \myConverter|n~101_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~142_combout\,
	datab => \myConverter|n~101_combout\,
	datac => \myConverter|n~100_combout\,
	datad => \myConverter|n~99_combout\,
	combout => \myConverter|n~102_combout\);

-- Location: LCCOMB_X42_Y21_N26
\myConverter|n~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~88_combout\ = (\myConverter|n~86_combout\ & ((\myConverter|n~83_combout\ $ (\myConverter|n~84_combout\)))) # (!\myConverter|n~86_combout\ & (((\myConverter|n~85_combout\ & !\myConverter|n~83_combout\)) # (!\myConverter|n~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~86_combout\,
	datab => \myConverter|n~85_combout\,
	datac => \myConverter|n~83_combout\,
	datad => \myConverter|n~84_combout\,
	combout => \myConverter|n~88_combout\);

-- Location: LCCOMB_X42_Y21_N24
\myConverter|n~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~87_combout\ = (\myConverter|n~86_combout\ & (\myConverter|n~83_combout\ & ((!\myConverter|n~84_combout\) # (!\myConverter|n~85_combout\)))) # (!\myConverter|n~86_combout\ & (\myConverter|n~85_combout\ & ((\myConverter|n~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~86_combout\,
	datab => \myConverter|n~85_combout\,
	datac => \myConverter|n~83_combout\,
	datad => \myConverter|n~84_combout\,
	combout => \myConverter|n~87_combout\);

-- Location: LCCOMB_X42_Y21_N28
\myConverter|n~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~89_combout\ = (\myConverter|n~85_combout\ & (((!\myConverter|n~84_combout\) # (!\myConverter|n~83_combout\)))) # (!\myConverter|n~85_combout\ & (\myConverter|n~84_combout\ & ((\myConverter|n~83_combout\) # (!\myConverter|n~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~86_combout\,
	datab => \myConverter|n~85_combout\,
	datac => \myConverter|n~83_combout\,
	datad => \myConverter|n~84_combout\,
	combout => \myConverter|n~89_combout\);

-- Location: LCCOMB_X42_Y21_N22
\myConverter|n~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~105_combout\ = \myConverter|n~87_combout\ $ (((\myConverter|n~89_combout\) # ((\myConverter|n~74_combout\ & \myConverter|n~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~74_combout\,
	datab => \myConverter|n~88_combout\,
	datac => \myConverter|n~87_combout\,
	datad => \myConverter|n~89_combout\,
	combout => \myConverter|n~105_combout\);

-- Location: LCCOMB_X50_Y21_N10
\myConverter|n~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~103_combout\ = (\myConverter|n~142_combout\ & (\myConverter|n~101_combout\ & ((\myConverter|n~100_combout\) # (\myConverter|n~99_combout\)))) # (!\myConverter|n~142_combout\ & (!\myConverter|n~101_combout\ & ((!\myConverter|n~99_combout\) # 
-- (!\myConverter|n~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~142_combout\,
	datab => \myConverter|n~101_combout\,
	datac => \myConverter|n~100_combout\,
	datad => \myConverter|n~99_combout\,
	combout => \myConverter|n~103_combout\);

-- Location: LCCOMB_X50_Y21_N18
\myConverter|n~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~108_combout\ = (\myConverter|n~103_combout\ & (((\myConverter|n~102_combout\ & \myConverter|n~105_combout\)))) # (!\myConverter|n~103_combout\ & (\myConverter|n~104_combout\ & ((!\myConverter|n~105_combout\) # 
-- (!\myConverter|n~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~104_combout\,
	datab => \myConverter|n~102_combout\,
	datac => \myConverter|n~105_combout\,
	datad => \myConverter|n~103_combout\,
	combout => \myConverter|n~108_combout\);

-- Location: LCCOMB_X42_Y21_N8
\myConverter|n~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~127_combout\ = (\myConverter|n~74_combout\ & (!\myConverter|n~87_combout\ & ((\myConverter|n~88_combout\) # (\myConverter|n~89_combout\)))) # (!\myConverter|n~74_combout\ & (((\myConverter|n~87_combout\) # (!\myConverter|n~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~74_combout\,
	datab => \myConverter|n~88_combout\,
	datac => \myConverter|n~87_combout\,
	datad => \myConverter|n~89_combout\,
	combout => \myConverter|n~127_combout\);

-- Location: LCCOMB_X41_Y21_N2
\myConverter|n~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~72_combout\ = (\myConverter|n~67_combout\ & (((!\myConverter|n~69_combout\)) # (!\myConverter|n~70_combout\))) # (!\myConverter|n~67_combout\ & (\myConverter|n~70_combout\ & ((\myConverter|n~69_combout\) # (!\myConverter|n~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~67_combout\,
	datab => \myConverter|n~70_combout\,
	datac => \myConverter|n~69_combout\,
	datad => \myConverter|n~68_combout\,
	combout => \myConverter|n~72_combout\);

-- Location: LCCOMB_X41_Y21_N24
\myConverter|n~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~71_combout\ = (\myConverter|n~70_combout\ & (!\myConverter|n~69_combout\ & ((\myConverter|n~67_combout\) # (\myConverter|n~68_combout\)))) # (!\myConverter|n~70_combout\ & (((\myConverter|n~69_combout\) # (!\myConverter|n~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~67_combout\,
	datab => \myConverter|n~70_combout\,
	datac => \myConverter|n~69_combout\,
	datad => \myConverter|n~68_combout\,
	combout => \myConverter|n~71_combout\);

-- Location: LCCOMB_X41_Y21_N28
\myConverter|n~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~73_combout\ = (\myConverter|n~68_combout\ & (\myConverter|n~69_combout\ & ((!\myConverter|n~70_combout\) # (!\myConverter|n~67_combout\)))) # (!\myConverter|n~68_combout\ & (\myConverter|n~67_combout\ & (\myConverter|n~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~67_combout\,
	datab => \myConverter|n~70_combout\,
	datac => \myConverter|n~69_combout\,
	datad => \myConverter|n~68_combout\,
	combout => \myConverter|n~73_combout\);

-- Location: LCCOMB_X41_Y21_N26
\myConverter|n~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~94_combout\ = (\myConverter|n~53_combout\ & (!\myConverter|n~73_combout\ & ((\myConverter|n~72_combout\) # (\myConverter|n~71_combout\)))) # (!\myConverter|n~53_combout\ & (((\myConverter|n~73_combout\)) # (!\myConverter|n~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~53_combout\,
	datab => \myConverter|n~72_combout\,
	datac => \myConverter|n~71_combout\,
	datad => \myConverter|n~73_combout\,
	combout => \myConverter|n~94_combout\);

-- Location: LCCOMB_X37_Y21_N28
\myConverter|n~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~52_combout\ = (\myConverter|n~48_combout\ & (!\in~combout\(6))) # (!\myConverter|n~48_combout\ & ((\in~combout\(6) & (!\myConverter|n~49_combout\)) # (!\in~combout\(6) & (\myConverter|n~49_combout\ & \myConverter|n~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~48_combout\,
	datab => \in~combout\(6),
	datac => \myConverter|n~49_combout\,
	datad => \myConverter|n~47_combout\,
	combout => \myConverter|n~52_combout\);

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[5]~I\ : cycloneii_io
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
	padio => \ww_in\(5),
	combout => \in~combout\(5));

-- Location: LCCOMB_X37_Y21_N0
\myConverter|n~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~50_combout\ = (\myConverter|n~48_combout\ & (\in~combout\(6) $ (((!\myConverter|n~47_combout\))))) # (!\myConverter|n~48_combout\ & (\myConverter|n~47_combout\ & ((\in~combout\(6)) # (!\myConverter|n~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~48_combout\,
	datab => \in~combout\(6),
	datac => \myConverter|n~49_combout\,
	datad => \myConverter|n~47_combout\,
	combout => \myConverter|n~50_combout\);

-- Location: LCCOMB_X37_Y21_N22
\myConverter|n~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~92_combout\ = (\myConverter|n~51_combout\ & (((!\in~combout\(5))))) # (!\myConverter|n~51_combout\ & ((\in~combout\(5) & ((!\myConverter|n~50_combout\))) # (!\in~combout\(5) & (\myConverter|n~52_combout\ & \myConverter|n~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~51_combout\,
	datab => \myConverter|n~52_combout\,
	datac => \in~combout\(5),
	datad => \myConverter|n~50_combout\,
	combout => \myConverter|n~92_combout\);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[4]~I\ : cycloneii_io
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
	padio => \ww_in\(4),
	combout => \in~combout\(4));

-- Location: LCCOMB_X37_Y21_N26
\myConverter|n~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~90_combout\ = (\myConverter|n~51_combout\ & (\myConverter|n~52_combout\ $ ((!\in~combout\(5))))) # (!\myConverter|n~51_combout\ & (\myConverter|n~52_combout\ & ((\in~combout\(5)) # (!\myConverter|n~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~51_combout\,
	datab => \myConverter|n~52_combout\,
	datac => \in~combout\(5),
	datad => \myConverter|n~50_combout\,
	combout => \myConverter|n~90_combout\);

-- Location: LCCOMB_X37_Y21_N8
\myConverter|n~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~93_combout\ = \myConverter|n~91_combout\ $ ((((!\myConverter|n~92_combout\ & !\in~combout\(4))) # (!\myConverter|n~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~91_combout\,
	datab => \myConverter|n~92_combout\,
	datac => \in~combout\(4),
	datad => \myConverter|n~90_combout\,
	combout => \myConverter|n~93_combout\);

-- Location: LCCOMB_X41_Y21_N6
\myConverter|n~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~96_combout\ = (\myConverter|n~72_combout\ & (\myConverter|n~73_combout\ & ((!\myConverter|n~71_combout\) # (!\myConverter|n~53_combout\)))) # (!\myConverter|n~72_combout\ & (\myConverter|n~53_combout\ & (\myConverter|n~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~53_combout\,
	datab => \myConverter|n~72_combout\,
	datac => \myConverter|n~71_combout\,
	datad => \myConverter|n~73_combout\,
	combout => \myConverter|n~96_combout\);

-- Location: LCCOMB_X41_Y21_N0
\myConverter|n~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~97_combout\ = \myConverter|n~96_combout\ $ (((\myConverter|n~95_combout\) # ((\myConverter|n~94_combout\ & \myConverter|n~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~95_combout\,
	datab => \myConverter|n~94_combout\,
	datac => \myConverter|n~93_combout\,
	datad => \myConverter|n~96_combout\,
	combout => \myConverter|n~97_combout\);

-- Location: LCCOMB_X42_Y21_N2
\myConverter|n~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~98_combout\ = (\myConverter|n~89_combout\ & (\myConverter|n~87_combout\ & ((!\myConverter|n~88_combout\) # (!\myConverter|n~74_combout\)))) # (!\myConverter|n~89_combout\ & (\myConverter|n~74_combout\ & (\myConverter|n~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~74_combout\,
	datab => \myConverter|n~88_combout\,
	datac => \myConverter|n~87_combout\,
	datad => \myConverter|n~89_combout\,
	combout => \myConverter|n~98_combout\);

-- Location: LCCOMB_X42_Y21_N18
\myConverter|n~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~132_combout\ = \myConverter|n~98_combout\ $ (((\myConverter|n~128_combout\) # ((\myConverter|n~127_combout\ & \myConverter|n~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~128_combout\,
	datab => \myConverter|n~127_combout\,
	datac => \myConverter|n~97_combout\,
	datad => \myConverter|n~98_combout\,
	combout => \myConverter|n~132_combout\);

-- Location: LCCOMB_X50_Y21_N24
\myConverter|n~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~107_combout\ = (\myConverter|n~104_combout\ & (\myConverter|n~102_combout\ $ ((\myConverter|n~105_combout\)))) # (!\myConverter|n~104_combout\ & ((\myConverter|n~102_combout\) # ((\myConverter|n~105_combout\ & 
-- \myConverter|n~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~104_combout\,
	datab => \myConverter|n~102_combout\,
	datac => \myConverter|n~105_combout\,
	datad => \myConverter|n~103_combout\,
	combout => \myConverter|n~107_combout\);

-- Location: LCCOMB_X49_Y21_N28
\myConverter|thou[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|thou[3]~3_combout\ = (\myConverter|n~107_combout\ & (\myConverter|n~108_combout\ & ((!\myConverter|n~132_combout\) # (!\myConverter|n~106_combout\)))) # (!\myConverter|n~107_combout\ & (\myConverter|n~106_combout\ & 
-- ((\myConverter|n~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~106_combout\,
	datab => \myConverter|n~108_combout\,
	datac => \myConverter|n~132_combout\,
	datad => \myConverter|n~107_combout\,
	combout => \myConverter|thou[3]~3_combout\);

-- Location: LCCOMB_X42_Y21_N16
\myConverter|n~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~131_combout\ = (\myConverter|n~128_combout\ & (\myConverter|n~98_combout\ & ((!\myConverter|n~97_combout\) # (!\myConverter|n~127_combout\)))) # (!\myConverter|n~128_combout\ & (\myConverter|n~127_combout\ & (\myConverter|n~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~128_combout\,
	datab => \myConverter|n~127_combout\,
	datac => \myConverter|n~97_combout\,
	datad => \myConverter|n~98_combout\,
	combout => \myConverter|n~131_combout\);

-- Location: LCCOMB_X42_Y21_N20
\myConverter|n~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~129_combout\ = (\myConverter|n~128_combout\ & ((\myConverter|n~97_combout\ $ (\myConverter|n~98_combout\)))) # (!\myConverter|n~128_combout\ & (((\myConverter|n~127_combout\ & !\myConverter|n~98_combout\)) # (!\myConverter|n~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~128_combout\,
	datab => \myConverter|n~127_combout\,
	datac => \myConverter|n~97_combout\,
	datad => \myConverter|n~98_combout\,
	combout => \myConverter|n~129_combout\);

-- Location: LCCOMB_X41_Y21_N22
\myConverter|n~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~120_combout\ = (\myConverter|n~95_combout\ & (\myConverter|n~96_combout\ & ((!\myConverter|n~93_combout\) # (!\myConverter|n~94_combout\)))) # (!\myConverter|n~95_combout\ & (\myConverter|n~94_combout\ & (\myConverter|n~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~95_combout\,
	datab => \myConverter|n~94_combout\,
	datac => \myConverter|n~93_combout\,
	datad => \myConverter|n~96_combout\,
	combout => \myConverter|n~120_combout\);

-- Location: LCCOMB_X41_Y21_N10
\myConverter|n~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~118_combout\ = (\myConverter|n~95_combout\ & ((\myConverter|n~93_combout\ $ (\myConverter|n~96_combout\)))) # (!\myConverter|n~95_combout\ & (((\myConverter|n~94_combout\ & !\myConverter|n~96_combout\)) # (!\myConverter|n~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~95_combout\,
	datab => \myConverter|n~94_combout\,
	datac => \myConverter|n~93_combout\,
	datad => \myConverter|n~96_combout\,
	combout => \myConverter|n~118_combout\);

-- Location: LCCOMB_X41_Y21_N20
\myConverter|n~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~119_combout\ = (\myConverter|n~94_combout\ & (((!\myConverter|n~96_combout\) # (!\myConverter|n~93_combout\)))) # (!\myConverter|n~94_combout\ & (\myConverter|n~93_combout\ & ((\myConverter|n~96_combout\) # (!\myConverter|n~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~95_combout\,
	datab => \myConverter|n~94_combout\,
	datac => \myConverter|n~93_combout\,
	datad => \myConverter|n~96_combout\,
	combout => \myConverter|n~119_combout\);

-- Location: LCCOMB_X43_Y21_N0
\myConverter|n~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~126_combout\ = \myConverter|n~120_combout\ $ (((\myConverter|n~119_combout\) # ((\myConverter|n~121_combout\ & \myConverter|n~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~121_combout\,
	datab => \myConverter|n~120_combout\,
	datac => \myConverter|n~118_combout\,
	datad => \myConverter|n~119_combout\,
	combout => \myConverter|n~126_combout\);

-- Location: LCCOMB_X43_Y21_N2
\myConverter|thou[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|thou[0]~0_combout\ = \myConverter|n~131_combout\ $ (((\myConverter|n~130_combout\) # ((\myConverter|n~129_combout\ & \myConverter|n~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~130_combout\,
	datab => \myConverter|n~131_combout\,
	datac => \myConverter|n~129_combout\,
	datad => \myConverter|n~126_combout\,
	combout => \myConverter|thou[0]~0_combout\);

-- Location: LCCOMB_X49_Y21_N18
\myConverter|thou[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|thou[2]~2_combout\ = (\myConverter|n~106_combout\ & (((!\myConverter|n~132_combout\)) # (!\myConverter|n~108_combout\))) # (!\myConverter|n~106_combout\ & (\myConverter|n~132_combout\ & ((\myConverter|n~108_combout\) # 
-- (!\myConverter|n~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~106_combout\,
	datab => \myConverter|n~108_combout\,
	datac => \myConverter|n~132_combout\,
	datad => \myConverter|n~107_combout\,
	combout => \myConverter|thou[2]~2_combout\);

-- Location: LCCOMB_X49_Y21_N6
\converter2|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \converter2|WideOr1~0_combout\ = (!\myConverter|thou[0]~0_combout\ & (((\myConverter|thou[1]~1_combout\ & \myConverter|thou[2]~2_combout\)) # (!\myConverter|thou[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|thou[1]~1_combout\,
	datab => \myConverter|thou[3]~3_combout\,
	datac => \myConverter|thou[0]~0_combout\,
	datad => \myConverter|thou[2]~2_combout\,
	combout => \converter2|WideOr1~0_combout\);

-- Location: LCCOMB_X43_Y21_N6
\myConverter|hund[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|hund[2]~2_combout\ = (\myConverter|n~131_combout\ & ((\myConverter|n~129_combout\ $ (\myConverter|n~126_combout\)))) # (!\myConverter|n~131_combout\ & ((\myConverter|n~129_combout\) # ((!\myConverter|n~130_combout\ & 
-- \myConverter|n~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~130_combout\,
	datab => \myConverter|n~131_combout\,
	datac => \myConverter|n~129_combout\,
	datad => \myConverter|n~126_combout\,
	combout => \myConverter|hund[2]~2_combout\);

-- Location: LCCOMB_X43_Y21_N8
\myConverter|hund[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|hund[3]~3_combout\ = (\myConverter|n~130_combout\ & (\myConverter|n~131_combout\ & ((!\myConverter|n~126_combout\) # (!\myConverter|n~129_combout\)))) # (!\myConverter|n~130_combout\ & (((\myConverter|n~129_combout\ & 
-- \myConverter|n~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~130_combout\,
	datab => \myConverter|n~131_combout\,
	datac => \myConverter|n~129_combout\,
	datad => \myConverter|n~126_combout\,
	combout => \myConverter|hund[3]~3_combout\);

-- Location: LCCOMB_X37_Y21_N30
\myConverter|n~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~111_combout\ = (\myConverter|n~91_combout\ & (\myConverter|n~92_combout\ $ ((!\in~combout\(4))))) # (!\myConverter|n~91_combout\ & (\myConverter|n~92_combout\ & ((\in~combout\(4)) # (!\myConverter|n~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~91_combout\,
	datab => \myConverter|n~92_combout\,
	datac => \in~combout\(4),
	datad => \myConverter|n~90_combout\,
	combout => \myConverter|n~111_combout\);

-- Location: LCCOMB_X37_Y21_N20
\myConverter|n~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~110_combout\ = (\myConverter|n~90_combout\ & (((!\myConverter|n~92_combout\ & !\in~combout\(4))))) # (!\myConverter|n~90_combout\ & (\myConverter|n~91_combout\ & ((\myConverter|n~92_combout\) # (\in~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~91_combout\,
	datab => \myConverter|n~92_combout\,
	datac => \in~combout\(4),
	datad => \myConverter|n~90_combout\,
	combout => \myConverter|n~110_combout\);

-- Location: LCCOMB_X37_Y21_N2
\myConverter|n~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~109_combout\ = (\myConverter|n~91_combout\ & (((!\in~combout\(4))))) # (!\myConverter|n~91_combout\ & ((\in~combout\(4) & ((!\myConverter|n~90_combout\))) # (!\in~combout\(4) & (\myConverter|n~92_combout\ & \myConverter|n~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~91_combout\,
	datab => \myConverter|n~92_combout\,
	datac => \in~combout\(4),
	datad => \myConverter|n~90_combout\,
	combout => \myConverter|n~109_combout\);

-- Location: LCCOMB_X37_Y21_N14
\myConverter|n~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~121_combout\ = \myConverter|n~110_combout\ $ ((((!\in~combout\(3) & !\myConverter|n~109_combout\)) # (!\myConverter|n~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(3),
	datab => \myConverter|n~111_combout\,
	datac => \myConverter|n~110_combout\,
	datad => \myConverter|n~109_combout\,
	combout => \myConverter|n~121_combout\);

-- Location: LCCOMB_X45_Y21_N4
\myConverter|n~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~124_combout\ = (\myConverter|n~119_combout\ & (\myConverter|n~120_combout\ & ((!\myConverter|n~121_combout\) # (!\myConverter|n~118_combout\)))) # (!\myConverter|n~119_combout\ & (\myConverter|n~118_combout\ & 
-- ((\myConverter|n~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~118_combout\,
	datab => \myConverter|n~120_combout\,
	datac => \myConverter|n~121_combout\,
	datad => \myConverter|n~119_combout\,
	combout => \myConverter|n~124_combout\);

-- Location: LCCOMB_X45_Y21_N8
\myConverter|n~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~122_combout\ = (\myConverter|n~120_combout\ & (((!\myConverter|n~121_combout\)))) # (!\myConverter|n~120_combout\ & ((\myConverter|n~121_combout\ & ((\myConverter|n~118_combout\) # (\myConverter|n~119_combout\))) # 
-- (!\myConverter|n~121_combout\ & ((!\myConverter|n~119_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~118_combout\,
	datab => \myConverter|n~120_combout\,
	datac => \myConverter|n~121_combout\,
	datad => \myConverter|n~119_combout\,
	combout => \myConverter|n~122_combout\);

-- Location: LCCOMB_X37_Y21_N24
\myConverter|n~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~112_combout\ = (\in~combout\(3) & (!\myConverter|n~111_combout\ & (!\myConverter|n~110_combout\))) # (!\in~combout\(3) & ((\myConverter|n~110_combout\) # ((\myConverter|n~111_combout\ & \myConverter|n~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(3),
	datab => \myConverter|n~111_combout\,
	datac => \myConverter|n~110_combout\,
	datad => \myConverter|n~109_combout\,
	combout => \myConverter|n~112_combout\);

-- Location: LCCOMB_X37_Y21_N18
\myConverter|n~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~113_combout\ = (\myConverter|n~111_combout\ & (!\in~combout\(3) & ((!\myConverter|n~109_combout\)))) # (!\myConverter|n~111_combout\ & (\myConverter|n~110_combout\ & ((\in~combout\(3)) # (\myConverter|n~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(3),
	datab => \myConverter|n~111_combout\,
	datac => \myConverter|n~110_combout\,
	datad => \myConverter|n~109_combout\,
	combout => \myConverter|n~113_combout\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[2]~I\ : cycloneii_io
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
	padio => \ww_in\(2),
	combout => \in~combout\(2));

-- Location: LCCOMB_X45_Y21_N30
\myConverter|n~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~125_combout\ = \myConverter|n~113_combout\ $ ((((!\myConverter|n~112_combout\ & !\in~combout\(2))) # (!\myConverter|n~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~114_combout\,
	datab => \myConverter|n~112_combout\,
	datac => \myConverter|n~113_combout\,
	datad => \in~combout\(2),
	combout => \myConverter|n~125_combout\);

-- Location: LCCOMB_X45_Y21_N28
\myConverter|hund[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|hund[0]~0_combout\ = \myConverter|n~124_combout\ $ (((\myConverter|n~123_combout\) # ((\myConverter|n~122_combout\ & \myConverter|n~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~123_combout\,
	datab => \myConverter|n~124_combout\,
	datac => \myConverter|n~122_combout\,
	datad => \myConverter|n~125_combout\,
	combout => \myConverter|hund[0]~0_combout\);

-- Location: LCCOMB_X46_Y21_N4
\converter3|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \converter3|WideOr1~0_combout\ = (!\myConverter|hund[0]~0_combout\ & (((\myConverter|hund[1]~1_combout\ & \myConverter|hund[2]~2_combout\)) # (!\myConverter|hund[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|hund[1]~1_combout\,
	datab => \myConverter|hund[2]~2_combout\,
	datac => \myConverter|hund[3]~3_combout\,
	datad => \myConverter|hund[0]~0_combout\,
	combout => \converter3|WideOr1~0_combout\);

-- Location: LCFF_X46_Y21_N11
\myInterface|state.hundred\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \myInterface|state.thousand~regout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|state.hundred~regout\);

-- Location: LCFF_X46_Y21_N9
\myInterface|state.ten\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \myInterface|state.hundred~regout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|state.ten~regout\);

-- Location: LCFF_X46_Y21_N15
\myInterface|state.one\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \myInterface|state.ten~regout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|state.one~regout\);

-- Location: LCCOMB_X48_Y21_N24
\myInterface|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector0~0_combout\ = (\myInterface|state.one~regout\) # ((\myInterface|state.spin~regout\ & ((!\myInterface|counter\(1)) # (!\myInterface|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Equal0~0_combout\,
	datab => \myInterface|state.one~regout\,
	datac => \myInterface|state.spin~regout\,
	datad => \myInterface|counter\(1),
	combout => \myInterface|Selector0~0_combout\);

-- Location: LCFF_X48_Y21_N25
\myInterface|state.spin\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|Selector0~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|state.spin~regout\);

-- Location: LCCOMB_X47_Y21_N4
\myInterface|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector16~0_combout\ = (\myInterface|Add0~0_combout\) # (!\myInterface|state.spin~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Add0~0_combout\,
	datad => \myInterface|state.spin~regout\,
	combout => \myInterface|Selector16~0_combout\);

-- Location: LCCOMB_X48_Y21_N4
\myInterface|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector13~0_combout\ = (\myInterface|state.spin~regout\ & ((\myInterface|Add0~6_combout\) # ((\myInterface|counter\(1) & \myInterface|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Add0~6_combout\,
	datab => \myInterface|counter\(1),
	datac => \myInterface|Equal0~0_combout\,
	datad => \myInterface|state.spin~regout\,
	combout => \myInterface|Selector13~0_combout\);

-- Location: LCCOMB_X48_Y21_N28
\myInterface|Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector13~1_combout\ = (\myInterface|Selector13~0_combout\) # ((!\myInterface|state.one~regout\ & (\myInterface|counter\(3) & !\myInterface|state.spin~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|state.one~regout\,
	datab => \myInterface|Selector13~0_combout\,
	datac => \myInterface|counter\(3),
	datad => \myInterface|state.spin~regout\,
	combout => \myInterface|Selector13~1_combout\);

-- Location: LCFF_X48_Y21_N29
\myInterface|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|Selector13~1_combout\,
	ena => \lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|counter\(3));

-- Location: LCCOMB_X48_Y21_N8
\myInterface|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Add0~2_combout\ = (\myInterface|counter\(1) & (!\myInterface|Add0~1\)) # (!\myInterface|counter\(1) & ((\myInterface|Add0~1\) # (GND)))
-- \myInterface|Add0~3\ = CARRY((!\myInterface|Add0~1\) # (!\myInterface|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myInterface|counter\(1),
	datad => VCC,
	cin => \myInterface|Add0~1\,
	combout => \myInterface|Add0~2_combout\,
	cout => \myInterface|Add0~3\);

-- Location: LCCOMB_X48_Y21_N10
\myInterface|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Add0~4_combout\ = (\myInterface|counter\(2) & (\myInterface|Add0~3\ $ (GND))) # (!\myInterface|counter\(2) & (!\myInterface|Add0~3\ & VCC))
-- \myInterface|Add0~5\ = CARRY((\myInterface|counter\(2) & !\myInterface|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|counter\(2),
	datad => VCC,
	cin => \myInterface|Add0~3\,
	combout => \myInterface|Add0~4_combout\,
	cout => \myInterface|Add0~5\);

-- Location: LCCOMB_X48_Y21_N14
\myInterface|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Add0~8_combout\ = \myInterface|Add0~7\ $ (!\myInterface|counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \myInterface|counter\(4),
	cin => \myInterface|Add0~7\,
	combout => \myInterface|Add0~8_combout\);

-- Location: LCCOMB_X48_Y21_N30
\myInterface|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector12~0_combout\ = (\myInterface|state.spin~regout\ & ((\myInterface|Add0~8_combout\) # ((\myInterface|Equal0~0_combout\ & \myInterface|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Equal0~0_combout\,
	datab => \myInterface|counter\(1),
	datac => \myInterface|Add0~8_combout\,
	datad => \myInterface|state.spin~regout\,
	combout => \myInterface|Selector12~0_combout\);

-- Location: LCCOMB_X48_Y21_N22
\myInterface|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector12~1_combout\ = (\myInterface|Selector12~0_combout\) # ((!\myInterface|state.one~regout\ & (\myInterface|counter\(4) & !\myInterface|state.spin~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|state.one~regout\,
	datab => \myInterface|Selector12~0_combout\,
	datac => \myInterface|counter\(4),
	datad => \myInterface|state.spin~regout\,
	combout => \myInterface|Selector12~1_combout\);

-- Location: LCFF_X48_Y21_N23
\myInterface|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|Selector12~1_combout\,
	ena => \lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|counter\(4));

-- Location: LCCOMB_X48_Y21_N0
\myInterface|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Equal0~0_combout\ = (\myInterface|counter\(2) & (\myInterface|counter\(4) & (\myInterface|counter\(0) & \myInterface|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|counter\(2),
	datab => \myInterface|counter\(4),
	datac => \myInterface|counter\(0),
	datad => \myInterface|counter\(3),
	combout => \myInterface|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y21_N24
\myInterface|counter[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|counter[0]~1_combout\ = (\myInterface|counter[0]~0_combout\ & (((!\myInterface|state.spin~regout\) # (!\myInterface|Equal0~0_combout\)) # (!\myInterface|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|counter[0]~0_combout\,
	datab => \myInterface|counter\(1),
	datac => \myInterface|Equal0~0_combout\,
	datad => \myInterface|state.spin~regout\,
	combout => \myInterface|counter[0]~1_combout\);

-- Location: LCFF_X47_Y21_N5
\myInterface|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|Selector16~0_combout\,
	ena => \myInterface|counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|counter\(0));

-- Location: LCCOMB_X48_Y21_N26
\myInterface|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector15~0_combout\ = (\myInterface|state.spin~regout\ & ((\myInterface|Add0~2_combout\) # ((\myInterface|Equal0~0_combout\ & \myInterface|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Equal0~0_combout\,
	datab => \myInterface|counter\(1),
	datac => \myInterface|Add0~2_combout\,
	datad => \myInterface|state.spin~regout\,
	combout => \myInterface|Selector15~0_combout\);

-- Location: LCCOMB_X48_Y21_N18
\myInterface|Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector15~1_combout\ = (\myInterface|Selector15~0_combout\) # ((!\myInterface|state.one~regout\ & (\myInterface|counter\(1) & !\myInterface|state.spin~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|state.one~regout\,
	datab => \myInterface|Selector15~0_combout\,
	datac => \myInterface|counter\(1),
	datad => \myInterface|state.spin~regout\,
	combout => \myInterface|Selector15~1_combout\);

-- Location: LCFF_X48_Y21_N19
\myInterface|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|Selector15~1_combout\,
	ena => \lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|counter\(1));

-- Location: LCCOMB_X48_Y21_N20
\myInterface|state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|state~16_combout\ = ((!\myInterface|state.spin~regout\) # (!\myInterface|Equal0~0_combout\)) # (!\myInterface|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myInterface|counter\(1),
	datac => \myInterface|Equal0~0_combout\,
	datad => \myInterface|state.spin~regout\,
	combout => \myInterface|state~16_combout\);

-- Location: LCFF_X48_Y21_N21
\myInterface|state.tenThousand\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|state~16_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|state.tenThousand~regout\);

-- Location: LCCOMB_X49_Y21_N22
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

-- Location: LCFF_X49_Y21_N23
\myInterface|state.thousand\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|state.thousand~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|state.thousand~regout\);

-- Location: LCCOMB_X46_Y21_N26
\myInterface|Selector11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector11~2_combout\ = (\myInterface|state.hundred~regout\ & ((\converter3|WideOr1~0_combout\) # ((\converter2|WideOr1~0_combout\ & \myInterface|state.thousand~regout\)))) # (!\myInterface|state.hundred~regout\ & 
-- (\converter2|WideOr1~0_combout\ & ((\myInterface|state.thousand~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|state.hundred~regout\,
	datab => \converter2|WideOr1~0_combout\,
	datac => \converter3|WideOr1~0_combout\,
	datad => \myInterface|state.thousand~regout\,
	combout => \myInterface|Selector11~2_combout\);

-- Location: LCCOMB_X45_Y21_N18
\myConverter|tens[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|tens[2]~2_combout\ = (\myConverter|n~124_combout\ & ((\myConverter|n~122_combout\ $ (\myConverter|n~125_combout\)))) # (!\myConverter|n~124_combout\ & ((\myConverter|n~122_combout\) # ((!\myConverter|n~123_combout\ & 
-- \myConverter|n~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~123_combout\,
	datab => \myConverter|n~124_combout\,
	datac => \myConverter|n~122_combout\,
	datad => \myConverter|n~125_combout\,
	combout => \myConverter|tens[2]~2_combout\);

-- Location: LCCOMB_X45_Y21_N12
\myConverter|tens[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|tens[3]~3_combout\ = (\myConverter|n~123_combout\ & (\myConverter|n~124_combout\ & ((!\myConverter|n~125_combout\) # (!\myConverter|n~122_combout\)))) # (!\myConverter|n~123_combout\ & (((\myConverter|n~122_combout\ & 
-- \myConverter|n~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~123_combout\,
	datab => \myConverter|n~124_combout\,
	datac => \myConverter|n~122_combout\,
	datad => \myConverter|n~125_combout\,
	combout => \myConverter|tens[3]~3_combout\);

-- Location: LCCOMB_X45_Y21_N0
\myConverter|n~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~115_combout\ = (\myConverter|n~112_combout\ & ((\in~combout\(2)) # ((!\myConverter|n~114_combout\ & !\myConverter|n~113_combout\)))) # (!\myConverter|n~112_combout\ & (((\myConverter|n~113_combout\ & !\in~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~114_combout\,
	datab => \myConverter|n~112_combout\,
	datac => \myConverter|n~113_combout\,
	datad => \in~combout\(2),
	combout => \myConverter|n~115_combout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[1]~I\ : cycloneii_io
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
	padio => \ww_in\(1),
	combout => \in~combout\(1));

-- Location: LCCOMB_X45_Y21_N26
\myConverter|n~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~116_combout\ = (\myConverter|n~114_combout\ & (!\myConverter|n~112_combout\ & ((!\in~combout\(2))))) # (!\myConverter|n~114_combout\ & (\myConverter|n~113_combout\ & ((\myConverter|n~112_combout\) # (\in~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~114_combout\,
	datab => \myConverter|n~112_combout\,
	datac => \myConverter|n~113_combout\,
	datad => \in~combout\(2),
	combout => \myConverter|n~116_combout\);

-- Location: LCCOMB_X45_Y21_N6
\myConverter|tens[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|tens[0]~0_combout\ = \myConverter|n~116_combout\ $ ((((!\myConverter|n~117_combout\ & !\in~combout\(1))) # (!\myConverter|n~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~117_combout\,
	datab => \myConverter|n~115_combout\,
	datac => \in~combout\(1),
	datad => \myConverter|n~116_combout\,
	combout => \myConverter|tens[0]~0_combout\);

-- Location: LCCOMB_X47_Y21_N18
\converter4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \converter4|WideOr1~0_combout\ = (!\myConverter|tens[0]~0_combout\ & (((\myConverter|tens[1]~1_combout\ & \myConverter|tens[2]~2_combout\)) # (!\myConverter|tens[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|tens[1]~1_combout\,
	datab => \myConverter|tens[2]~2_combout\,
	datac => \myConverter|tens[3]~3_combout\,
	datad => \myConverter|tens[0]~0_combout\,
	combout => \converter4|WideOr1~0_combout\);

-- Location: LCCOMB_X46_Y21_N24
\myInterface|Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector11~1_combout\ = (\converter5|WideOr1~0_combout\ & ((\myInterface|state.one~regout\) # ((\myInterface|state.ten~regout\ & \converter4|WideOr1~0_combout\)))) # (!\converter5|WideOr1~0_combout\ & (((\myInterface|state.ten~regout\ & 
-- \converter4|WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \converter5|WideOr1~0_combout\,
	datab => \myInterface|state.one~regout\,
	datac => \myInterface|state.ten~regout\,
	datad => \converter4|WideOr1~0_combout\,
	combout => \myInterface|Selector11~1_combout\);

-- Location: LCCOMB_X42_Y21_N30
\myConverter|LessThan24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|LessThan24~0_combout\ = (\myConverter|n~87_combout\) # ((!\myConverter|n~89_combout\ & ((!\myConverter|n~88_combout\) # (!\myConverter|n~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~74_combout\,
	datab => \myConverter|n~88_combout\,
	datac => \myConverter|n~87_combout\,
	datad => \myConverter|n~89_combout\,
	combout => \myConverter|LessThan24~0_combout\);

-- Location: LCCOMB_X42_Y21_N0
\myConverter|LessThan28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|LessThan28~0_combout\ = (\myConverter|n~74_combout\ & ((\myConverter|LessThan24~0_combout\ & ((\myConverter|n~88_combout\))) # (!\myConverter|LessThan24~0_combout\ & (!\myConverter|n~97_combout\ & !\myConverter|n~88_combout\)))) # 
-- (!\myConverter|n~74_combout\ & (!\myConverter|n~88_combout\ & ((!\myConverter|n~97_combout\) # (!\myConverter|LessThan24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~74_combout\,
	datab => \myConverter|LessThan24~0_combout\,
	datac => \myConverter|n~97_combout\,
	datad => \myConverter|n~88_combout\,
	combout => \myConverter|LessThan28~0_combout\);

-- Location: LCCOMB_X50_Y21_N6
\myConverter|n~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~106_combout\ = (\myConverter|n~104_combout\ & (((!\myConverter|n~105_combout\)))) # (!\myConverter|n~104_combout\ & ((\myConverter|n~105_combout\ & ((\myConverter|n~102_combout\) # (!\myConverter|n~103_combout\))) # 
-- (!\myConverter|n~105_combout\ & ((\myConverter|n~103_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~104_combout\,
	datab => \myConverter|n~102_combout\,
	datac => \myConverter|n~105_combout\,
	datad => \myConverter|n~103_combout\,
	combout => \myConverter|n~106_combout\);

-- Location: LCCOMB_X49_Y21_N2
\myConverter|LessThan33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|LessThan33~0_combout\ = (!\myConverter|n~107_combout\ & ((\myConverter|n~98_combout\ $ (\myConverter|LessThan28~0_combout\)) # (!\myConverter|n~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~98_combout\,
	datab => \myConverter|n~107_combout\,
	datac => \myConverter|LessThan28~0_combout\,
	datad => \myConverter|n~106_combout\,
	combout => \myConverter|LessThan33~0_combout\);

-- Location: LCCOMB_X49_Y21_N20
\myInterface|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector11~0_combout\ = (!\myInterface|state.tenThousand~regout\ & (\myConverter|LessThan33~0_combout\ $ (\myConverter|n~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myConverter|LessThan33~0_combout\,
	datac => \myInterface|state.tenThousand~regout\,
	datad => \myConverter|n~108_combout\,
	combout => \myInterface|Selector11~0_combout\);

-- Location: LCCOMB_X46_Y21_N18
\myInterface|Selector11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector11~3_combout\ = (\myInterface|Selector11~2_combout\) # ((\myInterface|Selector11~1_combout\) # (\myInterface|Selector11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myInterface|Selector11~2_combout\,
	datac => \myInterface|Selector11~1_combout\,
	datad => \myInterface|Selector11~0_combout\,
	combout => \myInterface|Selector11~3_combout\);

-- Location: LCFF_X46_Y21_N19
\myInterface|characterCode[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|Selector11~3_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|characterCode\(0));

-- Location: LCCOMB_X47_Y21_N16
\myInterface|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector3~0_combout\ = (\myInterface|state.ten~regout\) # ((\myInterface|state.thousand~regout\) # ((\myInterface|state.spin~regout\ & \myInterface|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|state.ten~regout\,
	datab => \myInterface|state.spin~regout\,
	datac => \myInterface|counter\(0),
	datad => \myInterface|state.thousand~regout\,
	combout => \myInterface|Selector3~0_combout\);

-- Location: LCFF_X47_Y21_N17
\myInterface|addr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|Selector3~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|addr\(0));

-- Location: LCCOMB_X47_Y21_N26
\myInterface|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector2~0_combout\ = (\myInterface|state.hundred~regout\) # ((\myInterface|state.ten~regout\) # ((\myInterface|counter\(1) & \myInterface|state.spin~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|state.hundred~regout\,
	datab => \myInterface|counter\(1),
	datac => \myInterface|state.ten~regout\,
	datad => \myInterface|state.spin~regout\,
	combout => \myInterface|Selector2~0_combout\);

-- Location: LCFF_X47_Y21_N27
\myInterface|addr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|Selector2~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|addr\(1));

-- Location: LCCOMB_X47_Y21_N30
\myInterface|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector14~0_combout\ = (\myInterface|Add0~4_combout\) # (!\myInterface|state.spin~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myInterface|Add0~4_combout\,
	datad => \myInterface|state.spin~regout\,
	combout => \myInterface|Selector14~0_combout\);

-- Location: LCFF_X47_Y21_N31
\myInterface|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|Selector14~0_combout\,
	ena => \myInterface|counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|counter\(2));

-- Location: LCCOMB_X47_Y21_N28
\myInterface|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector1~0_combout\ = (\myInterface|state.one~regout\) # ((\myInterface|counter\(2) & \myInterface|state.spin~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myInterface|counter\(2),
	datac => \myInterface|state.one~regout\,
	datad => \myInterface|state.spin~regout\,
	combout => \myInterface|Selector1~0_combout\);

-- Location: LCFF_X47_Y21_N29
\myInterface|addr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|Selector1~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|addr\(2));

-- Location: LCCOMB_X48_Y21_N16
\myInterface|addr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|addr~0_combout\ = (\myInterface|counter\(3) & \myInterface|state.spin~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myInterface|counter\(3),
	datad => \myInterface|state.spin~regout\,
	combout => \myInterface|addr~0_combout\);

-- Location: LCFF_X48_Y21_N17
\myInterface|addr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|addr~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|addr\(3));

-- Location: LCCOMB_X48_Y21_N2
\myInterface|addr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|addr~1_combout\ = (\myInterface|counter\(4) & \myInterface|state.spin~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myInterface|counter\(4),
	datad => \myInterface|state.spin~regout\,
	combout => \myInterface|addr~1_combout\);

-- Location: LCFF_X48_Y21_N3
\myInterface|addr[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|addr~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|addr\(4));

-- Location: LCCOMB_X27_Y17_N16
\myControler|myStateMachine|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Add1~0_combout\ = \myControler|myStateMachine|addrCounter\(0) $ (VCC)
-- \myControler|myStateMachine|Add1~1\ = CARRY(\myControler|myStateMachine|addrCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|addrCounter\(0),
	datad => VCC,
	combout => \myControler|myStateMachine|Add1~0_combout\,
	cout => \myControler|myStateMachine|Add1~1\);

-- Location: LCCOMB_X30_Y17_N4
\myControler|myStateMachine|addrCounter[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|addrCounter[0]~0_combout\ = (\myControler|myStateMachine|subStates.subState3~regout\ & (\myControler|myStateMachine|Equal2~2_combout\ & (\myControler|myStateMachine|Equal3~0_combout\ & 
-- \myControler|myStateMachine|state.cursorShift~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|subStates.subState3~regout\,
	datab => \myControler|myStateMachine|Equal2~2_combout\,
	datac => \myControler|myStateMachine|Equal3~0_combout\,
	datad => \myControler|myStateMachine|state.cursorShift~regout\,
	combout => \myControler|myStateMachine|addrCounter[0]~0_combout\);

-- Location: LCFF_X27_Y17_N17
\myControler|myStateMachine|addrCounter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Add1~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|addrCounter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|addrCounter\(0));

-- Location: LCCOMB_X29_Y17_N26
\myControler|myStateMachine|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector0~0_combout\ = ((\myControler|myStateMachine|subStates.subState2~regout\ & !\myControler|myStateMachine|Equal1~5_combout\)) # (!\myControler|myStateMachine|subStates.00~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|subStates.00~regout\,
	datac => \myControler|myStateMachine|subStates.subState2~regout\,
	datad => \myControler|myStateMachine|Equal1~5_combout\,
	combout => \myControler|myStateMachine|Selector0~0_combout\);

-- Location: LCFF_X29_Y17_N27
\myControler|myStateMachine|subStates.subState2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Selector0~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|state.powerOn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|subStates.subState2~regout\);

-- Location: LCCOMB_X27_Y17_N6
\myControler|myStateMachine|addrToRead[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|addrToRead[0]~0_combout\ = (\lcdOnIn~combout\ & (\myControler|myStateMachine|state.writeAddr~regout\ & \myControler|myStateMachine|subStates.subState2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcdOnIn~combout\,
	datac => \myControler|myStateMachine|state.writeAddr~regout\,
	datad => \myControler|myStateMachine|subStates.subState2~regout\,
	combout => \myControler|myStateMachine|addrToRead[0]~0_combout\);

-- Location: LCFF_X27_Y17_N15
\myControler|myStateMachine|addrToRead[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \myControler|myStateMachine|addrCounter\(0),
	sload => VCC,
	ena => \myControler|myStateMachine|addrToRead[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|addrToRead\(0));

-- Location: LCCOMB_X27_Y17_N18
\myControler|myStateMachine|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Add1~2_combout\ = (\myControler|myStateMachine|addrCounter\(1) & (!\myControler|myStateMachine|Add1~1\)) # (!\myControler|myStateMachine|addrCounter\(1) & ((\myControler|myStateMachine|Add1~1\) # (GND)))
-- \myControler|myStateMachine|Add1~3\ = CARRY((!\myControler|myStateMachine|Add1~1\) # (!\myControler|myStateMachine|addrCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|addrCounter\(1),
	datad => VCC,
	cin => \myControler|myStateMachine|Add1~1\,
	combout => \myControler|myStateMachine|Add1~2_combout\,
	cout => \myControler|myStateMachine|Add1~3\);

-- Location: LCFF_X27_Y17_N19
\myControler|myStateMachine|addrCounter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Add1~2_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|addrCounter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|addrCounter\(1));

-- Location: LCCOMB_X27_Y17_N8
\myControler|myStateMachine|addrToRead[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|addrToRead[1]~feeder_combout\ = \myControler|myStateMachine|addrCounter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myControler|myStateMachine|addrCounter\(1),
	combout => \myControler|myStateMachine|addrToRead[1]~feeder_combout\);

-- Location: LCFF_X27_Y17_N9
\myControler|myStateMachine|addrToRead[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|addrToRead[1]~feeder_combout\,
	ena => \myControler|myStateMachine|addrToRead[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|addrToRead\(1));

-- Location: LCCOMB_X27_Y17_N20
\myControler|myStateMachine|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Add1~4_combout\ = (\myControler|myStateMachine|addrCounter\(2) & (\myControler|myStateMachine|Add1~3\ $ (GND))) # (!\myControler|myStateMachine|addrCounter\(2) & (!\myControler|myStateMachine|Add1~3\ & VCC))
-- \myControler|myStateMachine|Add1~5\ = CARRY((\myControler|myStateMachine|addrCounter\(2) & !\myControler|myStateMachine|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|addrCounter\(2),
	datad => VCC,
	cin => \myControler|myStateMachine|Add1~3\,
	combout => \myControler|myStateMachine|Add1~4_combout\,
	cout => \myControler|myStateMachine|Add1~5\);

-- Location: LCFF_X27_Y17_N21
\myControler|myStateMachine|addrCounter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Add1~4_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|addrCounter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|addrCounter\(2));

-- Location: LCFF_X27_Y17_N11
\myControler|myStateMachine|addrToRead[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \myControler|myStateMachine|addrCounter\(2),
	sload => VCC,
	ena => \myControler|myStateMachine|addrToRead[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|addrToRead\(2));

-- Location: LCCOMB_X27_Y17_N22
\myControler|myStateMachine|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Add1~6_combout\ = (\myControler|myStateMachine|addrCounter\(3) & (!\myControler|myStateMachine|Add1~5\)) # (!\myControler|myStateMachine|addrCounter\(3) & ((\myControler|myStateMachine|Add1~5\) # (GND)))
-- \myControler|myStateMachine|Add1~7\ = CARRY((!\myControler|myStateMachine|Add1~5\) # (!\myControler|myStateMachine|addrCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|addrCounter\(3),
	datad => VCC,
	cin => \myControler|myStateMachine|Add1~5\,
	combout => \myControler|myStateMachine|Add1~6_combout\,
	cout => \myControler|myStateMachine|Add1~7\);

-- Location: LCFF_X27_Y17_N23
\myControler|myStateMachine|addrCounter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Add1~6_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|addrCounter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|addrCounter\(3));

-- Location: LCCOMB_X27_Y17_N12
\myControler|myStateMachine|addrToRead[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|addrToRead[3]~feeder_combout\ = \myControler|myStateMachine|addrCounter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myControler|myStateMachine|addrCounter\(3),
	combout => \myControler|myStateMachine|addrToRead[3]~feeder_combout\);

-- Location: LCFF_X27_Y17_N13
\myControler|myStateMachine|addrToRead[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|addrToRead[3]~feeder_combout\,
	ena => \myControler|myStateMachine|addrToRead[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|addrToRead\(3));

-- Location: LCCOMB_X27_Y17_N24
\myControler|myStateMachine|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Add1~8_combout\ = (\myControler|myStateMachine|addrCounter\(4) & (\myControler|myStateMachine|Add1~7\ $ (GND))) # (!\myControler|myStateMachine|addrCounter\(4) & (!\myControler|myStateMachine|Add1~7\ & VCC))
-- \myControler|myStateMachine|Add1~9\ = CARRY((\myControler|myStateMachine|addrCounter\(4) & !\myControler|myStateMachine|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|addrCounter\(4),
	datad => VCC,
	cin => \myControler|myStateMachine|Add1~7\,
	combout => \myControler|myStateMachine|Add1~8_combout\,
	cout => \myControler|myStateMachine|Add1~9\);

-- Location: LCFF_X27_Y17_N25
\myControler|myStateMachine|addrCounter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Add1~8_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|addrCounter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|addrCounter\(4));

-- Location: LCFF_X27_Y17_N31
\myControler|myStateMachine|addrToRead[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \myControler|myStateMachine|addrCounter\(4),
	sload => VCC,
	ena => \myControler|myStateMachine|addrToRead[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|addrToRead\(4));

-- Location: LCCOMB_X47_Y21_N0
\myInterface|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector10~0_combout\ = (!\myConverter|tens[1]~1_combout\ & (!\myConverter|tens[3]~3_combout\ & \myInterface|state.ten~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|tens[1]~1_combout\,
	datac => \myConverter|tens[3]~3_combout\,
	datad => \myInterface|state.ten~regout\,
	combout => \myInterface|Selector10~0_combout\);

-- Location: LCCOMB_X50_Y21_N22
\myConverter|LessThan21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|LessThan21~1_combout\ = (\myConverter|n~142_combout\ & ((\myConverter|n~100_combout\) # (!\myConverter|n~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~142_combout\,
	datab => \myConverter|n~101_combout\,
	datac => \myConverter|n~100_combout\,
	combout => \myConverter|LessThan21~1_combout\);

-- Location: LCCOMB_X50_Y21_N8
\myConverter|n~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~133_combout\ = \myConverter|n~104_combout\ $ ((((\myConverter|n~102_combout\ & \myConverter|n~105_combout\)) # (!\myConverter|n~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~104_combout\,
	datab => \myConverter|n~102_combout\,
	datac => \myConverter|n~105_combout\,
	datad => \myConverter|n~103_combout\,
	combout => \myConverter|n~133_combout\);

-- Location: LCCOMB_X50_Y21_N28
\myConverter|LessThan21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|LessThan21~0_combout\ = (\myConverter|n~100_combout\) # (!\myConverter|n~101_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myConverter|n~101_combout\,
	datac => \myConverter|n~100_combout\,
	combout => \myConverter|LessThan21~0_combout\);

-- Location: LCCOMB_X50_Y21_N4
\myInterface|Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector10~1_combout\ = (\myConverter|LessThan21~1_combout\ & ((\myConverter|n~133_combout\ & (!\myConverter|n~134_combout\ & \myConverter|LessThan21~0_combout\)) # (!\myConverter|n~133_combout\ & ((!\myConverter|LessThan21~0_combout\))))) # 
-- (!\myConverter|LessThan21~1_combout\ & (((!\myConverter|n~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~134_combout\,
	datab => \myConverter|LessThan21~1_combout\,
	datac => \myConverter|n~133_combout\,
	datad => \myConverter|LessThan21~0_combout\,
	combout => \myInterface|Selector10~1_combout\);

-- Location: LCCOMB_X50_Y21_N2
\myConverter|n~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|n~134_combout\ = (\myConverter|n~142_combout\ & ((\myConverter|n~101_combout\ & (\myConverter|n~100_combout\)) # (!\myConverter|n~101_combout\ & ((\myConverter|n~99_combout\) # (!\myConverter|n~100_combout\))))) # 
-- (!\myConverter|n~142_combout\ & (((\myConverter|n~101_combout\ & \myConverter|n~99_combout\)) # (!\myConverter|n~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~142_combout\,
	datab => \myConverter|n~101_combout\,
	datac => \myConverter|n~100_combout\,
	datad => \myConverter|n~99_combout\,
	combout => \myConverter|n~134_combout\);

-- Location: LCCOMB_X50_Y21_N30
\myConverter|tenThou[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|tenThou[3]~0_combout\ = (\myConverter|n~142_combout\ & (\myConverter|n~134_combout\ & (\myConverter|n~133_combout\ & \myConverter|LessThan21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~142_combout\,
	datab => \myConverter|n~134_combout\,
	datac => \myConverter|n~133_combout\,
	datad => \myConverter|LessThan21~0_combout\,
	combout => \myConverter|tenThou[3]~0_combout\);

-- Location: LCCOMB_X50_Y21_N16
\myInterface|Selector10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector10~2_combout\ = (!\myInterface|state.tenThousand~regout\ & (\myInterface|Selector10~1_combout\ & !\myConverter|tenThou[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myInterface|state.tenThousand~regout\,
	datac => \myInterface|Selector10~1_combout\,
	datad => \myConverter|tenThou[3]~0_combout\,
	combout => \myInterface|Selector10~2_combout\);

-- Location: LCCOMB_X49_Y21_N16
\myConverter|thou[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|thou[1]~1_combout\ = (\myConverter|n~108_combout\ & (((!\myConverter|n~132_combout\)))) # (!\myConverter|n~108_combout\ & ((\myConverter|n~132_combout\ & ((\myConverter|n~106_combout\) # (\myConverter|n~107_combout\))) # 
-- (!\myConverter|n~132_combout\ & ((!\myConverter|n~107_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~106_combout\,
	datab => \myConverter|n~108_combout\,
	datac => \myConverter|n~132_combout\,
	datad => \myConverter|n~107_combout\,
	combout => \myConverter|thou[1]~1_combout\);

-- Location: LCCOMB_X49_Y21_N24
\myInterface|Selector10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector10~3_combout\ = (!\myConverter|thou[3]~3_combout\ & (!\myConverter|thou[1]~1_combout\ & \myInterface|state.thousand~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myConverter|thou[3]~3_combout\,
	datac => \myConverter|thou[1]~1_combout\,
	datad => \myInterface|state.thousand~regout\,
	combout => \myInterface|Selector10~3_combout\);

-- Location: LCCOMB_X47_Y21_N22
\myInterface|Selector10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector10~6_combout\ = (\myInterface|Selector10~5_combout\) # ((\myInterface|Selector10~0_combout\) # ((\myInterface|Selector10~2_combout\) # (\myInterface|Selector10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Selector10~5_combout\,
	datab => \myInterface|Selector10~0_combout\,
	datac => \myInterface|Selector10~2_combout\,
	datad => \myInterface|Selector10~3_combout\,
	combout => \myInterface|Selector10~6_combout\);

-- Location: LCFF_X47_Y21_N23
\myInterface|characterCode[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|Selector10~6_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|characterCode\(1));

-- Location: LCCOMB_X46_Y21_N22
\myInterface|Selector9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector9~5_combout\ = (!\myConverter|hund[2]~2_combout\ & (!\myConverter|hund[3]~3_combout\ & \myInterface|state.hundred~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myConverter|hund[2]~2_combout\,
	datac => \myConverter|hund[3]~3_combout\,
	datad => \myInterface|state.hundred~regout\,
	combout => \myInterface|Selector9~5_combout\);

-- Location: LCCOMB_X49_Y21_N10
\myInterface|Selector9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector9~3_combout\ = (!\myConverter|thou[2]~2_combout\ & (!\myConverter|thou[3]~3_combout\ & \myInterface|state.thousand~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myConverter|thou[2]~2_combout\,
	datac => \myConverter|thou[3]~3_combout\,
	datad => \myInterface|state.thousand~regout\,
	combout => \myInterface|Selector9~3_combout\);

-- Location: LCCOMB_X45_Y21_N24
\myConverter|ones[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|ones[2]~1_combout\ = (\myConverter|n~117_combout\ & ((\in~combout\(1)) # ((!\myConverter|n~115_combout\ & !\myConverter|n~116_combout\)))) # (!\myConverter|n~117_combout\ & (((!\in~combout\(1) & \myConverter|n~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~117_combout\,
	datab => \myConverter|n~115_combout\,
	datac => \in~combout\(1),
	datad => \myConverter|n~116_combout\,
	combout => \myConverter|ones[2]~1_combout\);

-- Location: LCCOMB_X46_Y21_N12
\myInterface|Selector9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector9~4_combout\ = (!\myConverter|ones[3]~2_combout\ & (\myConverter|ones[2]~1_combout\ & \myInterface|state.one~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|ones[3]~2_combout\,
	datab => \myConverter|ones[2]~1_combout\,
	datac => \myInterface|state.one~regout\,
	combout => \myInterface|Selector9~4_combout\);

-- Location: LCCOMB_X46_Y21_N28
\myInterface|Selector9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector9~6_combout\ = (\myInterface|Selector9~2_combout\) # ((\myInterface|Selector9~5_combout\) # ((\myInterface|Selector9~3_combout\) # (\myInterface|Selector9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Selector9~2_combout\,
	datab => \myInterface|Selector9~5_combout\,
	datac => \myInterface|Selector9~3_combout\,
	datad => \myInterface|Selector9~4_combout\,
	combout => \myInterface|Selector9~6_combout\);

-- Location: LCFF_X46_Y21_N29
\myInterface|characterCode[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|Selector9~6_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|characterCode\(2));

-- Location: LCCOMB_X45_Y21_N14
\myConverter|ones[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myConverter|ones[1]~0_combout\ = (\myConverter|n~115_combout\ & (!\in~combout\(1) & ((\myConverter|n~117_combout\) # (\myConverter|n~116_combout\)))) # (!\myConverter|n~115_combout\ & ((\in~combout\(1) $ (\myConverter|n~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~117_combout\,
	datab => \myConverter|n~115_combout\,
	datac => \in~combout\(1),
	datad => \myConverter|n~116_combout\,
	combout => \myConverter|ones[1]~0_combout\);

-- Location: LCCOMB_X46_Y21_N0
\myInterface|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector8~2_combout\ = (\myConverter|ones[3]~2_combout\ & (!\myConverter|ones[2]~1_combout\ & (\myInterface|state.one~regout\ & !\myConverter|ones[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|ones[3]~2_combout\,
	datab => \myConverter|ones[2]~1_combout\,
	datac => \myInterface|state.one~regout\,
	datad => \myConverter|ones[1]~0_combout\,
	combout => \myInterface|Selector8~2_combout\);

-- Location: LCCOMB_X46_Y21_N16
\myInterface|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector8~1_combout\ = (\myConverter|hund[1]~1_combout\ & (\myConverter|hund[2]~2_combout\ & (\myConverter|hund[3]~3_combout\ & \myInterface|state.hundred~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|hund[1]~1_combout\,
	datab => \myConverter|hund[2]~2_combout\,
	datac => \myConverter|hund[3]~3_combout\,
	datad => \myInterface|state.hundred~regout\,
	combout => \myInterface|Selector8~1_combout\);

-- Location: LCCOMB_X47_Y21_N20
\myInterface|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector8~0_combout\ = (\myConverter|tens[1]~1_combout\ & (\myConverter|tens[2]~2_combout\ & (\myConverter|tens[3]~3_combout\ & \myInterface|state.ten~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|tens[1]~1_combout\,
	datab => \myConverter|tens[2]~2_combout\,
	datac => \myConverter|tens[3]~3_combout\,
	datad => \myInterface|state.ten~regout\,
	combout => \myInterface|Selector8~0_combout\);

-- Location: LCCOMB_X46_Y21_N6
\myInterface|Selector8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector8~5_combout\ = (\myInterface|Selector8~4_combout\) # ((\myInterface|Selector8~2_combout\) # ((\myInterface|Selector8~1_combout\) # (\myInterface|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|Selector8~4_combout\,
	datab => \myInterface|Selector8~2_combout\,
	datac => \myInterface|Selector8~1_combout\,
	datad => \myInterface|Selector8~0_combout\,
	combout => \myInterface|Selector8~5_combout\);

-- Location: LCFF_X46_Y21_N7
\myInterface|characterCode[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|Selector8~5_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|characterCode\(3));

-- Location: LCCOMB_X46_Y21_N20
\myInterface|Selector7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector7~3_combout\ = (\myInterface|state.one~regout\ & (((!\myConverter|ones[2]~1_combout\ & !\myConverter|ones[1]~0_combout\)) # (!\myConverter|ones[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|ones[3]~2_combout\,
	datab => \myConverter|ones[2]~1_combout\,
	datac => \myInterface|state.one~regout\,
	datad => \myConverter|ones[1]~0_combout\,
	combout => \myInterface|Selector7~3_combout\);

-- Location: LCCOMB_X49_Y21_N8
\myInterface|Selector7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector7~4_combout\ = (\myInterface|state.thousand~regout\ & (((\myConverter|thou[2]~2_combout\ & \myConverter|thou[1]~1_combout\)) # (!\myConverter|thou[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|thou[3]~3_combout\,
	datab => \myConverter|thou[2]~2_combout\,
	datac => \myConverter|thou[1]~1_combout\,
	datad => \myInterface|state.thousand~regout\,
	combout => \myInterface|Selector7~4_combout\);

-- Location: LCCOMB_X45_Y21_N22
\myInterface|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector7~1_combout\ = ((\myConverter|n~123_combout\ & (\myConverter|n~122_combout\)) # (!\myConverter|n~123_combout\ & ((!\myConverter|n~125_combout\) # (!\myConverter|n~122_combout\)))) # (!\myConverter|n~124_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|n~123_combout\,
	datab => \myConverter|n~124_combout\,
	datac => \myConverter|n~122_combout\,
	datad => \myConverter|n~125_combout\,
	combout => \myInterface|Selector7~1_combout\);

-- Location: LCCOMB_X46_Y21_N10
\myInterface|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector7~0_combout\ = (\myInterface|state.hundred~regout\ & (((\myConverter|hund[1]~1_combout\ & \myConverter|hund[2]~2_combout\)) # (!\myConverter|hund[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myConverter|hund[1]~1_combout\,
	datab => \myConverter|hund[3]~3_combout\,
	datac => \myInterface|state.hundred~regout\,
	datad => \myConverter|hund[2]~2_combout\,
	combout => \myInterface|Selector7~0_combout\);

-- Location: LCCOMB_X46_Y21_N8
\myInterface|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector7~2_combout\ = (\myInterface|Selector7~0_combout\) # ((\myInterface|Selector7~1_combout\ & \myInterface|state.ten~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myInterface|Selector7~1_combout\,
	datac => \myInterface|state.ten~regout\,
	datad => \myInterface|Selector7~0_combout\,
	combout => \myInterface|Selector7~2_combout\);

-- Location: LCCOMB_X49_Y21_N0
\myInterface|Selector7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|Selector7~5_combout\ = ((\myInterface|Selector7~3_combout\) # ((\myInterface|Selector7~4_combout\) # (\myInterface|Selector7~2_combout\))) # (!\myInterface|state.tenThousand~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myInterface|state.tenThousand~regout\,
	datab => \myInterface|Selector7~3_combout\,
	datac => \myInterface|Selector7~4_combout\,
	datad => \myInterface|Selector7~2_combout\,
	combout => \myInterface|Selector7~5_combout\);

-- Location: LCFF_X49_Y21_N1
\myInterface|characterCode[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|Selector7~5_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|characterCode\(4));

-- Location: LCCOMB_X47_Y21_N8
\myInterface|characterCode[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \myInterface|characterCode[7]~feeder_combout\ = \myInterface|state.spin~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myInterface|state.spin~regout\,
	combout => \myInterface|characterCode[7]~feeder_combout\);

-- Location: LCFF_X47_Y21_N9
\myInterface|characterCode[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myInterface|characterCode[7]~feeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myInterface|characterCode\(7));

-- Location: LCCOMB_X24_Y17_N16
\myControler|myStateMachine|Selector151~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector151~1_combout\ = (\myControler|myStateMachine|Selector151~0_combout\) # ((\myControler|myStateMachine|state.writeData~regout\ & \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Selector151~0_combout\,
	datab => \myControler|myStateMachine|state.writeData~regout\,
	datac => \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \myControler|myStateMachine|Selector151~1_combout\);

-- Location: LCCOMB_X24_Y17_N14
\myControler|myStateMachine|Selector77~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector77~0_combout\ = (\myControler|myStateMachine|subStates.subState2~regout\) # (!\myControler|myStateMachine|state.powerOn~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|subStates.subState2~regout\,
	datad => \myControler|myStateMachine|state.powerOn~regout\,
	combout => \myControler|myStateMachine|Selector77~0_combout\);

-- Location: LCFF_X24_Y17_N17
\myControler|myStateMachine|lcdBus[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Selector151~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|state.cursorShift~regout\,
	ena => \myControler|myStateMachine|Selector77~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|lcdBus[0]~reg0_regout\);

-- Location: LCCOMB_X24_Y17_N22
\myControler|myStateMachine|lcdBus[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|lcdBus[0]~1_combout\ = !\myControler|myStateMachine|state.powerOn~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myControler|myStateMachine|state.powerOn~regout\,
	combout => \myControler|myStateMachine|lcdBus[0]~1_combout\);

-- Location: LCFF_X24_Y17_N23
\myControler|myStateMachine|lcdBus[0]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|lcdBus[0]~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|Selector77~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|lcdBus[0]~en_regout\);

-- Location: LCCOMB_X28_Y17_N16
\myControler|myStateMachine|Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Equal5~1_combout\ = (\myControler|myStateMachine|Equal5~0_combout\ & (\myControler|myStateMachine|addrCounter\(1) & (\myControler|myStateMachine|addrCounter\(2) & \myControler|myStateMachine|addrCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Equal5~0_combout\,
	datab => \myControler|myStateMachine|addrCounter\(1),
	datac => \myControler|myStateMachine|addrCounter\(2),
	datad => \myControler|myStateMachine|addrCounter\(0),
	combout => \myControler|myStateMachine|Equal5~1_combout\);

-- Location: LCCOMB_X24_Y17_N0
\myControler|myStateMachine|Selector150~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector150~1_combout\ = (\myControler|myStateMachine|Selector150~0_combout\) # ((\myControler|myStateMachine|state.entryModeSet~regout\) # ((\myControler|myStateMachine|state.cursorShift~regout\ & 
-- \myControler|myStateMachine|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Selector150~0_combout\,
	datab => \myControler|myStateMachine|state.cursorShift~regout\,
	datac => \myControler|myStateMachine|state.entryModeSet~regout\,
	datad => \myControler|myStateMachine|Equal5~1_combout\,
	combout => \myControler|myStateMachine|Selector150~1_combout\);

-- Location: LCFF_X24_Y17_N1
\myControler|myStateMachine|lcdBus[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Selector150~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|Selector77~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|lcdBus[1]~reg0_regout\);

-- Location: LCCOMB_X24_Y17_N10
\myControler|myStateMachine|lcdBus[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|lcdBus[1]~2_combout\ = !\myControler|myStateMachine|state.powerOn~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myControler|myStateMachine|state.powerOn~regout\,
	combout => \myControler|myStateMachine|lcdBus[1]~2_combout\);

-- Location: LCFF_X24_Y17_N11
\myControler|myStateMachine|lcdBus[1]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|lcdBus[1]~2_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|Selector77~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|lcdBus[1]~en_regout\);

-- Location: LCCOMB_X28_Y17_N20
\myControler|myStateMachine|Selector149~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector149~0_combout\ = (\myControler|myStateMachine|state.entryModeSet~regout\) # ((\myControler|myStateMachine|displayOnOff~regout\ & \myControler|myStateMachine|state.displaySet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|displayOnOff~regout\,
	datab => \myControler|myStateMachine|state.displaySet~regout\,
	datad => \myControler|myStateMachine|state.entryModeSet~regout\,
	combout => \myControler|myStateMachine|Selector149~0_combout\);

-- Location: LCCOMB_X28_Y17_N4
\myControler|myStateMachine|Selector149~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector149~1_combout\ = (\myControler|myStateMachine|state.writeData~regout\ & ((\myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a2\) # ((\myControler|myStateMachine|addrCounter\(2) & 
-- \myControler|myStateMachine|state.writeAddr~regout\)))) # (!\myControler|myStateMachine|state.writeData~regout\ & (((\myControler|myStateMachine|addrCounter\(2) & \myControler|myStateMachine|state.writeAddr~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|state.writeData~regout\,
	datab => \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a2\,
	datac => \myControler|myStateMachine|addrCounter\(2),
	datad => \myControler|myStateMachine|state.writeAddr~regout\,
	combout => \myControler|myStateMachine|Selector149~1_combout\);

-- Location: LCCOMB_X24_Y17_N28
\myControler|myStateMachine|Selector149~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector149~2_combout\ = (\myControler|myStateMachine|Selector149~0_combout\) # ((\myControler|myStateMachine|Selector149~1_combout\) # ((\myControler|myStateMachine|state.cursorShift~regout\ & 
-- !\myControler|myStateMachine|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|state.cursorShift~regout\,
	datab => \myControler|myStateMachine|Selector149~0_combout\,
	datac => \myControler|myStateMachine|Selector149~1_combout\,
	datad => \myControler|myStateMachine|Equal5~1_combout\,
	combout => \myControler|myStateMachine|Selector149~2_combout\);

-- Location: LCFF_X24_Y17_N29
\myControler|myStateMachine|lcdBus[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Selector149~2_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|Selector77~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|lcdBus[2]~reg0_regout\);

-- Location: LCCOMB_X24_Y17_N30
\myControler|myStateMachine|lcdBus[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|lcdBus[2]~3_combout\ = !\myControler|myStateMachine|state.powerOn~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myControler|myStateMachine|state.powerOn~regout\,
	combout => \myControler|myStateMachine|lcdBus[2]~3_combout\);

-- Location: LCFF_X24_Y17_N31
\myControler|myStateMachine|lcdBus[2]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|lcdBus[2]~3_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|Selector77~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|lcdBus[2]~en_regout\);

-- Location: LCCOMB_X28_Y17_N24
\myControler|myStateMachine|Selector148~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector148~0_combout\ = (\myControler|myStateMachine|state.writeAddr~regout\ & (\myControler|myStateMachine|addrCounter\(3))) # (!\myControler|myStateMachine|state.writeAddr~regout\ & 
-- (((!\myControler|myStateMachine|state.entryModeSet~regout\ & !\myControler|myStateMachine|state.displayClear~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|addrCounter\(3),
	datab => \myControler|myStateMachine|state.entryModeSet~regout\,
	datac => \myControler|myStateMachine|state.writeAddr~regout\,
	datad => \myControler|myStateMachine|state.displayClear~regout\,
	combout => \myControler|myStateMachine|Selector148~0_combout\);

-- Location: LCCOMB_X24_Y17_N18
\myControler|myStateMachine|Selector148~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector148~1_combout\ = (\myControler|myStateMachine|state.writeData~regout\ & (\myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a3\)) # (!\myControler|myStateMachine|state.writeData~regout\ & 
-- ((\myControler|myStateMachine|Selector148~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|state.writeData~regout\,
	datac => \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a3\,
	datad => \myControler|myStateMachine|Selector148~0_combout\,
	combout => \myControler|myStateMachine|Selector148~1_combout\);

-- Location: LCFF_X24_Y17_N19
\myControler|myStateMachine|lcdBus[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Selector148~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|state.cursorShift~regout\,
	ena => \myControler|myStateMachine|Selector77~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|lcdBus[3]~reg0_regout\);

-- Location: LCCOMB_X24_Y17_N8
\myControler|myStateMachine|lcdBus[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|lcdBus[3]~4_combout\ = !\myControler|myStateMachine|state.powerOn~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myControler|myStateMachine|state.powerOn~regout\,
	combout => \myControler|myStateMachine|lcdBus[3]~4_combout\);

-- Location: LCFF_X24_Y17_N9
\myControler|myStateMachine|lcdBus[3]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|lcdBus[3]~4_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|Selector77~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|lcdBus[3]~en_regout\);

-- Location: LCCOMB_X30_Y17_N18
\myControler|myStateMachine|Selector147~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector147~0_combout\ = (\myControler|myStateMachine|state.functionSet~regout\) # ((\myControler|myStateMachine|state.writeData~regout\ & \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|state.writeData~regout\,
	datab => \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a4\,
	datac => \myControler|myStateMachine|state.functionSet~regout\,
	combout => \myControler|myStateMachine|Selector147~0_combout\);

-- Location: LCCOMB_X24_Y17_N2
\myControler|myStateMachine|Selector147~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector147~1_combout\ = (\myControler|myStateMachine|Selector147~0_combout\) # ((\myControler|myStateMachine|state.cursorShift~regout\ & !\myControler|myStateMachine|Equal5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|state.cursorShift~regout\,
	datac => \myControler|myStateMachine|Selector147~0_combout\,
	datad => \myControler|myStateMachine|Equal5~1_combout\,
	combout => \myControler|myStateMachine|Selector147~1_combout\);

-- Location: LCFF_X24_Y17_N3
\myControler|myStateMachine|lcdBus[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Selector147~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|Selector77~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|lcdBus[4]~reg0_regout\);

-- Location: LCCOMB_X24_Y17_N20
\myControler|myStateMachine|lcdBus[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|lcdBus[4]~5_combout\ = !\myControler|myStateMachine|state.powerOn~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myControler|myStateMachine|state.powerOn~regout\,
	combout => \myControler|myStateMachine|lcdBus[4]~5_combout\);

-- Location: LCFF_X24_Y17_N21
\myControler|myStateMachine|lcdBus[4]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|lcdBus[4]~5_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|Selector77~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|lcdBus[4]~en_regout\);

-- Location: LCCOMB_X24_Y17_N6
\myControler|myStateMachine|Selector112~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector112~1_combout\ = (\myControler|myStateMachine|Selector112~0_combout\) # ((\myControler|myStateMachine|state.writeData~regout\ & \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|Selector112~0_combout\,
	datab => \myControler|myStateMachine|state.writeData~regout\,
	datac => \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a5\,
	combout => \myControler|myStateMachine|Selector112~1_combout\);

-- Location: LCFF_X24_Y17_N7
\myControler|myStateMachine|lcdBus[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Selector112~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|Selector77~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|lcdBus[5]~reg0_regout\);

-- Location: LCCOMB_X24_Y17_N24
\myControler|myStateMachine|lcdBus[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|lcdBus[5]~6_combout\ = !\myControler|myStateMachine|state.powerOn~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myControler|myStateMachine|state.powerOn~regout\,
	combout => \myControler|myStateMachine|lcdBus[5]~6_combout\);

-- Location: LCFF_X24_Y17_N25
\myControler|myStateMachine|lcdBus[5]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|lcdBus[5]~6_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|Selector77~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|lcdBus[5]~en_regout\);

-- Location: LCCOMB_X27_Y17_N26
\myControler|myStateMachine|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Add1~10_combout\ = (\myControler|myStateMachine|addrCounter\(5) & (!\myControler|myStateMachine|Add1~9\)) # (!\myControler|myStateMachine|addrCounter\(5) & ((\myControler|myStateMachine|Add1~9\) # (GND)))
-- \myControler|myStateMachine|Add1~11\ = CARRY((!\myControler|myStateMachine|Add1~9\) # (!\myControler|myStateMachine|addrCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|addrCounter\(5),
	datad => VCC,
	cin => \myControler|myStateMachine|Add1~9\,
	combout => \myControler|myStateMachine|Add1~10_combout\,
	cout => \myControler|myStateMachine|Add1~11\);

-- Location: LCCOMB_X27_Y17_N0
\myControler|myStateMachine|addrCounter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|addrCounter~1_combout\ = (\myControler|myStateMachine|Add1~10_combout\ & !\myControler|myStateMachine|Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|Add1~10_combout\,
	datac => \myControler|myStateMachine|Equal5~1_combout\,
	combout => \myControler|myStateMachine|addrCounter~1_combout\);

-- Location: LCFF_X27_Y17_N1
\myControler|myStateMachine|addrCounter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|addrCounter~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|addrCounter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|addrCounter\(5));

-- Location: LCCOMB_X27_Y17_N28
\myControler|myStateMachine|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Add1~12_combout\ = \myControler|myStateMachine|Add1~11\ $ (!\myControler|myStateMachine|addrCounter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \myControler|myStateMachine|addrCounter\(6),
	cin => \myControler|myStateMachine|Add1~11\,
	combout => \myControler|myStateMachine|Add1~12_combout\);

-- Location: LCFF_X27_Y17_N29
\myControler|myStateMachine|addrCounter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Add1~12_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|addrCounter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|addrCounter\(6));

-- Location: LCCOMB_X25_Y17_N24
\myControler|myStateMachine|lcdBus~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|lcdBus~0_combout\ = (\myControler|myStateMachine|addrCounter\(4)) # (\myControler|myStateMachine|addrCounter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myControler|myStateMachine|addrCounter\(4),
	datad => \myControler|myStateMachine|addrCounter\(6),
	combout => \myControler|myStateMachine|lcdBus~0_combout\);

-- Location: LCFF_X25_Y17_N25
\myControler|myStateMachine|lcdBus[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|lcdBus~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \myControler|myStateMachine|ALT_INV_state.writeAddr~regout\,
	ena => \myControler|myStateMachine|Selector77~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|lcdBus[6]~reg0_regout\);

-- Location: LCCOMB_X24_Y17_N26
\myControler|myStateMachine|lcdBus[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|lcdBus[6]~7_combout\ = !\myControler|myStateMachine|state.powerOn~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myControler|myStateMachine|state.powerOn~regout\,
	combout => \myControler|myStateMachine|lcdBus[6]~7_combout\);

-- Location: LCFF_X24_Y17_N27
\myControler|myStateMachine|lcdBus[6]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|lcdBus[6]~7_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|Selector77~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|lcdBus[6]~en_regout\);

-- Location: LCCOMB_X25_Y17_N26
\myControler|myStateMachine|Selector70~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector70~0_combout\ = (!\myControler|myStateMachine|state.writeAddr~regout\ & ((!\myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a6\) # (!\myControler|myStateMachine|state.writeData~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myControler|myStateMachine|state.writeAddr~regout\,
	datab => \myControler|myStateMachine|state.writeData~regout\,
	datad => \myControler|myRegisters|charCode_rtl_0|auto_generated|ram_block1a6\,
	combout => \myControler|myStateMachine|Selector70~0_combout\);

-- Location: LCFF_X25_Y17_N27
\myControler|myStateMachine|lcdBus[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Selector70~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|Selector77~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|lcdBus[7]~reg0_regout\);

-- Location: LCCOMB_X24_Y17_N4
\myControler|myStateMachine|lcdBus[7]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|lcdBus[7]~9_combout\ = !\myControler|myStateMachine|state.powerOn~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myControler|myStateMachine|state.powerOn~regout\,
	combout => \myControler|myStateMachine|lcdBus[7]~9_combout\);

-- Location: LCFF_X24_Y17_N5
\myControler|myStateMachine|lcdBus[7]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|lcdBus[7]~9_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \myControler|myStateMachine|Selector77~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|lcdBus[7]~en_regout\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\backLight~I\ : cycloneii_io
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
	padio => ww_backLight,
	combout => \backLight~combout\);

-- Location: LCCOMB_X24_Y17_N12
\myControler|myStateMachine|Selector190~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector190~0_combout\ = (\myControler|myStateMachine|state.writeData~regout\) # ((\myControler|myStateMachine|lcdRsSelect~regout\ & \myControler|myStateMachine|state.cursorShift~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myControler|myStateMachine|state.writeData~regout\,
	datac => \myControler|myStateMachine|lcdRsSelect~regout\,
	datad => \myControler|myStateMachine|state.cursorShift~regout\,
	combout => \myControler|myStateMachine|Selector190~0_combout\);

-- Location: LCFF_X24_Y17_N13
\myControler|myStateMachine|lcdRsSelect\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Selector190~0_combout\,
	ena => \lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|lcdRsSelect~regout\);

-- Location: LCCOMB_X29_Y17_N0
\myControler|myStateMachine|Selector189~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \myControler|myStateMachine|Selector189~0_combout\ = (\myControler|myStateMachine|subStates.subState2~regout\ & \myControler|myStateMachine|state.powerOn~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myControler|myStateMachine|subStates.subState2~regout\,
	datad => \myControler|myStateMachine|state.powerOn~regout\,
	combout => \myControler|myStateMachine|Selector189~0_combout\);

-- Location: LCFF_X29_Y17_N1
\myControler|myStateMachine|lcdEnableOut\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \myControler|myStateMachine|Selector189~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \myControler|myStateMachine|lcdEnableOut~regout\);

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
	datain => \myControler|myStateMachine|lcdBus[0]~reg0_regout\,
	oe => \myControler|myStateMachine|ALT_INV_lcdBus[0]~en_regout\,
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
	datain => \myControler|myStateMachine|lcdBus[1]~reg0_regout\,
	oe => \myControler|myStateMachine|ALT_INV_lcdBus[1]~en_regout\,
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
	datain => \myControler|myStateMachine|lcdBus[2]~reg0_regout\,
	oe => \myControler|myStateMachine|ALT_INV_lcdBus[2]~en_regout\,
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
	datain => \myControler|myStateMachine|lcdBus[3]~reg0_regout\,
	oe => \myControler|myStateMachine|ALT_INV_lcdBus[3]~en_regout\,
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
	datain => \myControler|myStateMachine|lcdBus[4]~reg0_regout\,
	oe => \myControler|myStateMachine|ALT_INV_lcdBus[4]~en_regout\,
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
	datain => \myControler|myStateMachine|lcdBus[5]~reg0_regout\,
	oe => \myControler|myStateMachine|ALT_INV_lcdBus[5]~en_regout\,
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
	datain => \myControler|myStateMachine|lcdBus[6]~reg0_regout\,
	oe => \myControler|myStateMachine|ALT_INV_lcdBus[6]~en_regout\,
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
	datain => \myControler|myStateMachine|ALT_INV_lcdBus[7]~reg0_regout\,
	oe => \myControler|myStateMachine|ALT_INV_lcdBus[7]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_lcdBus(7));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\backLightOut~I\ : cycloneii_io
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
	datain => \backLight~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_backLightOut);

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
	datain => \myControler|myStateMachine|lcdRsSelect~regout\,
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
	datain => \myControler|myStateMachine|lcdEnableOut~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcdEnableOut);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\errorLed1~I\ : cycloneii_io
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
	padio => ww_errorLed1);

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\errorLed2~I\ : cycloneii_io
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
	padio => ww_errorLed2);
END structure;


