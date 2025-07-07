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

-- DATE "06/21/2025 16:43:25"

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

ENTITY 	wave_gen IS
    PORT (
	clk_1mhz : IN std_logic;
	rst_n : IN std_logic;
	div_max : IN std_logic_vector(10 DOWNTO 0);
	been : BUFFER std_logic
	);
END wave_gen;

-- Design Ports Information
-- been	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_max[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_max[1]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_max[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_max[3]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_max[4]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_max[5]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_max[6]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_max[7]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_max[8]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_max[9]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_max[10]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_1mhz	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF wave_gen IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_1mhz : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_div_max : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_been : std_logic;
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_1mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \been~output_o\ : std_logic;
SIGNAL \clk_1mhz~input_o\ : std_logic;
SIGNAL \clk_1mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \div_max[2]~input_o\ : std_logic;
SIGNAL \div_max[1]~input_o\ : std_logic;
SIGNAL \div_max[0]~input_o\ : std_logic;
SIGNAL \div_max[3]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \div_max[10]~input_o\ : std_logic;
SIGNAL \div_max[8]~input_o\ : std_logic;
SIGNAL \div_max[9]~input_o\ : std_logic;
SIGNAL \div_max[5]~input_o\ : std_logic;
SIGNAL \div_max[6]~input_o\ : std_logic;
SIGNAL \div_max[4]~input_o\ : std_logic;
SIGNAL \div_max[7]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \div_cnt[0]~11_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \div_cnt[0]~12\ : std_logic;
SIGNAL \div_cnt[1]~13_combout\ : std_logic;
SIGNAL \div_cnt[1]~14\ : std_logic;
SIGNAL \div_cnt[2]~15_combout\ : std_logic;
SIGNAL \div_cnt[2]~16\ : std_logic;
SIGNAL \div_cnt[3]~17_combout\ : std_logic;
SIGNAL \div_cnt[3]~18\ : std_logic;
SIGNAL \div_cnt[4]~19_combout\ : std_logic;
SIGNAL \div_cnt[4]~20\ : std_logic;
SIGNAL \div_cnt[5]~21_combout\ : std_logic;
SIGNAL \div_cnt[5]~22\ : std_logic;
SIGNAL \div_cnt[6]~23_combout\ : std_logic;
SIGNAL \div_cnt[6]~24\ : std_logic;
SIGNAL \div_cnt[7]~25_combout\ : std_logic;
SIGNAL \div_cnt[7]~26\ : std_logic;
SIGNAL \div_cnt[8]~27_combout\ : std_logic;
SIGNAL \div_cnt[8]~28\ : std_logic;
SIGNAL \div_cnt[9]~29_combout\ : std_logic;
SIGNAL \div_cnt[9]~30\ : std_logic;
SIGNAL \div_cnt[10]~31_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \been~0_combout\ : std_logic;
SIGNAL \been~reg0_q\ : std_logic;
SIGNAL div_cnt : std_logic_vector(10 DOWNTO 0);

BEGIN

ww_clk_1mhz <= clk_1mhz;
ww_rst_n <= rst_n;
ww_div_max <= div_max;
been <= ww_been;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\clk_1mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_1mhz~input_o\);

-- Location: IOOBUF_X24_Y0_N2
\been~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \been~reg0_q\,
	devoe => ww_devoe,
	o => \been~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk_1mhz~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_1mhz,
	o => \clk_1mhz~input_o\);

-- Location: CLKCTRL_G17
\clk_1mhz~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_1mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_1mhz~inputclkctrl_outclk\);

-- Location: IOIBUF_X22_Y0_N8
\div_max[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_div_max(2),
	o => \div_max[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\div_max[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_div_max(1),
	o => \div_max[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\div_max[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_div_max(0),
	o => \div_max[0]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\div_max[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_div_max(3),
	o => \div_max[3]~input_o\);

-- Location: LCCOMB_X30_Y2_N2
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\div_max[2]~input_o\ & (!\div_max[1]~input_o\ & (!\div_max[0]~input_o\ & !\div_max[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_max[2]~input_o\,
	datab => \div_max[1]~input_o\,
	datac => \div_max[0]~input_o\,
	datad => \div_max[3]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X33_Y16_N15
\div_max[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_div_max(10),
	o => \div_max[10]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\div_max[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_div_max(8),
	o => \div_max[8]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\div_max[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_div_max(9),
	o => \div_max[9]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\div_max[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_div_max(5),
	o => \div_max[5]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\div_max[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_div_max(6),
	o => \div_max[6]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\div_max[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_div_max(4),
	o => \div_max[4]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\div_max[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_div_max(7),
	o => \div_max[7]~input_o\);

-- Location: LCCOMB_X30_Y2_N4
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\div_max[5]~input_o\ & (!\div_max[6]~input_o\ & (!\div_max[4]~input_o\ & !\div_max[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_max[5]~input_o\,
	datab => \div_max[6]~input_o\,
	datac => \div_max[4]~input_o\,
	datad => \div_max[7]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X29_Y2_N2
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\div_max[10]~input_o\ & (!\div_max[8]~input_o\ & (!\div_max[9]~input_o\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_max[10]~input_o\,
	datab => \div_max[8]~input_o\,
	datac => \div_max[9]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X29_Y2_N8
\div_cnt[0]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_cnt[0]~11_combout\ = div_cnt(0) $ (VCC)
-- \div_cnt[0]~12\ = CARRY(div_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(0),
	datad => VCC,
	combout => \div_cnt[0]~11_combout\,
	cout => \div_cnt[0]~12\);

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

-- Location: FF_X29_Y2_N9
\div_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \div_cnt[0]~11_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(0));

-- Location: LCCOMB_X29_Y2_N10
\div_cnt[1]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_cnt[1]~13_combout\ = (div_cnt(1) & (!\div_cnt[0]~12\)) # (!div_cnt(1) & ((\div_cnt[0]~12\) # (GND)))
-- \div_cnt[1]~14\ = CARRY((!\div_cnt[0]~12\) # (!div_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(1),
	datad => VCC,
	cin => \div_cnt[0]~12\,
	combout => \div_cnt[1]~13_combout\,
	cout => \div_cnt[1]~14\);

-- Location: FF_X29_Y2_N11
\div_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \div_cnt[1]~13_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(1));

-- Location: LCCOMB_X29_Y2_N12
\div_cnt[2]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_cnt[2]~15_combout\ = (div_cnt(2) & (\div_cnt[1]~14\ $ (GND))) # (!div_cnt(2) & (!\div_cnt[1]~14\ & VCC))
-- \div_cnt[2]~16\ = CARRY((div_cnt(2) & !\div_cnt[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(2),
	datad => VCC,
	cin => \div_cnt[1]~14\,
	combout => \div_cnt[2]~15_combout\,
	cout => \div_cnt[2]~16\);

-- Location: FF_X29_Y2_N13
\div_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \div_cnt[2]~15_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(2));

-- Location: LCCOMB_X29_Y2_N14
\div_cnt[3]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_cnt[3]~17_combout\ = (div_cnt(3) & (!\div_cnt[2]~16\)) # (!div_cnt(3) & ((\div_cnt[2]~16\) # (GND)))
-- \div_cnt[3]~18\ = CARRY((!\div_cnt[2]~16\) # (!div_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(3),
	datad => VCC,
	cin => \div_cnt[2]~16\,
	combout => \div_cnt[3]~17_combout\,
	cout => \div_cnt[3]~18\);

-- Location: FF_X29_Y2_N15
\div_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \div_cnt[3]~17_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(3));

-- Location: LCCOMB_X29_Y2_N16
\div_cnt[4]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_cnt[4]~19_combout\ = (div_cnt(4) & (\div_cnt[3]~18\ $ (GND))) # (!div_cnt(4) & (!\div_cnt[3]~18\ & VCC))
-- \div_cnt[4]~20\ = CARRY((div_cnt(4) & !\div_cnt[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(4),
	datad => VCC,
	cin => \div_cnt[3]~18\,
	combout => \div_cnt[4]~19_combout\,
	cout => \div_cnt[4]~20\);

-- Location: FF_X29_Y2_N17
\div_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \div_cnt[4]~19_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(4));

-- Location: LCCOMB_X29_Y2_N18
\div_cnt[5]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_cnt[5]~21_combout\ = (div_cnt(5) & (!\div_cnt[4]~20\)) # (!div_cnt(5) & ((\div_cnt[4]~20\) # (GND)))
-- \div_cnt[5]~22\ = CARRY((!\div_cnt[4]~20\) # (!div_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(5),
	datad => VCC,
	cin => \div_cnt[4]~20\,
	combout => \div_cnt[5]~21_combout\,
	cout => \div_cnt[5]~22\);

-- Location: FF_X29_Y2_N19
\div_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \div_cnt[5]~21_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(5));

-- Location: LCCOMB_X29_Y2_N20
\div_cnt[6]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_cnt[6]~23_combout\ = (div_cnt(6) & (\div_cnt[5]~22\ $ (GND))) # (!div_cnt(6) & (!\div_cnt[5]~22\ & VCC))
-- \div_cnt[6]~24\ = CARRY((div_cnt(6) & !\div_cnt[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(6),
	datad => VCC,
	cin => \div_cnt[5]~22\,
	combout => \div_cnt[6]~23_combout\,
	cout => \div_cnt[6]~24\);

-- Location: FF_X29_Y2_N21
\div_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \div_cnt[6]~23_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(6));

-- Location: LCCOMB_X29_Y2_N22
\div_cnt[7]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_cnt[7]~25_combout\ = (div_cnt(7) & (!\div_cnt[6]~24\)) # (!div_cnt(7) & ((\div_cnt[6]~24\) # (GND)))
-- \div_cnt[7]~26\ = CARRY((!\div_cnt[6]~24\) # (!div_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(7),
	datad => VCC,
	cin => \div_cnt[6]~24\,
	combout => \div_cnt[7]~25_combout\,
	cout => \div_cnt[7]~26\);

-- Location: FF_X29_Y2_N23
\div_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \div_cnt[7]~25_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(7));

-- Location: LCCOMB_X29_Y2_N24
\div_cnt[8]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_cnt[8]~27_combout\ = (div_cnt(8) & (\div_cnt[7]~26\ $ (GND))) # (!div_cnt(8) & (!\div_cnt[7]~26\ & VCC))
-- \div_cnt[8]~28\ = CARRY((div_cnt(8) & !\div_cnt[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(8),
	datad => VCC,
	cin => \div_cnt[7]~26\,
	combout => \div_cnt[8]~27_combout\,
	cout => \div_cnt[8]~28\);

-- Location: FF_X29_Y2_N25
\div_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \div_cnt[8]~27_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(8));

-- Location: LCCOMB_X29_Y2_N26
\div_cnt[9]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_cnt[9]~29_combout\ = (div_cnt(9) & (!\div_cnt[8]~28\)) # (!div_cnt(9) & ((\div_cnt[8]~28\) # (GND)))
-- \div_cnt[9]~30\ = CARRY((!\div_cnt[8]~28\) # (!div_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(9),
	datad => VCC,
	cin => \div_cnt[8]~28\,
	combout => \div_cnt[9]~29_combout\,
	cout => \div_cnt[9]~30\);

-- Location: FF_X29_Y2_N27
\div_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \div_cnt[9]~29_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(9));

-- Location: LCCOMB_X29_Y2_N28
\div_cnt[10]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \div_cnt[10]~31_combout\ = \div_cnt[9]~30\ $ (!div_cnt(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => div_cnt(10),
	cin => \div_cnt[9]~30\,
	combout => \div_cnt[10]~31_combout\);

-- Location: FF_X29_Y2_N29
\div_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \div_cnt[10]~31_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(10));

-- Location: LCCOMB_X29_Y2_N30
\Equal1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (\div_max[9]~input_o\ & (div_cnt(9) & (\div_max[8]~input_o\ $ (!div_cnt(8))))) # (!\div_max[9]~input_o\ & (!div_cnt(9) & (\div_max[8]~input_o\ $ (!div_cnt(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_max[9]~input_o\,
	datab => \div_max[8]~input_o\,
	datac => div_cnt(9),
	datad => div_cnt(8),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X30_Y2_N22
\Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (div_cnt(2) & (\div_max[2]~input_o\ & (\div_max[3]~input_o\ $ (!div_cnt(3))))) # (!div_cnt(2) & (!\div_max[2]~input_o\ & (\div_max[3]~input_o\ $ (!div_cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(2),
	datab => \div_max[3]~input_o\,
	datac => \div_max[2]~input_o\,
	datad => div_cnt(3),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X30_Y2_N8
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (div_cnt(0) & (\div_max[0]~input_o\ & (\div_max[1]~input_o\ $ (!div_cnt(1))))) # (!div_cnt(0) & (!\div_max[0]~input_o\ & (\div_max[1]~input_o\ $ (!div_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(0),
	datab => \div_max[1]~input_o\,
	datac => \div_max[0]~input_o\,
	datad => div_cnt(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X30_Y2_N26
\Equal1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\div_max[7]~input_o\ & (div_cnt(7) & (div_cnt(6) $ (!\div_max[6]~input_o\)))) # (!\div_max[7]~input_o\ & (!div_cnt(7) & (div_cnt(6) $ (!\div_max[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_max[7]~input_o\,
	datab => div_cnt(6),
	datac => \div_max[6]~input_o\,
	datad => div_cnt(7),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X30_Y2_N12
\Equal1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\div_max[5]~input_o\ & (div_cnt(5) & (\div_max[4]~input_o\ $ (!div_cnt(4))))) # (!\div_max[5]~input_o\ & (!div_cnt(5) & (\div_max[4]~input_o\ $ (!div_cnt(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_max[5]~input_o\,
	datab => \div_max[4]~input_o\,
	datac => div_cnt(4),
	datad => div_cnt(5),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X30_Y2_N28
\Equal1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~1_combout\ & (\Equal1~0_combout\ & (\Equal1~3_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X29_Y2_N0
\Equal1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (\Equal1~5_combout\ & (\Equal1~4_combout\ & (\div_max[10]~input_o\ $ (!div_cnt(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_max[10]~input_o\,
	datab => div_cnt(10),
	datac => \Equal1~5_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X29_Y2_N4
\been~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \been~0_combout\ = (\Equal0~0_combout\ & (!\Equal0~2_combout\ & (\been~reg0_q\ $ (\Equal1~6_combout\)))) # (!\Equal0~0_combout\ & ((\been~reg0_q\ $ (\Equal1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \been~reg0_q\,
	datad => \Equal1~6_combout\,
	combout => \been~0_combout\);

-- Location: FF_X29_Y2_N5
\been~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \been~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \been~reg0_q\);

ww_been <= \been~output_o\;
END structure;


