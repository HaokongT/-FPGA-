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

-- DATE "06/21/2025 17:09:04"

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

ENTITY 	music_mem IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	cnt : IN std_logic_vector(9 DOWNTO 0);
	music : OUT std_logic_vector(4 DOWNTO 0)
	);
END music_mem;

-- Design Ports Information
-- music[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- music[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- music[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- music[3]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- music[4]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[3]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[4]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[5]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[6]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[7]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[8]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[9]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF music_mem IS
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
SIGNAL ww_cnt : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_music : std_logic_vector(4 DOWNTO 0);
SIGNAL \note_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \note_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \music[0]~output_o\ : std_logic;
SIGNAL \music[1]~output_o\ : std_logic;
SIGNAL \music[2]~output_o\ : std_logic;
SIGNAL \music[3]~output_o\ : std_logic;
SIGNAL \music[4]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \note_rom~0feeder_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \note_rom~0_q\ : std_logic;
SIGNAL \cnt[0]~input_o\ : std_logic;
SIGNAL \cnt[1]~input_o\ : std_logic;
SIGNAL \cnt[2]~input_o\ : std_logic;
SIGNAL \cnt[3]~input_o\ : std_logic;
SIGNAL \cnt[4]~input_o\ : std_logic;
SIGNAL \cnt[5]~input_o\ : std_logic;
SIGNAL \cnt[6]~input_o\ : std_logic;
SIGNAL \cnt[7]~input_o\ : std_logic;
SIGNAL \cnt[8]~input_o\ : std_logic;
SIGNAL \cnt[9]~input_o\ : std_logic;
SIGNAL \note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \note_rom~1_combout\ : std_logic;
SIGNAL \note_rom_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \note_rom~2_combout\ : std_logic;
SIGNAL \note_rom_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \note_rom~3_combout\ : std_logic;
SIGNAL \note_rom_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \note_rom~4_combout\ : std_logic;
SIGNAL \note_rom_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \note_rom~5_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ww_cnt <= cnt;
music <= ww_music;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\note_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\cnt[9]~input_o\ & \cnt[8]~input_o\ & \cnt[7]~input_o\ & \cnt[6]~input_o\ & \cnt[5]~input_o\ & \cnt[4]~input_o\ & \cnt[3]~input_o\ & \cnt[2]~input_o\ & \cnt[1]~input_o\ & \cnt[0]~input_o\);

\note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \note_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\note_rom_rtl_0|auto_generated|ram_block1a1\ <= \note_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\note_rom_rtl_0|auto_generated|ram_block1a2\ <= \note_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\note_rom_rtl_0|auto_generated|ram_block1a3\ <= \note_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\note_rom_rtl_0|auto_generated|ram_block1a4\ <= \note_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X12_Y0_N9
\music[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \note_rom~1_combout\,
	devoe => ww_devoe,
	o => \music[0]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\music[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \note_rom~2_combout\,
	devoe => ww_devoe,
	o => \music[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\music[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \note_rom~3_combout\,
	devoe => ww_devoe,
	o => \music[2]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\music[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \note_rom~4_combout\,
	devoe => ww_devoe,
	o => \music[3]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\music[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \note_rom~5_combout\,
	devoe => ww_devoe,
	o => \music[4]~output_o\);

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

-- Location: LCCOMB_X16_Y11_N0
\note_rom~0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \note_rom~0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \note_rom~0feeder_combout\);

-- Location: IOIBUF_X20_Y0_N1
\rst_n~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: FF_X16_Y11_N1
\note_rom~0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \note_rom~0feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \note_rom~0_q\);

-- Location: IOIBUF_X24_Y31_N1
\cnt[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cnt(0),
	o => \cnt[0]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\cnt[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cnt(1),
	o => \cnt[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\cnt[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cnt(2),
	o => \cnt[2]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\cnt[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cnt(3),
	o => \cnt[3]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\cnt[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cnt(4),
	o => \cnt[4]~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\cnt[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cnt(5),
	o => \cnt[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\cnt[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cnt(6),
	o => \cnt[6]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\cnt[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cnt(7),
	o => \cnt[7]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\cnt[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cnt(8),
	o => \cnt[8]~input_o\);

-- Location: IOIBUF_X33_Y16_N15
\cnt[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cnt(9),
	o => \cnt[9]~input_o\);

-- Location: M9K_X28_Y13_N0
\note_rom_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0A04824000A05028140A0502A150C86432190C86428140A0502A150A8542C160000024120904824120704C26140A00028140A05028140A05028150984C26130984C261209048241209048240E0984C28140005028140A05028150A8542A150B0582A150A0502A150A8542A150A85028120900028140A05028140A85432190C86",
	mem_init3 => X"432190A05028140A8542A150B0580000090482412090481C130985028000A05028140A05028140A05426130984C26130984824120904824120903826130A05000140A05028140A0542A150A8542C160A85428140A8542A150A8542A140A04824000A05028140A0502A150C86432190C86428140A0502A150A8542C160000024120904824120704C26140A00028140A05028140A05028150984C26130984C261209048241209048240E0984C28140005028140A05028150A8542A150B0582A150A0502A150A8542A150A05024120005028140A05028150A86432190C86432140A05028150A8542A160B00000120904824120903826130A05000140A05028140A0",
	mem_init2 => X"5028140A84C26130984C26130904824120904824120704C26140A00028140A0502C160A05028140A8542A150B05800140A05028130985028140A04422140A05028150A8542A160B00000120904824120A0542A150A8542A150A0542A0008844221108844220E0884400110884422110884422110A04C26130984C2613098582C160B0582C160B0582C160B05826130984C2613098381C0E070381C0E07028140006030180C06030180C06028160B0582C160B058381C0E070381C0E07038140A048140A06030180C06030140A05028241209048140A05028140A05028180C0703824120A0502C140A05028140A030180C06030180C06000381C0E070381C0E07",
	mem_init1 => X"038120B0582C000B0582C160B0582C160B05814120904824120904824120904828140B05830180D068381C0D068341A0D068140A050282C160B05830180D068341A0D06828140A05028140E070381C0E070381C0D068341A0D068341A0D068341A00068341A0D07038180C068381C0E088442211088442211088341A0D068341A00068341A0D070381C0D068341A0D0482412090582C160B028140A05048241209028140A0504824120905028160B060301A0D070381A0D068341A0D008040201000040201008001A0D068341A0E07030180D070381C11088381C0E070381C0D068442200088442211088001A0D068341C0E07038140A05028160B068341A0D0",
	mem_init0 => X"68341C0E07038140A0502814000582C160B05828140A050241209048140A06030180C06030140A05028241209048140A05028140A05028180C0703824120A0502C140A05028140A030180C06030180C06000381C0E070381C0E07038120B0582C000B0582C160B0582C160B05814120904824120904824120904828140B05830180D068381C0D068341A0D068140A050282C160B05830180D068341A0D06828140A05028140E070381C0E070381C0D068341A0D068341A0D068001A0D068341A0D07038180C068381C0E088442211088442211088341A0D068341A00068341A0D070381C0D068341A0D0482412090582C160B028140A05048241209028140A05",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/music_mem.ram0_music_mem_a2c4a5a4.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:note_rom_rtl_0|altsyncram_3j71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 5,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \note_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \note_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y11_N26
\note_rom~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \note_rom~1_combout\ = (\note_rom~0_q\ & \note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \note_rom~0_q\,
	datac => \note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \note_rom~1_combout\);

-- Location: LCCOMB_X16_Y11_N28
\note_rom~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \note_rom~2_combout\ = (\note_rom~0_q\ & \note_rom_rtl_0|auto_generated|ram_block1a1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \note_rom~0_q\,
	datac => \note_rom_rtl_0|auto_generated|ram_block1a1\,
	combout => \note_rom~2_combout\);

-- Location: LCCOMB_X16_Y11_N6
\note_rom~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \note_rom~3_combout\ = (\note_rom~0_q\ & \note_rom_rtl_0|auto_generated|ram_block1a2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \note_rom~0_q\,
	datac => \note_rom_rtl_0|auto_generated|ram_block1a2\,
	combout => \note_rom~3_combout\);

-- Location: LCCOMB_X16_Y11_N24
\note_rom~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \note_rom~4_combout\ = (\note_rom~0_q\ & \note_rom_rtl_0|auto_generated|ram_block1a3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \note_rom~0_q\,
	datac => \note_rom_rtl_0|auto_generated|ram_block1a3\,
	combout => \note_rom~4_combout\);

-- Location: LCCOMB_X16_Y11_N10
\note_rom~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \note_rom~5_combout\ = (\note_rom~0_q\ & \note_rom_rtl_0|auto_generated|ram_block1a4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \note_rom~0_q\,
	datac => \note_rom_rtl_0|auto_generated|ram_block1a4\,
	combout => \note_rom~5_combout\);

ww_music(0) <= \music[0]~output_o\;

ww_music(1) <= \music[1]~output_o\;

ww_music(2) <= \music[2]~output_o\;

ww_music(3) <= \music[3]~output_o\;

ww_music(4) <= \music[4]~output_o\;
END structure;


