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

-- DATE "06/28/2018 19:51:47"

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
SIGNAL \counter[11]~67_combout\ : std_logic;
SIGNAL \counter[13]~71_combout\ : std_logic;
SIGNAL \counter[27]~99_combout\ : std_logic;
SIGNAL \counter[28]~102\ : std_logic;
SIGNAL \counter[29]~103_combout\ : std_logic;
SIGNAL \counter[29]~104\ : std_logic;
SIGNAL \counter[30]~105_combout\ : std_logic;
SIGNAL \counter[30]~106\ : std_logic;
SIGNAL \counter[31]~107_combout\ : std_logic;
SIGNAL \counter[31]~108\ : std_logic;
SIGNAL \counter[32]~109_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \WideOr10~combout\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \displayOnOff~regout\ : std_logic;
SIGNAL \Selector150~1_combout\ : std_logic;
SIGNAL \Selector230~5_combout\ : std_logic;
SIGNAL \counter[4]~38_combout\ : std_logic;
SIGNAL \counter[4]~39_combout\ : std_logic;
SIGNAL \counter[4]~40_combout\ : std_logic;
SIGNAL \Selector228~4_combout\ : std_logic;
SIGNAL \functionSetCase.functionSet3~regout\ : std_logic;
SIGNAL \displayOnOff~0_combout\ : std_logic;
SIGNAL \Selector114~0_combout\ : std_logic;
SIGNAL \functionSetCase.functionSet2~regout\ : std_logic;
SIGNAL \Selector79~1_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \lcdOnIn~combout\ : std_logic;
SIGNAL \counter[0]~37\ : std_logic;
SIGNAL \counter[1]~47_combout\ : std_logic;
SIGNAL \counter[4]~54\ : std_logic;
SIGNAL \counter[5]~55_combout\ : std_logic;
SIGNAL \counter[8]~62\ : std_logic;
SIGNAL \counter[9]~63_combout\ : std_logic;
SIGNAL \counter[9]~64\ : std_logic;
SIGNAL \counter[10]~65_combout\ : std_logic;
SIGNAL \counter[10]~66\ : std_logic;
SIGNAL \counter[11]~68\ : std_logic;
SIGNAL \counter[12]~69_combout\ : std_logic;
SIGNAL \counter[12]~70\ : std_logic;
SIGNAL \counter[13]~72\ : std_logic;
SIGNAL \counter[14]~74\ : std_logic;
SIGNAL \counter[15]~75_combout\ : std_logic;
SIGNAL \counter[15]~76\ : std_logic;
SIGNAL \counter[16]~78\ : std_logic;
SIGNAL \counter[17]~79_combout\ : std_logic;
SIGNAL \counter[17]~80\ : std_logic;
SIGNAL \counter[18]~82\ : std_logic;
SIGNAL \counter[19]~83_combout\ : std_logic;
SIGNAL \counter[18]~81_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \counter[16]~77_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \Selector223~0_combout\ : std_logic;
SIGNAL \state.displayClear~regout\ : std_logic;
SIGNAL \Selector224~0_combout\ : std_logic;
SIGNAL \state.entryModeSet~regout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \state.powerOn~0_combout\ : std_logic;
SIGNAL \state.powerOn~regout\ : std_logic;
SIGNAL \Selector221~0_combout\ : std_logic;
SIGNAL \Selector221~1_combout\ : std_logic;
SIGNAL \state.functionSet~regout\ : std_logic;
SIGNAL \Selector185~2_combout\ : std_logic;
SIGNAL \counter[4]~46_combout\ : std_logic;
SIGNAL \counter[5]~56\ : std_logic;
SIGNAL \counter[6]~57_combout\ : std_logic;
SIGNAL \counter[6]~58\ : std_logic;
SIGNAL \counter[7]~59_combout\ : std_logic;
SIGNAL \counter[7]~60\ : std_logic;
SIGNAL \counter[8]~61_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \counter[19]~84\ : std_logic;
SIGNAL \counter[20]~86\ : std_logic;
SIGNAL \counter[21]~87_combout\ : std_logic;
SIGNAL \counter[21]~88\ : std_logic;
SIGNAL \counter[22]~89_combout\ : std_logic;
SIGNAL \counter[22]~90\ : std_logic;
SIGNAL \counter[23]~91_combout\ : std_logic;
SIGNAL \counter[23]~92\ : std_logic;
SIGNAL \counter[24]~93_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \counter[24]~94\ : std_logic;
SIGNAL \counter[25]~95_combout\ : std_logic;
SIGNAL \counter[25]~96\ : std_logic;
SIGNAL \counter[26]~97_combout\ : std_logic;
SIGNAL \counter[26]~98\ : std_logic;
SIGNAL \counter[27]~100\ : std_logic;
SIGNAL \counter[28]~101_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \counter[20]~85_combout\ : std_logic;
SIGNAL \counter[0]~36_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Selector228~0_combout\ : std_logic;
SIGNAL \functionSetCase.functionSet4~0_combout\ : std_logic;
SIGNAL \functionSetCase.functionSet4~regout\ : std_logic;
SIGNAL \Selector222~4_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \counter[14]~73_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Selector222~2_combout\ : std_logic;
SIGNAL \Selector222~3_combout\ : std_logic;
SIGNAL \state.displaySet~regout\ : std_logic;
SIGNAL \counter[4]~111_combout\ : std_logic;
SIGNAL \Selector225~0_combout\ : std_logic;
SIGNAL \Selector225~1_combout\ : std_logic;
SIGNAL \state.writeAddr~regout\ : std_logic;
SIGNAL \Selector73~2_combout\ : std_logic;
SIGNAL \functionSetCase~14_combout\ : std_logic;
SIGNAL \functionSetCase.00~regout\ : std_logic;
SIGNAL \counter[4]~41_combout\ : std_logic;
SIGNAL \Selector150~0_combout\ : std_logic;
SIGNAL \counter[4]~42_combout\ : std_logic;
SIGNAL \counter[4]~35_combout\ : std_logic;
SIGNAL \counter[4]~43_combout\ : std_logic;
SIGNAL \counter[4]~44_combout\ : std_logic;
SIGNAL \counter[4]~45_combout\ : std_logic;
SIGNAL \counter[1]~48\ : std_logic;
SIGNAL \counter[2]~50\ : std_logic;
SIGNAL \counter[3]~51_combout\ : std_logic;
SIGNAL \counter[3]~52\ : std_logic;
SIGNAL \counter[4]~53_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Selector230~2_combout\ : std_logic;
SIGNAL \Selector230~7_combout\ : std_logic;
SIGNAL \Selector230~3_combout\ : std_logic;
SIGNAL \Selector185~0_combout\ : std_logic;
SIGNAL \Selector230~4_combout\ : std_logic;
SIGNAL \Selector230~6_combout\ : std_logic;
SIGNAL \subStates.subState3~regout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \counter[2]~49_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Selector227~0_combout\ : std_logic;
SIGNAL \Selector226~0_combout\ : std_logic;
SIGNAL \state.writeData~regout\ : std_logic;
SIGNAL \Selector227~1_combout\ : std_logic;
SIGNAL \state.cursorLogicState~regout\ : std_logic;
SIGNAL \Selector150~2_combout\ : std_logic;
SIGNAL \lcdBus[0]~reg0_regout\ : std_logic;
SIGNAL \Selector228~3_combout\ : std_logic;
SIGNAL \Selector228~2_combout\ : std_logic;
SIGNAL \Selector228~1_combout\ : std_logic;
SIGNAL \Selector228~5_combout\ : std_logic;
SIGNAL \subStates.00~regout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \subStates.subState2~0_combout\ : std_logic;
SIGNAL \subStates.subState2~regout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \lcdBus[0]~enfeeder_combout\ : std_logic;
SIGNAL \lcdBus[0]~en_regout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Selector149~0_combout\ : std_logic;
SIGNAL \lcdBus[1]~reg0_regout\ : std_logic;
SIGNAL \lcdBus[1]~enfeeder_combout\ : std_logic;
SIGNAL \lcdBus[1]~en_regout\ : std_logic;
SIGNAL \Selector114~1_combout\ : std_logic;
SIGNAL \lcdBus[2]~reg0_regout\ : std_logic;
SIGNAL \lcdBus[2]~enfeeder_combout\ : std_logic;
SIGNAL \lcdBus[2]~en_regout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Selector74~2_combout\ : std_logic;
SIGNAL \lcdBus[3]~reg0_regout\ : std_logic;
SIGNAL \lcdBus[3]~enfeeder_combout\ : std_logic;
SIGNAL \lcdBus[3]~en_regout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \addrCounter~0_combout\ : std_logic;
SIGNAL \Selector73~3_combout\ : std_logic;
SIGNAL \Selector73~4_combout\ : std_logic;
SIGNAL \lcdBus[4]~reg0_regout\ : std_logic;
SIGNAL \lcdBus[4]~en_regout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \lcdBus[5]~reg0_regout\ : std_logic;
SIGNAL \lcdBus[5]~enfeeder_combout\ : std_logic;
SIGNAL \lcdBus[5]~en_regout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \addrCounter~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \lcdBus[6]~reg0_regout\ : std_logic;
SIGNAL \lcdBus[6]~en_regout\ : std_logic;
SIGNAL \lcdBus[7]~reg0_regout\ : std_logic;
SIGNAL \lcdBus[7]~enfeeder_combout\ : std_logic;
SIGNAL \lcdBus[7]~en_regout\ : std_logic;
SIGNAL \Selector186~0_combout\ : std_logic;
SIGNAL \lcdRsSelect~reg0_regout\ : std_logic;
SIGNAL \Selector185~1_combout\ : std_logic;
SIGNAL \lcdEnableOut~reg0_regout\ : std_logic;
SIGNAL counter : std_logic_vector(32 DOWNTO 0);
SIGNAL addrCounter : std_logic_vector(6 DOWNTO 0);
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
\ALT_INV_lcdOnIn~combout\ <= NOT \lcdOnIn~combout\;

-- Location: LCFF_X7_Y17_N11
\counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[13]~71_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13));

-- Location: LCFF_X7_Y16_N7
\counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[27]~99_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(27));

-- Location: LCFF_X7_Y16_N11
\counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[29]~103_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(29));

-- Location: LCFF_X7_Y16_N13
\counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[30]~105_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(30));

-- Location: LCFF_X7_Y16_N15
\counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[31]~107_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(31));

-- Location: LCFF_X7_Y16_N17
\counter[32]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[32]~109_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(32));

-- Location: LCFF_X7_Y17_N7
\counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[11]~67_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11));

-- Location: LCCOMB_X7_Y17_N6
\counter[11]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[11]~67_combout\ = (counter(11) & (!\counter[10]~66\)) # (!counter(11) & ((\counter[10]~66\) # (GND)))
-- \counter[11]~68\ = CARRY((!\counter[10]~66\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \counter[10]~66\,
	combout => \counter[11]~67_combout\,
	cout => \counter[11]~68\);

-- Location: LCCOMB_X7_Y17_N10
\counter[13]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[13]~71_combout\ = (counter(13) & (!\counter[12]~70\)) # (!counter(13) & ((\counter[12]~70\) # (GND)))
-- \counter[13]~72\ = CARRY((!\counter[12]~70\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \counter[12]~70\,
	combout => \counter[13]~71_combout\,
	cout => \counter[13]~72\);

-- Location: LCCOMB_X7_Y16_N6
\counter[27]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[27]~99_combout\ = (counter(27) & (!\counter[26]~98\)) # (!counter(27) & ((\counter[26]~98\) # (GND)))
-- \counter[27]~100\ = CARRY((!\counter[26]~98\) # (!counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	datad => VCC,
	cin => \counter[26]~98\,
	combout => \counter[27]~99_combout\,
	cout => \counter[27]~100\);

-- Location: LCCOMB_X7_Y16_N8
\counter[28]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[28]~101_combout\ = (counter(28) & (\counter[27]~100\ $ (GND))) # (!counter(28) & (!\counter[27]~100\ & VCC))
-- \counter[28]~102\ = CARRY((counter(28) & !\counter[27]~100\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(28),
	datad => VCC,
	cin => \counter[27]~100\,
	combout => \counter[28]~101_combout\,
	cout => \counter[28]~102\);

-- Location: LCCOMB_X7_Y16_N10
\counter[29]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[29]~103_combout\ = (counter(29) & (!\counter[28]~102\)) # (!counter(29) & ((\counter[28]~102\) # (GND)))
-- \counter[29]~104\ = CARRY((!\counter[28]~102\) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datad => VCC,
	cin => \counter[28]~102\,
	combout => \counter[29]~103_combout\,
	cout => \counter[29]~104\);

-- Location: LCCOMB_X7_Y16_N12
\counter[30]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[30]~105_combout\ = (counter(30) & (\counter[29]~104\ $ (GND))) # (!counter(30) & (!\counter[29]~104\ & VCC))
-- \counter[30]~106\ = CARRY((counter(30) & !\counter[29]~104\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(30),
	datad => VCC,
	cin => \counter[29]~104\,
	combout => \counter[30]~105_combout\,
	cout => \counter[30]~106\);

-- Location: LCCOMB_X7_Y16_N14
\counter[31]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[31]~107_combout\ = (counter(31) & (!\counter[30]~106\)) # (!counter(31) & ((\counter[30]~106\) # (GND)))
-- \counter[31]~108\ = CARRY((!\counter[30]~106\) # (!counter(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(31),
	datad => VCC,
	cin => \counter[30]~106\,
	combout => \counter[31]~107_combout\,
	cout => \counter[31]~108\);

-- Location: LCCOMB_X7_Y16_N16
\counter[32]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[32]~109_combout\ = counter(32) $ (!\counter[31]~108\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(32),
	cin => \counter[31]~108\,
	combout => \counter[32]~109_combout\);

-- Location: LCCOMB_X7_Y16_N30
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!counter(30) & (!counter(31) & (!counter(32) & !counter(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(30),
	datab => counter(31),
	datac => counter(32),
	datad => counter(29),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X2_Y18_N12
WideOr10 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr10~combout\ = (\state.cursorLogicState~regout\) # (!\state.powerOn~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.cursorLogicState~regout\,
	datad => \state.powerOn~regout\,
	combout => \WideOr10~combout\);

-- Location: LCCOMB_X6_Y18_N16
\Selector79~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (\subStates.subState3~regout\ & \Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.subState3~regout\,
	datac => \Equal1~5_combout\,
	combout => \Selector79~0_combout\);

-- Location: LCFF_X4_Y18_N7
displayOnOff : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \displayOnOff~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \displayOnOff~regout\);

-- Location: LCCOMB_X2_Y18_N28
\Selector150~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector150~1_combout\ = (!\state.writeData~regout\ & !\state.writeAddr~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.writeData~regout\,
	datac => \state.writeAddr~regout\,
	combout => \Selector150~1_combout\);

-- Location: LCCOMB_X5_Y18_N12
\Selector230~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector230~5_combout\ = (\subStates.subState3~regout\ & ((\WideOr10~combout\) # ((!\Equal4~3_combout\ & !\Selector150~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~3_combout\,
	datab => \Selector150~1_combout\,
	datac => \WideOr10~combout\,
	datad => \subStates.subState3~regout\,
	combout => \Selector230~5_combout\);

-- Location: LCCOMB_X6_Y18_N26
\counter[4]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~38_combout\ = (\functionSetCase.00~regout\ & (\Selector228~0_combout\ & (\Equal1~5_combout\ & \state.powerOn~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \functionSetCase.00~regout\,
	datab => \Selector228~0_combout\,
	datac => \Equal1~5_combout\,
	datad => \state.powerOn~regout\,
	combout => \counter[4]~38_combout\);

-- Location: LCCOMB_X5_Y18_N6
\counter[4]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~39_combout\ = (\counter[4]~35_combout\) # ((!\functionSetCase.00~regout\ & (\Equal3~5_combout\ & \Selector228~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \functionSetCase.00~regout\,
	datab => \counter[4]~35_combout\,
	datac => \Equal3~5_combout\,
	datad => \Selector228~0_combout\,
	combout => \counter[4]~39_combout\);

-- Location: LCCOMB_X6_Y18_N12
\counter[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~40_combout\ = (\state.functionSet~regout\) # ((!\subStates.subState3~regout\ & ((\state.displayClear~regout\) # (\state.entryModeSet~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.subState3~regout\,
	datab => \state.functionSet~regout\,
	datac => \state.displayClear~regout\,
	datad => \state.entryModeSet~regout\,
	combout => \counter[4]~40_combout\);

-- Location: LCCOMB_X5_Y18_N20
\Selector228~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector228~4_combout\ = (\Selector227~0_combout\ & ((\state.writeAddr~regout\) # ((!\Selector150~0_combout\ & !\state~18_combout\)))) # (!\Selector227~0_combout\ & (((!\Selector150~0_combout\ & !\state~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector227~0_combout\,
	datab => \state.writeAddr~regout\,
	datac => \Selector150~0_combout\,
	datad => \state~18_combout\,
	combout => \Selector228~4_combout\);

-- Location: LCFF_X6_Y18_N9
\functionSetCase.functionSet3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector79~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \state.functionSet~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \functionSetCase.functionSet3~regout\);

-- Location: LCCOMB_X4_Y18_N6
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

-- Location: LCCOMB_X4_Y18_N10
\Selector114~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector114~0_combout\ = (\displayOnOff~regout\ & ((\state.displaySet~regout\) # ((addrCounter(2) & \state.writeAddr~regout\)))) # (!\displayOnOff~regout\ & (addrCounter(2) & (\state.writeAddr~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOnOff~regout\,
	datab => addrCounter(2),
	datac => \state.writeAddr~regout\,
	datad => \state.displaySet~regout\,
	combout => \Selector114~0_combout\);

-- Location: LCFF_X6_Y18_N21
\functionSetCase.functionSet2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector78~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \state.functionSet~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \functionSetCase.functionSet2~regout\);

-- Location: LCCOMB_X6_Y18_N8
\Selector79~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector79~1_combout\ = (\Equal1~5_combout\ & ((\subStates.subState3~regout\ & (\functionSetCase.functionSet2~regout\)) # (!\subStates.subState3~regout\ & ((\functionSetCase.functionSet3~regout\))))) # (!\Equal1~5_combout\ & 
-- (((\functionSetCase.functionSet3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \functionSetCase.functionSet2~regout\,
	datab => \Equal1~5_combout\,
	datac => \functionSetCase.functionSet3~regout\,
	datad => \subStates.subState3~regout\,
	combout => \Selector79~1_combout\);

-- Location: LCCOMB_X3_Y18_N6
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (addrCounter(6) & (!addrCounter(5) & (addrCounter(3) & !addrCounter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addrCounter(6),
	datab => addrCounter(5),
	datac => addrCounter(3),
	datad => addrCounter(4),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X6_Y18_N20
\Selector78~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = (\state~18_combout\ & (!\Selector79~0_combout\ & (\functionSetCase.functionSet2~regout\))) # (!\state~18_combout\ & (((!\Selector79~0_combout\ & \functionSetCase.functionSet2~regout\)) # (!\functionSetCase.00~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~18_combout\,
	datab => \Selector79~0_combout\,
	datac => \functionSetCase.functionSet2~regout\,
	datad => \functionSetCase.00~regout\,
	combout => \Selector78~0_combout\);

-- Location: LCCOMB_X8_Y18_N4
\Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (\Equal4~0_combout\ & (\Equal0~7_combout\ & (counter(17) & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Equal0~7_combout\,
	datac => counter(17),
	datad => \Equal0~6_combout\,
	combout => \Equal0~11_combout\);

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

-- Location: LCCOMB_X3_Y18_N18
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = addrCounter(0) $ (VCC)
-- \Add1~1\ = CARRY(addrCounter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => addrCounter(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

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

-- Location: LCCOMB_X7_Y18_N16
\counter[0]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~36_combout\ = counter(0) $ (VCC)
-- \counter[0]~37\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \counter[0]~36_combout\,
	cout => \counter[0]~37\);

-- Location: LCCOMB_X7_Y18_N18
\counter[1]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1]~47_combout\ = (counter(1) & (!\counter[0]~37\)) # (!counter(1) & ((\counter[0]~37\) # (GND)))
-- \counter[1]~48\ = CARRY((!\counter[0]~37\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~37\,
	combout => \counter[1]~47_combout\,
	cout => \counter[1]~48\);

-- Location: LCCOMB_X7_Y18_N24
\counter[4]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~53_combout\ = (counter(4) & (\counter[3]~52\ $ (GND))) # (!counter(4) & (!\counter[3]~52\ & VCC))
-- \counter[4]~54\ = CARRY((counter(4) & !\counter[3]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datad => VCC,
	cin => \counter[3]~52\,
	combout => \counter[4]~53_combout\,
	cout => \counter[4]~54\);

-- Location: LCCOMB_X7_Y18_N26
\counter[5]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[5]~55_combout\ = (counter(5) & (!\counter[4]~54\)) # (!counter(5) & ((\counter[4]~54\) # (GND)))
-- \counter[5]~56\ = CARRY((!\counter[4]~54\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~54\,
	combout => \counter[5]~55_combout\,
	cout => \counter[5]~56\);

-- Location: LCCOMB_X7_Y17_N0
\counter[8]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[8]~61_combout\ = (counter(8) & (\counter[7]~60\ $ (GND))) # (!counter(8) & (!\counter[7]~60\ & VCC))
-- \counter[8]~62\ = CARRY((counter(8) & !\counter[7]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~60\,
	combout => \counter[8]~61_combout\,
	cout => \counter[8]~62\);

-- Location: LCCOMB_X7_Y17_N2
\counter[9]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[9]~63_combout\ = (counter(9) & (!\counter[8]~62\)) # (!counter(9) & ((\counter[8]~62\) # (GND)))
-- \counter[9]~64\ = CARRY((!\counter[8]~62\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~62\,
	combout => \counter[9]~63_combout\,
	cout => \counter[9]~64\);

-- Location: LCFF_X7_Y17_N3
\counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[9]~63_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(9));

-- Location: LCCOMB_X7_Y17_N4
\counter[10]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[10]~65_combout\ = (counter(10) & (\counter[9]~64\ $ (GND))) # (!counter(10) & (!\counter[9]~64\ & VCC))
-- \counter[10]~66\ = CARRY((counter(10) & !\counter[9]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~64\,
	combout => \counter[10]~65_combout\,
	cout => \counter[10]~66\);

-- Location: LCFF_X7_Y17_N5
\counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[10]~65_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10));

-- Location: LCCOMB_X7_Y17_N8
\counter[12]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[12]~69_combout\ = (counter(12) & (\counter[11]~68\ $ (GND))) # (!counter(12) & (!\counter[11]~68\ & VCC))
-- \counter[12]~70\ = CARRY((counter(12) & !\counter[11]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~68\,
	combout => \counter[12]~69_combout\,
	cout => \counter[12]~70\);

-- Location: LCFF_X7_Y17_N9
\counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[12]~69_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(12));

-- Location: LCCOMB_X7_Y17_N12
\counter[14]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[14]~73_combout\ = (counter(14) & (\counter[13]~72\ $ (GND))) # (!counter(14) & (!\counter[13]~72\ & VCC))
-- \counter[14]~74\ = CARRY((counter(14) & !\counter[13]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datad => VCC,
	cin => \counter[13]~72\,
	combout => \counter[14]~73_combout\,
	cout => \counter[14]~74\);

-- Location: LCCOMB_X7_Y17_N14
\counter[15]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~75_combout\ = (counter(15) & (!\counter[14]~74\)) # (!counter(15) & ((\counter[14]~74\) # (GND)))
-- \counter[15]~76\ = CARRY((!\counter[14]~74\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \counter[14]~74\,
	combout => \counter[15]~75_combout\,
	cout => \counter[15]~76\);

-- Location: LCFF_X7_Y17_N15
\counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[15]~75_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(15));

-- Location: LCCOMB_X7_Y17_N16
\counter[16]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[16]~77_combout\ = (counter(16) & (\counter[15]~76\ $ (GND))) # (!counter(16) & (!\counter[15]~76\ & VCC))
-- \counter[16]~78\ = CARRY((counter(16) & !\counter[15]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datad => VCC,
	cin => \counter[15]~76\,
	combout => \counter[16]~77_combout\,
	cout => \counter[16]~78\);

-- Location: LCCOMB_X7_Y17_N18
\counter[17]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[17]~79_combout\ = (counter(17) & (!\counter[16]~78\)) # (!counter(17) & ((\counter[16]~78\) # (GND)))
-- \counter[17]~80\ = CARRY((!\counter[16]~78\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \counter[16]~78\,
	combout => \counter[17]~79_combout\,
	cout => \counter[17]~80\);

-- Location: LCFF_X7_Y17_N19
\counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[17]~79_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(17));

-- Location: LCCOMB_X7_Y17_N20
\counter[18]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[18]~81_combout\ = (counter(18) & (\counter[17]~80\ $ (GND))) # (!counter(18) & (!\counter[17]~80\ & VCC))
-- \counter[18]~82\ = CARRY((counter(18) & !\counter[17]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \counter[17]~80\,
	combout => \counter[18]~81_combout\,
	cout => \counter[18]~82\);

-- Location: LCCOMB_X7_Y17_N22
\counter[19]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[19]~83_combout\ = (counter(19) & (!\counter[18]~82\)) # (!counter(19) & ((\counter[18]~82\) # (GND)))
-- \counter[19]~84\ = CARRY((!\counter[18]~82\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	datad => VCC,
	cin => \counter[18]~82\,
	combout => \counter[19]~83_combout\,
	cout => \counter[19]~84\);

-- Location: LCFF_X7_Y17_N23
\counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[19]~83_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(19));

-- Location: LCFF_X7_Y17_N21
\counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[18]~81_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(18));

-- Location: LCCOMB_X8_Y18_N10
\Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (!counter(9) & (!counter(19) & (counter(7) & !counter(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datab => counter(19),
	datac => counter(7),
	datad => counter(18),
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X8_Y18_N22
\Equal3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (\Equal3~3_combout\ & \Equal3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~3_combout\,
	datad => \Equal3~2_combout\,
	combout => \Equal3~4_combout\);

-- Location: LCFF_X7_Y17_N17
\counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[16]~77_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(16));

-- Location: LCCOMB_X8_Y18_N2
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (counter(14) & (!counter(1) & (counter(16) & !counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datab => counter(1),
	datac => counter(16),
	datad => counter(3),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X8_Y18_N12
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal4~0_combout\ & (counter(17) & \Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => counter(17),
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X8_Y18_N24
\state~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~18_combout\ = (((!\Equal0~8_combout\) # (!\subStates.subState3~regout\)) # (!\Equal3~4_combout\)) # (!\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal3~4_combout\,
	datac => \subStates.subState3~regout\,
	datad => \Equal0~8_combout\,
	combout => \state~18_combout\);

-- Location: LCCOMB_X4_Y18_N12
\Selector223~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector223~0_combout\ = (\displayOnOff~regout\ & (((\state.displayClear~regout\ & \state~18_combout\)))) # (!\displayOnOff~regout\ & ((\counter[4]~111_combout\) # ((\state.displayClear~regout\ & \state~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOnOff~regout\,
	datab => \counter[4]~111_combout\,
	datac => \state.displayClear~regout\,
	datad => \state~18_combout\,
	combout => \Selector223~0_combout\);

-- Location: LCFF_X4_Y18_N13
\state.displayClear\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector223~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.displayClear~regout\);

-- Location: LCCOMB_X6_Y18_N18
\Selector224~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector224~0_combout\ = (\state~18_combout\ & ((\state.entryModeSet~regout\))) # (!\state~18_combout\ & (\state.displayClear~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~18_combout\,
	datab => \state.displayClear~regout\,
	datac => \state.entryModeSet~regout\,
	combout => \Selector224~0_combout\);

-- Location: LCFF_X6_Y18_N19
\state.entryModeSet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector224~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.entryModeSet~regout\);

-- Location: LCCOMB_X7_Y18_N0
\Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (counter(9) & (!counter(7) & (!counter(4) & counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datab => counter(7),
	datac => counter(4),
	datad => counter(6),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X8_Y18_N30
\Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (counter(18) & (counter(19) & (!counter(15) & !counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(19),
	datac => counter(15),
	datad => counter(12),
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X7_Y18_N14
\state.powerOn~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.powerOn~0_combout\ = (\state.powerOn~regout\) # ((\Equal0~11_combout\ & (\Equal0~9_combout\ & \Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~11_combout\,
	datab => \Equal0~9_combout\,
	datac => \state.powerOn~regout\,
	datad => \Equal0~10_combout\,
	combout => \state.powerOn~0_combout\);

-- Location: LCFF_X7_Y18_N15
\state.powerOn\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state.powerOn~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.powerOn~regout\);

-- Location: LCCOMB_X7_Y18_N10
\Selector221~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector221~0_combout\ = (\Equal0~11_combout\ & (\Equal0~9_combout\ & (!\state.powerOn~regout\ & \Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~11_combout\,
	datab => \Equal0~9_combout\,
	datac => \state.powerOn~regout\,
	datad => \Equal0~10_combout\,
	combout => \Selector221~0_combout\);

-- Location: LCCOMB_X6_Y18_N0
\Selector221~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector221~1_combout\ = (\Selector221~0_combout\) # ((\state.functionSet~regout\ & ((!\functionSetCase.functionSet4~regout\) # (!\Selector79~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector79~0_combout\,
	datab => \functionSetCase.functionSet4~regout\,
	datac => \state.functionSet~regout\,
	datad => \Selector221~0_combout\,
	combout => \Selector221~1_combout\);

-- Location: LCFF_X6_Y18_N1
\state.functionSet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector221~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.functionSet~regout\);

-- Location: LCCOMB_X4_Y18_N22
\Selector185~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector185~2_combout\ = (!\state.displayClear~regout\ & (!\state.entryModeSet~regout\ & !\state.functionSet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.displayClear~regout\,
	datab => \state.entryModeSet~regout\,
	datad => \state.functionSet~regout\,
	combout => \Selector185~2_combout\);

-- Location: LCCOMB_X4_Y18_N0
\counter[4]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~46_combout\ = (!\state.cursorLogicState~regout\ & ((\subStates.00~regout\) # ((\Selector185~2_combout\ & \Selector73~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.00~regout\,
	datab => \Selector185~2_combout\,
	datac => \Selector73~2_combout\,
	datad => \state.cursorLogicState~regout\,
	combout => \counter[4]~46_combout\);

-- Location: LCFF_X7_Y18_N27
\counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[5]~55_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LCCOMB_X7_Y18_N28
\counter[6]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[6]~57_combout\ = (counter(6) & (\counter[5]~56\ $ (GND))) # (!counter(6) & (!\counter[5]~56\ & VCC))
-- \counter[6]~58\ = CARRY((counter(6) & !\counter[5]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~56\,
	combout => \counter[6]~57_combout\,
	cout => \counter[6]~58\);

-- Location: LCFF_X7_Y18_N29
\counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[6]~57_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LCCOMB_X7_Y18_N30
\counter[7]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[7]~59_combout\ = (counter(7) & (!\counter[6]~58\)) # (!counter(7) & ((\counter[6]~58\) # (GND)))
-- \counter[7]~60\ = CARRY((!\counter[6]~58\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~58\,
	combout => \counter[7]~59_combout\,
	cout => \counter[7]~60\);

-- Location: LCFF_X7_Y18_N31
\counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[7]~59_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LCFF_X7_Y17_N1
\counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[8]~61_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(8));

-- Location: LCCOMB_X7_Y18_N12
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (counter(2) & (!counter(1) & (!counter(4) & counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(1),
	datac => counter(4),
	datad => counter(6),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X7_Y18_N6
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (counter(11) & (counter(8) & \Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datab => counter(8),
	datad => \Equal1~2_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X7_Y17_N24
\counter[20]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[20]~85_combout\ = (counter(20) & (\counter[19]~84\ $ (GND))) # (!counter(20) & (!\counter[19]~84\ & VCC))
-- \counter[20]~86\ = CARRY((counter(20) & !\counter[19]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datad => VCC,
	cin => \counter[19]~84\,
	combout => \counter[20]~85_combout\,
	cout => \counter[20]~86\);

-- Location: LCCOMB_X7_Y17_N26
\counter[21]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[21]~87_combout\ = (counter(21) & (!\counter[20]~86\)) # (!counter(21) & ((\counter[20]~86\) # (GND)))
-- \counter[21]~88\ = CARRY((!\counter[20]~86\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \counter[20]~86\,
	combout => \counter[21]~87_combout\,
	cout => \counter[21]~88\);

-- Location: LCFF_X7_Y17_N27
\counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[21]~87_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(21));

-- Location: LCCOMB_X7_Y17_N28
\counter[22]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[22]~89_combout\ = (counter(22) & (\counter[21]~88\ $ (GND))) # (!counter(22) & (!\counter[21]~88\ & VCC))
-- \counter[22]~90\ = CARRY((counter(22) & !\counter[21]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \counter[21]~88\,
	combout => \counter[22]~89_combout\,
	cout => \counter[22]~90\);

-- Location: LCFF_X7_Y17_N29
\counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[22]~89_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(22));

-- Location: LCCOMB_X7_Y17_N30
\counter[23]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[23]~91_combout\ = (counter(23) & (!\counter[22]~90\)) # (!counter(23) & ((\counter[22]~90\) # (GND)))
-- \counter[23]~92\ = CARRY((!\counter[22]~90\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \counter[22]~90\,
	combout => \counter[23]~91_combout\,
	cout => \counter[23]~92\);

-- Location: LCFF_X7_Y17_N31
\counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[23]~91_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(23));

-- Location: LCCOMB_X7_Y16_N0
\counter[24]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[24]~93_combout\ = (counter(24) & (\counter[23]~92\ $ (GND))) # (!counter(24) & (!\counter[23]~92\ & VCC))
-- \counter[24]~94\ = CARRY((counter(24) & !\counter[23]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \counter[23]~92\,
	combout => \counter[24]~93_combout\,
	cout => \counter[24]~94\);

-- Location: LCFF_X7_Y16_N1
\counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[24]~93_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(24));

-- Location: LCCOMB_X7_Y16_N18
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!counter(21) & (!counter(23) & (!counter(22) & !counter(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datab => counter(23),
	datac => counter(22),
	datad => counter(24),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X7_Y16_N2
\counter[25]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[25]~95_combout\ = (counter(25) & (!\counter[24]~94\)) # (!counter(25) & ((\counter[24]~94\) # (GND)))
-- \counter[25]~96\ = CARRY((!\counter[24]~94\) # (!counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \counter[24]~94\,
	combout => \counter[25]~95_combout\,
	cout => \counter[25]~96\);

-- Location: LCFF_X7_Y16_N3
\counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[25]~95_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(25));

-- Location: LCCOMB_X7_Y16_N4
\counter[26]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[26]~97_combout\ = (counter(26) & (\counter[25]~96\ $ (GND))) # (!counter(26) & (!\counter[25]~96\ & VCC))
-- \counter[26]~98\ = CARRY((counter(26) & !\counter[25]~96\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	datad => VCC,
	cin => \counter[25]~96\,
	combout => \counter[26]~97_combout\,
	cout => \counter[26]~98\);

-- Location: LCFF_X7_Y16_N5
\counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[26]~97_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(26));

-- Location: LCFF_X7_Y16_N9
\counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[28]~101_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(28));

-- Location: LCCOMB_X7_Y16_N20
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!counter(27) & (!counter(26) & (!counter(28) & !counter(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	datab => counter(26),
	datac => counter(28),
	datad => counter(25),
	combout => \Equal0~4_combout\);

-- Location: LCFF_X7_Y17_N25
\counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[20]~85_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(20));

-- Location: LCFF_X7_Y18_N17
\counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[0]~36_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LCCOMB_X7_Y18_N8
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!counter(13) & (!counter(20) & (!counter(0) & !counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datab => counter(20),
	datac => counter(0),
	datad => counter(5),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X7_Y16_N24
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Equal0~5_combout\ & (\Equal0~3_combout\ & (\Equal0~4_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X8_Y18_N16
\Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (counter(12) & (counter(10) & (!counter(7) & counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => counter(10),
	datac => counter(7),
	datad => counter(3),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X7_Y16_N26
\Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (\Equal1~1_combout\ & (\Equal1~3_combout\ & (\Equal0~6_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~3_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X6_Y18_N2
\Selector228~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector228~0_combout\ = (\subStates.subState3~regout\ & \state.functionSet~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.subState3~regout\,
	datad => \state.functionSet~regout\,
	combout => \Selector228~0_combout\);

-- Location: LCCOMB_X6_Y18_N22
\functionSetCase.functionSet4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \functionSetCase.functionSet4~0_combout\ = (\functionSetCase.functionSet4~regout\) # ((\functionSetCase.functionSet3~regout\ & (\Equal1~5_combout\ & \Selector228~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \functionSetCase.functionSet3~regout\,
	datab => \Equal1~5_combout\,
	datac => \functionSetCase.functionSet4~regout\,
	datad => \Selector228~0_combout\,
	combout => \functionSetCase.functionSet4~0_combout\);

-- Location: LCFF_X6_Y18_N23
\functionSetCase.functionSet4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \functionSetCase.functionSet4~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \functionSetCase.functionSet4~regout\);

-- Location: LCCOMB_X6_Y18_N14
\Selector222~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector222~4_combout\ = (\subStates.subState3~regout\ & (\functionSetCase.functionSet4~regout\ & (\Equal1~5_combout\ & \state.functionSet~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.subState3~regout\,
	datab => \functionSetCase.functionSet4~regout\,
	datac => \Equal1~5_combout\,
	datad => \state.functionSet~regout\,
	combout => \Selector222~4_combout\);

-- Location: LCCOMB_X8_Y18_N26
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!counter(12) & (!counter(10) & (counter(7) & !counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => counter(10),
	datac => counter(7),
	datad => counter(3),
	combout => \Equal2~0_combout\);

-- Location: LCFF_X7_Y17_N13
\counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[14]~73_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14));

-- Location: LCCOMB_X8_Y18_N0
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!counter(18) & (!counter(19) & (!counter(9) & !counter(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(19),
	datac => counter(9),
	datad => counter(14),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X8_Y18_N18
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!counter(15) & (!counter(17) & (!counter(16) & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datab => counter(17),
	datac => counter(16),
	datad => \Equal1~0_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X7_Y16_N28
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Equal0~6_combout\ & (\Equal1~3_combout\ & (\Equal2~0_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal1~3_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X6_Y18_N4
\Selector222~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector222~2_combout\ = (\state.displaySet~regout\ & ((!\Equal2~1_combout\) # (!\subStates.subState3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.subState3~regout\,
	datab => \state.displaySet~regout\,
	datad => \Equal2~1_combout\,
	combout => \Selector222~2_combout\);

-- Location: LCCOMB_X6_Y18_N28
\Selector222~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector222~3_combout\ = (\Selector222~4_combout\) # ((\Selector222~2_combout\) # ((!\state~18_combout\ & \state.entryModeSet~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~18_combout\,
	datab => \Selector222~4_combout\,
	datac => \Selector222~2_combout\,
	datad => \state.entryModeSet~regout\,
	combout => \Selector222~3_combout\);

-- Location: LCFF_X6_Y18_N29
\state.displaySet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector222~3_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.displaySet~regout\);

-- Location: LCCOMB_X4_Y18_N4
\counter[4]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~111_combout\ = (\subStates.subState3~regout\ & (\state.displaySet~regout\ & \Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.subState3~regout\,
	datab => \state.displaySet~regout\,
	datac => \Equal2~1_combout\,
	combout => \counter[4]~111_combout\);

-- Location: LCCOMB_X4_Y18_N8
\Selector225~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector225~0_combout\ = (!\Selector227~0_combout\ & \state.writeAddr~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector227~0_combout\,
	datac => \state.writeAddr~regout\,
	combout => \Selector225~0_combout\);

-- Location: LCCOMB_X4_Y18_N24
\Selector225~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector225~1_combout\ = (\Selector225~0_combout\) # ((\state.cursorLogicState~regout\) # ((\displayOnOff~regout\ & \counter[4]~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOnOff~regout\,
	datab => \counter[4]~111_combout\,
	datac => \Selector225~0_combout\,
	datad => \state.cursorLogicState~regout\,
	combout => \Selector225~1_combout\);

-- Location: LCFF_X4_Y18_N25
\state.writeAddr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector225~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.writeAddr~regout\);

-- Location: LCCOMB_X4_Y18_N2
\Selector73~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector73~2_combout\ = (!\state.writeData~regout\ & (!\state.writeAddr~regout\ & !\state.displaySet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.writeData~regout\,
	datac => \state.writeAddr~regout\,
	datad => \state.displaySet~regout\,
	combout => \Selector73~2_combout\);

-- Location: LCCOMB_X6_Y18_N6
\functionSetCase~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \functionSetCase~14_combout\ = (\functionSetCase.00~regout\) # ((!\state~18_combout\ & \state.functionSet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~18_combout\,
	datab => \state.functionSet~regout\,
	datac => \functionSetCase.00~regout\,
	combout => \functionSetCase~14_combout\);

-- Location: LCFF_X6_Y18_N7
\functionSetCase.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \functionSetCase~14_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \functionSetCase.00~regout\);

-- Location: LCCOMB_X6_Y18_N30
\counter[4]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~41_combout\ = ((\counter[4]~40_combout\ & ((\functionSetCase.00~regout\) # (!\subStates.subState3~regout\)))) # (!\Selector73~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[4]~40_combout\,
	datab => \subStates.subState3~regout\,
	datac => \Selector73~2_combout\,
	datad => \functionSetCase.00~regout\,
	combout => \counter[4]~41_combout\);

-- Location: LCCOMB_X4_Y18_N30
\Selector150~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector150~0_combout\ = (!\state.displayClear~regout\ & !\state.entryModeSet~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.displayClear~regout\,
	datad => \state.entryModeSet~regout\,
	combout => \Selector150~0_combout\);

-- Location: LCCOMB_X5_Y18_N0
\counter[4]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~42_combout\ = (\Equal4~3_combout\ & ((\counter[4]~41_combout\) # ((!\Selector150~0_combout\ & !\state~18_combout\)))) # (!\Equal4~3_combout\ & (((!\Selector150~0_combout\ & !\state~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~3_combout\,
	datab => \counter[4]~41_combout\,
	datac => \Selector150~0_combout\,
	datad => \state~18_combout\,
	combout => \counter[4]~42_combout\);

-- Location: LCCOMB_X5_Y18_N30
\counter[4]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~35_combout\ = (\subStates.subState3~regout\ & \state.displaySet~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \subStates.subState3~regout\,
	datad => \state.displaySet~regout\,
	combout => \counter[4]~35_combout\);

-- Location: LCCOMB_X5_Y18_N10
\counter[4]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~43_combout\ = (\counter[4]~39_combout\ & (((\Equal2~1_combout\) # (!\counter[4]~35_combout\)))) # (!\counter[4]~39_combout\ & (\counter[4]~42_combout\ & ((\Equal2~1_combout\) # (!\counter[4]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[4]~39_combout\,
	datab => \counter[4]~42_combout\,
	datac => \Equal2~1_combout\,
	datad => \counter[4]~35_combout\,
	combout => \counter[4]~43_combout\);

-- Location: LCCOMB_X5_Y18_N28
\counter[4]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~44_combout\ = (\state.powerOn~regout\ & (((!\state.functionSet~regout\) # (!\subStates.subState3~regout\)) # (!\functionSetCase.00~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \functionSetCase.00~regout\,
	datab => \subStates.subState3~regout\,
	datac => \state.functionSet~regout\,
	datad => \state.powerOn~regout\,
	combout => \counter[4]~44_combout\);

-- Location: LCCOMB_X7_Y16_N22
\counter[4]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~45_combout\ = (\counter[4]~38_combout\) # ((\Selector221~0_combout\) # ((\counter[4]~43_combout\ & \counter[4]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[4]~38_combout\,
	datab => \counter[4]~43_combout\,
	datac => \counter[4]~44_combout\,
	datad => \Selector221~0_combout\,
	combout => \counter[4]~45_combout\);

-- Location: LCFF_X7_Y18_N19
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[1]~47_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCCOMB_X7_Y18_N20
\counter[2]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[2]~49_combout\ = (counter(2) & (\counter[1]~48\ $ (GND))) # (!counter(2) & (!\counter[1]~48\ & VCC))
-- \counter[2]~50\ = CARRY((counter(2) & !\counter[1]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~48\,
	combout => \counter[2]~49_combout\,
	cout => \counter[2]~50\);

-- Location: LCCOMB_X7_Y18_N22
\counter[3]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[3]~51_combout\ = (counter(3) & (!\counter[2]~50\)) # (!counter(3) & ((\counter[2]~50\) # (GND)))
-- \counter[3]~52\ = CARRY((!\counter[2]~50\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \counter[2]~50\,
	combout => \counter[3]~51_combout\,
	cout => \counter[3]~52\);

-- Location: LCFF_X7_Y18_N23
\counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[3]~51_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LCFF_X7_Y18_N25
\counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[4]~53_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LCCOMB_X8_Y18_N28
\Equal3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (counter(12) & (counter(4) & (counter(15) & !counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => counter(4),
	datac => counter(15),
	datad => counter(6),
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X8_Y18_N14
\Equal3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (\Equal0~6_combout\ & (\Equal3~3_combout\ & (\Equal0~8_combout\ & \Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal3~3_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal3~2_combout\,
	combout => \Equal3~5_combout\);

-- Location: LCCOMB_X5_Y18_N8
\Selector230~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector230~2_combout\ = (\Selector228~0_combout\ & ((\functionSetCase.00~regout\ & ((!\Equal1~5_combout\))) # (!\functionSetCase.00~regout\ & (!\Equal3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector228~0_combout\,
	datab => \Equal3~5_combout\,
	datac => \functionSetCase.00~regout\,
	datad => \Equal1~5_combout\,
	combout => \Selector230~2_combout\);

-- Location: LCCOMB_X5_Y18_N14
\Selector230~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector230~7_combout\ = (!\Equal2~1_combout\ & (\subStates.subState3~regout\ & \state.displaySet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \subStates.subState3~regout\,
	datad => \state.displaySet~regout\,
	combout => \Selector230~7_combout\);

-- Location: LCCOMB_X6_Y18_N24
\Selector230~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector230~3_combout\ = (\subStates.subState3~regout\ & ((\state.displayClear~regout\) # (\state.entryModeSet~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.subState3~regout\,
	datac => \state.displayClear~regout\,
	datad => \state.entryModeSet~regout\,
	combout => \Selector230~3_combout\);

-- Location: LCCOMB_X4_Y18_N28
\Selector185~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector185~0_combout\ = (\subStates.subState2~regout\ & (((\state.functionSet~regout\) # (!\Selector73~2_combout\)) # (!\Selector150~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subStates.subState2~regout\,
	datab => \Selector150~0_combout\,
	datac => \Selector73~2_combout\,
	datad => \state.functionSet~regout\,
	combout => \Selector185~0_combout\);

-- Location: LCCOMB_X5_Y18_N26
\Selector230~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector230~4_combout\ = (\Equal4~3_combout\ & ((\Selector185~0_combout\) # ((\Selector230~3_combout\ & !\Equal3~5_combout\)))) # (!\Equal4~3_combout\ & (\Selector230~3_combout\ & (!\Equal3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~3_combout\,
	datab => \Selector230~3_combout\,
	datac => \Equal3~5_combout\,
	datad => \Selector185~0_combout\,
	combout => \Selector230~4_combout\);

-- Location: LCCOMB_X5_Y18_N2
\Selector230~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector230~6_combout\ = (\Selector230~5_combout\) # ((\Selector230~2_combout\) # ((\Selector230~7_combout\) # (\Selector230~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector230~5_combout\,
	datab => \Selector230~2_combout\,
	datac => \Selector230~7_combout\,
	datad => \Selector230~4_combout\,
	combout => \Selector230~6_combout\);

-- Location: LCFF_X5_Y18_N3
\subStates.subState3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector230~6_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \subStates.subState3~regout\);

-- Location: LCCOMB_X7_Y18_N4
\Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (counter(3) & (!counter(7) & (counter(4) & !counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(7),
	datac => counter(4),
	datad => counter(6),
	combout => \Equal4~1_combout\);

-- Location: LCFF_X7_Y18_N21
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[2]~49_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sclr => \counter[4]~45_combout\,
	ena => \counter[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LCCOMB_X7_Y18_N2
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!counter(11) & (!counter(8) & (!counter(2) & !counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datab => counter(8),
	datac => counter(2),
	datad => counter(10),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X8_Y18_N20
\Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (!counter(12) & (counter(1) & (\Equal4~1_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => counter(1),
	datac => \Equal4~1_combout\,
	datad => \Equal4~0_combout\,
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X8_Y18_N6
\Selector227~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector227~0_combout\ = (\Equal0~6_combout\ & (\subStates.subState3~regout\ & (\Equal4~2_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \subStates.subState3~regout\,
	datac => \Equal4~2_combout\,
	datad => \Equal1~1_combout\,
	combout => \Selector227~0_combout\);

-- Location: LCCOMB_X4_Y18_N16
\Selector226~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector226~0_combout\ = (\Selector227~0_combout\ & (\state.writeAddr~regout\)) # (!\Selector227~0_combout\ & ((\state.writeData~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.writeAddr~regout\,
	datab => \Selector227~0_combout\,
	datac => \state.writeData~regout\,
	combout => \Selector226~0_combout\);

-- Location: LCFF_X4_Y18_N17
\state.writeData\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector226~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.writeData~regout\);

-- Location: LCCOMB_X4_Y18_N18
\Selector227~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector227~1_combout\ = (\Selector227~0_combout\ & \state.writeData~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector227~0_combout\,
	datac => \state.writeData~regout\,
	combout => \Selector227~1_combout\);

-- Location: LCFF_X4_Y18_N19
\state.cursorLogicState\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector227~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.cursorLogicState~regout\);

-- Location: LCFF_X3_Y18_N19
\addrCounter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \state.cursorLogicState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addrCounter(0));

-- Location: LCCOMB_X2_Y18_N14
\Selector150~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector150~2_combout\ = (\state.writeAddr~regout\ & (((addrCounter(0))))) # (!\state.writeAddr~regout\ & (\state.displayClear~regout\ & ((!\state.writeData~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.displayClear~regout\,
	datab => addrCounter(0),
	datac => \state.writeData~regout\,
	datad => \state.writeAddr~regout\,
	combout => \Selector150~2_combout\);

-- Location: LCFF_X2_Y18_N15
\lcdBus[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector150~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[0]~reg0_regout\);

-- Location: LCCOMB_X5_Y18_N18
\Selector228~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector228~3_combout\ = (!\subStates.00~regout\ & ((\state.cursorLogicState~regout\) # (!\state.powerOn~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.cursorLogicState~regout\,
	datac => \subStates.00~regout\,
	datad => \state.powerOn~regout\,
	combout => \Selector228~3_combout\);

-- Location: LCCOMB_X5_Y18_N24
\Selector228~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector228~2_combout\ = (\Equal2~1_combout\ & ((\counter[4]~35_combout\) # ((\state.writeData~regout\ & \Selector227~0_combout\)))) # (!\Equal2~1_combout\ & (((\state.writeData~regout\ & \Selector227~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \counter[4]~35_combout\,
	datac => \state.writeData~regout\,
	datad => \Selector227~0_combout\,
	combout => \Selector228~2_combout\);

-- Location: LCCOMB_X5_Y18_N22
\Selector228~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector228~1_combout\ = (\Selector228~0_combout\ & ((\functionSetCase.00~regout\ & ((\Equal1~5_combout\))) # (!\functionSetCase.00~regout\ & (\Equal3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector228~0_combout\,
	datab => \Equal3~5_combout\,
	datac => \functionSetCase.00~regout\,
	datad => \Equal1~5_combout\,
	combout => \Selector228~1_combout\);

-- Location: LCCOMB_X5_Y18_N4
\Selector228~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector228~5_combout\ = (!\Selector228~4_combout\ & (!\Selector228~3_combout\ & (!\Selector228~2_combout\ & !\Selector228~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector228~4_combout\,
	datab => \Selector228~3_combout\,
	datac => \Selector228~2_combout\,
	datad => \Selector228~1_combout\,
	combout => \Selector228~5_combout\);

-- Location: LCFF_X5_Y18_N5
\subStates.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector228~5_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \subStates.00~regout\);

-- Location: LCCOMB_X8_Y18_N8
\Equal4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (\Equal0~6_combout\ & (\Equal4~2_combout\ & \Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datac => \Equal4~2_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal4~3_combout\);

-- Location: LCCOMB_X5_Y18_N16
\subStates.subState2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \subStates.subState2~0_combout\ = (\WideOr10~combout\ & (((\subStates.subState2~regout\)))) # (!\WideOr10~combout\ & (((\subStates.subState2~regout\ & !\Equal4~3_combout\)) # (!\subStates.00~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr10~combout\,
	datab => \subStates.00~regout\,
	datac => \subStates.subState2~regout\,
	datad => \Equal4~3_combout\,
	combout => \subStates.subState2~0_combout\);

-- Location: LCFF_X5_Y18_N17
\subStates.subState2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \subStates.subState2~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \subStates.subState2~regout\);

-- Location: LCCOMB_X4_Y18_N20
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\state.cursorLogicState~regout\ & (\subStates.subState2~regout\ & \state.powerOn~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.cursorLogicState~regout\,
	datac => \subStates.subState2~regout\,
	datad => \state.powerOn~regout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X1_Y26_N16
\lcdBus[0]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcdBus[0]~enfeeder_combout\ = \Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector1~0_combout\,
	combout => \lcdBus[0]~enfeeder_combout\);

-- Location: LCFF_X1_Y26_N17
\lcdBus[0]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcdBus[0]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[0]~en_regout\);

-- Location: LCCOMB_X3_Y18_N20
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (addrCounter(1) & (!\Add1~1\)) # (!addrCounter(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!addrCounter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addrCounter(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCFF_X3_Y18_N21
\addrCounter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~2_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \state.cursorLogicState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addrCounter(1));

-- Location: LCCOMB_X3_Y18_N8
\Selector149~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector149~0_combout\ = (\state.writeAddr~regout\ & (addrCounter(1))) # (!\state.writeAddr~regout\ & (((!\state.writeData~regout\ & \state.entryModeSet~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.writeAddr~regout\,
	datab => addrCounter(1),
	datac => \state.writeData~regout\,
	datad => \state.entryModeSet~regout\,
	combout => \Selector149~0_combout\);

-- Location: LCFF_X3_Y18_N9
\lcdBus[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector149~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[1]~reg0_regout\);

-- Location: LCCOMB_X1_Y26_N2
\lcdBus[1]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcdBus[1]~enfeeder_combout\ = \Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector1~0_combout\,
	combout => \lcdBus[1]~enfeeder_combout\);

-- Location: LCFF_X1_Y26_N3
\lcdBus[1]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcdBus[1]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[1]~en_regout\);

-- Location: LCCOMB_X4_Y18_N26
\Selector114~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector114~1_combout\ = (\Selector114~0_combout\) # (\state.entryModeSet~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector114~0_combout\,
	datad => \state.entryModeSet~regout\,
	combout => \Selector114~1_combout\);

-- Location: LCFF_X4_Y18_N27
\lcdBus[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector114~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[2]~reg0_regout\);

-- Location: LCCOMB_X1_Y26_N12
\lcdBus[2]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcdBus[2]~enfeeder_combout\ = \Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector1~0_combout\,
	combout => \lcdBus[2]~enfeeder_combout\);

-- Location: LCFF_X1_Y26_N13
\lcdBus[2]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcdBus[2]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[2]~en_regout\);

-- Location: LCCOMB_X3_Y18_N22
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (addrCounter(2) & (\Add1~3\ $ (GND))) # (!addrCounter(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((addrCounter(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addrCounter(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCFF_X3_Y18_N23
\addrCounter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~4_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \state.cursorLogicState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addrCounter(2));

-- Location: LCCOMB_X3_Y18_N24
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (addrCounter(3) & (!\Add1~5\)) # (!addrCounter(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!addrCounter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addrCounter(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCFF_X3_Y18_N25
\addrCounter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~6_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \state.cursorLogicState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addrCounter(3));

-- Location: LCCOMB_X3_Y18_N10
\Selector74~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector74~2_combout\ = (\state.writeAddr~regout\ & (((addrCounter(3))))) # (!\state.writeAddr~regout\ & (\Selector150~0_combout\ & (!\state.writeData~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.writeAddr~regout\,
	datab => \Selector150~0_combout\,
	datac => \state.writeData~regout\,
	datad => addrCounter(3),
	combout => \Selector74~2_combout\);

-- Location: LCFF_X3_Y18_N11
\lcdBus[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector74~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[3]~reg0_regout\);

-- Location: LCCOMB_X1_Y26_N6
\lcdBus[3]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcdBus[3]~enfeeder_combout\ = \Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector1~0_combout\,
	combout => \lcdBus[3]~enfeeder_combout\);

-- Location: LCFF_X1_Y26_N7
\lcdBus[3]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcdBus[3]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[3]~en_regout\);

-- Location: LCCOMB_X3_Y18_N0
\Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (\Equal5~0_combout\ & (addrCounter(2) & (addrCounter(1) & addrCounter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => addrCounter(2),
	datac => addrCounter(1),
	datad => addrCounter(0),
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X3_Y18_N26
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (addrCounter(4) & (\Add1~7\ $ (GND))) # (!addrCounter(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((addrCounter(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addrCounter(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X3_Y18_N2
\addrCounter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \addrCounter~0_combout\ = (!\Equal5~1_combout\ & \Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~1_combout\,
	datad => \Add1~8_combout\,
	combout => \addrCounter~0_combout\);

-- Location: LCFF_X3_Y18_N3
\addrCounter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addrCounter~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \state.cursorLogicState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addrCounter(4));

-- Location: LCCOMB_X6_Y18_N10
\Selector73~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector73~3_combout\ = (!\state.displaySet~regout\ & (!\state.displayClear~regout\ & !\state.entryModeSet~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.displaySet~regout\,
	datac => \state.displayClear~regout\,
	datad => \state.entryModeSet~regout\,
	combout => \Selector73~3_combout\);

-- Location: LCCOMB_X3_Y18_N4
\Selector73~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector73~4_combout\ = (\state.writeAddr~regout\ & (((addrCounter(4))))) # (!\state.writeAddr~regout\ & ((\state.writeData~regout\) # ((\Selector73~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.writeData~regout\,
	datab => addrCounter(4),
	datac => \state.writeAddr~regout\,
	datad => \Selector73~3_combout\,
	combout => \Selector73~4_combout\);

-- Location: LCFF_X3_Y18_N5
\lcdBus[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector73~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[4]~reg0_regout\);

-- Location: LCFF_X4_Y18_N21
\lcdBus[4]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector1~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[4]~en_regout\);

-- Location: LCCOMB_X3_Y18_N28
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (addrCounter(5) & (!\Add1~9\)) # (!addrCounter(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!addrCounter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addrCounter(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCFF_X3_Y18_N29
\addrCounter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~10_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \state.cursorLogicState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addrCounter(5));

-- Location: LCCOMB_X3_Y18_N14
\Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\Selector73~2_combout\ & ((\Selector150~0_combout\) # ((addrCounter(5) & \state.writeAddr~regout\)))) # (!\Selector73~2_combout\ & (addrCounter(5) & (\state.writeAddr~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector73~2_combout\,
	datab => addrCounter(5),
	datac => \state.writeAddr~regout\,
	datad => \Selector150~0_combout\,
	combout => \Selector37~0_combout\);

-- Location: LCFF_X3_Y18_N15
\lcdBus[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[5]~reg0_regout\);

-- Location: LCCOMB_X1_Y26_N0
\lcdBus[5]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcdBus[5]~enfeeder_combout\ = \Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector1~0_combout\,
	combout => \lcdBus[5]~enfeeder_combout\);

-- Location: LCFF_X1_Y26_N1
\lcdBus[5]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcdBus[5]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[5]~en_regout\);

-- Location: LCCOMB_X3_Y18_N30
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = \Add1~11\ $ (!addrCounter(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => addrCounter(6),
	cin => \Add1~11\,
	combout => \Add1~12_combout\);

-- Location: LCCOMB_X3_Y18_N12
\addrCounter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \addrCounter~1_combout\ = (!\Equal5~1_combout\ & \Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~1_combout\,
	datad => \Add1~12_combout\,
	combout => \addrCounter~1_combout\);

-- Location: LCFF_X3_Y18_N13
\addrCounter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addrCounter~1_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	ena => \state.cursorLogicState~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addrCounter(6));

-- Location: LCCOMB_X3_Y18_N16
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.writeAddr~regout\ & ((addrCounter(6)))) # (!\state.writeAddr~regout\ & (\state.writeData~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.writeAddr~regout\,
	datac => \state.writeData~regout\,
	datad => addrCounter(6),
	combout => \Selector0~0_combout\);

-- Location: LCFF_X3_Y18_N17
\lcdBus[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[6]~reg0_regout\);

-- Location: LCFF_X2_Y18_N17
\lcdBus[6]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector1~0_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[6]~en_regout\);

-- Location: LCFF_X2_Y18_N11
\lcdBus[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \state.writeAddr~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[7]~reg0_regout\);

-- Location: LCCOMB_X1_Y26_N10
\lcdBus[7]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcdBus[7]~enfeeder_combout\ = \Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector1~0_combout\,
	combout => \lcdBus[7]~enfeeder_combout\);

-- Location: LCFF_X1_Y26_N11
\lcdBus[7]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcdBus[7]~enfeeder_combout\,
	aclr => \ALT_INV_lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdBus[7]~en_regout\);

-- Location: LCCOMB_X2_Y18_N8
\Selector186~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector186~0_combout\ = (\state.writeData~regout\) # ((\lcdRsSelect~reg0_regout\ & \state.cursorLogicState~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.writeData~regout\,
	datac => \lcdRsSelect~reg0_regout\,
	datad => \state.cursorLogicState~regout\,
	combout => \Selector186~0_combout\);

-- Location: LCFF_X2_Y18_N9
\lcdRsSelect~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector186~0_combout\,
	ena => \lcdOnIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcdRsSelect~reg0_regout\);

-- Location: LCCOMB_X2_Y18_N26
\Selector185~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector185~1_combout\ = (\Selector185~0_combout\) # ((\lcdEnableOut~reg0_regout\ & \state.cursorLogicState~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector185~0_combout\,
	datac => \lcdEnableOut~reg0_regout\,
	datad => \state.cursorLogicState~regout\,
	combout => \Selector185~1_combout\);

-- Location: LCFF_X2_Y18_N27
\lcdEnableOut~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector185~1_combout\,
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcdBus[6]~reg0_regout\,
	oe => \lcdBus[6]~en_regout\,
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_errorLed);
END structure;


