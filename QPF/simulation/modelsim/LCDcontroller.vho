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

-- DATE "06/24/2018 23:15:38"

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
SIGNAL \counter[0]~24_combout\ : std_logic;
SIGNAL \counter[16]~69_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \counter[0]~61_combout\ : std_logic;
SIGNAL \counter[0]~64_combout\ : std_logic;
SIGNAL \Selector124~2_combout\ : std_logic;
SIGNAL \Selector126~2_combout\ : std_logic;
SIGNAL \functionSetCase.functionSet4~regout\ : std_logic;
SIGNAL \Selector124~4_combout\ : std_logic;
SIGNAL \functionSetCase.functionSet3~regout\ : std_logic;
SIGNAL \functionSetCase.functionSet4~0_combout\ : std_logic;
SIGNAL \functionSetCase.functionSet2~regout\ : std_logic;
SIGNAL \Selector52~1_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Selector126~6_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~25\ : std_logic;
SIGNAL \counter[1]~26_combout\ : std_logic;
SIGNAL \lcdOnIn~combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \counter[2]~28_combout\ : std_logic;
SIGNAL \counter[15]~67_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \counter[4]~32_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \state.powerOn~0_combout\ : std_logic;
SIGNAL \state.powerOn~regout\ : std_logic;
SIGNAL \counter[6]~36_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \counter[13]~50_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Selector121~3_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \Selector120~0_combout\ : std_logic;
SIGNAL \Selector120~1_combout\ : std_logic;
SIGNAL \state.functionSet~regout\ : std_logic;
SIGNAL \Selector124~0_combout\ : std_logic;
SIGNAL \Selector121~2_combout\ : std_logic;
SIGNAL \Selector121~4_combout\ : std_logic;
SIGNAL \state.displaySet~regout\ : std_logic;
SIGNAL \counter[0]~78_combout\ : std_logic;
SIGNAL \functionSetCase~14_combout\ : std_logic;
SIGNAL \functionSetCase.00~regout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Selector124~3_combout\ : std_logic;
SIGNAL \subStates.00~regout\ : std_logic;
SIGNAL \counter[0]~66_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \counter[18]~74\ : std_logic;
SIGNAL \counter[19]~75_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Selector126~3_combout\ : std_logic;
SIGNAL \Selector126~4_combout\ : std_logic;
SIGNAL \Selector126~5_combout\ : std_logic;
SIGNAL \subStates.subState3~regout\ : std_logic;
SIGNAL \Selector121~5_combout\ : std_logic;
SIGNAL \counter[0]~54_combout\ : std_logic;
SIGNAL \counter[0]~59_combout\ : std_logic;
SIGNAL \Selector124~1_combout\ : std_logic;
SIGNAL \counter[0]~60_combout\ : std_logic;
SIGNAL \counter[0]~55_combout\ : std_logic;
SIGNAL \counter[0]~62_combout\ : std_logic;
SIGNAL \counter[0]~56_combout\ : std_logic;
SIGNAL \counter[0]~57_combout\ : std_logic;
SIGNAL \counter[0]~77_combout\ : std_logic;
SIGNAL \counter[0]~58_combout\ : std_logic;
SIGNAL \counter[0]~63_combout\ : std_logic;
SIGNAL \counter[0]~65_combout\ : std_logic;
SIGNAL \counter[1]~27\ : std_logic;
SIGNAL \counter[2]~29\ : std_logic;
SIGNAL \counter[3]~30_combout\ : std_logic;
SIGNAL \counter[3]~31\ : std_logic;
SIGNAL \counter[4]~33\ : std_logic;
SIGNAL \counter[5]~34_combout\ : std_logic;
SIGNAL \counter[5]~35\ : std_logic;
SIGNAL \counter[6]~37\ : std_logic;
SIGNAL \counter[7]~38_combout\ : std_logic;
SIGNAL \counter[7]~39\ : std_logic;
SIGNAL \counter[8]~40_combout\ : std_logic;
SIGNAL \counter[8]~41\ : std_logic;
SIGNAL \counter[9]~42_combout\ : std_logic;
SIGNAL \counter[9]~43\ : std_logic;
SIGNAL \counter[10]~44_combout\ : std_logic;
SIGNAL \counter[10]~45\ : std_logic;
SIGNAL \counter[11]~46_combout\ : std_logic;
SIGNAL \counter[11]~47\ : std_logic;
SIGNAL \counter[12]~48_combout\ : std_logic;
SIGNAL \counter[12]~49\ : std_logic;
SIGNAL \counter[13]~51\ : std_logic;
SIGNAL \counter[14]~52_combout\ : std_logic;
SIGNAL \counter[14]~53\ : std_logic;
SIGNAL \counter[15]~68\ : std_logic;
SIGNAL \counter[16]~70\ : std_logic;
SIGNAL \counter[17]~71_combout\ : std_logic;
SIGNAL \counter[17]~72\ : std_logic;
SIGNAL \counter[18]~73_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \Selector123~0_combout\ : std_logic;
SIGNAL \state.entryModeSet~regout\ : std_logic;
SIGNAL \displayOnOff~0_combout\ : std_logic;
SIGNAL \displayOnOff~regout\ : std_logic;
SIGNAL \Selector122~0_combout\ : std_logic;
SIGNAL \state.displayClear~regout\ : std_logic;
SIGNAL \lcdBus[0]~reg0feeder_combout\ : std_logic;
SIGNAL \lcdBus[0]~reg0_regout\ : std_logic;
SIGNAL \subStates.subState2~0_combout\ : std_logic;
SIGNAL \subStates.subState2~regout\ : std_logic;
SIGNAL \Selector98~0_combout\ : std_logic;
SIGNAL \lcdBus[0]~enfeeder_combout\ : std_logic;
SIGNAL \lcdBus[0]~en_regout\ : std_logic;
SIGNAL \lcdBus[1]~reg0_regout\ : std_logic;
SIGNAL \lcdBus[1]~enfeeder_combout\ : std_logic;
SIGNAL \lcdBus[1]~en_regout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \lcdBus[2]~reg0_regout\ : std_logic;
SIGNAL \lcdBus[2]~enfeeder_combout\ : std_logic;
SIGNAL \lcdBus[2]~en_regout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \lcdBus[3]~reg0_regout\ : std_logic;
SIGNAL \lcdBus[3]~en_regout\ : std_logic;
SIGNAL \lcdBus[4]~reg0_regout\ : std_logic;
SIGNAL \lcdBus[4]~enfeeder_combout\ : std_logic;
SIGNAL \lcdBus[4]~en_regout\ : std_logic;
SIGNAL \lcdBus[5]~reg0_regout\ : std_logic;
SIGNAL \lcdBus[5]~enfeeder_combout\ : std_logic;
SIGNAL \lcdBus[5]~en_regout\ : std_logic;
SIGNAL \lcdBus[6]~enfeeder_combout\ : std_logic;
SIGNAL \lcdBus[6]~en_regout\ : std_logic;
SIGNAL \lcdBus[7]~enfeeder_combout\ : std_logic;
SIGNAL \lcdBus[7]~en_regout\ : std_logic;
SIGNAL \lcdEnableOut~reg0feeder_combout\ : std_logic;
SIGNAL \lcdEnableOut~reg0_regout\ : std_logic;
SIGNAL counter : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALT_INV_lcdBus[7]~en_regout\ : std_logic;
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
\ALT_INV_lcdBus[7]~en_regout\ <= NOT \lcdBus[7]~en_regout\;
\ALT_INV_lcdBus[6]~en_regout\ <= NOT \lcdBus[6]~en_regout\;
\ALT_INV_lcdOnIn~combout\ <= NOT \lcdOnIn~combout\;

-- Location: LCFF_X3_Y24_N13
\counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[0]~24_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[0]~65_combout\,
	ena => \counter[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LCFF_X3_Y23_N13
\counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[16]~69_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[0]~65_combout\,
	ena => \counter[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(16));

-- Location: LCCOMB_X3_Y24_N12
\counter[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~24_combout\ = counter(0) $ (VCC)
-- \counter[0]~25\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \counter[0]~24_combout\,
	cout => \counter[0]~25\);

-- Location: LCCOMB_X3_Y23_N12
\counter[16]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[16]~69_combout\ = (counter(16) & (\counter[15]~68\ $ (GND))) # (!counter(16) & (!\counter[15]~68\ & VCC))
-- \counter[16]~70\ = CARRY((counter(16) & !\counter[15]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datad => VCC,
	cin => \counter[15]~68\,
	combout => \counter[16]~69_combout\,
	cout => \counter[16]~70\);

-- Location: LCCOMB_X3_Y24_N4
\Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!counter(6) & (!counter(7) & (counter(4) & counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(7),
	datac => counter(4),
	datad => counter(3),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X2_Y24_N6
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!counter(13) & (!counter(1) & (!counter(0) & !counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datab => counter(1),
	datac => counter(0),
	datad => counter(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X2_Y24_N20
\counter[0]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~61_combout\ = (!\functionSetCase.00~regout\ & (\Equal4~1_combout\ & \Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \functionSetCase.00~regout\,
	datab => \Equal4~1_combout\,
	datad => \Equal4~0_combout\,
	combout => \counter[0]~61_combout\);

-- Location: LCCOMB_X2_Y23_N12
\counter[0]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~64_combout\ = (\state.powerOn~regout\ & (((!\state.functionSet~regout\) # (!\subStates.subState3~regout\)) # (!\functionSetCase.00~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \functionSetCase.00~regout\,
	datab => \subStates.subState3~regout\,
	datac => \state.powerOn~regout\,
	datad => \state.functionSet~regout\,
	combout => \counter[0]~64_combout\);

-- Location: LCCOMB_X2_Y23_N6
\Selector124~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector124~2_combout\ = (\state.powerOn~regout\ & (((\state~14_combout\ & !\Selector124~1_combout\)))) # (!\state.powerOn~regout\ & (((\state~14_combout\ & !\Selector124~1_combout\)) # (!\subStates.00~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.powerOn~regout\,
	datab => \subStates.00~regout\,
	datac => \state~14_combout\,
	datad => \Selector124~1_combout\,
	combout => \Selector124~2_combout\);

-- Location: LCCOMB_X1_Y23_N6
\Selector126~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector126~2_combout\ = (\subStates.subState2~regout\ & (((\state.displaySet~regout\) # (\state.functionSet~regout\)) # (!\Selector124~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.subState2~regout\,
	datab => \Selector124~1_combout\,
	datac => \state.displaySet~regout\,
	datad => \state.functionSet~regout\,
	combout => \Selector126~2_combout\);

-- Location: LCFF_X2_Y23_N21
\functionSetCase.functionSet4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \functionSetCase.functionSet4~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \functionSetCase.functionSet4~regout\);

-- Location: LCCOMB_X1_Y23_N16
\Selector124~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector124~4_combout\ = (\state.entryModeSet~regout\ & \state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.entryModeSet~regout\,
	datad => \state~14_combout\,
	combout => \Selector124~4_combout\);

-- Location: LCFF_X2_Y23_N11
\functionSetCase.functionSet3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector52~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \state.functionSet~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \functionSetCase.functionSet3~regout\);

-- Location: LCCOMB_X2_Y23_N20
\functionSetCase.functionSet4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \functionSetCase.functionSet4~0_combout\ = (\functionSetCase.functionSet4~regout\) # ((\functionSetCase.functionSet3~regout\ & \Selector121~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \functionSetCase.functionSet3~regout\,
	datac => \functionSetCase.functionSet4~regout\,
	datad => \Selector121~5_combout\,
	combout => \functionSetCase.functionSet4~0_combout\);

-- Location: LCFF_X2_Y23_N29
\functionSetCase.functionSet2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector51~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \state.functionSet~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \functionSetCase.functionSet2~regout\);

-- Location: LCCOMB_X2_Y23_N10
\Selector52~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~1_combout\ = (\Selector52~0_combout\ & ((\functionSetCase.functionSet2~regout\))) # (!\Selector52~0_combout\ & (\functionSetCase.functionSet3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector52~0_combout\,
	datac => \functionSetCase.functionSet3~regout\,
	datad => \functionSetCase.functionSet2~regout\,
	combout => \Selector52~1_combout\);

-- Location: LCCOMB_X2_Y23_N28
\Selector51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\functionSetCase.00~regout\ & (((\functionSetCase.functionSet2~regout\ & !\Selector52~0_combout\)))) # (!\functionSetCase.00~regout\ & ((\state~14_combout\) # ((\functionSetCase.functionSet2~regout\ & !\Selector52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \functionSetCase.00~regout\,
	datab => \state~14_combout\,
	datac => \functionSetCase.functionSet2~regout\,
	datad => \Selector52~0_combout\,
	combout => \Selector51~0_combout\);

-- Location: LCCOMB_X1_Y23_N14
\Selector126~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector126~6_combout\ = (\subStates.subState3~regout\ & (\state.displaySet~regout\ & ((!\Equal3~0_combout\) # (!\Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.subState3~regout\,
	datab => \Equal2~2_combout\,
	datac => \state.displaySet~regout\,
	datad => \Equal3~0_combout\,
	combout => \Selector126~6_combout\);

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

-- Location: LCCOMB_X3_Y24_N14
\counter[1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1]~26_combout\ = (counter(1) & (!\counter[0]~25\)) # (!counter(1) & ((\counter[0]~25\) # (GND)))
-- \counter[1]~27\ = CARRY((!\counter[0]~25\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~25\,
	combout => \counter[1]~26_combout\,
	cout => \counter[1]~27\);

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

-- Location: LCCOMB_X3_Y23_N24
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (counter(16) & (counter(17) & (counter(14) & !counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datab => counter(17),
	datac => counter(14),
	datad => counter(3),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X3_Y24_N16
\counter[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[2]~28_combout\ = (counter(2) & (\counter[1]~27\ $ (GND))) # (!counter(2) & (!\counter[1]~27\ & VCC))
-- \counter[2]~29\ = CARRY((counter(2) & !\counter[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~27\,
	combout => \counter[2]~28_combout\,
	cout => \counter[2]~29\);

-- Location: LCCOMB_X3_Y23_N10
\counter[15]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~67_combout\ = (counter(15) & (!\counter[14]~53\)) # (!counter(15) & ((\counter[14]~53\) # (GND)))
-- \counter[15]~68\ = CARRY((!\counter[14]~53\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \counter[14]~53\,
	combout => \counter[15]~67_combout\,
	cout => \counter[15]~68\);

-- Location: LCFF_X3_Y23_N11
\counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[15]~67_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[0]~65_combout\,
	ena => \counter[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(15));

-- Location: LCCOMB_X2_Y24_N12
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (counter(19) & (counter(18) & (!counter(15) & !counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datab => counter(18),
	datac => counter(15),
	datad => counter(12),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X3_Y24_N20
\counter[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~32_combout\ = (counter(4) & (\counter[3]~31\ $ (GND))) # (!counter(4) & (!\counter[3]~31\ & VCC))
-- \counter[4]~33\ = CARRY((counter(4) & !\counter[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datad => VCC,
	cin => \counter[3]~31\,
	combout => \counter[4]~32_combout\,
	cout => \counter[4]~33\);

-- Location: LCFF_X3_Y24_N21
\counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[4]~32_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[0]~65_combout\,
	ena => \counter[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LCCOMB_X3_Y24_N6
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (counter(6) & (!counter(7) & (!counter(4) & counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(7),
	datac => counter(4),
	datad => counter(9),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X1_Y24_N28
\state.powerOn~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.powerOn~0_combout\ = (\state.powerOn~regout\) # ((\Equal0~3_combout\ & (\Equal0~0_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \state.powerOn~regout\,
	datad => \Equal0~4_combout\,
	combout => \state.powerOn~0_combout\);

-- Location: LCFF_X1_Y24_N29
\state.powerOn\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state.powerOn~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.powerOn~regout\);

-- Location: LCCOMB_X3_Y24_N24
\counter[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[6]~36_combout\ = (counter(6) & (\counter[5]~35\ $ (GND))) # (!counter(6) & (!\counter[5]~35\ & VCC))
-- \counter[6]~37\ = CARRY((counter(6) & !\counter[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \counter[5]~35\,
	combout => \counter[6]~36_combout\,
	cout => \counter[6]~37\);

-- Location: LCFF_X3_Y24_N25
\counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[6]~36_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[0]~65_combout\,
	ena => \counter[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LCCOMB_X3_Y24_N8
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!counter(4) & (!counter(1) & (counter(2) & counter(6))))

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
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X3_Y23_N26
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!counter(16) & (counter(11) & (!counter(17) & counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datab => counter(11),
	datac => counter(17),
	datad => counter(8),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X3_Y23_N6
\counter[13]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[13]~50_combout\ = (counter(13) & (!\counter[12]~49\)) # (!counter(13) & ((\counter[12]~49\) # (GND)))
-- \counter[13]~51\ = CARRY((!\counter[12]~49\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \counter[12]~49\,
	combout => \counter[13]~50_combout\,
	cout => \counter[13]~51\);

-- Location: LCFF_X3_Y23_N7
\counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[13]~50_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[0]~65_combout\,
	ena => \counter[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13));

-- Location: LCCOMB_X3_Y24_N0
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

-- Location: LCCOMB_X3_Y23_N28
\Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\Equal1~0_combout\ & (\Equal2~0_combout\ & (\Equal2~1_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal2~1_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X4_Y24_N2
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!counter(12) & (counter(7) & (!counter(10) & !counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => counter(7),
	datac => counter(10),
	datad => counter(3),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X1_Y23_N26
\Selector121~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector121~3_combout\ = (\subStates.subState3~regout\ & (\Equal2~2_combout\ & (\displayOnOff~regout\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.subState3~regout\,
	datab => \Equal2~2_combout\,
	datac => \displayOnOff~regout\,
	datad => \Equal3~0_combout\,
	combout => \Selector121~3_combout\);

-- Location: LCCOMB_X4_Y24_N16
\Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (counter(12) & (!counter(7) & (counter(10) & counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => counter(7),
	datac => counter(10),
	datad => counter(3),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X2_Y23_N14
\Selector52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\subStates.subState3~regout\ & (\Equal2~3_combout\ & \Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \subStates.subState3~regout\,
	datac => \Equal2~3_combout\,
	datad => \Equal2~2_combout\,
	combout => \Selector52~0_combout\);

-- Location: LCCOMB_X2_Y24_N2
\Selector120~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector120~0_combout\ = (\Equal0~0_combout\ & (!\state.powerOn~regout\ & (\Equal0~3_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \state.powerOn~regout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~4_combout\,
	combout => \Selector120~0_combout\);

-- Location: LCCOMB_X2_Y23_N30
\Selector120~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector120~1_combout\ = (\Selector120~0_combout\) # ((\state.functionSet~regout\ & ((!\Selector52~0_combout\) # (!\functionSetCase.functionSet4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \functionSetCase.functionSet4~regout\,
	datab => \Selector52~0_combout\,
	datac => \state.functionSet~regout\,
	datad => \Selector120~0_combout\,
	combout => \Selector120~1_combout\);

-- Location: LCFF_X2_Y23_N31
\state.functionSet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector120~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.functionSet~regout\);

-- Location: LCCOMB_X2_Y23_N0
\Selector124~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector124~0_combout\ = (\subStates.subState3~regout\ & \state.functionSet~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \subStates.subState3~regout\,
	datad => \state.functionSet~regout\,
	combout => \Selector124~0_combout\);

-- Location: LCCOMB_X2_Y23_N24
\Selector121~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector121~2_combout\ = (\functionSetCase.functionSet4~regout\ & (\Selector124~0_combout\ & (\Equal2~3_combout\ & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \functionSetCase.functionSet4~regout\,
	datab => \Selector124~0_combout\,
	datac => \Equal2~3_combout\,
	datad => \Equal2~2_combout\,
	combout => \Selector121~2_combout\);

-- Location: LCCOMB_X1_Y23_N0
\Selector121~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector121~4_combout\ = (\Selector124~4_combout\) # ((\Selector121~2_combout\) # ((!\Selector121~3_combout\ & \state.displaySet~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector124~4_combout\,
	datab => \Selector121~3_combout\,
	datac => \state.displaySet~regout\,
	datad => \Selector121~2_combout\,
	combout => \Selector121~4_combout\);

-- Location: LCFF_X1_Y23_N1
\state.displaySet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector121~4_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.displaySet~regout\);

-- Location: LCCOMB_X1_Y23_N28
\counter[0]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~78_combout\ = (\subStates.subState3~regout\ & (\Equal2~2_combout\ & (\state.displaySet~regout\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.subState3~regout\,
	datab => \Equal2~2_combout\,
	datac => \state.displaySet~regout\,
	datad => \Equal3~0_combout\,
	combout => \counter[0]~78_combout\);

-- Location: LCCOMB_X2_Y23_N2
\functionSetCase~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \functionSetCase~14_combout\ = (\functionSetCase.00~regout\) # ((\state~14_combout\ & \state.functionSet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state~14_combout\,
	datac => \functionSetCase.00~regout\,
	datad => \state.functionSet~regout\,
	combout => \functionSetCase~14_combout\);

-- Location: LCFF_X2_Y23_N3
\functionSetCase.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \functionSetCase~14_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \functionSetCase.00~regout\);

-- Location: LCCOMB_X2_Y23_N8
\Selector48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\functionSetCase.00~regout\ & (((\Equal2~3_combout\ & \Equal2~2_combout\)))) # (!\functionSetCase.00~regout\ & (\Equal4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~2_combout\,
	datab => \functionSetCase.00~regout\,
	datac => \Equal2~3_combout\,
	datad => \Equal2~2_combout\,
	combout => \Selector48~0_combout\);

-- Location: LCCOMB_X2_Y23_N16
\Selector124~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector124~3_combout\ = (!\Selector124~2_combout\ & (!\counter[0]~78_combout\ & ((!\Selector124~0_combout\) # (!\Selector48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector124~2_combout\,
	datab => \counter[0]~78_combout\,
	datac => \Selector48~0_combout\,
	datad => \Selector124~0_combout\,
	combout => \Selector124~3_combout\);

-- Location: LCFF_X2_Y23_N17
\subStates.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector124~3_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \subStates.00~regout\);

-- Location: LCCOMB_X1_Y24_N2
\counter[0]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~66_combout\ = (\subStates.00~regout\) # (!\state.powerOn~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.powerOn~regout\,
	datac => \subStates.00~regout\,
	combout => \counter[0]~66_combout\);

-- Location: LCFF_X3_Y24_N17
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[2]~28_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[0]~65_combout\,
	ena => \counter[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LCCOMB_X3_Y24_N2
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!counter(10) & (!counter(11) & (!counter(2) & !counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datab => counter(11),
	datac => counter(2),
	datad => counter(8),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X2_Y24_N24
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X3_Y24_N10
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!counter(6) & (counter(12) & (counter(4) & counter(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(12),
	datac => counter(4),
	datad => counter(15),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X2_Y24_N4
\Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (\Equal4~1_combout\ & (\Equal0~3_combout\ & \Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal4~0_combout\,
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X3_Y23_N16
\counter[18]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[18]~73_combout\ = (counter(18) & (\counter[17]~72\ $ (GND))) # (!counter(18) & (!\counter[17]~72\ & VCC))
-- \counter[18]~74\ = CARRY((counter(18) & !\counter[17]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \counter[17]~72\,
	combout => \counter[18]~73_combout\,
	cout => \counter[18]~74\);

-- Location: LCCOMB_X3_Y23_N18
\counter[19]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[19]~75_combout\ = \counter[18]~74\ $ (counter(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(19),
	cin => \counter[18]~74\,
	combout => \counter[19]~75_combout\);

-- Location: LCFF_X3_Y23_N19
\counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[19]~75_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[0]~65_combout\,
	ena => \counter[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(19));

-- Location: LCCOMB_X3_Y23_N20
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

-- Location: LCCOMB_X3_Y23_N30
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!counter(16) & (!counter(17) & (\Equal1~0_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datab => counter(17),
	datac => \Equal1~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X2_Y24_N16
\Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (counter(1) & !counter(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(1),
	datad => counter(12),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X2_Y24_N18
\Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (\Equal1~4_combout\ & (\Equal1~2_combout\ & (\Equal1~5_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal1~2_combout\,
	datac => \Equal1~5_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X1_Y24_N12
\Selector126~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector126~3_combout\ = (\Selector126~2_combout\ & ((\Equal1~6_combout\) # ((!\state.powerOn~regout\ & \subStates.subState3~regout\)))) # (!\Selector126~2_combout\ & (!\state.powerOn~regout\ & (\subStates.subState3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector126~2_combout\,
	datab => \state.powerOn~regout\,
	datac => \subStates.subState3~regout\,
	datad => \Equal1~6_combout\,
	combout => \Selector126~3_combout\);

-- Location: LCCOMB_X2_Y23_N26
\Selector126~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector126~4_combout\ = (\Selector126~3_combout\) # ((!\Selector124~1_combout\ & (\subStates.subState3~regout\ & !\Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector124~1_combout\,
	datab => \subStates.subState3~regout\,
	datac => \Equal4~2_combout\,
	datad => \Selector126~3_combout\,
	combout => \Selector126~4_combout\);

-- Location: LCCOMB_X2_Y23_N4
\Selector126~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector126~5_combout\ = (\Selector126~6_combout\) # ((\Selector126~4_combout\) # ((!\Selector48~0_combout\ & \Selector124~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector126~6_combout\,
	datab => \Selector126~4_combout\,
	datac => \Selector48~0_combout\,
	datad => \Selector124~0_combout\,
	combout => \Selector126~5_combout\);

-- Location: LCFF_X2_Y23_N5
\subStates.subState3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector126~5_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \subStates.subState3~regout\);

-- Location: LCCOMB_X2_Y23_N22
\Selector121~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector121~5_combout\ = (\state.functionSet~regout\ & (\subStates.subState3~regout\ & (\Equal2~3_combout\ & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.functionSet~regout\,
	datab => \subStates.subState3~regout\,
	datac => \Equal2~3_combout\,
	datad => \Equal2~2_combout\,
	combout => \Selector121~5_combout\);

-- Location: LCCOMB_X2_Y23_N18
\counter[0]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~54_combout\ = (\Selector120~0_combout\) # ((\functionSetCase.00~regout\ & (\Selector121~5_combout\ & \state.powerOn~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \functionSetCase.00~regout\,
	datab => \Selector121~5_combout\,
	datac => \state.powerOn~regout\,
	datad => \Selector120~0_combout\,
	combout => \counter[0]~54_combout\);

-- Location: LCCOMB_X2_Y24_N0
\counter[0]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~59_combout\ = (\Equal4~1_combout\ & (\subStates.subState3~regout\ & \Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~1_combout\,
	datac => \subStates.subState3~regout\,
	datad => \Equal4~0_combout\,
	combout => \counter[0]~59_combout\);

-- Location: LCCOMB_X1_Y23_N2
\Selector124~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector124~1_combout\ = (!\state.displayClear~regout\ & !\state.entryModeSet~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.displayClear~regout\,
	datac => \state.entryModeSet~regout\,
	combout => \Selector124~1_combout\);

-- Location: LCCOMB_X2_Y24_N26
\counter[0]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~60_combout\ = (!\counter[0]~55_combout\ & (\counter[0]~59_combout\ & (\Equal0~3_combout\ & !\Selector124~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0]~55_combout\,
	datab => \counter[0]~59_combout\,
	datac => \Equal0~3_combout\,
	datad => \Selector124~1_combout\,
	combout => \counter[0]~60_combout\);

-- Location: LCCOMB_X1_Y25_N16
\counter[0]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~55_combout\ = (\state.displaySet~regout\ & \subStates.subState3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.displaySet~regout\,
	datad => \subStates.subState3~regout\,
	combout => \counter[0]~55_combout\);

-- Location: LCCOMB_X2_Y24_N14
\counter[0]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~62_combout\ = (\counter[0]~61_combout\ & (\Selector124~0_combout\ & (\Equal0~3_combout\ & !\counter[0]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0]~61_combout\,
	datab => \Selector124~0_combout\,
	datac => \Equal0~3_combout\,
	datad => \counter[0]~55_combout\,
	combout => \counter[0]~62_combout\);

-- Location: LCCOMB_X1_Y23_N30
\counter[0]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~56_combout\ = (\state.functionSet~regout\) # ((!\subStates.subState3~regout\ & ((\state.displayClear~regout\) # (\state.entryModeSet~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.subState3~regout\,
	datab => \state.displayClear~regout\,
	datac => \state.entryModeSet~regout\,
	datad => \state.functionSet~regout\,
	combout => \counter[0]~56_combout\);

-- Location: LCCOMB_X1_Y23_N24
\counter[0]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~57_combout\ = (\state.displaySet~regout\) # ((\counter[0]~56_combout\ & ((\functionSetCase.00~regout\) # (!\subStates.subState3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.subState3~regout\,
	datab => \counter[0]~56_combout\,
	datac => \state.displaySet~regout\,
	datad => \functionSetCase.00~regout\,
	combout => \counter[0]~57_combout\);

-- Location: LCCOMB_X2_Y24_N30
\counter[0]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~77_combout\ = (\Equal1~4_combout\ & (!counter(12) & (counter(1) & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => counter(12),
	datac => counter(1),
	datad => \Equal1~3_combout\,
	combout => \counter[0]~77_combout\);

-- Location: LCCOMB_X2_Y24_N28
\counter[0]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~58_combout\ = (!\counter[0]~55_combout\ & (\counter[0]~57_combout\ & (\Equal1~2_combout\ & \counter[0]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0]~55_combout\,
	datab => \counter[0]~57_combout\,
	datac => \Equal1~2_combout\,
	datad => \counter[0]~77_combout\,
	combout => \counter[0]~58_combout\);

-- Location: LCCOMB_X2_Y24_N8
\counter[0]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~63_combout\ = (\counter[0]~78_combout\) # ((\counter[0]~60_combout\) # ((\counter[0]~62_combout\) # (\counter[0]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0]~78_combout\,
	datab => \counter[0]~60_combout\,
	datac => \counter[0]~62_combout\,
	datad => \counter[0]~58_combout\,
	combout => \counter[0]~63_combout\);

-- Location: LCCOMB_X3_Y23_N22
\counter[0]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~65_combout\ = (\counter[0]~54_combout\) # ((\counter[0]~64_combout\ & \counter[0]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0]~64_combout\,
	datab => \counter[0]~54_combout\,
	datad => \counter[0]~63_combout\,
	combout => \counter[0]~65_combout\);

-- Location: LCFF_X3_Y24_N15
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[1]~26_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[0]~65_combout\,
	ena => \counter[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCCOMB_X3_Y24_N18
\counter[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[3]~30_combout\ = (counter(3) & (!\counter[2]~29\)) # (!counter(3) & ((\counter[2]~29\) # (GND)))
-- \counter[3]~31\ = CARRY((!\counter[2]~29\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \counter[2]~29\,
	combout => \counter[3]~30_combout\,
	cout => \counter[3]~31\);

-- Location: LCFF_X3_Y24_N19
\counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[3]~30_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[0]~65_combout\,
	ena => \counter[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LCCOMB_X3_Y24_N22
\counter[5]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[5]~34_combout\ = (counter(5) & (!\counter[4]~33\)) # (!counter(5) & ((\counter[4]~33\) # (GND)))
-- \counter[5]~35\ = CARRY((!\counter[4]~33\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~33\,
	combout => \counter[5]~34_combout\,
	cout => \counter[5]~35\);

-- Location: LCFF_X3_Y24_N23
\counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[5]~34_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[0]~65_combout\,
	ena => \counter[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LCCOMB_X3_Y24_N26
\counter[7]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[7]~38_combout\ = (counter(7) & (!\counter[6]~37\)) # (!counter(7) & ((\counter[6]~37\) # (GND)))
-- \counter[7]~39\ = CARRY((!\counter[6]~37\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~37\,
	combout => \counter[7]~38_combout\,
	cout => \counter[7]~39\);

-- Location: LCFF_X3_Y24_N27
\counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[7]~38_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[0]~65_combout\,
	ena => \counter[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LCCOMB_X3_Y24_N28
\counter[8]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[8]~40_combout\ = (counter(8) & (\counter[7]~39\ $ (GND))) # (!counter(8) & (!\counter[7]~39\ & VCC))
-- \counter[8]~41\ = CARRY((counter(8) & !\counter[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~39\,
	combout => \counter[8]~40_combout\,
	cout => \counter[8]~41\);

-- Location: LCFF_X3_Y24_N29
\counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[8]~40_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[0]~65_combout\,
	ena => \counter[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(8));

-- Location: LCCOMB_X3_Y24_N30
\counter[9]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[9]~42_combout\ = (counter(9) & (!\counter[8]~41\)) # (!counter(9) & ((\counter[8]~41\) # (GND)))
-- \counter[9]~43\ = CARRY((!\counter[8]~41\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~41\,
	combout => \counter[9]~42_combout\,
	cout => \counter[9]~43\);

-- Location: LCFF_X3_Y24_N31
\counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[9]~42_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[0]~65_combout\,
	ena => \counter[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(9));

-- Location: LCCOMB_X3_Y23_N0
\counter[10]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[10]~44_combout\ = (counter(10) & (\counter[9]~43\ $ (GND))) # (!counter(10) & (!\counter[9]~43\ & VCC))
-- \counter[10]~45\ = CARRY((counter(10) & !\counter[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~43\,
	combout => \counter[10]~44_combout\,
	cout => \counter[10]~45\);

-- Location: LCFF_X3_Y23_N1
\counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[10]~44_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[0]~65_combout\,
	ena => \counter[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10));

-- Location: LCCOMB_X3_Y23_N2
\counter[11]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[11]~46_combout\ = (counter(11) & (!\counter[10]~45\)) # (!counter(11) & ((\counter[10]~45\) # (GND)))
-- \counter[11]~47\ = CARRY((!\counter[10]~45\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \counter[10]~45\,
	combout => \counter[11]~46_combout\,
	cout => \counter[11]~47\);

-- Location: LCFF_X3_Y23_N3
\counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[11]~46_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[0]~65_combout\,
	ena => \counter[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11));

-- Location: LCCOMB_X3_Y23_N4
\counter[12]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[12]~48_combout\ = (counter(12) & (\counter[11]~47\ $ (GND))) # (!counter(12) & (!\counter[11]~47\ & VCC))
-- \counter[12]~49\ = CARRY((counter(12) & !\counter[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~47\,
	combout => \counter[12]~48_combout\,
	cout => \counter[12]~49\);

-- Location: LCFF_X3_Y23_N5
\counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[12]~48_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[0]~65_combout\,
	ena => \counter[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(12));

-- Location: LCCOMB_X3_Y23_N8
\counter[14]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[14]~52_combout\ = (counter(14) & (\counter[13]~51\ $ (GND))) # (!counter(14) & (!\counter[13]~51\ & VCC))
-- \counter[14]~53\ = CARRY((counter(14) & !\counter[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~51\,
	combout => \counter[14]~52_combout\,
	cout => \counter[14]~53\);

-- Location: LCFF_X3_Y23_N9
\counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[14]~52_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[0]~65_combout\,
	ena => \counter[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14));

-- Location: LCCOMB_X3_Y23_N14
\counter[17]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[17]~71_combout\ = (counter(17) & (!\counter[16]~70\)) # (!counter(17) & ((\counter[16]~70\) # (GND)))
-- \counter[17]~72\ = CARRY((!\counter[16]~70\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \counter[16]~70\,
	combout => \counter[17]~71_combout\,
	cout => \counter[17]~72\);

-- Location: LCFF_X3_Y23_N15
\counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[17]~71_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[0]~65_combout\,
	ena => \counter[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(17));

-- Location: LCFF_X3_Y23_N17
\counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[18]~73_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[0]~65_combout\,
	ena => \counter[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(18));

-- Location: LCCOMB_X2_Y24_N22
\Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!counter(19) & (!counter(18) & (counter(7) & !counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datab => counter(18),
	datac => counter(7),
	datad => counter(9),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X2_Y24_N10
\state~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~14_combout\ = (\Equal0~3_combout\ & (\Equal4~1_combout\ & (\subStates.subState3~regout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal4~1_combout\,
	datac => \subStates.subState3~regout\,
	datad => \Equal4~0_combout\,
	combout => \state~14_combout\);

-- Location: LCCOMB_X1_Y23_N20
\Selector123~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector123~0_combout\ = (\state~14_combout\ & (\state.displayClear~regout\)) # (!\state~14_combout\ & ((\state.entryModeSet~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.displayClear~regout\,
	datac => \state.entryModeSet~regout\,
	datad => \state~14_combout\,
	combout => \Selector123~0_combout\);

-- Location: LCFF_X1_Y23_N21
\state.entryModeSet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector123~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.entryModeSet~regout\);

-- Location: LCCOMB_X1_Y23_N12
\displayOnOff~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayOnOff~0_combout\ = (\displayOnOff~regout\) # ((\subStates.subState2~regout\ & \state.entryModeSet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.subState2~regout\,
	datac => \displayOnOff~regout\,
	datad => \state.entryModeSet~regout\,
	combout => \displayOnOff~0_combout\);

-- Location: LCFF_X1_Y23_N13
displayOnOff : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \displayOnOff~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \displayOnOff~regout\);

-- Location: LCCOMB_X1_Y23_N18
\Selector122~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector122~0_combout\ = (\counter[0]~78_combout\ & ((\displayOnOff~regout\) # ((\state.displayClear~regout\ & !\state~14_combout\)))) # (!\counter[0]~78_combout\ & (((\state.displayClear~regout\ & !\state~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0]~78_combout\,
	datab => \displayOnOff~regout\,
	datac => \state.displayClear~regout\,
	datad => \state~14_combout\,
	combout => \Selector122~0_combout\);

-- Location: LCFF_X1_Y23_N19
\state.displayClear\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector122~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.displayClear~regout\);

-- Location: LCCOMB_X1_Y23_N8
\lcdBus[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcdBus[0]~reg0feeder_combout\ = \state.displayClear~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.displayClear~regout\,
	combout => \lcdBus[0]~reg0feeder_combout\);

-- Location: LCFF_X1_Y23_N9
\lcdBus[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcdBus[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[0]~reg0_regout\);

-- Location: LCCOMB_X1_Y24_N26
\subStates.subState2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \subStates.subState2~0_combout\ = (\state.powerOn~regout\ & (((\subStates.subState2~regout\ & !\Equal1~6_combout\)) # (!\subStates.00~regout\))) # (!\state.powerOn~regout\ & (((\subStates.subState2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.00~regout\,
	datab => \state.powerOn~regout\,
	datac => \subStates.subState2~regout\,
	datad => \Equal1~6_combout\,
	combout => \subStates.subState2~0_combout\);

-- Location: LCFF_X1_Y24_N27
\subStates.subState2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \subStates.subState2~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \subStates.subState2~regout\);

-- Location: LCCOMB_X1_Y24_N22
\Selector98~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector98~0_combout\ = (\state.powerOn~regout\ & \subStates.subState2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.powerOn~regout\,
	datad => \subStates.subState2~regout\,
	combout => \Selector98~0_combout\);

-- Location: LCCOMB_X1_Y24_N8
\lcdBus[0]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcdBus[0]~enfeeder_combout\ = \Selector98~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector98~0_combout\,
	combout => \lcdBus[0]~enfeeder_combout\);

-- Location: LCFF_X1_Y24_N9
\lcdBus[0]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcdBus[0]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[0]~en_regout\);

-- Location: LCFF_X1_Y23_N11
\lcdBus[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \state.entryModeSet~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[1]~reg0_regout\);

-- Location: LCCOMB_X1_Y24_N18
\lcdBus[1]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcdBus[1]~enfeeder_combout\ = \Selector98~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector98~0_combout\,
	combout => \lcdBus[1]~enfeeder_combout\);

-- Location: LCFF_X1_Y24_N19
\lcdBus[1]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcdBus[1]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[1]~en_regout\);

-- Location: LCCOMB_X1_Y23_N4
\Selector54~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\state.entryModeSet~regout\) # ((\displayOnOff~regout\ & \state.displaySet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.entryModeSet~regout\,
	datac => \displayOnOff~regout\,
	datad => \state.displaySet~regout\,
	combout => \Selector54~0_combout\);

-- Location: LCFF_X1_Y23_N5
\lcdBus[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector54~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[2]~reg0_regout\);

-- Location: LCCOMB_X1_Y24_N20
\lcdBus[2]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcdBus[2]~enfeeder_combout\ = \Selector98~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector98~0_combout\,
	combout => \lcdBus[2]~enfeeder_combout\);

-- Location: LCFF_X1_Y24_N21
\lcdBus[2]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcdBus[2]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[2]~en_regout\);

-- Location: LCCOMB_X1_Y23_N22
\Selector47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\state.displaySet~regout\) # (\state.functionSet~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.displaySet~regout\,
	datad => \state.functionSet~regout\,
	combout => \Selector47~0_combout\);

-- Location: LCFF_X1_Y23_N23
\lcdBus[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[3]~reg0_regout\);

-- Location: LCFF_X1_Y24_N23
\lcdBus[3]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector98~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[3]~en_regout\);

-- Location: LCFF_X1_Y24_N31
\lcdBus[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \state.functionSet~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[4]~reg0_regout\);

-- Location: LCCOMB_X1_Y24_N16
\lcdBus[4]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcdBus[4]~enfeeder_combout\ = \Selector98~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector98~0_combout\,
	combout => \lcdBus[4]~enfeeder_combout\);

-- Location: LCFF_X1_Y24_N17
\lcdBus[4]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcdBus[4]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[4]~en_regout\);

-- Location: LCFF_X1_Y24_N11
\lcdBus[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \state.functionSet~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[5]~reg0_regout\);

-- Location: LCCOMB_X1_Y24_N4
\lcdBus[5]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcdBus[5]~enfeeder_combout\ = \Selector98~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector98~0_combout\,
	combout => \lcdBus[5]~enfeeder_combout\);

-- Location: LCFF_X1_Y24_N5
\lcdBus[5]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcdBus[5]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[5]~en_regout\);

-- Location: LCCOMB_X1_Y24_N14
\lcdBus[6]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcdBus[6]~enfeeder_combout\ = \Selector98~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector98~0_combout\,
	combout => \lcdBus[6]~enfeeder_combout\);

-- Location: LCFF_X1_Y24_N15
\lcdBus[6]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcdBus[6]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[6]~en_regout\);

-- Location: LCCOMB_X1_Y24_N24
\lcdBus[7]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcdBus[7]~enfeeder_combout\ = \Selector98~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector98~0_combout\,
	combout => \lcdBus[7]~enfeeder_combout\);

-- Location: LCFF_X1_Y24_N25
\lcdBus[7]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcdBus[7]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[7]~en_regout\);

-- Location: LCCOMB_X1_Y24_N0
\lcdEnableOut~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcdEnableOut~reg0feeder_combout\ = \Selector98~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector98~0_combout\,
	combout => \lcdEnableOut~reg0feeder_combout\);

-- Location: LCFF_X1_Y24_N1
\lcdEnableOut~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcdEnableOut~reg0feeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdEnableOut~reg0_regout\);

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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_lcdBus[7]~en_regout\,
	oe => VCC,
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
	datain => GND,
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_errorLed);
END structure;


