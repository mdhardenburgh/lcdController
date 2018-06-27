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

-- DATE "06/26/2018 20:41:43"

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
	lcdBus : INOUT std_logic_vector(7 DOWNTO 0);
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
SIGNAL ww_lcdOnOut : std_logic;
SIGNAL ww_lcdReadWriteSel : std_logic;
SIGNAL ww_lcdRsSelect : std_logic;
SIGNAL ww_lcdEnableOut : std_logic;
SIGNAL ww_errorLed : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter[0]~23_combout\ : std_logic;
SIGNAL \counter[18]~70_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Selector147~4_combout\ : std_logic;
SIGNAL \Selector147~5_combout\ : std_logic;
SIGNAL \counter[15]~54_combout\ : std_logic;
SIGNAL \counter[15]~58_combout\ : std_logic;
SIGNAL \Selector44~2_combout\ : std_logic;
SIGNAL \Selector145~5_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~24\ : std_logic;
SIGNAL \counter[1]~25_combout\ : std_logic;
SIGNAL \lcdOnIn~combout\ : std_logic;
SIGNAL \counter[12]~48\ : std_logic;
SIGNAL \counter[13]~50\ : std_logic;
SIGNAL \counter[14]~51_combout\ : std_logic;
SIGNAL \counter[15]~63_combout\ : std_logic;
SIGNAL \counter[14]~52\ : std_logic;
SIGNAL \counter[15]~65\ : std_logic;
SIGNAL \counter[16]~67\ : std_logic;
SIGNAL \counter[17]~68_combout\ : std_logic;
SIGNAL \counter[16]~66_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \counter[2]~27_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \counter[6]~35_combout\ : std_logic;
SIGNAL \counter[4]~31_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \counter[17]~69\ : std_logic;
SIGNAL \counter[18]~71\ : std_logic;
SIGNAL \counter[19]~72_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \counter[13]~49_combout\ : std_logic;
SIGNAL \counter[15]~64_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Selector139~0_combout\ : std_logic;
SIGNAL \Selector139~1_combout\ : std_logic;
SIGNAL \state.functionSet~regout\ : std_logic;
SIGNAL \functionSetCase~14_combout\ : std_logic;
SIGNAL \functionSetCase.00~regout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \functionSetCase.functionSet2~regout\ : std_logic;
SIGNAL \Selector47~1_combout\ : std_logic;
SIGNAL \functionSetCase.functionSet3~regout\ : std_logic;
SIGNAL \functionSetCase.functionSet4~0_combout\ : std_logic;
SIGNAL \functionSetCase.functionSet4~regout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \state~15_combout\ : std_logic;
SIGNAL \state.entryModeSet~0_combout\ : std_logic;
SIGNAL \state.entryModeSet~regout\ : std_logic;
SIGNAL \Selector145~4_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Selector140~1_combout\ : std_logic;
SIGNAL \Selector140~2_combout\ : std_logic;
SIGNAL \state.displaySet~regout\ : std_logic;
SIGNAL \counter[15]~22_combout\ : std_logic;
SIGNAL \counter[15]~59_combout\ : std_logic;
SIGNAL \counter[15]~60_combout\ : std_logic;
SIGNAL \counter[15]~61_combout\ : std_logic;
SIGNAL \counter[15]~56_combout\ : std_logic;
SIGNAL \counter[15]~55_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \counter[15]~57_combout\ : std_logic;
SIGNAL \Selector140~0_combout\ : std_logic;
SIGNAL \counter[15]~53_combout\ : std_logic;
SIGNAL \counter[15]~62_combout\ : std_logic;
SIGNAL \counter[1]~26\ : std_logic;
SIGNAL \counter[2]~28\ : std_logic;
SIGNAL \counter[3]~29_combout\ : std_logic;
SIGNAL \counter[3]~30\ : std_logic;
SIGNAL \counter[4]~32\ : std_logic;
SIGNAL \counter[5]~33_combout\ : std_logic;
SIGNAL \counter[5]~34\ : std_logic;
SIGNAL \counter[6]~36\ : std_logic;
SIGNAL \counter[7]~37_combout\ : std_logic;
SIGNAL \counter[7]~38\ : std_logic;
SIGNAL \counter[8]~39_combout\ : std_logic;
SIGNAL \counter[8]~40\ : std_logic;
SIGNAL \counter[9]~41_combout\ : std_logic;
SIGNAL \counter[9]~42\ : std_logic;
SIGNAL \counter[10]~43_combout\ : std_logic;
SIGNAL \counter[10]~44\ : std_logic;
SIGNAL \counter[11]~45_combout\ : std_logic;
SIGNAL \counter[11]~46\ : std_logic;
SIGNAL \counter[12]~47_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \state.powerOn~0_combout\ : std_logic;
SIGNAL \state.powerOn~regout\ : std_logic;
SIGNAL \Selector147~7_combout\ : std_logic;
SIGNAL \Selector145~2_combout\ : std_logic;
SIGNAL \Selector143~0_combout\ : std_logic;
SIGNAL \Selector145~3_combout\ : std_logic;
SIGNAL \subStates.00~regout\ : std_logic;
SIGNAL \subStates.subState2~0_combout\ : std_logic;
SIGNAL \subStates.subState2~regout\ : std_logic;
SIGNAL \displayOnOff~0_combout\ : std_logic;
SIGNAL \displayOnOff~regout\ : std_logic;
SIGNAL \Selector143~1_combout\ : std_logic;
SIGNAL \Selector143~2_combout\ : std_logic;
SIGNAL \state.writeAddr~regout\ : std_logic;
SIGNAL \errorLed~2_combout\ : std_logic;
SIGNAL \Selector147~6_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Selector147~8_combout\ : std_logic;
SIGNAL \Selector147~10_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector44~1_combout\ : std_logic;
SIGNAL \Selector147~11_combout\ : std_logic;
SIGNAL \Selector147~9_combout\ : std_logic;
SIGNAL \subStates.subState3~regout\ : std_logic;
SIGNAL \counter[15]~74_combout\ : std_logic;
SIGNAL \Selector141~0_combout\ : std_logic;
SIGNAL \state.displayClear~regout\ : std_logic;
SIGNAL \lcdBus[0]~reg0_regout\ : std_logic;
SIGNAL \Selector118~0_combout\ : std_logic;
SIGNAL \lcdBus[0]~en_regout\ : std_logic;
SIGNAL \lcdBus[1]~reg0feeder_combout\ : std_logic;
SIGNAL \lcdBus[1]~reg0_regout\ : std_logic;
SIGNAL \lcdBus[1]~en_regout\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \lcdBus[2]~reg0_regout\ : std_logic;
SIGNAL \lcdBus[2]~en_regout\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \lcdBus[3]~reg0_regout\ : std_logic;
SIGNAL \lcdBus[3]~en_regout\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \lcdBus[4]~reg0feeder_combout\ : std_logic;
SIGNAL \lcdBus[4]~reg0_regout\ : std_logic;
SIGNAL \lcdBus[4]~en_regout\ : std_logic;
SIGNAL \lcdBus[5]~reg0_regout\ : std_logic;
SIGNAL \lcdBus[5]~en_regout\ : std_logic;
SIGNAL \lcdBus[6]~en_regout\ : std_logic;
SIGNAL \lcdBus[7]~reg0feeder_combout\ : std_logic;
SIGNAL \lcdBus[7]~reg0_regout\ : std_logic;
SIGNAL \lcdBus[7]~en_regout\ : std_logic;
SIGNAL \state.writeData~0_combout\ : std_logic;
SIGNAL \state.writeData~regout\ : std_logic;
SIGNAL \lcdRsSelect~reg0feeder_combout\ : std_logic;
SIGNAL \lcdRsSelect~reg0_regout\ : std_logic;
SIGNAL \lcdEnableOut~reg0_regout\ : std_logic;
SIGNAL \errorLed~reg0_regout\ : std_logic;
SIGNAL counter : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALT_INV_lcdBus[6]~en_regout\ : std_logic;
SIGNAL \ALT_INV_lcdOnIn~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_lcdOnIn <= lcdOnIn;
lcdOnOut <= ww_lcdOnOut;
lcdReadWriteSel <= ww_lcdReadWriteSel;
lcdRsSelect <= ww_lcdRsSelect;
lcdEnableOut <= ww_lcdEnableOut;
errorLed <= ww_errorLed;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_lcdBus[6]~en_regout\ <= NOT \lcdBus[6]~en_regout\;
\ALT_INV_lcdOnIn~combout\ <= NOT \lcdOnIn~combout\;

-- Location: LCFF_X7_Y23_N17
\counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[18]~70_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[15]~62_combout\,
	ena => \counter[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(18));

-- Location: LCFF_X7_Y24_N13
\counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[0]~23_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[15]~62_combout\,
	ena => \counter[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LCCOMB_X7_Y24_N12
\counter[0]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~23_combout\ = counter(0) $ (VCC)
-- \counter[0]~24\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \counter[0]~23_combout\,
	cout => \counter[0]~24\);

-- Location: LCCOMB_X7_Y23_N16
\counter[18]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[18]~70_combout\ = (counter(18) & (\counter[17]~69\ $ (GND))) # (!counter(18) & (!\counter[17]~69\ & VCC))
-- \counter[18]~71\ = CARRY((counter(18) & !\counter[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \counter[17]~69\,
	combout => \counter[18]~70_combout\,
	cout => \counter[18]~71\);

-- Location: LCCOMB_X7_Y24_N4
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!counter(0) & (!counter(13) & (!counter(1) & !counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(13),
	datac => counter(1),
	datad => counter(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X7_Y24_N6
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (counter(6) & (counter(9) & (!counter(4) & !counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(9),
	datac => counter(4),
	datad => counter(7),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X7_Y23_N26
\Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!counter(16) & (!counter(17) & (counter(8) & counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datab => counter(17),
	datac => counter(8),
	datad => counter(11),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X5_Y23_N16
\Selector147~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector147~4_combout\ = (!\state.entryModeSet~regout\ & (!\state.displayClear~regout\ & !\state.functionSet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.entryModeSet~regout\,
	datac => \state.displayClear~regout\,
	datad => \state.functionSet~regout\,
	combout => \Selector147~4_combout\);

-- Location: LCCOMB_X5_Y23_N10
\Selector147~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector147~5_combout\ = (\subStates.subState2~regout\ & (((\errorLed~2_combout\) # (\state.displaySet~regout\)) # (!\Selector147~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector147~4_combout\,
	datab => \subStates.subState2~regout\,
	datac => \errorLed~2_combout\,
	datad => \state.displaySet~regout\,
	combout => \Selector147~5_combout\);

-- Location: LCCOMB_X6_Y24_N14
\counter[15]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~54_combout\ = (\state.powerOn~regout\ & (((!\functionSetCase.00~regout\) # (!\state.functionSet~regout\)) # (!\subStates.subState3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.subState3~regout\,
	datab => \state.powerOn~regout\,
	datac => \state.functionSet~regout\,
	datad => \functionSetCase.00~regout\,
	combout => \counter[15]~54_combout\);

-- Location: LCCOMB_X5_Y23_N14
\counter[15]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~58_combout\ = (\subStates.subState3~regout\ & (\Equal3~1_combout\ & ((\state.entryModeSet~regout\) # (\state.displayClear~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.subState3~regout\,
	datab => \state.entryModeSet~regout\,
	datac => \state.displayClear~regout\,
	datad => \Equal3~1_combout\,
	combout => \counter[15]~58_combout\);

-- Location: LCCOMB_X6_Y23_N20
\Selector44~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~2_combout\ = (!\functionSetCase.00~regout\ & (\Equal0~3_combout\ & (\Equal3~0_combout\ & \Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \functionSetCase.00~regout\,
	datab => \Equal0~3_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal3~1_combout\,
	combout => \Selector44~2_combout\);

-- Location: LCCOMB_X6_Y23_N22
\Selector145~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector145~5_combout\ = (\counter[15]~74_combout\) # ((\Selector44~1_combout\ & (\state.functionSet~regout\ & \subStates.subState3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[15]~74_combout\,
	datab => \Selector44~1_combout\,
	datac => \state.functionSet~regout\,
	datad => \subStates.subState3~regout\,
	combout => \Selector145~5_combout\);

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

-- Location: LCCOMB_X7_Y24_N14
\counter[1]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1]~25_combout\ = (counter(1) & (!\counter[0]~24\)) # (!counter(1) & ((\counter[0]~24\) # (GND)))
-- \counter[1]~26\ = CARRY((!\counter[0]~24\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~24\,
	combout => \counter[1]~25_combout\,
	cout => \counter[1]~26\);

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

-- Location: LCCOMB_X7_Y23_N4
\counter[12]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[12]~47_combout\ = (counter(12) & (\counter[11]~46\ $ (GND))) # (!counter(12) & (!\counter[11]~46\ & VCC))
-- \counter[12]~48\ = CARRY((counter(12) & !\counter[11]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~46\,
	combout => \counter[12]~47_combout\,
	cout => \counter[12]~48\);

-- Location: LCCOMB_X7_Y23_N6
\counter[13]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[13]~49_combout\ = (counter(13) & (!\counter[12]~48\)) # (!counter(13) & ((\counter[12]~48\) # (GND)))
-- \counter[13]~50\ = CARRY((!\counter[12]~48\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \counter[12]~48\,
	combout => \counter[13]~49_combout\,
	cout => \counter[13]~50\);

-- Location: LCCOMB_X7_Y23_N8
\counter[14]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[14]~51_combout\ = (counter(14) & (\counter[13]~50\ $ (GND))) # (!counter(14) & (!\counter[13]~50\ & VCC))
-- \counter[14]~52\ = CARRY((counter(14) & !\counter[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~50\,
	combout => \counter[14]~51_combout\,
	cout => \counter[14]~52\);

-- Location: LCCOMB_X4_Y23_N2
\counter[15]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~63_combout\ = (\subStates.00~regout\) # (!\state.powerOn~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.powerOn~regout\,
	datad => \subStates.00~regout\,
	combout => \counter[15]~63_combout\);

-- Location: LCFF_X7_Y23_N9
\counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[14]~51_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[15]~62_combout\,
	ena => \counter[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14));

-- Location: LCCOMB_X7_Y23_N10
\counter[15]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~64_combout\ = (counter(15) & (!\counter[14]~52\)) # (!counter(15) & ((\counter[14]~52\) # (GND)))
-- \counter[15]~65\ = CARRY((!\counter[14]~52\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \counter[14]~52\,
	combout => \counter[15]~64_combout\,
	cout => \counter[15]~65\);

-- Location: LCCOMB_X7_Y23_N12
\counter[16]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[16]~66_combout\ = (counter(16) & (\counter[15]~65\ $ (GND))) # (!counter(16) & (!\counter[15]~65\ & VCC))
-- \counter[16]~67\ = CARRY((counter(16) & !\counter[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datad => VCC,
	cin => \counter[15]~65\,
	combout => \counter[16]~66_combout\,
	cout => \counter[16]~67\);

-- Location: LCCOMB_X7_Y23_N14
\counter[17]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[17]~68_combout\ = (counter(17) & (!\counter[16]~67\)) # (!counter(17) & ((\counter[16]~67\) # (GND)))
-- \counter[17]~69\ = CARRY((!\counter[16]~67\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \counter[16]~67\,
	combout => \counter[17]~68_combout\,
	cout => \counter[17]~69\);

-- Location: LCFF_X7_Y23_N15
\counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[17]~68_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[15]~62_combout\,
	ena => \counter[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(17));

-- Location: LCFF_X7_Y23_N13
\counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[16]~66_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[15]~62_combout\,
	ena => \counter[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(16));

-- Location: LCCOMB_X7_Y23_N24
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!counter(3) & (counter(17) & (counter(14) & counter(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(17),
	datac => counter(14),
	datad => counter(16),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X7_Y24_N16
\counter[2]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[2]~27_combout\ = (counter(2) & (\counter[1]~26\ $ (GND))) # (!counter(2) & (!\counter[1]~26\ & VCC))
-- \counter[2]~28\ = CARRY((counter(2) & !\counter[1]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~26\,
	combout => \counter[2]~27_combout\,
	cout => \counter[2]~28\);

-- Location: LCFF_X7_Y24_N17
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[2]~27_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[15]~62_combout\,
	ena => \counter[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LCCOMB_X7_Y22_N8
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!counter(8) & (!counter(10) & (!counter(2) & !counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datab => counter(10),
	datac => counter(2),
	datad => counter(11),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X6_Y23_N0
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal4~0_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X7_Y24_N24
\counter[6]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[6]~35_combout\ = (counter(6) & (\counter[5]~34\ $ (GND))) # (!counter(6) & (!\counter[5]~34\ & VCC))
-- \counter[6]~36\ = CARRY((counter(6) & !\counter[5]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \counter[5]~34\,
	combout => \counter[6]~35_combout\,
	cout => \counter[6]~36\);

-- Location: LCFF_X7_Y24_N25
\counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[6]~35_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[15]~62_combout\,
	ena => \counter[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LCCOMB_X7_Y24_N20
\counter[4]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~31_combout\ = (counter(4) & (\counter[3]~30\ $ (GND))) # (!counter(4) & (!\counter[3]~30\ & VCC))
-- \counter[4]~32\ = CARRY((counter(4) & !\counter[3]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datad => VCC,
	cin => \counter[3]~30\,
	combout => \counter[4]~31_combout\,
	cout => \counter[4]~32\);

-- Location: LCFF_X7_Y24_N21
\counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[4]~31_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[15]~62_combout\,
	ena => \counter[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LCCOMB_X6_Y24_N16
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (counter(15) & (!counter(6) & (counter(12) & counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datab => counter(6),
	datac => counter(12),
	datad => counter(4),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X7_Y23_N18
\counter[19]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[19]~72_combout\ = \counter[18]~71\ $ (counter(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(19),
	cin => \counter[18]~71\,
	combout => \counter[19]~72_combout\);

-- Location: LCFF_X7_Y23_N19
\counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[19]~72_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[15]~62_combout\,
	ena => \counter[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(19));

-- Location: LCCOMB_X7_Y23_N28
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!counter(18) & (!counter(14) & (!counter(9) & !counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(14),
	datac => counter(9),
	datad => counter(19),
	combout => \Equal1~0_combout\);

-- Location: LCFF_X7_Y23_N7
\counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[13]~49_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[15]~62_combout\,
	ena => \counter[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13));

-- Location: LCFF_X7_Y23_N11
\counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[15]~64_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[15]~62_combout\,
	ena => \counter[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(15));

-- Location: LCCOMB_X7_Y24_N0
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!counter(0) & (!counter(13) & (!counter(15) & !counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(13),
	datac => counter(15),
	datad => counter(5),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X7_Y24_N8
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!counter(4) & (!counter(1) & (counter(2) & counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(1),
	datac => counter(2),
	datad => counter(6),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X7_Y23_N20
\Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (\Equal1~4_combout\ & (\Equal1~0_combout\ & (\Equal1~1_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X7_Y22_N4
\Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (counter(3) & (counter(10) & (counter(12) & !counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(10),
	datac => counter(12),
	datad => counter(7),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X6_Y23_N6
\Selector47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\subStates.subState3~regout\ & (\Equal1~5_combout\ & \Equal1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \subStates.subState3~regout\,
	datac => \Equal1~5_combout\,
	datad => \Equal1~6_combout\,
	combout => \Selector47~0_combout\);

-- Location: LCCOMB_X6_Y24_N2
\Selector139~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector139~0_combout\ = (\Equal0~4_combout\ & (\Equal0~3_combout\ & (\Equal0~0_combout\ & !\state.powerOn~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~0_combout\,
	datad => \state.powerOn~regout\,
	combout => \Selector139~0_combout\);

-- Location: LCCOMB_X6_Y24_N4
\Selector139~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector139~1_combout\ = (\Selector139~0_combout\) # ((\state.functionSet~regout\ & ((!\functionSetCase.functionSet4~regout\) # (!\Selector47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~0_combout\,
	datab => \functionSetCase.functionSet4~regout\,
	datac => \state.functionSet~regout\,
	datad => \Selector139~0_combout\,
	combout => \Selector139~1_combout\);

-- Location: LCFF_X6_Y24_N5
\state.functionSet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector139~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.functionSet~regout\);

-- Location: LCCOMB_X6_Y24_N6
\functionSetCase~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \functionSetCase~14_combout\ = (\functionSetCase.00~regout\) # ((\state~15_combout\ & \state.functionSet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~15_combout\,
	datab => \state.functionSet~regout\,
	datac => \functionSetCase.00~regout\,
	combout => \functionSetCase~14_combout\);

-- Location: LCFF_X6_Y24_N7
\functionSetCase.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \functionSetCase~14_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \functionSetCase.00~regout\);

-- Location: LCCOMB_X6_Y24_N30
\Selector46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\state~15_combout\ & (((!\Selector47~0_combout\ & \functionSetCase.functionSet2~regout\)) # (!\functionSetCase.00~regout\))) # (!\state~15_combout\ & (!\Selector47~0_combout\ & (\functionSetCase.functionSet2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~15_combout\,
	datab => \Selector47~0_combout\,
	datac => \functionSetCase.functionSet2~regout\,
	datad => \functionSetCase.00~regout\,
	combout => \Selector46~0_combout\);

-- Location: LCFF_X6_Y24_N31
\functionSetCase.functionSet2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector46~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \state.functionSet~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \functionSetCase.functionSet2~regout\);

-- Location: LCCOMB_X6_Y24_N28
\Selector47~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector47~1_combout\ = (\Selector47~0_combout\ & ((\functionSetCase.functionSet2~regout\))) # (!\Selector47~0_combout\ & (\functionSetCase.functionSet3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector47~0_combout\,
	datac => \functionSetCase.functionSet3~regout\,
	datad => \functionSetCase.functionSet2~regout\,
	combout => \Selector47~1_combout\);

-- Location: LCFF_X6_Y24_N29
\functionSetCase.functionSet3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector47~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \state.functionSet~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \functionSetCase.functionSet3~regout\);

-- Location: LCCOMB_X6_Y24_N18
\functionSetCase.functionSet4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \functionSetCase.functionSet4~0_combout\ = (\functionSetCase.functionSet4~regout\) # ((\Selector140~0_combout\ & \functionSetCase.functionSet3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector140~0_combout\,
	datac => \functionSetCase.functionSet4~regout\,
	datad => \functionSetCase.functionSet3~regout\,
	combout => \functionSetCase.functionSet4~0_combout\);

-- Location: LCFF_X6_Y24_N19
\functionSetCase.functionSet4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \functionSetCase.functionSet4~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \functionSetCase.functionSet4~regout\);

-- Location: LCCOMB_X7_Y23_N22
\Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!counter(18) & (!counter(19) & (!counter(9) & counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(19),
	datac => counter(9),
	datad => counter(7),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X6_Y23_N26
\state~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~15_combout\ = (\subStates.subState3~regout\ & (\Equal0~3_combout\ & (\Equal3~0_combout\ & \Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.subState3~regout\,
	datab => \Equal0~3_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal3~1_combout\,
	combout => \state~15_combout\);

-- Location: LCCOMB_X5_Y23_N22
\state.entryModeSet~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.entryModeSet~0_combout\ = (\state~15_combout\ & (\state.displayClear~regout\)) # (!\state~15_combout\ & ((\state.entryModeSet~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.displayClear~regout\,
	datac => \state.entryModeSet~regout\,
	datad => \state~15_combout\,
	combout => \state.entryModeSet~0_combout\);

-- Location: LCFF_X5_Y23_N23
\state.entryModeSet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state.entryModeSet~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.entryModeSet~regout\);

-- Location: LCCOMB_X6_Y24_N24
\Selector145~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector145~4_combout\ = (\state.entryModeSet~regout\ & \state~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.entryModeSet~regout\,
	datad => \state~15_combout\,
	combout => \Selector145~4_combout\);

-- Location: LCCOMB_X7_Y22_N26
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!counter(3) & (!counter(10) & (!counter(12) & counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(10),
	datac => counter(12),
	datad => counter(7),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X6_Y23_N4
\Selector140~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector140~1_combout\ = (\state.displaySet~regout\ & (((!\Equal2~0_combout\) # (!\subStates.subState3~regout\)) # (!\Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \subStates.subState3~regout\,
	datac => \state.displaySet~regout\,
	datad => \Equal2~0_combout\,
	combout => \Selector140~1_combout\);

-- Location: LCCOMB_X6_Y24_N10
\Selector140~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector140~2_combout\ = (\Selector145~4_combout\) # ((\Selector140~1_combout\) # ((\Selector140~0_combout\ & \functionSetCase.functionSet4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector140~0_combout\,
	datab => \functionSetCase.functionSet4~regout\,
	datac => \Selector145~4_combout\,
	datad => \Selector140~1_combout\,
	combout => \Selector140~2_combout\);

-- Location: LCFF_X6_Y24_N11
\state.displaySet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector140~2_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.displaySet~regout\);

-- Location: LCCOMB_X5_Y23_N12
\counter[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~22_combout\ = (\subStates.subState3~regout\ & \state.displaySet~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \subStates.subState3~regout\,
	datad => \state.displaySet~regout\,
	combout => \counter[15]~22_combout\);

-- Location: LCCOMB_X6_Y23_N2
\counter[15]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~59_combout\ = (\counter[15]~58_combout\ & (\Equal0~3_combout\ & (\Equal3~0_combout\ & !\counter[15]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[15]~58_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal3~0_combout\,
	datad => \counter[15]~22_combout\,
	combout => \counter[15]~59_combout\);

-- Location: LCCOMB_X6_Y23_N14
\counter[15]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~60_combout\ = (\state.functionSet~regout\ & (\subStates.subState3~regout\ & !\state.displaySet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.functionSet~regout\,
	datab => \subStates.subState3~regout\,
	datac => \state.displaySet~regout\,
	combout => \counter[15]~60_combout\);

-- Location: LCCOMB_X6_Y23_N16
\counter[15]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~61_combout\ = (\counter[15]~59_combout\) # ((\counter[15]~74_combout\) # ((\Selector44~2_combout\ & \counter[15]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~2_combout\,
	datab => \counter[15]~59_combout\,
	datac => \counter[15]~60_combout\,
	datad => \counter[15]~74_combout\,
	combout => \counter[15]~61_combout\);

-- Location: LCCOMB_X5_Y23_N2
\counter[15]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~56_combout\ = (\state.displaySet~regout\) # ((\errorLed~2_combout\) # ((\state.functionSet~regout\ & \functionSetCase.00~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.displaySet~regout\,
	datab => \state.functionSet~regout\,
	datac => \errorLed~2_combout\,
	datad => \functionSetCase.00~regout\,
	combout => \counter[15]~56_combout\);

-- Location: LCCOMB_X5_Y23_N8
\counter[15]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~55_combout\ = (!\subStates.subState3~regout\ & ((\state.entryModeSet~regout\) # ((\state.displayClear~regout\) # (\state.functionSet~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.subState3~regout\,
	datab => \state.entryModeSet~regout\,
	datac => \state.displayClear~regout\,
	datad => \state.functionSet~regout\,
	combout => \counter[15]~55_combout\);

-- Location: LCCOMB_X7_Y24_N2
\Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!counter(6) & (counter(3) & (counter(4) & !counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(3),
	datac => counter(4),
	datad => counter(7),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X6_Y24_N26
\Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (!counter(12) & (counter(1) & \Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datac => counter(1),
	datad => \Equal4~1_combout\,
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X7_Y23_N30
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!counter(16) & (!counter(17) & (\Equal1~1_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datab => counter(17),
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X6_Y24_N22
\Equal4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (\Equal4~0_combout\ & (\Equal4~2_combout\ & \Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Equal4~2_combout\,
	datac => \Equal1~2_combout\,
	combout => \Equal4~3_combout\);

-- Location: LCCOMB_X5_Y23_N4
\counter[15]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~57_combout\ = (!\counter[15]~22_combout\ & (\Equal4~3_combout\ & ((\counter[15]~56_combout\) # (\counter[15]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[15]~22_combout\,
	datab => \counter[15]~56_combout\,
	datac => \counter[15]~55_combout\,
	datad => \Equal4~3_combout\,
	combout => \counter[15]~57_combout\);

-- Location: LCCOMB_X6_Y23_N24
\Selector140~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector140~0_combout\ = (\Equal1~5_combout\ & (\subStates.subState3~regout\ & (\state.functionSet~regout\ & \Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \subStates.subState3~regout\,
	datac => \state.functionSet~regout\,
	datad => \Equal1~6_combout\,
	combout => \Selector140~0_combout\);

-- Location: LCCOMB_X6_Y24_N12
\counter[15]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~53_combout\ = (\Selector139~0_combout\) # ((\functionSetCase.00~regout\ & (\Selector140~0_combout\ & \state.powerOn~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \functionSetCase.00~regout\,
	datab => \Selector139~0_combout\,
	datac => \Selector140~0_combout\,
	datad => \state.powerOn~regout\,
	combout => \counter[15]~53_combout\);

-- Location: LCCOMB_X7_Y24_N10
\counter[15]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~62_combout\ = (\counter[15]~53_combout\) # ((\counter[15]~54_combout\ & ((\counter[15]~61_combout\) # (\counter[15]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[15]~54_combout\,
	datab => \counter[15]~61_combout\,
	datac => \counter[15]~57_combout\,
	datad => \counter[15]~53_combout\,
	combout => \counter[15]~62_combout\);

-- Location: LCFF_X7_Y24_N15
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[1]~25_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[15]~62_combout\,
	ena => \counter[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCCOMB_X7_Y24_N18
\counter[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[3]~29_combout\ = (counter(3) & (!\counter[2]~28\)) # (!counter(3) & ((\counter[2]~28\) # (GND)))
-- \counter[3]~30\ = CARRY((!\counter[2]~28\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \counter[2]~28\,
	combout => \counter[3]~29_combout\,
	cout => \counter[3]~30\);

-- Location: LCFF_X7_Y24_N19
\counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[3]~29_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[15]~62_combout\,
	ena => \counter[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LCCOMB_X7_Y24_N22
\counter[5]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[5]~33_combout\ = (counter(5) & (!\counter[4]~32\)) # (!counter(5) & ((\counter[4]~32\) # (GND)))
-- \counter[5]~34\ = CARRY((!\counter[4]~32\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~32\,
	combout => \counter[5]~33_combout\,
	cout => \counter[5]~34\);

-- Location: LCFF_X7_Y24_N23
\counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[5]~33_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[15]~62_combout\,
	ena => \counter[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LCCOMB_X7_Y24_N26
\counter[7]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[7]~37_combout\ = (counter(7) & (!\counter[6]~36\)) # (!counter(7) & ((\counter[6]~36\) # (GND)))
-- \counter[7]~38\ = CARRY((!\counter[6]~36\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~36\,
	combout => \counter[7]~37_combout\,
	cout => \counter[7]~38\);

-- Location: LCFF_X7_Y24_N27
\counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[7]~37_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[15]~62_combout\,
	ena => \counter[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LCCOMB_X7_Y24_N28
\counter[8]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[8]~39_combout\ = (counter(8) & (\counter[7]~38\ $ (GND))) # (!counter(8) & (!\counter[7]~38\ & VCC))
-- \counter[8]~40\ = CARRY((counter(8) & !\counter[7]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~38\,
	combout => \counter[8]~39_combout\,
	cout => \counter[8]~40\);

-- Location: LCFF_X7_Y24_N29
\counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[8]~39_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[15]~62_combout\,
	ena => \counter[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(8));

-- Location: LCCOMB_X7_Y24_N30
\counter[9]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[9]~41_combout\ = (counter(9) & (!\counter[8]~40\)) # (!counter(9) & ((\counter[8]~40\) # (GND)))
-- \counter[9]~42\ = CARRY((!\counter[8]~40\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~40\,
	combout => \counter[9]~41_combout\,
	cout => \counter[9]~42\);

-- Location: LCFF_X7_Y24_N31
\counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[9]~41_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[15]~62_combout\,
	ena => \counter[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(9));

-- Location: LCCOMB_X7_Y23_N0
\counter[10]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[10]~43_combout\ = (counter(10) & (\counter[9]~42\ $ (GND))) # (!counter(10) & (!\counter[9]~42\ & VCC))
-- \counter[10]~44\ = CARRY((counter(10) & !\counter[9]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~42\,
	combout => \counter[10]~43_combout\,
	cout => \counter[10]~44\);

-- Location: LCFF_X7_Y23_N1
\counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[10]~43_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[15]~62_combout\,
	ena => \counter[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10));

-- Location: LCCOMB_X7_Y23_N2
\counter[11]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[11]~45_combout\ = (counter(11) & (!\counter[10]~44\)) # (!counter(11) & ((\counter[10]~44\) # (GND)))
-- \counter[11]~46\ = CARRY((!\counter[10]~44\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \counter[10]~44\,
	combout => \counter[11]~45_combout\,
	cout => \counter[11]~46\);

-- Location: LCFF_X7_Y23_N3
\counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[11]~45_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[15]~62_combout\,
	ena => \counter[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11));

-- Location: LCFF_X7_Y23_N5
\counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[12]~47_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[15]~62_combout\,
	ena => \counter[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(12));

-- Location: LCCOMB_X6_Y24_N8
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (counter(18) & (!counter(12) & (!counter(15) & counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(12),
	datac => counter(15),
	datad => counter(19),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X6_Y24_N0
\state.powerOn~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.powerOn~0_combout\ = (\state.powerOn~regout\) # ((\Equal0~4_combout\ & (\Equal0~0_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~0_combout\,
	datac => \state.powerOn~regout\,
	datad => \Equal0~3_combout\,
	combout => \state.powerOn~0_combout\);

-- Location: LCFF_X6_Y24_N1
\state.powerOn\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state.powerOn~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.powerOn~regout\);

-- Location: LCCOMB_X5_Y23_N30
\Selector147~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector147~7_combout\ = (!\state.displayClear~regout\ & !\state.entryModeSet~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.displayClear~regout\,
	datad => \state.entryModeSet~regout\,
	combout => \Selector147~7_combout\);

-- Location: LCCOMB_X4_Y23_N28
\Selector145~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector145~2_combout\ = (\state~15_combout\ & (((!\subStates.00~regout\ & !\state.powerOn~regout\)) # (!\Selector147~7_combout\))) # (!\state~15_combout\ & (!\subStates.00~regout\ & (!\state.powerOn~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~15_combout\,
	datab => \subStates.00~regout\,
	datac => \state.powerOn~regout\,
	datad => \Selector147~7_combout\,
	combout => \Selector145~2_combout\);

-- Location: LCCOMB_X6_Y24_N20
\Selector143~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector143~0_combout\ = (\subStates.subState3~regout\ & (\Equal4~2_combout\ & (\Equal1~2_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.subState3~regout\,
	datab => \Equal4~2_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal4~0_combout\,
	combout => \Selector143~0_combout\);

-- Location: LCCOMB_X4_Y23_N22
\Selector145~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector145~3_combout\ = (!\Selector145~5_combout\ & (!\Selector145~2_combout\ & ((!\Selector143~0_combout\) # (!\errorLed~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector145~5_combout\,
	datab => \Selector145~2_combout\,
	datac => \errorLed~2_combout\,
	datad => \Selector143~0_combout\,
	combout => \Selector145~3_combout\);

-- Location: LCFF_X4_Y23_N23
\subStates.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector145~3_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \subStates.00~regout\);

-- Location: LCCOMB_X4_Y23_N26
\subStates.subState2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \subStates.subState2~0_combout\ = (\state.powerOn~regout\ & (((\subStates.subState2~regout\ & !\Equal4~3_combout\)) # (!\subStates.00~regout\))) # (!\state.powerOn~regout\ & (((\subStates.subState2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.powerOn~regout\,
	datab => \subStates.00~regout\,
	datac => \subStates.subState2~regout\,
	datad => \Equal4~3_combout\,
	combout => \subStates.subState2~0_combout\);

-- Location: LCFF_X4_Y23_N27
\subStates.subState2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \subStates.subState2~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \subStates.subState2~regout\);

-- Location: LCCOMB_X5_Y23_N26
\displayOnOff~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayOnOff~0_combout\ = (\displayOnOff~regout\) # ((\subStates.subState2~regout\ & \state.entryModeSet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \subStates.subState2~regout\,
	datac => \displayOnOff~regout\,
	datad => \state.entryModeSet~regout\,
	combout => \displayOnOff~0_combout\);

-- Location: LCFF_X5_Y23_N27
displayOnOff : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \displayOnOff~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \displayOnOff~regout\);

-- Location: LCCOMB_X6_Y23_N10
\Selector143~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector143~1_combout\ = (\counter[15]~22_combout\ & (\displayOnOff~regout\ & (\Equal1~5_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[15]~22_combout\,
	datab => \displayOnOff~regout\,
	datac => \Equal1~5_combout\,
	datad => \Equal2~0_combout\,
	combout => \Selector143~1_combout\);

-- Location: LCCOMB_X3_Y23_N6
\Selector143~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector143~2_combout\ = (\Selector143~1_combout\) # ((\Selector143~0_combout\ & (\state.writeData~regout\)) # (!\Selector143~0_combout\ & ((\state.writeAddr~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.writeData~regout\,
	datab => \Selector143~1_combout\,
	datac => \state.writeAddr~regout\,
	datad => \Selector143~0_combout\,
	combout => \Selector143~2_combout\);

-- Location: LCFF_X3_Y23_N7
\state.writeAddr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector143~2_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.writeAddr~regout\);

-- Location: LCCOMB_X3_Y23_N2
\errorLed~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \errorLed~2_combout\ = (\state.writeData~regout\) # (\state.writeAddr~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.writeData~regout\,
	datad => \state.writeAddr~regout\,
	combout => \errorLed~2_combout\);

-- Location: LCCOMB_X5_Y23_N28
\Selector147~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector147~6_combout\ = (\Equal4~3_combout\ & (\Selector147~5_combout\)) # (!\Equal4~3_combout\ & (((\errorLed~2_combout\ & \subStates.subState3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector147~5_combout\,
	datab => \errorLed~2_combout\,
	datac => \subStates.subState3~regout\,
	datad => \Equal4~3_combout\,
	combout => \Selector147~6_combout\);

-- Location: LCCOMB_X4_Y23_N30
\Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (\Equal0~3_combout\ & (\Equal3~0_combout\ & \Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~3_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal3~1_combout\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X4_Y23_N16
\Selector147~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector147~8_combout\ = (\subStates.subState3~regout\ & (((!\Equal3~2_combout\ & !\Selector147~7_combout\)) # (!\state.powerOn~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.subState3~regout\,
	datab => \Equal3~2_combout\,
	datac => \state.powerOn~regout\,
	datad => \Selector147~7_combout\,
	combout => \Selector147~8_combout\);

-- Location: LCCOMB_X6_Y23_N8
\Selector147~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector147~10_combout\ = (\subStates.subState3~regout\ & (\state.displaySet~regout\ & ((!\Equal2~0_combout\) # (!\Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \subStates.subState3~regout\,
	datac => \state.displaySet~regout\,
	datad => \Equal2~0_combout\,
	combout => \Selector147~10_combout\);

-- Location: LCCOMB_X6_Y23_N28
\Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\functionSetCase.00~regout\ & (\Equal1~6_combout\)) # (!\functionSetCase.00~regout\ & (((\Equal3~0_combout\ & \Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \functionSetCase.00~regout\,
	datab => \Equal1~6_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal3~1_combout\,
	combout => \Selector44~0_combout\);

-- Location: LCCOMB_X6_Y23_N30
\Selector44~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~1_combout\ = (\Selector44~0_combout\ & ((\functionSetCase.00~regout\ & (\Equal1~5_combout\)) # (!\functionSetCase.00~regout\ & ((\Equal0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \Equal0~3_combout\,
	datac => \functionSetCase.00~regout\,
	datad => \Selector44~0_combout\,
	combout => \Selector44~1_combout\);

-- Location: LCCOMB_X6_Y23_N18
\Selector147~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector147~11_combout\ = (\Selector147~10_combout\) # ((\state.functionSet~regout\ & (\subStates.subState3~regout\ & !\Selector44~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.functionSet~regout\,
	datab => \subStates.subState3~regout\,
	datac => \Selector147~10_combout\,
	datad => \Selector44~1_combout\,
	combout => \Selector147~11_combout\);

-- Location: LCCOMB_X5_Y23_N24
\Selector147~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector147~9_combout\ = (\Selector147~6_combout\) # ((\Selector147~8_combout\) # (\Selector147~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector147~6_combout\,
	datac => \Selector147~8_combout\,
	datad => \Selector147~11_combout\,
	combout => \Selector147~9_combout\);

-- Location: LCFF_X5_Y23_N25
\subStates.subState3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector147~9_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \subStates.subState3~regout\);

-- Location: LCCOMB_X6_Y23_N12
\counter[15]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~74_combout\ = (\Equal1~5_combout\ & (\subStates.subState3~regout\ & (\state.displaySet~regout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \subStates.subState3~regout\,
	datac => \state.displaySet~regout\,
	datad => \Equal2~0_combout\,
	combout => \counter[15]~74_combout\);

-- Location: LCCOMB_X5_Y23_N20
\Selector141~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector141~0_combout\ = (\state~15_combout\ & (\counter[15]~74_combout\ & ((!\displayOnOff~regout\)))) # (!\state~15_combout\ & ((\state.displayClear~regout\) # ((\counter[15]~74_combout\ & !\displayOnOff~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~15_combout\,
	datab => \counter[15]~74_combout\,
	datac => \state.displayClear~regout\,
	datad => \displayOnOff~regout\,
	combout => \Selector141~0_combout\);

-- Location: LCFF_X5_Y23_N21
\state.displayClear\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector141~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.displayClear~regout\);

-- Location: LCFF_X5_Y23_N7
\lcdBus[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \state.displayClear~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[0]~reg0_regout\);

-- Location: LCCOMB_X4_Y23_N20
\Selector118~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector118~0_combout\ = (\state.powerOn~regout\ & \subStates.subState2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.powerOn~regout\,
	datad => \subStates.subState2~regout\,
	combout => \Selector118~0_combout\);

-- Location: LCFF_X4_Y23_N25
\lcdBus[0]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector118~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[0]~en_regout\);

-- Location: LCCOMB_X5_Y23_N0
\lcdBus[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcdBus[1]~reg0feeder_combout\ = \state.entryModeSet~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.entryModeSet~regout\,
	combout => \lcdBus[1]~reg0feeder_combout\);

-- Location: LCFF_X5_Y23_N1
\lcdBus[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcdBus[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[1]~reg0_regout\);

-- Location: LCFF_X4_Y23_N19
\lcdBus[1]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector118~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[1]~en_regout\);

-- Location: LCCOMB_X5_Y23_N18
\Selector73~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (\state.entryModeSet~regout\) # ((\state.displaySet~regout\ & \displayOnOff~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.displaySet~regout\,
	datab => \displayOnOff~regout\,
	datad => \state.entryModeSet~regout\,
	combout => \Selector73~0_combout\);

-- Location: LCFF_X5_Y23_N19
\lcdBus[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector73~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[2]~reg0_regout\);

-- Location: LCFF_X4_Y23_N21
\lcdBus[2]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector118~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[2]~en_regout\);

-- Location: LCCOMB_X6_Y26_N0
\Selector72~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\state.functionSet~regout\) # (\state.displaySet~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.functionSet~regout\,
	datad => \state.displaySet~regout\,
	combout => \Selector72~0_combout\);

-- Location: LCFF_X6_Y26_N1
\lcdBus[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector72~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[3]~reg0_regout\);

-- Location: LCFF_X4_Y23_N5
\lcdBus[3]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector118~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[3]~en_regout\);

-- Location: LCCOMB_X3_Y23_N26
\Selector71~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\state.writeData~regout\) # (\state.functionSet~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.writeData~regout\,
	datac => \state.functionSet~regout\,
	combout => \Selector71~0_combout\);

-- Location: LCCOMB_X3_Y23_N16
\lcdBus[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcdBus[4]~reg0feeder_combout\ = \Selector71~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector71~0_combout\,
	combout => \lcdBus[4]~reg0feeder_combout\);

-- Location: LCFF_X3_Y23_N17
\lcdBus[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcdBus[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[4]~reg0_regout\);

-- Location: LCFF_X4_Y23_N7
\lcdBus[4]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector118~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[4]~en_regout\);

-- Location: LCFF_X3_Y23_N27
\lcdBus[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[5]~reg0_regout\);

-- Location: LCFF_X4_Y23_N1
\lcdBus[5]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector118~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[5]~en_regout\);

-- Location: LCFF_X4_Y23_N11
\lcdBus[6]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector118~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[6]~en_regout\);

-- Location: LCCOMB_X3_Y23_N20
\lcdBus[7]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcdBus[7]~reg0feeder_combout\ = \state.writeAddr~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.writeAddr~regout\,
	combout => \lcdBus[7]~reg0feeder_combout\);

-- Location: LCFF_X3_Y23_N21
\lcdBus[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcdBus[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[7]~reg0_regout\);

-- Location: LCFF_X4_Y23_N13
\lcdBus[7]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector118~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[7]~en_regout\);

-- Location: LCCOMB_X3_Y23_N12
\state.writeData~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.writeData~0_combout\ = (\Selector143~0_combout\ & (\state.writeAddr~regout\)) # (!\Selector143~0_combout\ & ((\state.writeData~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.writeAddr~regout\,
	datac => \state.writeData~regout\,
	datad => \Selector143~0_combout\,
	combout => \state.writeData~0_combout\);

-- Location: LCFF_X3_Y23_N13
\state.writeData\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state.writeData~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.writeData~regout\);

-- Location: LCCOMB_X3_Y23_N8
\lcdRsSelect~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcdRsSelect~reg0feeder_combout\ = \state.writeData~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.writeData~regout\,
	combout => \lcdRsSelect~reg0feeder_combout\);

-- Location: LCFF_X3_Y23_N9
\lcdRsSelect~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcdRsSelect~reg0feeder_combout\,
	ena => \lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdRsSelect~reg0_regout\);

-- Location: LCFF_X4_Y23_N9
\lcdEnableOut~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector118~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdEnableOut~reg0_regout\);

-- Location: LCFF_X3_Y23_N3
\errorLed~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \errorLed~2_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \errorLed~reg0_regout\);

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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcdBus[0]~reg0_regout\,
	oe => \lcdBus[0]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => lcdBus(0));

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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcdBus[1]~reg0_regout\,
	oe => \lcdBus[1]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => lcdBus(1));

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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcdBus[2]~reg0_regout\,
	oe => \lcdBus[2]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => lcdBus(2));

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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcdBus[3]~reg0_regout\,
	oe => \lcdBus[3]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => lcdBus(3));

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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcdBus[4]~reg0_regout\,
	oe => \lcdBus[4]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => lcdBus(4));

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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcdBus[5]~reg0_regout\,
	oe => \lcdBus[5]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => lcdBus(5));

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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_lcdBus[6]~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => lcdBus(6));

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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcdBus[7]~reg0_regout\,
	oe => \lcdBus[7]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => lcdBus(7));

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
	datain => \lcdRsSelect~reg0_regout\,
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
	datain => \lcdEnableOut~reg0_regout\,
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
	datain => \errorLed~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_errorLed);
END structure;


