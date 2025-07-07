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

-- DATE "06/21/2025 16:51:30"

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

ENTITY 	lev_ctl IS
    PORT (
	clk_1mhz : IN std_logic;
	rst_n : IN std_logic;
	data : IN std_logic_vector(4 DOWNTO 0);
	div_max : OUT std_logic_vector(10 DOWNTO 0)
	);
END lev_ctl;

-- Design Ports Information
-- div_max[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_max[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_max[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_max[3]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_max[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_max[5]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_max[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_max[7]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_max[8]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_max[9]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_max[10]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_1mhz	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lev_ctl IS
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
SIGNAL ww_data : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_div_max : std_logic_vector(10 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_1mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \div_max[0]~output_o\ : std_logic;
SIGNAL \div_max[1]~output_o\ : std_logic;
SIGNAL \div_max[2]~output_o\ : std_logic;
SIGNAL \div_max[3]~output_o\ : std_logic;
SIGNAL \div_max[4]~output_o\ : std_logic;
SIGNAL \div_max[5]~output_o\ : std_logic;
SIGNAL \div_max[6]~output_o\ : std_logic;
SIGNAL \div_max[7]~output_o\ : std_logic;
SIGNAL \div_max[8]~output_o\ : std_logic;
SIGNAL \div_max[9]~output_o\ : std_logic;
SIGNAL \div_max[10]~output_o\ : std_logic;
SIGNAL \clk_1mhz~input_o\ : std_logic;
SIGNAL \clk_1mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \WideOr10~1_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \WideOr9~1_combout\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \WideOr9~2_combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \WideOr8~1_combout\ : std_logic;
SIGNAL \WideOr8~2_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \WideOr7~1_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \WideOr6~1_combout\ : std_logic;
SIGNAL \WideOr6~2_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr5~1_combout\ : std_logic;
SIGNAL \WideOr4~1_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr4~2_combout\ : std_logic;
SIGNAL \WideOr3~1_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr3~2_combout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr2~2_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL wave_cnt_max : std_logic_vector(10 DOWNTO 0);

BEGIN

ww_clk_1mhz <= clk_1mhz;
ww_rst_n <= rst_n;
ww_data <= data;
div_max <= ww_div_max;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\clk_1mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_1mhz~input_o\);

-- Location: IOOBUF_X8_Y0_N9
\div_max[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => wave_cnt_max(0),
	devoe => ww_devoe,
	o => \div_max[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\div_max[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => wave_cnt_max(1),
	devoe => ww_devoe,
	o => \div_max[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\div_max[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => wave_cnt_max(2),
	devoe => ww_devoe,
	o => \div_max[2]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\div_max[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => wave_cnt_max(3),
	devoe => ww_devoe,
	o => \div_max[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\div_max[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => wave_cnt_max(4),
	devoe => ww_devoe,
	o => \div_max[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\div_max[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => wave_cnt_max(5),
	devoe => ww_devoe,
	o => \div_max[5]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\div_max[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => wave_cnt_max(6),
	devoe => ww_devoe,
	o => \div_max[6]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\div_max[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => wave_cnt_max(7),
	devoe => ww_devoe,
	o => \div_max[7]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\div_max[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => wave_cnt_max(8),
	devoe => ww_devoe,
	o => \div_max[8]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\div_max[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => wave_cnt_max(9),
	devoe => ww_devoe,
	o => \div_max[9]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\div_max[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => wave_cnt_max(10),
	devoe => ww_devoe,
	o => \div_max[10]~output_o\);

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

-- Location: IOIBUF_X10_Y0_N8
\data[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\data[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\data[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\data[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\data[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: LCCOMB_X24_Y1_N8
\WideOr10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = (\data[2]~input_o\ & (\data[3]~input_o\ & (\data[0]~input_o\ $ (!\data[4]~input_o\)))) # (!\data[2]~input_o\ & (\data[0]~input_o\ & (\data[3]~input_o\ $ (\data[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~input_o\,
	datab => \data[2]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[4]~input_o\,
	combout => \WideOr10~0_combout\);

-- Location: LCCOMB_X24_Y1_N2
\WideOr10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr10~1_combout\ = (\data[4]~input_o\ & (\WideOr10~0_combout\ $ (((\data[1]~input_o\ & !\data[2]~input_o\))))) # (!\data[4]~input_o\ & (\WideOr10~0_combout\ & ((!\data[2]~input_o\) # (!\data[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datab => \data[1]~input_o\,
	datac => \WideOr10~0_combout\,
	datad => \data[2]~input_o\,
	combout => \WideOr10~1_combout\);

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

-- Location: FF_X24_Y1_N3
\wave_cnt_max[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \WideOr10~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wave_cnt_max(0));

-- Location: LCCOMB_X14_Y1_N20
\WideOr9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr9~1_combout\ = (\data[3]~input_o\ & ((\data[1]~input_o\ & (!\data[2]~input_o\ & !\data[0]~input_o\)) # (!\data[1]~input_o\ & (\data[2]~input_o\ $ (\data[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~input_o\,
	datab => \data[1]~input_o\,
	datac => \data[2]~input_o\,
	datad => \data[0]~input_o\,
	combout => \WideOr9~1_combout\);

-- Location: LCCOMB_X14_Y1_N2
\WideOr9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (\data[3]~input_o\ & ((\data[2]~input_o\ & (!\data[1]~input_o\)) # (!\data[2]~input_o\ & ((\data[0]~input_o\))))) # (!\data[3]~input_o\ & ((\data[0]~input_o\) # ((\data[1]~input_o\ & !\data[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~input_o\,
	datab => \data[1]~input_o\,
	datac => \data[2]~input_o\,
	datad => \data[0]~input_o\,
	combout => \WideOr9~0_combout\);

-- Location: LCCOMB_X14_Y1_N8
\WideOr9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr9~2_combout\ = (\data[4]~input_o\ & ((\WideOr9~0_combout\))) # (!\data[4]~input_o\ & (\WideOr9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datab => \WideOr9~1_combout\,
	datad => \WideOr9~0_combout\,
	combout => \WideOr9~2_combout\);

-- Location: FF_X14_Y1_N9
\wave_cnt_max[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \WideOr9~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wave_cnt_max(1));

-- Location: LCCOMB_X14_Y1_N30
\WideOr8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (\data[4]~input_o\ & ((\data[2]~input_o\) # ((!\data[1]~input_o\ & \data[0]~input_o\)))) # (!\data[4]~input_o\ & ((\data[0]~input_o\) # (\data[1]~input_o\ $ (\data[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datab => \data[1]~input_o\,
	datac => \data[2]~input_o\,
	datad => \data[0]~input_o\,
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X14_Y1_N0
\WideOr8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr8~1_combout\ = (\data[4]~input_o\ & ((\data[1]~input_o\ & (!\data[2]~input_o\ & \data[0]~input_o\)) # (!\data[1]~input_o\ & (\data[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datab => \data[1]~input_o\,
	datac => \data[2]~input_o\,
	datad => \data[0]~input_o\,
	combout => \WideOr8~1_combout\);

-- Location: LCCOMB_X14_Y1_N10
\WideOr8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr8~2_combout\ = (\data[3]~input_o\ & (\WideOr8~0_combout\)) # (!\data[3]~input_o\ & ((\WideOr8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~input_o\,
	datac => \WideOr8~0_combout\,
	datad => \WideOr8~1_combout\,
	combout => \WideOr8~2_combout\);

-- Location: FF_X14_Y1_N11
\wave_cnt_max[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \WideOr8~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wave_cnt_max(2));

-- Location: LCCOMB_X14_Y1_N26
\WideOr7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (\data[3]~input_o\ & (\data[1]~input_o\ $ (((\data[2]~input_o\ & \data[0]~input_o\))))) # (!\data[3]~input_o\ & ((\data[2]~input_o\) # ((!\data[1]~input_o\ & \data[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~input_o\,
	datab => \data[1]~input_o\,
	datac => \data[2]~input_o\,
	datad => \data[0]~input_o\,
	combout => \WideOr7~0_combout\);

-- Location: LCCOMB_X14_Y1_N28
\WideOr7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr7~1_combout\ = (\WideOr7~0_combout\ & ((\data[4]~input_o\) # ((\data[3]~input_o\ & \data[0]~input_o\)))) # (!\WideOr7~0_combout\ & (\data[3]~input_o\ & (\data[0]~input_o\ & \data[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~input_o\,
	datab => \data[0]~input_o\,
	datac => \WideOr7~0_combout\,
	datad => \data[4]~input_o\,
	combout => \WideOr7~1_combout\);

-- Location: FF_X14_Y1_N29
\wave_cnt_max[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \WideOr7~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wave_cnt_max(3));

-- Location: LCCOMB_X14_Y1_N18
\WideOr6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (\data[2]~input_o\ & (((\data[1]~input_o\) # (\data[0]~input_o\)))) # (!\data[2]~input_o\ & ((\data[3]~input_o\ & ((\data[0]~input_o\))) # (!\data[3]~input_o\ & (\data[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~input_o\,
	datab => \data[1]~input_o\,
	datac => \data[2]~input_o\,
	datad => \data[0]~input_o\,
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X14_Y1_N12
\WideOr6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr6~1_combout\ = (\data[3]~input_o\ & ((\data[2]~input_o\) # ((!\data[1]~input_o\ & \data[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~input_o\,
	datab => \data[1]~input_o\,
	datac => \data[2]~input_o\,
	datad => \data[0]~input_o\,
	combout => \WideOr6~1_combout\);

-- Location: LCCOMB_X14_Y1_N6
\WideOr6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr6~2_combout\ = (\data[4]~input_o\ & (\WideOr6~0_combout\)) # (!\data[4]~input_o\ & ((\WideOr6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datab => \WideOr6~0_combout\,
	datad => \WideOr6~1_combout\,
	combout => \WideOr6~2_combout\);

-- Location: FF_X14_Y1_N7
\wave_cnt_max[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \WideOr6~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wave_cnt_max(4));

-- Location: LCCOMB_X24_Y1_N6
\WideOr5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\data[4]~input_o\ & ((\data[2]~input_o\) # ((!\data[3]~input_o\ & \data[0]~input_o\)))) # (!\data[4]~input_o\ & (\data[3]~input_o\ & ((\data[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~input_o\,
	datab => \data[2]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[4]~input_o\,
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X24_Y1_N28
\WideOr5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr5~1_combout\ = (\WideOr5~0_combout\ & ((\data[0]~input_o\) # (\data[3]~input_o\ $ (\data[1]~input_o\)))) # (!\WideOr5~0_combout\ & (\data[3]~input_o\ & (\data[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~input_o\,
	datab => \data[1]~input_o\,
	datac => \data[0]~input_o\,
	datad => \WideOr5~0_combout\,
	combout => \WideOr5~1_combout\);

-- Location: FF_X24_Y1_N29
\wave_cnt_max[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \WideOr5~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wave_cnt_max(5));

-- Location: LCCOMB_X14_Y1_N24
\WideOr4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr4~1_combout\ = (\data[3]~input_o\ & (\data[2]~input_o\ & (\data[4]~input_o\ $ (\data[1]~input_o\)))) # (!\data[3]~input_o\ & (\data[4]~input_o\ & (\data[1]~input_o\ $ (\data[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datab => \data[1]~input_o\,
	datac => \data[2]~input_o\,
	datad => \data[3]~input_o\,
	combout => \WideOr4~1_combout\);

-- Location: LCCOMB_X14_Y1_N22
\WideOr4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\data[4]~input_o\ & ((\data[1]~input_o\) # (\data[2]~input_o\ $ (\data[3]~input_o\)))) # (!\data[4]~input_o\ & (((\data[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datab => \data[1]~input_o\,
	datac => \data[2]~input_o\,
	datad => \data[3]~input_o\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X14_Y1_N16
\WideOr4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr4~2_combout\ = (\data[0]~input_o\ & ((\WideOr4~0_combout\))) # (!\data[0]~input_o\ & (\WideOr4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr4~1_combout\,
	datac => \WideOr4~0_combout\,
	datad => \data[0]~input_o\,
	combout => \WideOr4~2_combout\);

-- Location: FF_X14_Y1_N17
\wave_cnt_max[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \WideOr4~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wave_cnt_max(6));

-- Location: LCCOMB_X24_Y1_N30
\WideOr3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr3~1_combout\ = (\data[4]~input_o\ & (\data[0]~input_o\ $ (((!\data[1]~input_o\ & \data[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datab => \data[1]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[2]~input_o\,
	combout => \WideOr3~1_combout\);

-- Location: LCCOMB_X24_Y1_N20
\WideOr3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\data[2]~input_o\ & ((\data[1]~input_o\ & ((\data[0]~input_o\))) # (!\data[1]~input_o\ & (!\data[4]~input_o\)))) # (!\data[2]~input_o\ & (\data[1]~input_o\ $ (((\data[4]~input_o\ & \data[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datab => \data[1]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[2]~input_o\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X24_Y1_N22
\WideOr3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr3~2_combout\ = (\data[3]~input_o\ & ((\WideOr3~0_combout\))) # (!\data[3]~input_o\ & (\WideOr3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~1_combout\,
	datac => \data[3]~input_o\,
	datad => \WideOr3~0_combout\,
	combout => \WideOr3~2_combout\);

-- Location: FF_X24_Y1_N23
\wave_cnt_max[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \WideOr3~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wave_cnt_max(7));

-- Location: LCCOMB_X24_Y1_N10
\WideOr2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = (\data[4]~input_o\ & ((\data[1]~input_o\ & (\data[0]~input_o\ $ (!\data[2]~input_o\))) # (!\data[1]~input_o\ & (\data[0]~input_o\ & !\data[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datab => \data[1]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[2]~input_o\,
	combout => \WideOr2~1_combout\);

-- Location: LCCOMB_X24_Y1_N0
\WideOr2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\data[0]~input_o\ & ((\data[4]~input_o\ $ (\data[1]~input_o\)) # (!\data[2]~input_o\))) # (!\data[0]~input_o\ & ((\data[1]~input_o\ & (\data[4]~input_o\)) # (!\data[1]~input_o\ & ((\data[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datab => \data[1]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[2]~input_o\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X24_Y1_N16
\WideOr2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr2~2_combout\ = (\data[3]~input_o\ & ((\WideOr2~0_combout\))) # (!\data[3]~input_o\ & (\WideOr2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~1_combout\,
	datac => \data[3]~input_o\,
	datad => \WideOr2~0_combout\,
	combout => \WideOr2~2_combout\);

-- Location: FF_X24_Y1_N17
\wave_cnt_max[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \WideOr2~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wave_cnt_max(8));

-- Location: LCCOMB_X24_Y1_N12
\WideOr1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\data[2]~input_o\ & (\data[4]~input_o\ $ (((\data[1]~input_o\ & \data[0]~input_o\))))) # (!\data[2]~input_o\ & ((\data[1]~input_o\ & ((\data[4]~input_o\) # (!\data[0]~input_o\))) # (!\data[1]~input_o\ & ((\data[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datab => \data[1]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[2]~input_o\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X24_Y1_N26
\WideOr1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr1~1_combout\ = (\WideOr1~0_combout\ & (\data[4]~input_o\ $ (\data[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datac => \data[3]~input_o\,
	datad => \WideOr1~0_combout\,
	combout => \WideOr1~1_combout\);

-- Location: FF_X24_Y1_N27
\wave_cnt_max[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \WideOr1~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wave_cnt_max(9));

-- Location: LCCOMB_X24_Y1_N24
\WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\data[3]~input_o\ & ((\data[0]~input_o\ & ((!\data[2]~input_o\) # (!\data[1]~input_o\))) # (!\data[0]~input_o\ & ((\data[1]~input_o\) # (\data[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~input_o\,
	datab => \data[1]~input_o\,
	datac => \data[3]~input_o\,
	datad => \data[2]~input_o\,
	combout => \WideOr0~0_combout\);

-- Location: FF_X24_Y1_N25
\wave_cnt_max[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~inputclkctrl_outclk\,
	d => \WideOr0~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \data[4]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wave_cnt_max(10));

ww_div_max(0) <= \div_max[0]~output_o\;

ww_div_max(1) <= \div_max[1]~output_o\;

ww_div_max(2) <= \div_max[2]~output_o\;

ww_div_max(3) <= \div_max[3]~output_o\;

ww_div_max(4) <= \div_max[4]~output_o\;

ww_div_max(5) <= \div_max[5]~output_o\;

ww_div_max(6) <= \div_max[6]~output_o\;

ww_div_max(7) <= \div_max[7]~output_o\;

ww_div_max(8) <= \div_max[8]~output_o\;

ww_div_max(9) <= \div_max[9]~output_o\;

ww_div_max(10) <= \div_max[10]~output_o\;
END structure;


