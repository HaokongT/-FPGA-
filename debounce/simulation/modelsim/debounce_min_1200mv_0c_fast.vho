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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "06/21/2025 17:29:07"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	debounce IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	btn_in : IN std_logic;
	btn_pressed : OUT std_logic
	);
END debounce;

-- Design Ports Information
-- btn_pressed	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_in	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF debounce IS
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
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_btn_in : std_logic;
SIGNAL ww_btn_pressed : std_logic;
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \btn_pressed~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \debounce_cnt[0]~20_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \btn_in~input_o\ : std_logic;
SIGNAL \btn_ff1~0_combout\ : std_logic;
SIGNAL \btn_ff1~q\ : std_logic;
SIGNAL \btn_ff2~feeder_combout\ : std_logic;
SIGNAL \btn_ff2~q\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \debounce_cnt[0]~22_combout\ : std_logic;
SIGNAL \debounce_cnt[0]~21\ : std_logic;
SIGNAL \debounce_cnt[1]~23_combout\ : std_logic;
SIGNAL \debounce_cnt[1]~24\ : std_logic;
SIGNAL \debounce_cnt[2]~25_combout\ : std_logic;
SIGNAL \debounce_cnt[2]~26\ : std_logic;
SIGNAL \debounce_cnt[3]~27_combout\ : std_logic;
SIGNAL \debounce_cnt[3]~28\ : std_logic;
SIGNAL \debounce_cnt[4]~29_combout\ : std_logic;
SIGNAL \debounce_cnt[4]~30\ : std_logic;
SIGNAL \debounce_cnt[5]~31_combout\ : std_logic;
SIGNAL \debounce_cnt[5]~32\ : std_logic;
SIGNAL \debounce_cnt[6]~33_combout\ : std_logic;
SIGNAL \debounce_cnt[6]~34\ : std_logic;
SIGNAL \debounce_cnt[7]~35_combout\ : std_logic;
SIGNAL \debounce_cnt[7]~36\ : std_logic;
SIGNAL \debounce_cnt[8]~37_combout\ : std_logic;
SIGNAL \debounce_cnt[8]~38\ : std_logic;
SIGNAL \debounce_cnt[9]~39_combout\ : std_logic;
SIGNAL \debounce_cnt[9]~40\ : std_logic;
SIGNAL \debounce_cnt[10]~41_combout\ : std_logic;
SIGNAL \debounce_cnt[10]~42\ : std_logic;
SIGNAL \debounce_cnt[11]~43_combout\ : std_logic;
SIGNAL \debounce_cnt[11]~44\ : std_logic;
SIGNAL \debounce_cnt[12]~45_combout\ : std_logic;
SIGNAL \debounce_cnt[12]~46\ : std_logic;
SIGNAL \debounce_cnt[13]~47_combout\ : std_logic;
SIGNAL \debounce_cnt[13]~48\ : std_logic;
SIGNAL \debounce_cnt[14]~49_combout\ : std_logic;
SIGNAL \debounce_cnt[14]~50\ : std_logic;
SIGNAL \debounce_cnt[15]~51_combout\ : std_logic;
SIGNAL \debounce_cnt[15]~52\ : std_logic;
SIGNAL \debounce_cnt[16]~53_combout\ : std_logic;
SIGNAL \debounce_cnt[16]~54\ : std_logic;
SIGNAL \debounce_cnt[17]~55_combout\ : std_logic;
SIGNAL \debounce_cnt[17]~56\ : std_logic;
SIGNAL \debounce_cnt[18]~57_combout\ : std_logic;
SIGNAL \debounce_cnt[18]~58\ : std_logic;
SIGNAL \debounce_cnt[19]~59_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL debounce_cnt : std_logic_vector(19 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ww_btn_in <= btn_in;
btn_pressed <= ww_btn_pressed;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X8_Y0_N9
\btn_pressed~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~6_combout\,
	devoe => ww_devoe,
	o => \btn_pressed~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X9_Y2_N12
\debounce_cnt[0]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \debounce_cnt[0]~20_combout\ = debounce_cnt(0) $ (VCC)
-- \debounce_cnt[0]~21\ = CARRY(debounce_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(0),
	datad => VCC,
	combout => \debounce_cnt[0]~20_combout\,
	cout => \debounce_cnt[0]~21\);

-- Location: LCCOMB_X9_Y2_N8
\~GND\ : cycloneiv_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X16_Y0_N22
\rst_n~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: CLKCTRL_G19
\rst_n~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst_n~inputclkctrl_outclk\);

-- Location: IOIBUF_X8_Y0_N1
\btn_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_in,
	o => \btn_in~input_o\);

-- Location: LCCOMB_X8_Y1_N24
\btn_ff1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \btn_ff1~0_combout\ = !\btn_in~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_in~input_o\,
	combout => \btn_ff1~0_combout\);

-- Location: FF_X8_Y1_N25
btn_ff1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_ff1~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_ff1~q\);

-- Location: LCCOMB_X8_Y1_N6
\btn_ff2~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \btn_ff2~feeder_combout\ = \btn_ff1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_ff1~q\,
	combout => \btn_ff2~feeder_combout\);

-- Location: FF_X8_Y1_N7
btn_ff2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_ff2~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_ff2~q\);

-- Location: LCCOMB_X8_Y1_N0
\always0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (\btn_ff1~q\ & !\btn_ff2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn_ff1~q\,
	datad => \btn_ff2~q\,
	combout => \always0~0_combout\);

-- Location: LCCOMB_X9_Y1_N22
\debounce_cnt[0]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \debounce_cnt[0]~22_combout\ = (debounce_cnt(0)) # (((\btn_ff1~q\ & !\btn_ff2~q\)) # (!\Equal1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(0),
	datab => \btn_ff1~q\,
	datac => \Equal1~5_combout\,
	datad => \btn_ff2~q\,
	combout => \debounce_cnt[0]~22_combout\);

-- Location: FF_X9_Y2_N13
\debounce_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[0]~20_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always0~0_combout\,
	ena => \debounce_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(0));

-- Location: LCCOMB_X9_Y2_N14
\debounce_cnt[1]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \debounce_cnt[1]~23_combout\ = (debounce_cnt(1) & (\debounce_cnt[0]~21\ & VCC)) # (!debounce_cnt(1) & (!\debounce_cnt[0]~21\))
-- \debounce_cnt[1]~24\ = CARRY((!debounce_cnt(1) & !\debounce_cnt[0]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(1),
	datad => VCC,
	cin => \debounce_cnt[0]~21\,
	combout => \debounce_cnt[1]~23_combout\,
	cout => \debounce_cnt[1]~24\);

-- Location: FF_X9_Y2_N15
\debounce_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[1]~23_combout\,
	asdata => VCC,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always0~0_combout\,
	ena => \debounce_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(1));

-- Location: LCCOMB_X9_Y2_N16
\debounce_cnt[2]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \debounce_cnt[2]~25_combout\ = (debounce_cnt(2) & ((GND) # (!\debounce_cnt[1]~24\))) # (!debounce_cnt(2) & (\debounce_cnt[1]~24\ $ (GND)))
-- \debounce_cnt[2]~26\ = CARRY((debounce_cnt(2)) # (!\debounce_cnt[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(2),
	datad => VCC,
	cin => \debounce_cnt[1]~24\,
	combout => \debounce_cnt[2]~25_combout\,
	cout => \debounce_cnt[2]~26\);

-- Location: FF_X9_Y2_N17
\debounce_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[2]~25_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always0~0_combout\,
	ena => \debounce_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(2));

-- Location: LCCOMB_X9_Y2_N18
\debounce_cnt[3]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \debounce_cnt[3]~27_combout\ = (debounce_cnt(3) & (\debounce_cnt[2]~26\ & VCC)) # (!debounce_cnt(3) & (!\debounce_cnt[2]~26\))
-- \debounce_cnt[3]~28\ = CARRY((!debounce_cnt(3) & !\debounce_cnt[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(3),
	datad => VCC,
	cin => \debounce_cnt[2]~26\,
	combout => \debounce_cnt[3]~27_combout\,
	cout => \debounce_cnt[3]~28\);

-- Location: FF_X9_Y2_N19
\debounce_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[3]~27_combout\,
	asdata => VCC,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always0~0_combout\,
	ena => \debounce_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(3));

-- Location: LCCOMB_X9_Y2_N20
\debounce_cnt[4]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \debounce_cnt[4]~29_combout\ = (debounce_cnt(4) & ((GND) # (!\debounce_cnt[3]~28\))) # (!debounce_cnt(4) & (\debounce_cnt[3]~28\ $ (GND)))
-- \debounce_cnt[4]~30\ = CARRY((debounce_cnt(4)) # (!\debounce_cnt[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(4),
	datad => VCC,
	cin => \debounce_cnt[3]~28\,
	combout => \debounce_cnt[4]~29_combout\,
	cout => \debounce_cnt[4]~30\);

-- Location: FF_X9_Y2_N21
\debounce_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[4]~29_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always0~0_combout\,
	ena => \debounce_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(4));

-- Location: LCCOMB_X9_Y2_N22
\debounce_cnt[5]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \debounce_cnt[5]~31_combout\ = (debounce_cnt(5) & (\debounce_cnt[4]~30\ & VCC)) # (!debounce_cnt(5) & (!\debounce_cnt[4]~30\))
-- \debounce_cnt[5]~32\ = CARRY((!debounce_cnt(5) & !\debounce_cnt[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(5),
	datad => VCC,
	cin => \debounce_cnt[4]~30\,
	combout => \debounce_cnt[5]~31_combout\,
	cout => \debounce_cnt[5]~32\);

-- Location: FF_X9_Y2_N23
\debounce_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[5]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always0~0_combout\,
	ena => \debounce_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(5));

-- Location: LCCOMB_X9_Y2_N24
\debounce_cnt[6]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \debounce_cnt[6]~33_combout\ = (debounce_cnt(6) & ((GND) # (!\debounce_cnt[5]~32\))) # (!debounce_cnt(6) & (\debounce_cnt[5]~32\ $ (GND)))
-- \debounce_cnt[6]~34\ = CARRY((debounce_cnt(6)) # (!\debounce_cnt[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(6),
	datad => VCC,
	cin => \debounce_cnt[5]~32\,
	combout => \debounce_cnt[6]~33_combout\,
	cout => \debounce_cnt[6]~34\);

-- Location: FF_X9_Y2_N25
\debounce_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[6]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always0~0_combout\,
	ena => \debounce_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(6));

-- Location: LCCOMB_X9_Y2_N26
\debounce_cnt[7]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \debounce_cnt[7]~35_combout\ = (debounce_cnt(7) & (\debounce_cnt[6]~34\ & VCC)) # (!debounce_cnt(7) & (!\debounce_cnt[6]~34\))
-- \debounce_cnt[7]~36\ = CARRY((!debounce_cnt(7) & !\debounce_cnt[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(7),
	datad => VCC,
	cin => \debounce_cnt[6]~34\,
	combout => \debounce_cnt[7]~35_combout\,
	cout => \debounce_cnt[7]~36\);

-- Location: FF_X9_Y2_N27
\debounce_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[7]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always0~0_combout\,
	ena => \debounce_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(7));

-- Location: LCCOMB_X9_Y2_N28
\debounce_cnt[8]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \debounce_cnt[8]~37_combout\ = (debounce_cnt(8) & ((GND) # (!\debounce_cnt[7]~36\))) # (!debounce_cnt(8) & (\debounce_cnt[7]~36\ $ (GND)))
-- \debounce_cnt[8]~38\ = CARRY((debounce_cnt(8)) # (!\debounce_cnt[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(8),
	datad => VCC,
	cin => \debounce_cnt[7]~36\,
	combout => \debounce_cnt[8]~37_combout\,
	cout => \debounce_cnt[8]~38\);

-- Location: FF_X9_Y2_N29
\debounce_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[8]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always0~0_combout\,
	ena => \debounce_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(8));

-- Location: LCCOMB_X9_Y2_N30
\debounce_cnt[9]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \debounce_cnt[9]~39_combout\ = (debounce_cnt(9) & (\debounce_cnt[8]~38\ & VCC)) # (!debounce_cnt(9) & (!\debounce_cnt[8]~38\))
-- \debounce_cnt[9]~40\ = CARRY((!debounce_cnt(9) & !\debounce_cnt[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(9),
	datad => VCC,
	cin => \debounce_cnt[8]~38\,
	combout => \debounce_cnt[9]~39_combout\,
	cout => \debounce_cnt[9]~40\);

-- Location: FF_X9_Y2_N31
\debounce_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[9]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always0~0_combout\,
	ena => \debounce_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(9));

-- Location: LCCOMB_X9_Y1_N0
\debounce_cnt[10]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \debounce_cnt[10]~41_combout\ = (debounce_cnt(10) & ((GND) # (!\debounce_cnt[9]~40\))) # (!debounce_cnt(10) & (\debounce_cnt[9]~40\ $ (GND)))
-- \debounce_cnt[10]~42\ = CARRY((debounce_cnt(10)) # (!\debounce_cnt[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(10),
	datad => VCC,
	cin => \debounce_cnt[9]~40\,
	combout => \debounce_cnt[10]~41_combout\,
	cout => \debounce_cnt[10]~42\);

-- Location: FF_X9_Y1_N1
\debounce_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[10]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always0~0_combout\,
	ena => \debounce_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(10));

-- Location: LCCOMB_X9_Y1_N2
\debounce_cnt[11]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \debounce_cnt[11]~43_combout\ = (debounce_cnt(11) & (\debounce_cnt[10]~42\ & VCC)) # (!debounce_cnt(11) & (!\debounce_cnt[10]~42\))
-- \debounce_cnt[11]~44\ = CARRY((!debounce_cnt(11) & !\debounce_cnt[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(11),
	datad => VCC,
	cin => \debounce_cnt[10]~42\,
	combout => \debounce_cnt[11]~43_combout\,
	cout => \debounce_cnt[11]~44\);

-- Location: FF_X9_Y1_N3
\debounce_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[11]~43_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always0~0_combout\,
	ena => \debounce_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(11));

-- Location: LCCOMB_X9_Y1_N4
\debounce_cnt[12]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \debounce_cnt[12]~45_combout\ = (debounce_cnt(12) & ((GND) # (!\debounce_cnt[11]~44\))) # (!debounce_cnt(12) & (\debounce_cnt[11]~44\ $ (GND)))
-- \debounce_cnt[12]~46\ = CARRY((debounce_cnt(12)) # (!\debounce_cnt[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(12),
	datad => VCC,
	cin => \debounce_cnt[11]~44\,
	combout => \debounce_cnt[12]~45_combout\,
	cout => \debounce_cnt[12]~46\);

-- Location: FF_X9_Y1_N5
\debounce_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[12]~45_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always0~0_combout\,
	ena => \debounce_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(12));

-- Location: LCCOMB_X9_Y1_N6
\debounce_cnt[13]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \debounce_cnt[13]~47_combout\ = (debounce_cnt(13) & (\debounce_cnt[12]~46\ & VCC)) # (!debounce_cnt(13) & (!\debounce_cnt[12]~46\))
-- \debounce_cnt[13]~48\ = CARRY((!debounce_cnt(13) & !\debounce_cnt[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(13),
	datad => VCC,
	cin => \debounce_cnt[12]~46\,
	combout => \debounce_cnt[13]~47_combout\,
	cout => \debounce_cnt[13]~48\);

-- Location: FF_X9_Y1_N7
\debounce_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[13]~47_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always0~0_combout\,
	ena => \debounce_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(13));

-- Location: LCCOMB_X9_Y1_N8
\debounce_cnt[14]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \debounce_cnt[14]~49_combout\ = (debounce_cnt(14) & ((GND) # (!\debounce_cnt[13]~48\))) # (!debounce_cnt(14) & (\debounce_cnt[13]~48\ $ (GND)))
-- \debounce_cnt[14]~50\ = CARRY((debounce_cnt(14)) # (!\debounce_cnt[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(14),
	datad => VCC,
	cin => \debounce_cnt[13]~48\,
	combout => \debounce_cnt[14]~49_combout\,
	cout => \debounce_cnt[14]~50\);

-- Location: FF_X9_Y1_N9
\debounce_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[14]~49_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always0~0_combout\,
	ena => \debounce_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(14));

-- Location: LCCOMB_X9_Y1_N10
\debounce_cnt[15]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \debounce_cnt[15]~51_combout\ = (debounce_cnt(15) & (\debounce_cnt[14]~50\ & VCC)) # (!debounce_cnt(15) & (!\debounce_cnt[14]~50\))
-- \debounce_cnt[15]~52\ = CARRY((!debounce_cnt(15) & !\debounce_cnt[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(15),
	datad => VCC,
	cin => \debounce_cnt[14]~50\,
	combout => \debounce_cnt[15]~51_combout\,
	cout => \debounce_cnt[15]~52\);

-- Location: FF_X9_Y1_N11
\debounce_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[15]~51_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always0~0_combout\,
	ena => \debounce_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(15));

-- Location: LCCOMB_X9_Y1_N12
\debounce_cnt[16]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \debounce_cnt[16]~53_combout\ = (debounce_cnt(16) & ((GND) # (!\debounce_cnt[15]~52\))) # (!debounce_cnt(16) & (\debounce_cnt[15]~52\ $ (GND)))
-- \debounce_cnt[16]~54\ = CARRY((debounce_cnt(16)) # (!\debounce_cnt[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(16),
	datad => VCC,
	cin => \debounce_cnt[15]~52\,
	combout => \debounce_cnt[16]~53_combout\,
	cout => \debounce_cnt[16]~54\);

-- Location: FF_X9_Y1_N13
\debounce_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[16]~53_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always0~0_combout\,
	ena => \debounce_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(16));

-- Location: LCCOMB_X9_Y1_N14
\debounce_cnt[17]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \debounce_cnt[17]~55_combout\ = (debounce_cnt(17) & (\debounce_cnt[16]~54\ & VCC)) # (!debounce_cnt(17) & (!\debounce_cnt[16]~54\))
-- \debounce_cnt[17]~56\ = CARRY((!debounce_cnt(17) & !\debounce_cnt[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(17),
	datad => VCC,
	cin => \debounce_cnt[16]~54\,
	combout => \debounce_cnt[17]~55_combout\,
	cout => \debounce_cnt[17]~56\);

-- Location: FF_X9_Y1_N15
\debounce_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[17]~55_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always0~0_combout\,
	ena => \debounce_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(17));

-- Location: LCCOMB_X9_Y1_N16
\debounce_cnt[18]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \debounce_cnt[18]~57_combout\ = (debounce_cnt(18) & ((GND) # (!\debounce_cnt[17]~56\))) # (!debounce_cnt(18) & (\debounce_cnt[17]~56\ $ (GND)))
-- \debounce_cnt[18]~58\ = CARRY((debounce_cnt(18)) # (!\debounce_cnt[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(18),
	datad => VCC,
	cin => \debounce_cnt[17]~56\,
	combout => \debounce_cnt[18]~57_combout\,
	cout => \debounce_cnt[18]~58\);

-- Location: FF_X9_Y1_N17
\debounce_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[18]~57_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always0~0_combout\,
	ena => \debounce_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(18));

-- Location: LCCOMB_X9_Y1_N18
\debounce_cnt[19]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \debounce_cnt[19]~59_combout\ = debounce_cnt(19) $ (!\debounce_cnt[18]~58\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(19),
	cin => \debounce_cnt[18]~58\,
	combout => \debounce_cnt[19]~59_combout\);

-- Location: FF_X9_Y1_N19
\debounce_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[19]~59_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always0~0_combout\,
	ena => \debounce_cnt[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(19));

-- Location: LCCOMB_X9_Y1_N26
\Equal1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!debounce_cnt(15) & (!debounce_cnt(14) & (!debounce_cnt(13) & !debounce_cnt(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(15),
	datab => debounce_cnt(14),
	datac => debounce_cnt(13),
	datad => debounce_cnt(16),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X9_Y1_N20
\Equal1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!debounce_cnt(9) & (!debounce_cnt(10) & (!debounce_cnt(12) & !debounce_cnt(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(9),
	datab => debounce_cnt(10),
	datac => debounce_cnt(12),
	datad => debounce_cnt(11),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X9_Y2_N6
\Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!debounce_cnt(5) & (!debounce_cnt(8) & (!debounce_cnt(7) & !debounce_cnt(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(5),
	datab => debounce_cnt(8),
	datac => debounce_cnt(7),
	datad => debounce_cnt(6),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X9_Y2_N4
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!debounce_cnt(4) & (!debounce_cnt(3) & (!debounce_cnt(1) & !debounce_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(4),
	datab => debounce_cnt(3),
	datac => debounce_cnt(1),
	datad => debounce_cnt(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X9_Y1_N28
\Equal1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~3_combout\ & (\Equal1~2_combout\ & (\Equal1~1_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal1~2_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X9_Y1_N30
\Equal1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!debounce_cnt(18) & (!debounce_cnt(19) & (!debounce_cnt(17) & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(18),
	datab => debounce_cnt(19),
	datac => debounce_cnt(17),
	datad => \Equal1~4_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X9_Y1_N24
\Equal1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (\Equal1~5_combout\ & debounce_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datac => debounce_cnt(0),
	combout => \Equal1~6_combout\);

ww_btn_pressed <= \btn_pressed~output_o\;
END structure;


