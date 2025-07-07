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

-- DATE "06/21/2025 17:18:36"

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

ENTITY 	speed_ctrl IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	rst_cnt : IN std_logic;
	cnt : OUT std_logic_vector(9 DOWNTO 0)
	);
END speed_ctrl;

-- Design Ports Information
-- cnt[0]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[3]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[4]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[5]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[6]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[7]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[8]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[9]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_cnt	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF speed_ctrl IS
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
SIGNAL ww_rst_cnt : std_logic;
SIGNAL ww_cnt : std_logic_vector(9 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt[0]~output_o\ : std_logic;
SIGNAL \cnt[1]~output_o\ : std_logic;
SIGNAL \cnt[2]~output_o\ : std_logic;
SIGNAL \cnt[3]~output_o\ : std_logic;
SIGNAL \cnt[4]~output_o\ : std_logic;
SIGNAL \cnt[5]~output_o\ : std_logic;
SIGNAL \cnt[6]~output_o\ : std_logic;
SIGNAL \cnt[7]~output_o\ : std_logic;
SIGNAL \cnt[8]~output_o\ : std_logic;
SIGNAL \cnt[9]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt[0]~10_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt[0]~11\ : std_logic;
SIGNAL \cnt[1]~14_combout\ : std_logic;
SIGNAL \count[0]~26_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \count[0]~27\ : std_logic;
SIGNAL \count[1]~28_combout\ : std_logic;
SIGNAL \count[1]~29\ : std_logic;
SIGNAL \count[2]~30_combout\ : std_logic;
SIGNAL \count[2]~31\ : std_logic;
SIGNAL \count[3]~32_combout\ : std_logic;
SIGNAL \count[3]~33\ : std_logic;
SIGNAL \count[4]~34_combout\ : std_logic;
SIGNAL \count[4]~35\ : std_logic;
SIGNAL \count[5]~36_combout\ : std_logic;
SIGNAL \count[5]~37\ : std_logic;
SIGNAL \count[6]~38_combout\ : std_logic;
SIGNAL \count[6]~39\ : std_logic;
SIGNAL \count[7]~40_combout\ : std_logic;
SIGNAL \count[7]~41\ : std_logic;
SIGNAL \count[8]~42_combout\ : std_logic;
SIGNAL \count[8]~43\ : std_logic;
SIGNAL \count[9]~44_combout\ : std_logic;
SIGNAL \count[9]~45\ : std_logic;
SIGNAL \count[10]~46_combout\ : std_logic;
SIGNAL \count[10]~47\ : std_logic;
SIGNAL \count[11]~48_combout\ : std_logic;
SIGNAL \count[11]~49\ : std_logic;
SIGNAL \count[12]~50_combout\ : std_logic;
SIGNAL \count[12]~51\ : std_logic;
SIGNAL \count[13]~52_combout\ : std_logic;
SIGNAL \count[13]~53\ : std_logic;
SIGNAL \count[14]~54_combout\ : std_logic;
SIGNAL \count[14]~55\ : std_logic;
SIGNAL \count[15]~56_combout\ : std_logic;
SIGNAL \count[15]~57\ : std_logic;
SIGNAL \count[16]~58_combout\ : std_logic;
SIGNAL \count[16]~59\ : std_logic;
SIGNAL \count[17]~60_combout\ : std_logic;
SIGNAL \count[17]~61\ : std_logic;
SIGNAL \count[18]~62_combout\ : std_logic;
SIGNAL \count[18]~63\ : std_logic;
SIGNAL \count[19]~64_combout\ : std_logic;
SIGNAL \count[19]~65\ : std_logic;
SIGNAL \count[20]~66_combout\ : std_logic;
SIGNAL \count[20]~67\ : std_logic;
SIGNAL \count[21]~68_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \count[21]~69\ : std_logic;
SIGNAL \count[22]~70_combout\ : std_logic;
SIGNAL \count[22]~71\ : std_logic;
SIGNAL \count[23]~72_combout\ : std_logic;
SIGNAL \count[23]~73\ : std_logic;
SIGNAL \count[24]~74_combout\ : std_logic;
SIGNAL \count[24]~75\ : std_logic;
SIGNAL \count[25]~76_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \rst_cnt~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \cnt[1]~13_combout\ : std_logic;
SIGNAL \cnt[1]~reg0_q\ : std_logic;
SIGNAL \cnt[1]~15\ : std_logic;
SIGNAL \cnt[2]~16_combout\ : std_logic;
SIGNAL \cnt[2]~reg0_q\ : std_logic;
SIGNAL \cnt[2]~17\ : std_logic;
SIGNAL \cnt[3]~18_combout\ : std_logic;
SIGNAL \cnt[3]~reg0_q\ : std_logic;
SIGNAL \cnt[3]~19\ : std_logic;
SIGNAL \cnt[4]~20_combout\ : std_logic;
SIGNAL \cnt[4]~reg0_q\ : std_logic;
SIGNAL \cnt[4]~21\ : std_logic;
SIGNAL \cnt[5]~22_combout\ : std_logic;
SIGNAL \cnt[5]~reg0_q\ : std_logic;
SIGNAL \cnt[5]~23\ : std_logic;
SIGNAL \cnt[6]~24_combout\ : std_logic;
SIGNAL \cnt[6]~reg0_q\ : std_logic;
SIGNAL \cnt[6]~25\ : std_logic;
SIGNAL \cnt[7]~26_combout\ : std_logic;
SIGNAL \cnt[7]~reg0_q\ : std_logic;
SIGNAL \cnt[7]~27\ : std_logic;
SIGNAL \cnt[8]~28_combout\ : std_logic;
SIGNAL \cnt[8]~reg0_q\ : std_logic;
SIGNAL \cnt[8]~29\ : std_logic;
SIGNAL \cnt[9]~30_combout\ : std_logic;
SIGNAL \cnt[9]~reg0_q\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \cnt[1]~12_combout\ : std_logic;
SIGNAL \cnt[0]~reg0_q\ : std_logic;
SIGNAL count : std_logic_vector(25 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ww_rst_cnt <= rst_cnt;
cnt <= ww_cnt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X33_Y24_N9
\cnt[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt[0]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt[0]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\cnt[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt[1]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt[1]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\cnt[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt[2]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt[2]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\cnt[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt[3]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt[3]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\cnt[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt[4]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt[4]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\cnt[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt[5]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt[5]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\cnt[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt[6]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt[6]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\cnt[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt[7]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt[7]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\cnt[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt[8]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt[8]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\cnt[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt[9]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt[9]~output_o\);

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

-- Location: LCCOMB_X32_Y17_N8
\cnt[0]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[0]~10_combout\ = \cnt[0]~reg0_q\ $ (VCC)
-- \cnt[0]~11\ = CARRY(\cnt[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt[0]~reg0_q\,
	datad => VCC,
	combout => \cnt[0]~10_combout\,
	cout => \cnt[0]~11\);

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

-- Location: LCCOMB_X32_Y17_N10
\cnt[1]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[1]~14_combout\ = (\cnt[1]~reg0_q\ & (!\cnt[0]~11\)) # (!\cnt[1]~reg0_q\ & ((\cnt[0]~11\) # (GND)))
-- \cnt[1]~15\ = CARRY((!\cnt[0]~11\) # (!\cnt[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[1]~reg0_q\,
	datad => VCC,
	cin => \cnt[0]~11\,
	combout => \cnt[1]~14_combout\,
	cout => \cnt[1]~15\);

-- Location: LCCOMB_X31_Y17_N6
\count[0]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[0]~26_combout\ = count(0) $ (VCC)
-- \count[0]~27\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \count[0]~26_combout\,
	cout => \count[0]~27\);

-- Location: LCCOMB_X31_Y17_N4
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!count(12) & (!count(5) & (!count(4) & !count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datab => count(5),
	datac => count(4),
	datad => count(11),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y17_N2
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!count(7) & (\LessThan0~0_combout\ & !count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datac => \LessThan0~0_combout\,
	datad => count(6),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y17_N6
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (count(0) & (count(1) & (count(2) & count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datac => count(2),
	datad => count(3),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X32_Y17_N2
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (count(9) & (count(10) & count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datac => count(10),
	datad => count(8),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X32_Y17_N30
\LessThan0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (count(13) & ((count(11)) # ((count(12)) # (\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datab => count(12),
	datac => count(13),
	datad => \Equal0~0_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X31_Y17_N0
\LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ((\LessThan0~6_combout\ & ((\Equal0~2_combout\) # (!\LessThan0~1_combout\)))) # (!\LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~7_combout\);

-- Location: FF_X31_Y17_N7
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[0]~26_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X31_Y17_N8
\count[1]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[1]~28_combout\ = (count(1) & (!\count[0]~27\)) # (!count(1) & ((\count[0]~27\) # (GND)))
-- \count[1]~29\ = CARRY((!\count[0]~27\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \count[0]~27\,
	combout => \count[1]~28_combout\,
	cout => \count[1]~29\);

-- Location: FF_X31_Y17_N9
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1]~28_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X31_Y17_N10
\count[2]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[2]~30_combout\ = (count(2) & (\count[1]~29\ $ (GND))) # (!count(2) & (!\count[1]~29\ & VCC))
-- \count[2]~31\ = CARRY((count(2) & !\count[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~29\,
	combout => \count[2]~30_combout\,
	cout => \count[2]~31\);

-- Location: FF_X31_Y17_N11
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2]~30_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X31_Y17_N12
\count[3]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[3]~32_combout\ = (count(3) & (!\count[2]~31\)) # (!count(3) & ((\count[2]~31\) # (GND)))
-- \count[3]~33\ = CARRY((!\count[2]~31\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~31\,
	combout => \count[3]~32_combout\,
	cout => \count[3]~33\);

-- Location: FF_X31_Y17_N13
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[3]~32_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X31_Y17_N14
\count[4]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[4]~34_combout\ = (count(4) & (\count[3]~33\ $ (GND))) # (!count(4) & (!\count[3]~33\ & VCC))
-- \count[4]~35\ = CARRY((count(4) & !\count[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~33\,
	combout => \count[4]~34_combout\,
	cout => \count[4]~35\);

-- Location: FF_X31_Y17_N15
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[4]~34_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X31_Y17_N16
\count[5]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[5]~36_combout\ = (count(5) & (!\count[4]~35\)) # (!count(5) & ((\count[4]~35\) # (GND)))
-- \count[5]~37\ = CARRY((!\count[4]~35\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \count[4]~35\,
	combout => \count[5]~36_combout\,
	cout => \count[5]~37\);

-- Location: FF_X31_Y17_N17
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[5]~36_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X31_Y17_N18
\count[6]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[6]~38_combout\ = (count(6) & (\count[5]~37\ $ (GND))) # (!count(6) & (!\count[5]~37\ & VCC))
-- \count[6]~39\ = CARRY((count(6) & !\count[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \count[5]~37\,
	combout => \count[6]~38_combout\,
	cout => \count[6]~39\);

-- Location: FF_X31_Y17_N19
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[6]~38_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X31_Y17_N20
\count[7]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[7]~40_combout\ = (count(7) & (!\count[6]~39\)) # (!count(7) & ((\count[6]~39\) # (GND)))
-- \count[7]~41\ = CARRY((!\count[6]~39\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~39\,
	combout => \count[7]~40_combout\,
	cout => \count[7]~41\);

-- Location: FF_X31_Y17_N21
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[7]~40_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X31_Y17_N22
\count[8]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[8]~42_combout\ = (count(8) & (\count[7]~41\ $ (GND))) # (!count(8) & (!\count[7]~41\ & VCC))
-- \count[8]~43\ = CARRY((count(8) & !\count[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datad => VCC,
	cin => \count[7]~41\,
	combout => \count[8]~42_combout\,
	cout => \count[8]~43\);

-- Location: FF_X31_Y17_N23
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[8]~42_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X31_Y17_N24
\count[9]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[9]~44_combout\ = (count(9) & (!\count[8]~43\)) # (!count(9) & ((\count[8]~43\) # (GND)))
-- \count[9]~45\ = CARRY((!\count[8]~43\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~43\,
	combout => \count[9]~44_combout\,
	cout => \count[9]~45\);

-- Location: FF_X31_Y17_N25
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[9]~44_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X31_Y17_N26
\count[10]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[10]~46_combout\ = (count(10) & (\count[9]~45\ $ (GND))) # (!count(10) & (!\count[9]~45\ & VCC))
-- \count[10]~47\ = CARRY((count(10) & !\count[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datad => VCC,
	cin => \count[9]~45\,
	combout => \count[10]~46_combout\,
	cout => \count[10]~47\);

-- Location: FF_X31_Y17_N27
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[10]~46_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X31_Y17_N28
\count[11]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[11]~48_combout\ = (count(11) & (!\count[10]~47\)) # (!count(11) & ((\count[10]~47\) # (GND)))
-- \count[11]~49\ = CARRY((!\count[10]~47\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datad => VCC,
	cin => \count[10]~47\,
	combout => \count[11]~48_combout\,
	cout => \count[11]~49\);

-- Location: FF_X31_Y17_N29
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[11]~48_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X31_Y17_N30
\count[12]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[12]~50_combout\ = (count(12) & (\count[11]~49\ $ (GND))) # (!count(12) & (!\count[11]~49\ & VCC))
-- \count[12]~51\ = CARRY((count(12) & !\count[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datad => VCC,
	cin => \count[11]~49\,
	combout => \count[12]~50_combout\,
	cout => \count[12]~51\);

-- Location: FF_X31_Y17_N31
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[12]~50_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X31_Y16_N0
\count[13]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[13]~52_combout\ = (count(13) & (!\count[12]~51\)) # (!count(13) & ((\count[12]~51\) # (GND)))
-- \count[13]~53\ = CARRY((!\count[12]~51\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \count[12]~51\,
	combout => \count[13]~52_combout\,
	cout => \count[13]~53\);

-- Location: FF_X31_Y16_N1
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[13]~52_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X31_Y16_N2
\count[14]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[14]~54_combout\ = (count(14) & (\count[13]~53\ $ (GND))) # (!count(14) & (!\count[13]~53\ & VCC))
-- \count[14]~55\ = CARRY((count(14) & !\count[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~53\,
	combout => \count[14]~54_combout\,
	cout => \count[14]~55\);

-- Location: FF_X31_Y16_N3
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[14]~54_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X31_Y16_N4
\count[15]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[15]~56_combout\ = (count(15) & (!\count[14]~55\)) # (!count(15) & ((\count[14]~55\) # (GND)))
-- \count[15]~57\ = CARRY((!\count[14]~55\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \count[14]~55\,
	combout => \count[15]~56_combout\,
	cout => \count[15]~57\);

-- Location: FF_X31_Y16_N5
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[15]~56_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X31_Y16_N6
\count[16]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[16]~58_combout\ = (count(16) & (\count[15]~57\ $ (GND))) # (!count(16) & (!\count[15]~57\ & VCC))
-- \count[16]~59\ = CARRY((count(16) & !\count[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \count[15]~57\,
	combout => \count[16]~58_combout\,
	cout => \count[16]~59\);

-- Location: FF_X31_Y16_N7
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[16]~58_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X31_Y16_N8
\count[17]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[17]~60_combout\ = (count(17) & (!\count[16]~59\)) # (!count(17) & ((\count[16]~59\) # (GND)))
-- \count[17]~61\ = CARRY((!\count[16]~59\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datad => VCC,
	cin => \count[16]~59\,
	combout => \count[17]~60_combout\,
	cout => \count[17]~61\);

-- Location: FF_X31_Y16_N9
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[17]~60_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X31_Y16_N10
\count[18]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[18]~62_combout\ = (count(18) & (\count[17]~61\ $ (GND))) # (!count(18) & (!\count[17]~61\ & VCC))
-- \count[18]~63\ = CARRY((count(18) & !\count[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \count[17]~61\,
	combout => \count[18]~62_combout\,
	cout => \count[18]~63\);

-- Location: FF_X31_Y16_N11
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[18]~62_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X31_Y16_N12
\count[19]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[19]~64_combout\ = (count(19) & (!\count[18]~63\)) # (!count(19) & ((\count[18]~63\) # (GND)))
-- \count[19]~65\ = CARRY((!\count[18]~63\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	datad => VCC,
	cin => \count[18]~63\,
	combout => \count[19]~64_combout\,
	cout => \count[19]~65\);

-- Location: FF_X31_Y16_N13
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[19]~64_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X31_Y16_N14
\count[20]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[20]~66_combout\ = (count(20) & (\count[19]~65\ $ (GND))) # (!count(20) & (!\count[19]~65\ & VCC))
-- \count[20]~67\ = CARRY((count(20) & !\count[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \count[19]~65\,
	combout => \count[20]~66_combout\,
	cout => \count[20]~67\);

-- Location: FF_X31_Y16_N15
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[20]~66_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X31_Y16_N16
\count[21]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[21]~68_combout\ = (count(21) & (!\count[20]~67\)) # (!count(21) & ((\count[20]~67\) # (GND)))
-- \count[21]~69\ = CARRY((!\count[20]~67\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	datad => VCC,
	cin => \count[20]~67\,
	combout => \count[21]~68_combout\,
	cout => \count[21]~69\);

-- Location: FF_X31_Y16_N17
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[21]~68_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X31_Y16_N28
\LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!count(18) & (!count(20) & (!count(19) & !count(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datab => count(20),
	datac => count(19),
	datad => count(21),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X31_Y16_N30
\LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!count(16) & (!count(15) & (!count(17) & !count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => count(15),
	datac => count(17),
	datad => count(14),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X31_Y16_N18
\count[22]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[22]~70_combout\ = (count(22) & (\count[21]~69\ $ (GND))) # (!count(22) & (!\count[21]~69\ & VCC))
-- \count[22]~71\ = CARRY((count(22) & !\count[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \count[21]~69\,
	combout => \count[22]~70_combout\,
	cout => \count[22]~71\);

-- Location: FF_X31_Y16_N19
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[22]~70_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X31_Y16_N20
\count[23]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[23]~72_combout\ = (count(23) & (!\count[22]~71\)) # (!count(23) & ((\count[22]~71\) # (GND)))
-- \count[23]~73\ = CARRY((!\count[22]~71\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datad => VCC,
	cin => \count[22]~71\,
	combout => \count[23]~72_combout\,
	cout => \count[23]~73\);

-- Location: FF_X31_Y16_N21
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[23]~72_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X31_Y16_N22
\count[24]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[24]~74_combout\ = (count(24) & (\count[23]~73\ $ (GND))) # (!count(24) & (!\count[23]~73\ & VCC))
-- \count[24]~75\ = CARRY((count(24) & !\count[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \count[23]~73\,
	combout => \count[24]~74_combout\,
	cout => \count[24]~75\);

-- Location: FF_X31_Y16_N23
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[24]~74_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X31_Y16_N24
\count[25]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[25]~76_combout\ = count(25) $ (\count[24]~75\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	cin => \count[24]~75\,
	combout => \count[25]~76_combout\);

-- Location: FF_X31_Y16_N25
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[25]~76_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X31_Y16_N26
\LessThan0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!count(22) & (!count(23) & (!count(24) & !count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => count(23),
	datac => count(24),
	datad => count(25),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X32_Y17_N6
\LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~3_combout\ & (\LessThan0~2_combout\ & \LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: IOIBUF_X33_Y15_N8
\rst_cnt~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_cnt,
	o => \rst_cnt~input_o\);

-- Location: LCCOMB_X32_Y17_N0
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ((!\LessThan0~1_combout\) # (!count(13))) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => count(13),
	datad => \LessThan0~1_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X32_Y17_N28
\cnt[1]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[1]~13_combout\ = (\rst_cnt~input_o\) # ((\LessThan0~5_combout\ & (\Equal0~2_combout\ & !\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \rst_cnt~input_o\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \cnt[1]~13_combout\);

-- Location: FF_X32_Y17_N11
\cnt[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[1]~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \cnt[1]~12_combout\,
	ena => \cnt[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[1]~reg0_q\);

-- Location: LCCOMB_X32_Y17_N12
\cnt[2]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[2]~16_combout\ = (\cnt[2]~reg0_q\ & (\cnt[1]~15\ $ (GND))) # (!\cnt[2]~reg0_q\ & (!\cnt[1]~15\ & VCC))
-- \cnt[2]~17\ = CARRY((\cnt[2]~reg0_q\ & !\cnt[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[2]~reg0_q\,
	datad => VCC,
	cin => \cnt[1]~15\,
	combout => \cnt[2]~16_combout\,
	cout => \cnt[2]~17\);

-- Location: FF_X32_Y17_N13
\cnt[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[2]~16_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \cnt[1]~12_combout\,
	ena => \cnt[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[2]~reg0_q\);

-- Location: LCCOMB_X32_Y17_N14
\cnt[3]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[3]~18_combout\ = (\cnt[3]~reg0_q\ & (!\cnt[2]~17\)) # (!\cnt[3]~reg0_q\ & ((\cnt[2]~17\) # (GND)))
-- \cnt[3]~19\ = CARRY((!\cnt[2]~17\) # (!\cnt[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt[3]~reg0_q\,
	datad => VCC,
	cin => \cnt[2]~17\,
	combout => \cnt[3]~18_combout\,
	cout => \cnt[3]~19\);

-- Location: FF_X32_Y17_N15
\cnt[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[3]~18_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \cnt[1]~12_combout\,
	ena => \cnt[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[3]~reg0_q\);

-- Location: LCCOMB_X32_Y17_N16
\cnt[4]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[4]~20_combout\ = (\cnt[4]~reg0_q\ & (\cnt[3]~19\ $ (GND))) # (!\cnt[4]~reg0_q\ & (!\cnt[3]~19\ & VCC))
-- \cnt[4]~21\ = CARRY((\cnt[4]~reg0_q\ & !\cnt[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt[4]~reg0_q\,
	datad => VCC,
	cin => \cnt[3]~19\,
	combout => \cnt[4]~20_combout\,
	cout => \cnt[4]~21\);

-- Location: FF_X32_Y17_N17
\cnt[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[4]~20_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \cnt[1]~12_combout\,
	ena => \cnt[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[4]~reg0_q\);

-- Location: LCCOMB_X32_Y17_N18
\cnt[5]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[5]~22_combout\ = (\cnt[5]~reg0_q\ & (!\cnt[4]~21\)) # (!\cnt[5]~reg0_q\ & ((\cnt[4]~21\) # (GND)))
-- \cnt[5]~23\ = CARRY((!\cnt[4]~21\) # (!\cnt[5]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt[5]~reg0_q\,
	datad => VCC,
	cin => \cnt[4]~21\,
	combout => \cnt[5]~22_combout\,
	cout => \cnt[5]~23\);

-- Location: FF_X32_Y17_N19
\cnt[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[5]~22_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \cnt[1]~12_combout\,
	ena => \cnt[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[5]~reg0_q\);

-- Location: LCCOMB_X32_Y17_N20
\cnt[6]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[6]~24_combout\ = (\cnt[6]~reg0_q\ & (\cnt[5]~23\ $ (GND))) # (!\cnt[6]~reg0_q\ & (!\cnt[5]~23\ & VCC))
-- \cnt[6]~25\ = CARRY((\cnt[6]~reg0_q\ & !\cnt[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt[6]~reg0_q\,
	datad => VCC,
	cin => \cnt[5]~23\,
	combout => \cnt[6]~24_combout\,
	cout => \cnt[6]~25\);

-- Location: FF_X32_Y17_N21
\cnt[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[6]~24_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \cnt[1]~12_combout\,
	ena => \cnt[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[6]~reg0_q\);

-- Location: LCCOMB_X32_Y17_N22
\cnt[7]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[7]~26_combout\ = (\cnt[7]~reg0_q\ & (!\cnt[6]~25\)) # (!\cnt[7]~reg0_q\ & ((\cnt[6]~25\) # (GND)))
-- \cnt[7]~27\ = CARRY((!\cnt[6]~25\) # (!\cnt[7]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[7]~reg0_q\,
	datad => VCC,
	cin => \cnt[6]~25\,
	combout => \cnt[7]~26_combout\,
	cout => \cnt[7]~27\);

-- Location: FF_X32_Y17_N23
\cnt[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[7]~26_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \cnt[1]~12_combout\,
	ena => \cnt[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[7]~reg0_q\);

-- Location: LCCOMB_X32_Y17_N24
\cnt[8]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[8]~28_combout\ = (\cnt[8]~reg0_q\ & (\cnt[7]~27\ $ (GND))) # (!\cnt[8]~reg0_q\ & (!\cnt[7]~27\ & VCC))
-- \cnt[8]~29\ = CARRY((\cnt[8]~reg0_q\ & !\cnt[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt[8]~reg0_q\,
	datad => VCC,
	cin => \cnt[7]~27\,
	combout => \cnt[8]~28_combout\,
	cout => \cnt[8]~29\);

-- Location: FF_X32_Y17_N25
\cnt[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[8]~28_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \cnt[1]~12_combout\,
	ena => \cnt[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[8]~reg0_q\);

-- Location: LCCOMB_X32_Y17_N26
\cnt[9]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[9]~30_combout\ = \cnt[8]~29\ $ (\cnt[9]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cnt[9]~reg0_q\,
	cin => \cnt[8]~29\,
	combout => \cnt[9]~30_combout\);

-- Location: FF_X32_Y17_N27
\cnt[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[9]~30_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \cnt[1]~12_combout\,
	ena => \cnt[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[9]~reg0_q\);

-- Location: LCCOMB_X30_Y17_N22
\Equal1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\cnt[8]~reg0_q\) # (!\cnt[9]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt[9]~reg0_q\,
	datad => \cnt[8]~reg0_q\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X32_Y17_N4
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (((!\cnt[1]~reg0_q\) # (!\cnt[0]~reg0_q\)) # (!\cnt[3]~reg0_q\)) # (!\cnt[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[2]~reg0_q\,
	datab => \cnt[3]~reg0_q\,
	datac => \cnt[0]~reg0_q\,
	datad => \cnt[1]~reg0_q\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X30_Y17_N0
\Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (((!\cnt[4]~reg0_q\) # (!\cnt[7]~reg0_q\)) # (!\cnt[6]~reg0_q\)) # (!\cnt[5]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[5]~reg0_q\,
	datab => \cnt[6]~reg0_q\,
	datac => \cnt[7]~reg0_q\,
	datad => \cnt[4]~reg0_q\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X30_Y17_N4
\cnt[1]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[1]~12_combout\ = (\rst_cnt~input_o\) # ((!\Equal1~2_combout\ & (!\Equal1~0_combout\ & !\Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \rst_cnt~input_o\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \cnt[1]~12_combout\);

-- Location: FF_X32_Y17_N9
\cnt[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[0]~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \cnt[1]~12_combout\,
	ena => \cnt[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[0]~reg0_q\);

ww_cnt(0) <= \cnt[0]~output_o\;

ww_cnt(1) <= \cnt[1]~output_o\;

ww_cnt(2) <= \cnt[2]~output_o\;

ww_cnt(3) <= \cnt[3]~output_o\;

ww_cnt(4) <= \cnt[4]~output_o\;

ww_cnt(5) <= \cnt[5]~output_o\;

ww_cnt(6) <= \cnt[6]~output_o\;

ww_cnt(7) <= \cnt[7]~output_o\;

ww_cnt(8) <= \cnt[8]~output_o\;

ww_cnt(9) <= \cnt[9]~output_o\;
END structure;


