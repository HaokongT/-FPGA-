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

-- DATE "06/19/2025 16:41:36"

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

ENTITY 	music IS
    PORT (
	clk_50mhz : IN std_logic;
	rst_n : IN std_logic;
	btn : IN std_logic;
	been : BUFFER std_logic;
	seg : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END music;

-- Design Ports Information
-- been	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50mhz	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF music IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50mhz : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_btn : std_logic;
SIGNAL ww_been : std_logic;
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_1mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \been~output_o\ : std_logic;
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \clk_50mhz~input_o\ : std_logic;
SIGNAL \clk_50mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \clk_div~2_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \clk_div~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \clk_div~0_combout\ : std_logic;
SIGNAL \clk_1mhz~0_combout\ : std_logic;
SIGNAL \clk_1mhz~feeder_combout\ : std_logic;
SIGNAL \clk_1mhz~q\ : std_logic;
SIGNAL \clk_1mhz~clkctrl_outclk\ : std_logic;
SIGNAL \u_speed_ctrl|cnt[0]~10_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[0]~26_combout\ : std_logic;
SIGNAL \u_speed_ctrl|Equal0~3_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[12]~51\ : std_logic;
SIGNAL \u_speed_ctrl|count[13]~52_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[13]~53\ : std_logic;
SIGNAL \u_speed_ctrl|count[14]~54_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[14]~55\ : std_logic;
SIGNAL \u_speed_ctrl|count[15]~56_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[15]~57\ : std_logic;
SIGNAL \u_speed_ctrl|count[16]~58_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[16]~59\ : std_logic;
SIGNAL \u_speed_ctrl|count[17]~60_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[17]~61\ : std_logic;
SIGNAL \u_speed_ctrl|count[18]~62_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[18]~63\ : std_logic;
SIGNAL \u_speed_ctrl|count[19]~64_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[19]~65\ : std_logic;
SIGNAL \u_speed_ctrl|count[20]~66_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[20]~67\ : std_logic;
SIGNAL \u_speed_ctrl|count[21]~68_combout\ : std_logic;
SIGNAL \u_speed_ctrl|Equal0~4_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[21]~69\ : std_logic;
SIGNAL \u_speed_ctrl|count[22]~70_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[22]~71\ : std_logic;
SIGNAL \u_speed_ctrl|count[23]~72_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[23]~73\ : std_logic;
SIGNAL \u_speed_ctrl|count[24]~74_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[24]~75\ : std_logic;
SIGNAL \u_speed_ctrl|count[25]~76_combout\ : std_logic;
SIGNAL \u_speed_ctrl|Equal0~5_combout\ : std_logic;
SIGNAL \u_speed_ctrl|Equal0~6_combout\ : std_logic;
SIGNAL \u_speed_ctrl|Equal0~0_combout\ : std_logic;
SIGNAL \u_speed_ctrl|Equal0~1_combout\ : std_logic;
SIGNAL \u_speed_ctrl|Equal0~2_combout\ : std_logic;
SIGNAL \u_speed_ctrl|Equal0~7_combout\ : std_logic;
SIGNAL \u_speed_ctrl|LessThan0~0_combout\ : std_logic;
SIGNAL \u_speed_ctrl|LessThan0~1_combout\ : std_logic;
SIGNAL \u_speed_ctrl|LessThan0~2_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[0]~27\ : std_logic;
SIGNAL \u_speed_ctrl|count[1]~28_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[1]~29\ : std_logic;
SIGNAL \u_speed_ctrl|count[2]~30_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[2]~31\ : std_logic;
SIGNAL \u_speed_ctrl|count[3]~32_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[3]~33\ : std_logic;
SIGNAL \u_speed_ctrl|count[4]~34_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[4]~35\ : std_logic;
SIGNAL \u_speed_ctrl|count[5]~36_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[5]~37\ : std_logic;
SIGNAL \u_speed_ctrl|count[6]~38_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[6]~39\ : std_logic;
SIGNAL \u_speed_ctrl|count[7]~40_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[7]~41\ : std_logic;
SIGNAL \u_speed_ctrl|count[8]~42_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[8]~43\ : std_logic;
SIGNAL \u_speed_ctrl|count[9]~44_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[9]~45\ : std_logic;
SIGNAL \u_speed_ctrl|count[10]~46_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[10]~47\ : std_logic;
SIGNAL \u_speed_ctrl|count[11]~48_combout\ : std_logic;
SIGNAL \u_speed_ctrl|count[11]~49\ : std_logic;
SIGNAL \u_speed_ctrl|count[12]~50_combout\ : std_logic;
SIGNAL \u_speed_ctrl|Equal0~8_combout\ : std_logic;
SIGNAL \u_speed_ctrl|Equal0~9_combout\ : std_logic;
SIGNAL \u_speed_ctrl|cnt[0]~11\ : std_logic;
SIGNAL \u_speed_ctrl|cnt[1]~12_combout\ : std_logic;
SIGNAL \u_speed_ctrl|cnt[1]~13\ : std_logic;
SIGNAL \u_speed_ctrl|cnt[2]~14_combout\ : std_logic;
SIGNAL \u_speed_ctrl|cnt[2]~15\ : std_logic;
SIGNAL \u_speed_ctrl|cnt[3]~16_combout\ : std_logic;
SIGNAL \u_speed_ctrl|cnt[3]~17\ : std_logic;
SIGNAL \u_speed_ctrl|cnt[4]~18_combout\ : std_logic;
SIGNAL \u_speed_ctrl|cnt[4]~19\ : std_logic;
SIGNAL \u_speed_ctrl|cnt[5]~20_combout\ : std_logic;
SIGNAL \u_speed_ctrl|cnt[5]~21\ : std_logic;
SIGNAL \u_speed_ctrl|cnt[6]~22_combout\ : std_logic;
SIGNAL \u_speed_ctrl|cnt[6]~23\ : std_logic;
SIGNAL \u_speed_ctrl|cnt[7]~24_combout\ : std_logic;
SIGNAL \u_speed_ctrl|cnt[7]~25\ : std_logic;
SIGNAL \u_speed_ctrl|cnt[8]~26_combout\ : std_logic;
SIGNAL \u_speed_ctrl|cnt[8]~27\ : std_logic;
SIGNAL \u_speed_ctrl|cnt[9]~28_combout\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[0]~20_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \btn~input_o\ : std_logic;
SIGNAL \u_debounce|btn_ff1~0_combout\ : std_logic;
SIGNAL \u_debounce|btn_ff1~q\ : std_logic;
SIGNAL \u_debounce|btn_ff2~q\ : std_logic;
SIGNAL \u_debounce|always0~0_combout\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[0]~21\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[1]~23_combout\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[1]~24\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[2]~25_combout\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[2]~26\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[3]~27_combout\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[3]~28\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[4]~29_combout\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[4]~30\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[5]~31_combout\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[5]~32\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[6]~33_combout\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[6]~34\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[7]~35_combout\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[7]~36\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[8]~37_combout\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[8]~38\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[9]~39_combout\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[9]~40\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[10]~41_combout\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[10]~42\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[11]~43_combout\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[11]~44\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[12]~45_combout\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[12]~46\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[13]~47_combout\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[13]~48\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[14]~49_combout\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[14]~50\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[15]~51_combout\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[15]~52\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[16]~53_combout\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[16]~54\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[17]~55_combout\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[17]~56\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[18]~57_combout\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[18]~58\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[19]~59_combout\ : std_logic;
SIGNAL \u_debounce|Equal1~0_combout\ : std_logic;
SIGNAL \u_debounce|Equal1~2_combout\ : std_logic;
SIGNAL \u_debounce|Equal1~1_combout\ : std_logic;
SIGNAL \u_debounce|Equal1~4_combout\ : std_logic;
SIGNAL \u_debounce|Equal1~3_combout\ : std_logic;
SIGNAL \u_debounce|Equal1~5_combout\ : std_logic;
SIGNAL \u_debounce|debounce_cnt[10]~22_combout\ : std_logic;
SIGNAL \u_debounce|Equal1~6_combout\ : std_logic;
SIGNAL \state[1]~1_combout\ : std_logic;
SIGNAL \state[0]~0_combout\ : std_logic;
SIGNAL \u_shuma|Decoder0~1_combout\ : std_logic;
SIGNAL \song_offset[9]~feeder_combout\ : std_logic;
SIGNAL \current_addr[9]~0_combout\ : std_logic;
SIGNAL \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \u_music_mem|note_rom~0feeder_combout\ : std_logic;
SIGNAL \u_music_mem|note_rom~0_q\ : std_logic;
SIGNAL \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \u_lev_ctl|WideOr3~6_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr3~5_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr3~9_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr4~5_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr4~6_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr4~9_combout\ : std_logic;
SIGNAL \u_wave_gen|div_cnt[0]~11_combout\ : std_logic;
SIGNAL \u_wave_gen|div_cnt[0]~12\ : std_logic;
SIGNAL \u_wave_gen|div_cnt[1]~13_combout\ : std_logic;
SIGNAL \u_wave_gen|div_cnt[1]~14\ : std_logic;
SIGNAL \u_wave_gen|div_cnt[2]~15_combout\ : std_logic;
SIGNAL \u_wave_gen|div_cnt[2]~16\ : std_logic;
SIGNAL \u_wave_gen|div_cnt[3]~17_combout\ : std_logic;
SIGNAL \u_wave_gen|div_cnt[3]~18\ : std_logic;
SIGNAL \u_wave_gen|div_cnt[4]~19_combout\ : std_logic;
SIGNAL \u_wave_gen|div_cnt[4]~20\ : std_logic;
SIGNAL \u_wave_gen|div_cnt[5]~21_combout\ : std_logic;
SIGNAL \u_wave_gen|div_cnt[5]~22\ : std_logic;
SIGNAL \u_wave_gen|div_cnt[6]~23_combout\ : std_logic;
SIGNAL \u_wave_gen|div_cnt[6]~24\ : std_logic;
SIGNAL \u_wave_gen|div_cnt[7]~25_combout\ : std_logic;
SIGNAL \u_wave_gen|Equal1~3_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr5~5_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr5~6_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr5~9_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr6~6_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr6~5_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr6~9_combout\ : std_logic;
SIGNAL \u_wave_gen|Equal1~2_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr7~6_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr7~5_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr7~9_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr8~6_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr8~5_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr8~9_combout\ : std_logic;
SIGNAL \u_wave_gen|Equal1~1_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr10~6_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr10~5_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr10~9_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr9~6_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr9~5_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr9~9_combout\ : std_logic;
SIGNAL \u_wave_gen|Equal1~0_combout\ : std_logic;
SIGNAL \u_wave_gen|Equal1~4_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr0~6_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr0~11_combout\ : std_logic;
SIGNAL \u_wave_gen|div_cnt[7]~26\ : std_logic;
SIGNAL \u_wave_gen|div_cnt[8]~27_combout\ : std_logic;
SIGNAL \u_wave_gen|div_cnt[8]~28\ : std_logic;
SIGNAL \u_wave_gen|div_cnt[9]~29_combout\ : std_logic;
SIGNAL \u_wave_gen|div_cnt[9]~30\ : std_logic;
SIGNAL \u_wave_gen|div_cnt[10]~31_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr2~6_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr2~5_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr2~9_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr1~11_combout\ : std_logic;
SIGNAL \u_lev_ctl|WideOr1~12_combout\ : std_logic;
SIGNAL \u_wave_gen|Equal1~5_combout\ : std_logic;
SIGNAL \u_wave_gen|Equal1~6_combout\ : std_logic;
SIGNAL \u_wave_gen|Equal0~1_combout\ : std_logic;
SIGNAL \u_wave_gen|Equal0~2_combout\ : std_logic;
SIGNAL \u_wave_gen|Equal0~0_combout\ : std_logic;
SIGNAL \u_wave_gen|been~0_combout\ : std_logic;
SIGNAL \u_wave_gen|been~q\ : std_logic;
SIGNAL \u_shuma|Decoder0~0_combout\ : std_logic;
SIGNAL \u_shuma|seg~0_combout\ : std_logic;
SIGNAL state : std_logic_vector(1 DOWNTO 0);
SIGNAL song_offset : std_logic_vector(9 DOWNTO 0);
SIGNAL clk_div : std_logic_vector(5 DOWNTO 0);
SIGNAL \u_debounce|debounce_cnt\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \u_speed_ctrl|count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \u_speed_ctrl|cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_lev_ctl|wave_cnt_max\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_wave_gen|div_cnt\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_shuma|ALT_INV_Decoder0~1_combout\ : std_logic;

BEGIN

ww_clk_50mhz <= clk_50mhz;
ww_rst_n <= rst_n;
ww_btn <= btn;
been <= ww_been;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\current_addr[9]~0_combout\ & \u_speed_ctrl|cnt\(8) & \u_speed_ctrl|cnt\(7) & \u_speed_ctrl|cnt\(6) & \u_speed_ctrl|cnt\(5) & \u_speed_ctrl|cnt\(4) & 
\u_speed_ctrl|cnt\(3) & \u_speed_ctrl|cnt\(2) & \u_speed_ctrl|cnt\(1) & \u_speed_ctrl|cnt\(0));

\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ <= \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\ <= \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ <= \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ <= \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\clk_50mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50mhz~input_o\);

\clk_1mhz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_1mhz~q\);
\u_shuma|ALT_INV_Decoder0~1_combout\ <= NOT \u_shuma|Decoder0~1_combout\;

-- Location: IOOBUF_X10_Y31_N2
\been~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_wave_gen|been~q\,
	devoe => ww_devoe,
	o => \been~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\seg[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_shuma|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\seg[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\seg[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_shuma|Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\seg[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_shuma|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\seg[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_shuma|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\seg[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_shuma|seg~0_combout\,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\seg[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_shuma|ALT_INV_Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk_50mhz~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50mhz,
	o => \clk_50mhz~input_o\);

-- Location: CLKCTRL_G17
\clk_50mhz~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50mhz~inputclkctrl_outclk\);

-- Location: LCCOMB_X16_Y30_N12
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = clk_div(0) $ (VCC)
-- \Add0~1\ = CARRY(clk_div(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

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

-- Location: FF_X16_Y30_N13
\clk_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(0));

-- Location: LCCOMB_X16_Y30_N14
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (clk_div(1) & (!\Add0~1\)) # (!clk_div(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!clk_div(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X16_Y30_N16
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (clk_div(2) & (\Add0~3\ $ (GND))) # (!clk_div(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((clk_div(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X16_Y30_N17
\clk_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(2));

-- Location: LCCOMB_X16_Y30_N18
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (clk_div(3) & (!\Add0~5\)) # (!clk_div(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!clk_div(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X16_Y30_N19
\clk_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(3));

-- Location: LCCOMB_X16_Y30_N20
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (clk_div(4) & (\Add0~7\ $ (GND))) # (!clk_div(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((clk_div(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X16_Y30_N8
\clk_div~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clk_div~2_combout\ = (\Add0~8_combout\ & (((clk_div(1)) # (!clk_div(0))) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => clk_div(0),
	datac => clk_div(1),
	datad => \Add0~8_combout\,
	combout => \clk_div~2_combout\);

-- Location: FF_X16_Y30_N9
\clk_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \clk_div~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(4));

-- Location: LCCOMB_X16_Y30_N22
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = clk_div(5) $ (\Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(5),
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X16_Y30_N30
\clk_div~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clk_div~1_combout\ = (\Add0~10_combout\ & ((clk_div(1)) # ((!\Equal0~0_combout\) # (!clk_div(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(1),
	datab => clk_div(0),
	datac => \Add0~10_combout\,
	datad => \Equal0~0_combout\,
	combout => \clk_div~1_combout\);

-- Location: FF_X16_Y30_N31
\clk_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \clk_div~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(5));

-- Location: LCCOMB_X16_Y30_N10
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (clk_div(5) & (!clk_div(2) & (clk_div(4) & !clk_div(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(5),
	datab => clk_div(2),
	datac => clk_div(4),
	datad => clk_div(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X16_Y30_N26
\clk_div~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clk_div~0_combout\ = (\Add0~2_combout\ & (((clk_div(1)) # (!clk_div(0))) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => clk_div(0),
	datac => clk_div(1),
	datad => \Add0~2_combout\,
	combout => \clk_div~0_combout\);

-- Location: FF_X16_Y30_N27
\clk_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \clk_div~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(1));

-- Location: LCCOMB_X16_Y30_N24
\clk_1mhz~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clk_1mhz~0_combout\ = \clk_1mhz~q\ $ (((!clk_div(1) & (clk_div(0) & \Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(1),
	datab => \clk_1mhz~q\,
	datac => clk_div(0),
	datad => \Equal0~0_combout\,
	combout => \clk_1mhz~0_combout\);

-- Location: LCCOMB_X16_Y30_N28
\clk_1mhz~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clk_1mhz~feeder_combout\ = \clk_1mhz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1mhz~0_combout\,
	combout => \clk_1mhz~feeder_combout\);

-- Location: FF_X16_Y30_N29
clk_1mhz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \clk_1mhz~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1mhz~q\);

-- Location: CLKCTRL_G12
\clk_1mhz~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_1mhz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_1mhz~clkctrl_outclk\);

-- Location: LCCOMB_X6_Y27_N0
\u_speed_ctrl|cnt[0]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|cnt[0]~10_combout\ = \u_speed_ctrl|cnt\(0) $ (VCC)
-- \u_speed_ctrl|cnt[0]~11\ = CARRY(\u_speed_ctrl|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|cnt\(0),
	datad => VCC,
	combout => \u_speed_ctrl|cnt[0]~10_combout\,
	cout => \u_speed_ctrl|cnt[0]~11\);

-- Location: LCCOMB_X5_Y27_N6
\u_speed_ctrl|count[0]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[0]~26_combout\ = \u_speed_ctrl|count\(0) $ (VCC)
-- \u_speed_ctrl|count[0]~27\ = CARRY(\u_speed_ctrl|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|count\(0),
	datad => VCC,
	combout => \u_speed_ctrl|count[0]~26_combout\,
	cout => \u_speed_ctrl|count[0]~27\);

-- Location: LCCOMB_X4_Y27_N24
\u_speed_ctrl|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|Equal0~3_combout\ = (\u_speed_ctrl|count\(2) & (\u_speed_ctrl|count\(1) & (\u_speed_ctrl|count\(3) & \u_speed_ctrl|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|count\(2),
	datab => \u_speed_ctrl|count\(1),
	datac => \u_speed_ctrl|count\(3),
	datad => \u_speed_ctrl|count\(0),
	combout => \u_speed_ctrl|Equal0~3_combout\);

-- Location: LCCOMB_X5_Y27_N30
\u_speed_ctrl|count[12]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[12]~50_combout\ = (\u_speed_ctrl|count\(12) & (\u_speed_ctrl|count[11]~49\ $ (GND))) # (!\u_speed_ctrl|count\(12) & (!\u_speed_ctrl|count[11]~49\ & VCC))
-- \u_speed_ctrl|count[12]~51\ = CARRY((\u_speed_ctrl|count\(12) & !\u_speed_ctrl|count[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|count\(12),
	datad => VCC,
	cin => \u_speed_ctrl|count[11]~49\,
	combout => \u_speed_ctrl|count[12]~50_combout\,
	cout => \u_speed_ctrl|count[12]~51\);

-- Location: LCCOMB_X5_Y26_N0
\u_speed_ctrl|count[13]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[13]~52_combout\ = (\u_speed_ctrl|count\(13) & (!\u_speed_ctrl|count[12]~51\)) # (!\u_speed_ctrl|count\(13) & ((\u_speed_ctrl|count[12]~51\) # (GND)))
-- \u_speed_ctrl|count[13]~53\ = CARRY((!\u_speed_ctrl|count[12]~51\) # (!\u_speed_ctrl|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|count\(13),
	datad => VCC,
	cin => \u_speed_ctrl|count[12]~51\,
	combout => \u_speed_ctrl|count[13]~52_combout\,
	cout => \u_speed_ctrl|count[13]~53\);

-- Location: FF_X5_Y26_N1
\u_speed_ctrl|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[13]~52_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(13));

-- Location: LCCOMB_X5_Y26_N2
\u_speed_ctrl|count[14]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[14]~54_combout\ = (\u_speed_ctrl|count\(14) & (\u_speed_ctrl|count[13]~53\ $ (GND))) # (!\u_speed_ctrl|count\(14) & (!\u_speed_ctrl|count[13]~53\ & VCC))
-- \u_speed_ctrl|count[14]~55\ = CARRY((\u_speed_ctrl|count\(14) & !\u_speed_ctrl|count[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|count\(14),
	datad => VCC,
	cin => \u_speed_ctrl|count[13]~53\,
	combout => \u_speed_ctrl|count[14]~54_combout\,
	cout => \u_speed_ctrl|count[14]~55\);

-- Location: FF_X5_Y26_N3
\u_speed_ctrl|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[14]~54_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(14));

-- Location: LCCOMB_X5_Y26_N4
\u_speed_ctrl|count[15]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[15]~56_combout\ = (\u_speed_ctrl|count\(15) & (!\u_speed_ctrl|count[14]~55\)) # (!\u_speed_ctrl|count\(15) & ((\u_speed_ctrl|count[14]~55\) # (GND)))
-- \u_speed_ctrl|count[15]~57\ = CARRY((!\u_speed_ctrl|count[14]~55\) # (!\u_speed_ctrl|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|count\(15),
	datad => VCC,
	cin => \u_speed_ctrl|count[14]~55\,
	combout => \u_speed_ctrl|count[15]~56_combout\,
	cout => \u_speed_ctrl|count[15]~57\);

-- Location: FF_X5_Y26_N5
\u_speed_ctrl|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[15]~56_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(15));

-- Location: LCCOMB_X5_Y26_N6
\u_speed_ctrl|count[16]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[16]~58_combout\ = (\u_speed_ctrl|count\(16) & (\u_speed_ctrl|count[15]~57\ $ (GND))) # (!\u_speed_ctrl|count\(16) & (!\u_speed_ctrl|count[15]~57\ & VCC))
-- \u_speed_ctrl|count[16]~59\ = CARRY((\u_speed_ctrl|count\(16) & !\u_speed_ctrl|count[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|count\(16),
	datad => VCC,
	cin => \u_speed_ctrl|count[15]~57\,
	combout => \u_speed_ctrl|count[16]~58_combout\,
	cout => \u_speed_ctrl|count[16]~59\);

-- Location: FF_X5_Y26_N7
\u_speed_ctrl|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[16]~58_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(16));

-- Location: LCCOMB_X5_Y26_N8
\u_speed_ctrl|count[17]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[17]~60_combout\ = (\u_speed_ctrl|count\(17) & (!\u_speed_ctrl|count[16]~59\)) # (!\u_speed_ctrl|count\(17) & ((\u_speed_ctrl|count[16]~59\) # (GND)))
-- \u_speed_ctrl|count[17]~61\ = CARRY((!\u_speed_ctrl|count[16]~59\) # (!\u_speed_ctrl|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|count\(17),
	datad => VCC,
	cin => \u_speed_ctrl|count[16]~59\,
	combout => \u_speed_ctrl|count[17]~60_combout\,
	cout => \u_speed_ctrl|count[17]~61\);

-- Location: FF_X5_Y26_N9
\u_speed_ctrl|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[17]~60_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(17));

-- Location: LCCOMB_X5_Y26_N10
\u_speed_ctrl|count[18]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[18]~62_combout\ = (\u_speed_ctrl|count\(18) & (\u_speed_ctrl|count[17]~61\ $ (GND))) # (!\u_speed_ctrl|count\(18) & (!\u_speed_ctrl|count[17]~61\ & VCC))
-- \u_speed_ctrl|count[18]~63\ = CARRY((\u_speed_ctrl|count\(18) & !\u_speed_ctrl|count[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|count\(18),
	datad => VCC,
	cin => \u_speed_ctrl|count[17]~61\,
	combout => \u_speed_ctrl|count[18]~62_combout\,
	cout => \u_speed_ctrl|count[18]~63\);

-- Location: FF_X5_Y26_N11
\u_speed_ctrl|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[18]~62_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(18));

-- Location: LCCOMB_X5_Y26_N12
\u_speed_ctrl|count[19]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[19]~64_combout\ = (\u_speed_ctrl|count\(19) & (!\u_speed_ctrl|count[18]~63\)) # (!\u_speed_ctrl|count\(19) & ((\u_speed_ctrl|count[18]~63\) # (GND)))
-- \u_speed_ctrl|count[19]~65\ = CARRY((!\u_speed_ctrl|count[18]~63\) # (!\u_speed_ctrl|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|count\(19),
	datad => VCC,
	cin => \u_speed_ctrl|count[18]~63\,
	combout => \u_speed_ctrl|count[19]~64_combout\,
	cout => \u_speed_ctrl|count[19]~65\);

-- Location: FF_X5_Y26_N13
\u_speed_ctrl|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[19]~64_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(19));

-- Location: LCCOMB_X5_Y26_N14
\u_speed_ctrl|count[20]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[20]~66_combout\ = (\u_speed_ctrl|count\(20) & (\u_speed_ctrl|count[19]~65\ $ (GND))) # (!\u_speed_ctrl|count\(20) & (!\u_speed_ctrl|count[19]~65\ & VCC))
-- \u_speed_ctrl|count[20]~67\ = CARRY((\u_speed_ctrl|count\(20) & !\u_speed_ctrl|count[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|count\(20),
	datad => VCC,
	cin => \u_speed_ctrl|count[19]~65\,
	combout => \u_speed_ctrl|count[20]~66_combout\,
	cout => \u_speed_ctrl|count[20]~67\);

-- Location: FF_X5_Y26_N15
\u_speed_ctrl|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[20]~66_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(20));

-- Location: LCCOMB_X5_Y26_N16
\u_speed_ctrl|count[21]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[21]~68_combout\ = (\u_speed_ctrl|count\(21) & (!\u_speed_ctrl|count[20]~67\)) # (!\u_speed_ctrl|count\(21) & ((\u_speed_ctrl|count[20]~67\) # (GND)))
-- \u_speed_ctrl|count[21]~69\ = CARRY((!\u_speed_ctrl|count[20]~67\) # (!\u_speed_ctrl|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|count\(21),
	datad => VCC,
	cin => \u_speed_ctrl|count[20]~67\,
	combout => \u_speed_ctrl|count[21]~68_combout\,
	cout => \u_speed_ctrl|count[21]~69\);

-- Location: FF_X5_Y26_N17
\u_speed_ctrl|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[21]~68_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(21));

-- Location: LCCOMB_X5_Y26_N30
\u_speed_ctrl|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|Equal0~4_combout\ = (!\u_speed_ctrl|count\(18) & (!\u_speed_ctrl|count\(21) & (!\u_speed_ctrl|count\(20) & !\u_speed_ctrl|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|count\(18),
	datab => \u_speed_ctrl|count\(21),
	datac => \u_speed_ctrl|count\(20),
	datad => \u_speed_ctrl|count\(19),
	combout => \u_speed_ctrl|Equal0~4_combout\);

-- Location: LCCOMB_X5_Y26_N18
\u_speed_ctrl|count[22]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[22]~70_combout\ = (\u_speed_ctrl|count\(22) & (\u_speed_ctrl|count[21]~69\ $ (GND))) # (!\u_speed_ctrl|count\(22) & (!\u_speed_ctrl|count[21]~69\ & VCC))
-- \u_speed_ctrl|count[22]~71\ = CARRY((\u_speed_ctrl|count\(22) & !\u_speed_ctrl|count[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|count\(22),
	datad => VCC,
	cin => \u_speed_ctrl|count[21]~69\,
	combout => \u_speed_ctrl|count[22]~70_combout\,
	cout => \u_speed_ctrl|count[22]~71\);

-- Location: FF_X5_Y26_N19
\u_speed_ctrl|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[22]~70_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(22));

-- Location: LCCOMB_X5_Y26_N20
\u_speed_ctrl|count[23]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[23]~72_combout\ = (\u_speed_ctrl|count\(23) & (!\u_speed_ctrl|count[22]~71\)) # (!\u_speed_ctrl|count\(23) & ((\u_speed_ctrl|count[22]~71\) # (GND)))
-- \u_speed_ctrl|count[23]~73\ = CARRY((!\u_speed_ctrl|count[22]~71\) # (!\u_speed_ctrl|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|count\(23),
	datad => VCC,
	cin => \u_speed_ctrl|count[22]~71\,
	combout => \u_speed_ctrl|count[23]~72_combout\,
	cout => \u_speed_ctrl|count[23]~73\);

-- Location: FF_X5_Y26_N21
\u_speed_ctrl|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[23]~72_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(23));

-- Location: LCCOMB_X5_Y26_N22
\u_speed_ctrl|count[24]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[24]~74_combout\ = (\u_speed_ctrl|count\(24) & (\u_speed_ctrl|count[23]~73\ $ (GND))) # (!\u_speed_ctrl|count\(24) & (!\u_speed_ctrl|count[23]~73\ & VCC))
-- \u_speed_ctrl|count[24]~75\ = CARRY((\u_speed_ctrl|count\(24) & !\u_speed_ctrl|count[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|count\(24),
	datad => VCC,
	cin => \u_speed_ctrl|count[23]~73\,
	combout => \u_speed_ctrl|count[24]~74_combout\,
	cout => \u_speed_ctrl|count[24]~75\);

-- Location: FF_X5_Y26_N23
\u_speed_ctrl|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[24]~74_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(24));

-- Location: LCCOMB_X5_Y26_N24
\u_speed_ctrl|count[25]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[25]~76_combout\ = \u_speed_ctrl|count[24]~75\ $ (\u_speed_ctrl|count\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_speed_ctrl|count\(25),
	cin => \u_speed_ctrl|count[24]~75\,
	combout => \u_speed_ctrl|count[25]~76_combout\);

-- Location: FF_X5_Y26_N25
\u_speed_ctrl|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[25]~76_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(25));

-- Location: LCCOMB_X5_Y26_N28
\u_speed_ctrl|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|Equal0~5_combout\ = (!\u_speed_ctrl|count\(25) & (!\u_speed_ctrl|count\(23) & (!\u_speed_ctrl|count\(24) & !\u_speed_ctrl|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|count\(25),
	datab => \u_speed_ctrl|count\(23),
	datac => \u_speed_ctrl|count\(24),
	datad => \u_speed_ctrl|count\(22),
	combout => \u_speed_ctrl|Equal0~5_combout\);

-- Location: LCCOMB_X6_Y27_N28
\u_speed_ctrl|Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|Equal0~6_combout\ = (\u_speed_ctrl|Equal0~4_combout\ & \u_speed_ctrl|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_speed_ctrl|Equal0~4_combout\,
	datad => \u_speed_ctrl|Equal0~5_combout\,
	combout => \u_speed_ctrl|Equal0~6_combout\);

-- Location: LCCOMB_X5_Y27_N0
\u_speed_ctrl|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|Equal0~0_combout\ = (!\u_speed_ctrl|count\(8) & (!\u_speed_ctrl|count\(9) & (!\u_speed_ctrl|count\(10) & !\u_speed_ctrl|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|count\(8),
	datab => \u_speed_ctrl|count\(9),
	datac => \u_speed_ctrl|count\(10),
	datad => \u_speed_ctrl|count\(11),
	combout => \u_speed_ctrl|Equal0~0_combout\);

-- Location: LCCOMB_X5_Y27_N2
\u_speed_ctrl|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|Equal0~1_combout\ = (!\u_speed_ctrl|count\(13) & \u_speed_ctrl|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|count\(13),
	datad => \u_speed_ctrl|Equal0~0_combout\,
	combout => \u_speed_ctrl|Equal0~1_combout\);

-- Location: LCCOMB_X5_Y27_N4
\u_speed_ctrl|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|Equal0~2_combout\ = (!\u_speed_ctrl|count\(6) & (!\u_speed_ctrl|count\(5) & (!\u_speed_ctrl|count\(4) & \u_speed_ctrl|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|count\(6),
	datab => \u_speed_ctrl|count\(5),
	datac => \u_speed_ctrl|count\(4),
	datad => \u_speed_ctrl|Equal0~1_combout\,
	combout => \u_speed_ctrl|Equal0~2_combout\);

-- Location: LCCOMB_X5_Y26_N26
\u_speed_ctrl|Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|Equal0~7_combout\ = (\u_speed_ctrl|count\(16) & (\u_speed_ctrl|count\(15) & (\u_speed_ctrl|count\(17) & \u_speed_ctrl|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|count\(16),
	datab => \u_speed_ctrl|count\(15),
	datac => \u_speed_ctrl|count\(17),
	datad => \u_speed_ctrl|count\(14),
	combout => \u_speed_ctrl|Equal0~7_combout\);

-- Location: LCCOMB_X6_Y27_N26
\u_speed_ctrl|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|LessThan0~0_combout\ = (!\u_speed_ctrl|count\(13) & !\u_speed_ctrl|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_speed_ctrl|count\(13),
	datad => \u_speed_ctrl|count\(12),
	combout => \u_speed_ctrl|LessThan0~0_combout\);

-- Location: LCCOMB_X6_Y27_N20
\u_speed_ctrl|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|LessThan0~1_combout\ = ((\u_speed_ctrl|LessThan0~0_combout\) # ((!\u_speed_ctrl|count\(7) & \u_speed_ctrl|Equal0~1_combout\))) # (!\u_speed_ctrl|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|Equal0~7_combout\,
	datab => \u_speed_ctrl|count\(7),
	datac => \u_speed_ctrl|LessThan0~0_combout\,
	datad => \u_speed_ctrl|Equal0~1_combout\,
	combout => \u_speed_ctrl|LessThan0~1_combout\);

-- Location: LCCOMB_X6_Y27_N30
\u_speed_ctrl|LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|LessThan0~2_combout\ = ((!\u_speed_ctrl|LessThan0~1_combout\ & ((\u_speed_ctrl|Equal0~3_combout\) # (!\u_speed_ctrl|Equal0~2_combout\)))) # (!\u_speed_ctrl|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|Equal0~3_combout\,
	datab => \u_speed_ctrl|Equal0~6_combout\,
	datac => \u_speed_ctrl|Equal0~2_combout\,
	datad => \u_speed_ctrl|LessThan0~1_combout\,
	combout => \u_speed_ctrl|LessThan0~2_combout\);

-- Location: FF_X5_Y27_N7
\u_speed_ctrl|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[0]~26_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(0));

-- Location: LCCOMB_X5_Y27_N8
\u_speed_ctrl|count[1]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[1]~28_combout\ = (\u_speed_ctrl|count\(1) & (!\u_speed_ctrl|count[0]~27\)) # (!\u_speed_ctrl|count\(1) & ((\u_speed_ctrl|count[0]~27\) # (GND)))
-- \u_speed_ctrl|count[1]~29\ = CARRY((!\u_speed_ctrl|count[0]~27\) # (!\u_speed_ctrl|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|count\(1),
	datad => VCC,
	cin => \u_speed_ctrl|count[0]~27\,
	combout => \u_speed_ctrl|count[1]~28_combout\,
	cout => \u_speed_ctrl|count[1]~29\);

-- Location: FF_X5_Y27_N9
\u_speed_ctrl|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[1]~28_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(1));

-- Location: LCCOMB_X5_Y27_N10
\u_speed_ctrl|count[2]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[2]~30_combout\ = (\u_speed_ctrl|count\(2) & (\u_speed_ctrl|count[1]~29\ $ (GND))) # (!\u_speed_ctrl|count\(2) & (!\u_speed_ctrl|count[1]~29\ & VCC))
-- \u_speed_ctrl|count[2]~31\ = CARRY((\u_speed_ctrl|count\(2) & !\u_speed_ctrl|count[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|count\(2),
	datad => VCC,
	cin => \u_speed_ctrl|count[1]~29\,
	combout => \u_speed_ctrl|count[2]~30_combout\,
	cout => \u_speed_ctrl|count[2]~31\);

-- Location: FF_X5_Y27_N11
\u_speed_ctrl|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[2]~30_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(2));

-- Location: LCCOMB_X5_Y27_N12
\u_speed_ctrl|count[3]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[3]~32_combout\ = (\u_speed_ctrl|count\(3) & (!\u_speed_ctrl|count[2]~31\)) # (!\u_speed_ctrl|count\(3) & ((\u_speed_ctrl|count[2]~31\) # (GND)))
-- \u_speed_ctrl|count[3]~33\ = CARRY((!\u_speed_ctrl|count[2]~31\) # (!\u_speed_ctrl|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|count\(3),
	datad => VCC,
	cin => \u_speed_ctrl|count[2]~31\,
	combout => \u_speed_ctrl|count[3]~32_combout\,
	cout => \u_speed_ctrl|count[3]~33\);

-- Location: FF_X5_Y27_N13
\u_speed_ctrl|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[3]~32_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(3));

-- Location: LCCOMB_X5_Y27_N14
\u_speed_ctrl|count[4]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[4]~34_combout\ = (\u_speed_ctrl|count\(4) & (\u_speed_ctrl|count[3]~33\ $ (GND))) # (!\u_speed_ctrl|count\(4) & (!\u_speed_ctrl|count[3]~33\ & VCC))
-- \u_speed_ctrl|count[4]~35\ = CARRY((\u_speed_ctrl|count\(4) & !\u_speed_ctrl|count[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|count\(4),
	datad => VCC,
	cin => \u_speed_ctrl|count[3]~33\,
	combout => \u_speed_ctrl|count[4]~34_combout\,
	cout => \u_speed_ctrl|count[4]~35\);

-- Location: FF_X5_Y27_N15
\u_speed_ctrl|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[4]~34_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(4));

-- Location: LCCOMB_X5_Y27_N16
\u_speed_ctrl|count[5]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[5]~36_combout\ = (\u_speed_ctrl|count\(5) & (!\u_speed_ctrl|count[4]~35\)) # (!\u_speed_ctrl|count\(5) & ((\u_speed_ctrl|count[4]~35\) # (GND)))
-- \u_speed_ctrl|count[5]~37\ = CARRY((!\u_speed_ctrl|count[4]~35\) # (!\u_speed_ctrl|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|count\(5),
	datad => VCC,
	cin => \u_speed_ctrl|count[4]~35\,
	combout => \u_speed_ctrl|count[5]~36_combout\,
	cout => \u_speed_ctrl|count[5]~37\);

-- Location: FF_X5_Y27_N17
\u_speed_ctrl|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[5]~36_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(5));

-- Location: LCCOMB_X5_Y27_N18
\u_speed_ctrl|count[6]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[6]~38_combout\ = (\u_speed_ctrl|count\(6) & (\u_speed_ctrl|count[5]~37\ $ (GND))) # (!\u_speed_ctrl|count\(6) & (!\u_speed_ctrl|count[5]~37\ & VCC))
-- \u_speed_ctrl|count[6]~39\ = CARRY((\u_speed_ctrl|count\(6) & !\u_speed_ctrl|count[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|count\(6),
	datad => VCC,
	cin => \u_speed_ctrl|count[5]~37\,
	combout => \u_speed_ctrl|count[6]~38_combout\,
	cout => \u_speed_ctrl|count[6]~39\);

-- Location: FF_X5_Y27_N19
\u_speed_ctrl|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[6]~38_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(6));

-- Location: LCCOMB_X5_Y27_N20
\u_speed_ctrl|count[7]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[7]~40_combout\ = (\u_speed_ctrl|count\(7) & (!\u_speed_ctrl|count[6]~39\)) # (!\u_speed_ctrl|count\(7) & ((\u_speed_ctrl|count[6]~39\) # (GND)))
-- \u_speed_ctrl|count[7]~41\ = CARRY((!\u_speed_ctrl|count[6]~39\) # (!\u_speed_ctrl|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|count\(7),
	datad => VCC,
	cin => \u_speed_ctrl|count[6]~39\,
	combout => \u_speed_ctrl|count[7]~40_combout\,
	cout => \u_speed_ctrl|count[7]~41\);

-- Location: FF_X5_Y27_N21
\u_speed_ctrl|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[7]~40_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(7));

-- Location: LCCOMB_X5_Y27_N22
\u_speed_ctrl|count[8]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[8]~42_combout\ = (\u_speed_ctrl|count\(8) & (\u_speed_ctrl|count[7]~41\ $ (GND))) # (!\u_speed_ctrl|count\(8) & (!\u_speed_ctrl|count[7]~41\ & VCC))
-- \u_speed_ctrl|count[8]~43\ = CARRY((\u_speed_ctrl|count\(8) & !\u_speed_ctrl|count[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|count\(8),
	datad => VCC,
	cin => \u_speed_ctrl|count[7]~41\,
	combout => \u_speed_ctrl|count[8]~42_combout\,
	cout => \u_speed_ctrl|count[8]~43\);

-- Location: FF_X5_Y27_N23
\u_speed_ctrl|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[8]~42_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(8));

-- Location: LCCOMB_X5_Y27_N24
\u_speed_ctrl|count[9]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[9]~44_combout\ = (\u_speed_ctrl|count\(9) & (!\u_speed_ctrl|count[8]~43\)) # (!\u_speed_ctrl|count\(9) & ((\u_speed_ctrl|count[8]~43\) # (GND)))
-- \u_speed_ctrl|count[9]~45\ = CARRY((!\u_speed_ctrl|count[8]~43\) # (!\u_speed_ctrl|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|count\(9),
	datad => VCC,
	cin => \u_speed_ctrl|count[8]~43\,
	combout => \u_speed_ctrl|count[9]~44_combout\,
	cout => \u_speed_ctrl|count[9]~45\);

-- Location: FF_X5_Y27_N25
\u_speed_ctrl|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[9]~44_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(9));

-- Location: LCCOMB_X5_Y27_N26
\u_speed_ctrl|count[10]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[10]~46_combout\ = (\u_speed_ctrl|count\(10) & (\u_speed_ctrl|count[9]~45\ $ (GND))) # (!\u_speed_ctrl|count\(10) & (!\u_speed_ctrl|count[9]~45\ & VCC))
-- \u_speed_ctrl|count[10]~47\ = CARRY((\u_speed_ctrl|count\(10) & !\u_speed_ctrl|count[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|count\(10),
	datad => VCC,
	cin => \u_speed_ctrl|count[9]~45\,
	combout => \u_speed_ctrl|count[10]~46_combout\,
	cout => \u_speed_ctrl|count[10]~47\);

-- Location: FF_X5_Y27_N27
\u_speed_ctrl|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[10]~46_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(10));

-- Location: LCCOMB_X5_Y27_N28
\u_speed_ctrl|count[11]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|count[11]~48_combout\ = (\u_speed_ctrl|count\(11) & (!\u_speed_ctrl|count[10]~47\)) # (!\u_speed_ctrl|count\(11) & ((\u_speed_ctrl|count[10]~47\) # (GND)))
-- \u_speed_ctrl|count[11]~49\ = CARRY((!\u_speed_ctrl|count[10]~47\) # (!\u_speed_ctrl|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|count\(11),
	datad => VCC,
	cin => \u_speed_ctrl|count[10]~47\,
	combout => \u_speed_ctrl|count[11]~48_combout\,
	cout => \u_speed_ctrl|count[11]~49\);

-- Location: FF_X5_Y27_N29
\u_speed_ctrl|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[11]~48_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(11));

-- Location: FF_X5_Y27_N31
\u_speed_ctrl|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|count[12]~50_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_speed_ctrl|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|count\(12));

-- Location: LCCOMB_X6_Y27_N22
\u_speed_ctrl|Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|Equal0~8_combout\ = (\u_speed_ctrl|count\(12) & (\u_speed_ctrl|Equal0~7_combout\ & \u_speed_ctrl|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|count\(12),
	datac => \u_speed_ctrl|Equal0~7_combout\,
	datad => \u_speed_ctrl|count\(7),
	combout => \u_speed_ctrl|Equal0~8_combout\);

-- Location: LCCOMB_X6_Y27_N24
\u_speed_ctrl|Equal0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|Equal0~9_combout\ = (\u_speed_ctrl|Equal0~8_combout\ & (\u_speed_ctrl|Equal0~2_combout\ & (\u_speed_ctrl|Equal0~3_combout\ & \u_speed_ctrl|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|Equal0~8_combout\,
	datab => \u_speed_ctrl|Equal0~2_combout\,
	datac => \u_speed_ctrl|Equal0~3_combout\,
	datad => \u_speed_ctrl|Equal0~6_combout\,
	combout => \u_speed_ctrl|Equal0~9_combout\);

-- Location: FF_X6_Y27_N1
\u_speed_ctrl|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|cnt[0]~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_speed_ctrl|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|cnt\(0));

-- Location: LCCOMB_X6_Y27_N2
\u_speed_ctrl|cnt[1]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|cnt[1]~12_combout\ = (\u_speed_ctrl|cnt\(1) & (!\u_speed_ctrl|cnt[0]~11\)) # (!\u_speed_ctrl|cnt\(1) & ((\u_speed_ctrl|cnt[0]~11\) # (GND)))
-- \u_speed_ctrl|cnt[1]~13\ = CARRY((!\u_speed_ctrl|cnt[0]~11\) # (!\u_speed_ctrl|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|cnt\(1),
	datad => VCC,
	cin => \u_speed_ctrl|cnt[0]~11\,
	combout => \u_speed_ctrl|cnt[1]~12_combout\,
	cout => \u_speed_ctrl|cnt[1]~13\);

-- Location: FF_X6_Y27_N3
\u_speed_ctrl|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|cnt[1]~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_speed_ctrl|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|cnt\(1));

-- Location: LCCOMB_X6_Y27_N4
\u_speed_ctrl|cnt[2]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|cnt[2]~14_combout\ = (\u_speed_ctrl|cnt\(2) & (\u_speed_ctrl|cnt[1]~13\ $ (GND))) # (!\u_speed_ctrl|cnt\(2) & (!\u_speed_ctrl|cnt[1]~13\ & VCC))
-- \u_speed_ctrl|cnt[2]~15\ = CARRY((\u_speed_ctrl|cnt\(2) & !\u_speed_ctrl|cnt[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|cnt\(2),
	datad => VCC,
	cin => \u_speed_ctrl|cnt[1]~13\,
	combout => \u_speed_ctrl|cnt[2]~14_combout\,
	cout => \u_speed_ctrl|cnt[2]~15\);

-- Location: FF_X6_Y27_N5
\u_speed_ctrl|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|cnt[2]~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_speed_ctrl|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|cnt\(2));

-- Location: LCCOMB_X6_Y27_N6
\u_speed_ctrl|cnt[3]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|cnt[3]~16_combout\ = (\u_speed_ctrl|cnt\(3) & (!\u_speed_ctrl|cnt[2]~15\)) # (!\u_speed_ctrl|cnt\(3) & ((\u_speed_ctrl|cnt[2]~15\) # (GND)))
-- \u_speed_ctrl|cnt[3]~17\ = CARRY((!\u_speed_ctrl|cnt[2]~15\) # (!\u_speed_ctrl|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|cnt\(3),
	datad => VCC,
	cin => \u_speed_ctrl|cnt[2]~15\,
	combout => \u_speed_ctrl|cnt[3]~16_combout\,
	cout => \u_speed_ctrl|cnt[3]~17\);

-- Location: FF_X6_Y27_N7
\u_speed_ctrl|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|cnt[3]~16_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_speed_ctrl|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|cnt\(3));

-- Location: LCCOMB_X6_Y27_N8
\u_speed_ctrl|cnt[4]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|cnt[4]~18_combout\ = (\u_speed_ctrl|cnt\(4) & (\u_speed_ctrl|cnt[3]~17\ $ (GND))) # (!\u_speed_ctrl|cnt\(4) & (!\u_speed_ctrl|cnt[3]~17\ & VCC))
-- \u_speed_ctrl|cnt[4]~19\ = CARRY((\u_speed_ctrl|cnt\(4) & !\u_speed_ctrl|cnt[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|cnt\(4),
	datad => VCC,
	cin => \u_speed_ctrl|cnt[3]~17\,
	combout => \u_speed_ctrl|cnt[4]~18_combout\,
	cout => \u_speed_ctrl|cnt[4]~19\);

-- Location: FF_X6_Y27_N9
\u_speed_ctrl|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|cnt[4]~18_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_speed_ctrl|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|cnt\(4));

-- Location: LCCOMB_X6_Y27_N10
\u_speed_ctrl|cnt[5]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|cnt[5]~20_combout\ = (\u_speed_ctrl|cnt\(5) & (!\u_speed_ctrl|cnt[4]~19\)) # (!\u_speed_ctrl|cnt\(5) & ((\u_speed_ctrl|cnt[4]~19\) # (GND)))
-- \u_speed_ctrl|cnt[5]~21\ = CARRY((!\u_speed_ctrl|cnt[4]~19\) # (!\u_speed_ctrl|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|cnt\(5),
	datad => VCC,
	cin => \u_speed_ctrl|cnt[4]~19\,
	combout => \u_speed_ctrl|cnt[5]~20_combout\,
	cout => \u_speed_ctrl|cnt[5]~21\);

-- Location: FF_X6_Y27_N11
\u_speed_ctrl|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|cnt[5]~20_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_speed_ctrl|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|cnt\(5));

-- Location: LCCOMB_X6_Y27_N12
\u_speed_ctrl|cnt[6]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|cnt[6]~22_combout\ = (\u_speed_ctrl|cnt\(6) & (\u_speed_ctrl|cnt[5]~21\ $ (GND))) # (!\u_speed_ctrl|cnt\(6) & (!\u_speed_ctrl|cnt[5]~21\ & VCC))
-- \u_speed_ctrl|cnt[6]~23\ = CARRY((\u_speed_ctrl|cnt\(6) & !\u_speed_ctrl|cnt[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_speed_ctrl|cnt\(6),
	datad => VCC,
	cin => \u_speed_ctrl|cnt[5]~21\,
	combout => \u_speed_ctrl|cnt[6]~22_combout\,
	cout => \u_speed_ctrl|cnt[6]~23\);

-- Location: FF_X6_Y27_N13
\u_speed_ctrl|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|cnt[6]~22_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_speed_ctrl|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|cnt\(6));

-- Location: LCCOMB_X6_Y27_N14
\u_speed_ctrl|cnt[7]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|cnt[7]~24_combout\ = (\u_speed_ctrl|cnt\(7) & (!\u_speed_ctrl|cnt[6]~23\)) # (!\u_speed_ctrl|cnt\(7) & ((\u_speed_ctrl|cnt[6]~23\) # (GND)))
-- \u_speed_ctrl|cnt[7]~25\ = CARRY((!\u_speed_ctrl|cnt[6]~23\) # (!\u_speed_ctrl|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|cnt\(7),
	datad => VCC,
	cin => \u_speed_ctrl|cnt[6]~23\,
	combout => \u_speed_ctrl|cnt[7]~24_combout\,
	cout => \u_speed_ctrl|cnt[7]~25\);

-- Location: FF_X6_Y27_N15
\u_speed_ctrl|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|cnt[7]~24_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_speed_ctrl|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|cnt\(7));

-- Location: LCCOMB_X6_Y27_N16
\u_speed_ctrl|cnt[8]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|cnt[8]~26_combout\ = (\u_speed_ctrl|cnt\(8) & (\u_speed_ctrl|cnt[7]~25\ $ (GND))) # (!\u_speed_ctrl|cnt\(8) & (!\u_speed_ctrl|cnt[7]~25\ & VCC))
-- \u_speed_ctrl|cnt[8]~27\ = CARRY((\u_speed_ctrl|cnt\(8) & !\u_speed_ctrl|cnt[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_speed_ctrl|cnt\(8),
	datad => VCC,
	cin => \u_speed_ctrl|cnt[7]~25\,
	combout => \u_speed_ctrl|cnt[8]~26_combout\,
	cout => \u_speed_ctrl|cnt[8]~27\);

-- Location: FF_X6_Y27_N17
\u_speed_ctrl|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|cnt[8]~26_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_speed_ctrl|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|cnt\(8));

-- Location: LCCOMB_X6_Y27_N18
\u_speed_ctrl|cnt[9]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_speed_ctrl|cnt[9]~28_combout\ = \u_speed_ctrl|cnt[8]~27\ $ (\u_speed_ctrl|cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_speed_ctrl|cnt\(9),
	cin => \u_speed_ctrl|cnt[8]~27\,
	combout => \u_speed_ctrl|cnt[9]~28_combout\);

-- Location: FF_X6_Y27_N19
\u_speed_ctrl|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_speed_ctrl|cnt[9]~28_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_speed_ctrl|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_speed_ctrl|cnt\(9));

-- Location: LCCOMB_X12_Y25_N12
\u_debounce|debounce_cnt[0]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|debounce_cnt[0]~20_combout\ = \u_debounce|debounce_cnt\(0) $ (VCC)
-- \u_debounce|debounce_cnt[0]~21\ = CARRY(\u_debounce|debounce_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce|debounce_cnt\(0),
	datad => VCC,
	combout => \u_debounce|debounce_cnt[0]~20_combout\,
	cout => \u_debounce|debounce_cnt[0]~21\);

-- Location: LCCOMB_X12_Y25_N2
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

-- Location: IOIBUF_X10_Y0_N8
\btn~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn,
	o => \btn~input_o\);

-- Location: LCCOMB_X11_Y24_N12
\u_debounce|btn_ff1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|btn_ff1~0_combout\ = !\btn~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn~input_o\,
	combout => \u_debounce|btn_ff1~0_combout\);

-- Location: FF_X11_Y24_N13
\u_debounce|btn_ff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_debounce|btn_ff1~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|btn_ff1~q\);

-- Location: FF_X11_Y24_N23
\u_debounce|btn_ff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	asdata => \u_debounce|btn_ff1~q\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|btn_ff2~q\);

-- Location: LCCOMB_X11_Y24_N22
\u_debounce|always0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|always0~0_combout\ = (!\u_debounce|btn_ff2~q\ & \u_debounce|btn_ff1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_debounce|btn_ff2~q\,
	datad => \u_debounce|btn_ff1~q\,
	combout => \u_debounce|always0~0_combout\);

-- Location: LCCOMB_X12_Y25_N14
\u_debounce|debounce_cnt[1]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|debounce_cnt[1]~23_combout\ = (\u_debounce|debounce_cnt\(1) & (\u_debounce|debounce_cnt[0]~21\ & VCC)) # (!\u_debounce|debounce_cnt\(1) & (!\u_debounce|debounce_cnt[0]~21\))
-- \u_debounce|debounce_cnt[1]~24\ = CARRY((!\u_debounce|debounce_cnt\(1) & !\u_debounce|debounce_cnt[0]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce|debounce_cnt\(1),
	datad => VCC,
	cin => \u_debounce|debounce_cnt[0]~21\,
	combout => \u_debounce|debounce_cnt[1]~23_combout\,
	cout => \u_debounce|debounce_cnt[1]~24\);

-- Location: FF_X12_Y25_N15
\u_debounce|debounce_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_debounce|debounce_cnt[1]~23_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_debounce|always0~0_combout\,
	ena => \u_debounce|debounce_cnt[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|debounce_cnt\(1));

-- Location: LCCOMB_X12_Y25_N16
\u_debounce|debounce_cnt[2]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|debounce_cnt[2]~25_combout\ = (\u_debounce|debounce_cnt\(2) & ((GND) # (!\u_debounce|debounce_cnt[1]~24\))) # (!\u_debounce|debounce_cnt\(2) & (\u_debounce|debounce_cnt[1]~24\ $ (GND)))
-- \u_debounce|debounce_cnt[2]~26\ = CARRY((\u_debounce|debounce_cnt\(2)) # (!\u_debounce|debounce_cnt[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce|debounce_cnt\(2),
	datad => VCC,
	cin => \u_debounce|debounce_cnt[1]~24\,
	combout => \u_debounce|debounce_cnt[2]~25_combout\,
	cout => \u_debounce|debounce_cnt[2]~26\);

-- Location: FF_X12_Y25_N17
\u_debounce|debounce_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_debounce|debounce_cnt[2]~25_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_debounce|always0~0_combout\,
	ena => \u_debounce|debounce_cnt[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|debounce_cnt\(2));

-- Location: LCCOMB_X12_Y25_N18
\u_debounce|debounce_cnt[3]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|debounce_cnt[3]~27_combout\ = (\u_debounce|debounce_cnt\(3) & (\u_debounce|debounce_cnt[2]~26\ & VCC)) # (!\u_debounce|debounce_cnt\(3) & (!\u_debounce|debounce_cnt[2]~26\))
-- \u_debounce|debounce_cnt[3]~28\ = CARRY((!\u_debounce|debounce_cnt\(3) & !\u_debounce|debounce_cnt[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce|debounce_cnt\(3),
	datad => VCC,
	cin => \u_debounce|debounce_cnt[2]~26\,
	combout => \u_debounce|debounce_cnt[3]~27_combout\,
	cout => \u_debounce|debounce_cnt[3]~28\);

-- Location: FF_X12_Y25_N19
\u_debounce|debounce_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_debounce|debounce_cnt[3]~27_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_debounce|always0~0_combout\,
	ena => \u_debounce|debounce_cnt[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|debounce_cnt\(3));

-- Location: LCCOMB_X12_Y25_N20
\u_debounce|debounce_cnt[4]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|debounce_cnt[4]~29_combout\ = (\u_debounce|debounce_cnt\(4) & ((GND) # (!\u_debounce|debounce_cnt[3]~28\))) # (!\u_debounce|debounce_cnt\(4) & (\u_debounce|debounce_cnt[3]~28\ $ (GND)))
-- \u_debounce|debounce_cnt[4]~30\ = CARRY((\u_debounce|debounce_cnt\(4)) # (!\u_debounce|debounce_cnt[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce|debounce_cnt\(4),
	datad => VCC,
	cin => \u_debounce|debounce_cnt[3]~28\,
	combout => \u_debounce|debounce_cnt[4]~29_combout\,
	cout => \u_debounce|debounce_cnt[4]~30\);

-- Location: FF_X12_Y25_N21
\u_debounce|debounce_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_debounce|debounce_cnt[4]~29_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_debounce|always0~0_combout\,
	ena => \u_debounce|debounce_cnt[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|debounce_cnt\(4));

-- Location: LCCOMB_X12_Y25_N22
\u_debounce|debounce_cnt[5]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|debounce_cnt[5]~31_combout\ = (\u_debounce|debounce_cnt\(5) & (\u_debounce|debounce_cnt[4]~30\ & VCC)) # (!\u_debounce|debounce_cnt\(5) & (!\u_debounce|debounce_cnt[4]~30\))
-- \u_debounce|debounce_cnt[5]~32\ = CARRY((!\u_debounce|debounce_cnt\(5) & !\u_debounce|debounce_cnt[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce|debounce_cnt\(5),
	datad => VCC,
	cin => \u_debounce|debounce_cnt[4]~30\,
	combout => \u_debounce|debounce_cnt[5]~31_combout\,
	cout => \u_debounce|debounce_cnt[5]~32\);

-- Location: FF_X12_Y25_N23
\u_debounce|debounce_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_debounce|debounce_cnt[5]~31_combout\,
	asdata => VCC,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_debounce|always0~0_combout\,
	ena => \u_debounce|debounce_cnt[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|debounce_cnt\(5));

-- Location: LCCOMB_X12_Y25_N24
\u_debounce|debounce_cnt[6]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|debounce_cnt[6]~33_combout\ = (\u_debounce|debounce_cnt\(6) & ((GND) # (!\u_debounce|debounce_cnt[5]~32\))) # (!\u_debounce|debounce_cnt\(6) & (\u_debounce|debounce_cnt[5]~32\ $ (GND)))
-- \u_debounce|debounce_cnt[6]~34\ = CARRY((\u_debounce|debounce_cnt\(6)) # (!\u_debounce|debounce_cnt[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce|debounce_cnt\(6),
	datad => VCC,
	cin => \u_debounce|debounce_cnt[5]~32\,
	combout => \u_debounce|debounce_cnt[6]~33_combout\,
	cout => \u_debounce|debounce_cnt[6]~34\);

-- Location: FF_X12_Y25_N25
\u_debounce|debounce_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_debounce|debounce_cnt[6]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_debounce|always0~0_combout\,
	ena => \u_debounce|debounce_cnt[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|debounce_cnt\(6));

-- Location: LCCOMB_X12_Y25_N26
\u_debounce|debounce_cnt[7]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|debounce_cnt[7]~35_combout\ = (\u_debounce|debounce_cnt\(7) & (\u_debounce|debounce_cnt[6]~34\ & VCC)) # (!\u_debounce|debounce_cnt\(7) & (!\u_debounce|debounce_cnt[6]~34\))
-- \u_debounce|debounce_cnt[7]~36\ = CARRY((!\u_debounce|debounce_cnt\(7) & !\u_debounce|debounce_cnt[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce|debounce_cnt\(7),
	datad => VCC,
	cin => \u_debounce|debounce_cnt[6]~34\,
	combout => \u_debounce|debounce_cnt[7]~35_combout\,
	cout => \u_debounce|debounce_cnt[7]~36\);

-- Location: FF_X12_Y25_N27
\u_debounce|debounce_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_debounce|debounce_cnt[7]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_debounce|always0~0_combout\,
	ena => \u_debounce|debounce_cnt[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|debounce_cnt\(7));

-- Location: LCCOMB_X12_Y25_N28
\u_debounce|debounce_cnt[8]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|debounce_cnt[8]~37_combout\ = (\u_debounce|debounce_cnt\(8) & ((GND) # (!\u_debounce|debounce_cnt[7]~36\))) # (!\u_debounce|debounce_cnt\(8) & (\u_debounce|debounce_cnt[7]~36\ $ (GND)))
-- \u_debounce|debounce_cnt[8]~38\ = CARRY((\u_debounce|debounce_cnt\(8)) # (!\u_debounce|debounce_cnt[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce|debounce_cnt\(8),
	datad => VCC,
	cin => \u_debounce|debounce_cnt[7]~36\,
	combout => \u_debounce|debounce_cnt[8]~37_combout\,
	cout => \u_debounce|debounce_cnt[8]~38\);

-- Location: FF_X12_Y25_N29
\u_debounce|debounce_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_debounce|debounce_cnt[8]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_debounce|always0~0_combout\,
	ena => \u_debounce|debounce_cnt[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|debounce_cnt\(8));

-- Location: LCCOMB_X12_Y25_N30
\u_debounce|debounce_cnt[9]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|debounce_cnt[9]~39_combout\ = (\u_debounce|debounce_cnt\(9) & (\u_debounce|debounce_cnt[8]~38\ & VCC)) # (!\u_debounce|debounce_cnt\(9) & (!\u_debounce|debounce_cnt[8]~38\))
-- \u_debounce|debounce_cnt[9]~40\ = CARRY((!\u_debounce|debounce_cnt\(9) & !\u_debounce|debounce_cnt[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce|debounce_cnt\(9),
	datad => VCC,
	cin => \u_debounce|debounce_cnt[8]~38\,
	combout => \u_debounce|debounce_cnt[9]~39_combout\,
	cout => \u_debounce|debounce_cnt[9]~40\);

-- Location: FF_X12_Y25_N31
\u_debounce|debounce_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_debounce|debounce_cnt[9]~39_combout\,
	asdata => VCC,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_debounce|always0~0_combout\,
	ena => \u_debounce|debounce_cnt[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|debounce_cnt\(9));

-- Location: LCCOMB_X12_Y24_N0
\u_debounce|debounce_cnt[10]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|debounce_cnt[10]~41_combout\ = (\u_debounce|debounce_cnt\(10) & ((GND) # (!\u_debounce|debounce_cnt[9]~40\))) # (!\u_debounce|debounce_cnt\(10) & (\u_debounce|debounce_cnt[9]~40\ $ (GND)))
-- \u_debounce|debounce_cnt[10]~42\ = CARRY((\u_debounce|debounce_cnt\(10)) # (!\u_debounce|debounce_cnt[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce|debounce_cnt\(10),
	datad => VCC,
	cin => \u_debounce|debounce_cnt[9]~40\,
	combout => \u_debounce|debounce_cnt[10]~41_combout\,
	cout => \u_debounce|debounce_cnt[10]~42\);

-- Location: FF_X12_Y24_N1
\u_debounce|debounce_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_debounce|debounce_cnt[10]~41_combout\,
	asdata => VCC,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_debounce|always0~0_combout\,
	ena => \u_debounce|debounce_cnt[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|debounce_cnt\(10));

-- Location: LCCOMB_X12_Y24_N2
\u_debounce|debounce_cnt[11]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|debounce_cnt[11]~43_combout\ = (\u_debounce|debounce_cnt\(11) & (\u_debounce|debounce_cnt[10]~42\ & VCC)) # (!\u_debounce|debounce_cnt\(11) & (!\u_debounce|debounce_cnt[10]~42\))
-- \u_debounce|debounce_cnt[11]~44\ = CARRY((!\u_debounce|debounce_cnt\(11) & !\u_debounce|debounce_cnt[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce|debounce_cnt\(11),
	datad => VCC,
	cin => \u_debounce|debounce_cnt[10]~42\,
	combout => \u_debounce|debounce_cnt[11]~43_combout\,
	cout => \u_debounce|debounce_cnt[11]~44\);

-- Location: FF_X12_Y24_N3
\u_debounce|debounce_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_debounce|debounce_cnt[11]~43_combout\,
	asdata => VCC,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_debounce|always0~0_combout\,
	ena => \u_debounce|debounce_cnt[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|debounce_cnt\(11));

-- Location: LCCOMB_X12_Y24_N4
\u_debounce|debounce_cnt[12]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|debounce_cnt[12]~45_combout\ = (\u_debounce|debounce_cnt\(12) & ((GND) # (!\u_debounce|debounce_cnt[11]~44\))) # (!\u_debounce|debounce_cnt\(12) & (\u_debounce|debounce_cnt[11]~44\ $ (GND)))
-- \u_debounce|debounce_cnt[12]~46\ = CARRY((\u_debounce|debounce_cnt\(12)) # (!\u_debounce|debounce_cnt[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce|debounce_cnt\(12),
	datad => VCC,
	cin => \u_debounce|debounce_cnt[11]~44\,
	combout => \u_debounce|debounce_cnt[12]~45_combout\,
	cout => \u_debounce|debounce_cnt[12]~46\);

-- Location: FF_X12_Y24_N5
\u_debounce|debounce_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_debounce|debounce_cnt[12]~45_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_debounce|always0~0_combout\,
	ena => \u_debounce|debounce_cnt[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|debounce_cnt\(12));

-- Location: LCCOMB_X12_Y24_N6
\u_debounce|debounce_cnt[13]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|debounce_cnt[13]~47_combout\ = (\u_debounce|debounce_cnt\(13) & (\u_debounce|debounce_cnt[12]~46\ & VCC)) # (!\u_debounce|debounce_cnt\(13) & (!\u_debounce|debounce_cnt[12]~46\))
-- \u_debounce|debounce_cnt[13]~48\ = CARRY((!\u_debounce|debounce_cnt\(13) & !\u_debounce|debounce_cnt[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce|debounce_cnt\(13),
	datad => VCC,
	cin => \u_debounce|debounce_cnt[12]~46\,
	combout => \u_debounce|debounce_cnt[13]~47_combout\,
	cout => \u_debounce|debounce_cnt[13]~48\);

-- Location: FF_X12_Y24_N7
\u_debounce|debounce_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_debounce|debounce_cnt[13]~47_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_debounce|always0~0_combout\,
	ena => \u_debounce|debounce_cnt[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|debounce_cnt\(13));

-- Location: LCCOMB_X12_Y24_N8
\u_debounce|debounce_cnt[14]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|debounce_cnt[14]~49_combout\ = (\u_debounce|debounce_cnt\(14) & ((GND) # (!\u_debounce|debounce_cnt[13]~48\))) # (!\u_debounce|debounce_cnt\(14) & (\u_debounce|debounce_cnt[13]~48\ $ (GND)))
-- \u_debounce|debounce_cnt[14]~50\ = CARRY((\u_debounce|debounce_cnt\(14)) # (!\u_debounce|debounce_cnt[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce|debounce_cnt\(14),
	datad => VCC,
	cin => \u_debounce|debounce_cnt[13]~48\,
	combout => \u_debounce|debounce_cnt[14]~49_combout\,
	cout => \u_debounce|debounce_cnt[14]~50\);

-- Location: FF_X12_Y24_N9
\u_debounce|debounce_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_debounce|debounce_cnt[14]~49_combout\,
	asdata => VCC,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_debounce|always0~0_combout\,
	ena => \u_debounce|debounce_cnt[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|debounce_cnt\(14));

-- Location: LCCOMB_X12_Y24_N10
\u_debounce|debounce_cnt[15]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|debounce_cnt[15]~51_combout\ = (\u_debounce|debounce_cnt\(15) & (\u_debounce|debounce_cnt[14]~50\ & VCC)) # (!\u_debounce|debounce_cnt\(15) & (!\u_debounce|debounce_cnt[14]~50\))
-- \u_debounce|debounce_cnt[15]~52\ = CARRY((!\u_debounce|debounce_cnt\(15) & !\u_debounce|debounce_cnt[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce|debounce_cnt\(15),
	datad => VCC,
	cin => \u_debounce|debounce_cnt[14]~50\,
	combout => \u_debounce|debounce_cnt[15]~51_combout\,
	cout => \u_debounce|debounce_cnt[15]~52\);

-- Location: FF_X12_Y24_N11
\u_debounce|debounce_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_debounce|debounce_cnt[15]~51_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_debounce|always0~0_combout\,
	ena => \u_debounce|debounce_cnt[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|debounce_cnt\(15));

-- Location: LCCOMB_X12_Y24_N12
\u_debounce|debounce_cnt[16]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|debounce_cnt[16]~53_combout\ = (\u_debounce|debounce_cnt\(16) & ((GND) # (!\u_debounce|debounce_cnt[15]~52\))) # (!\u_debounce|debounce_cnt\(16) & (\u_debounce|debounce_cnt[15]~52\ $ (GND)))
-- \u_debounce|debounce_cnt[16]~54\ = CARRY((\u_debounce|debounce_cnt\(16)) # (!\u_debounce|debounce_cnt[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce|debounce_cnt\(16),
	datad => VCC,
	cin => \u_debounce|debounce_cnt[15]~52\,
	combout => \u_debounce|debounce_cnt[16]~53_combout\,
	cout => \u_debounce|debounce_cnt[16]~54\);

-- Location: FF_X12_Y24_N13
\u_debounce|debounce_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_debounce|debounce_cnt[16]~53_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_debounce|always0~0_combout\,
	ena => \u_debounce|debounce_cnt[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|debounce_cnt\(16));

-- Location: LCCOMB_X12_Y24_N14
\u_debounce|debounce_cnt[17]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|debounce_cnt[17]~55_combout\ = (\u_debounce|debounce_cnt\(17) & (\u_debounce|debounce_cnt[16]~54\ & VCC)) # (!\u_debounce|debounce_cnt\(17) & (!\u_debounce|debounce_cnt[16]~54\))
-- \u_debounce|debounce_cnt[17]~56\ = CARRY((!\u_debounce|debounce_cnt\(17) & !\u_debounce|debounce_cnt[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce|debounce_cnt\(17),
	datad => VCC,
	cin => \u_debounce|debounce_cnt[16]~54\,
	combout => \u_debounce|debounce_cnt[17]~55_combout\,
	cout => \u_debounce|debounce_cnt[17]~56\);

-- Location: FF_X12_Y24_N15
\u_debounce|debounce_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_debounce|debounce_cnt[17]~55_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_debounce|always0~0_combout\,
	ena => \u_debounce|debounce_cnt[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|debounce_cnt\(17));

-- Location: LCCOMB_X12_Y24_N16
\u_debounce|debounce_cnt[18]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|debounce_cnt[18]~57_combout\ = (\u_debounce|debounce_cnt\(18) & ((GND) # (!\u_debounce|debounce_cnt[17]~56\))) # (!\u_debounce|debounce_cnt\(18) & (\u_debounce|debounce_cnt[17]~56\ $ (GND)))
-- \u_debounce|debounce_cnt[18]~58\ = CARRY((\u_debounce|debounce_cnt\(18)) # (!\u_debounce|debounce_cnt[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce|debounce_cnt\(18),
	datad => VCC,
	cin => \u_debounce|debounce_cnt[17]~56\,
	combout => \u_debounce|debounce_cnt[18]~57_combout\,
	cout => \u_debounce|debounce_cnt[18]~58\);

-- Location: FF_X12_Y24_N17
\u_debounce|debounce_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_debounce|debounce_cnt[18]~57_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_debounce|always0~0_combout\,
	ena => \u_debounce|debounce_cnt[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|debounce_cnt\(18));

-- Location: LCCOMB_X12_Y24_N18
\u_debounce|debounce_cnt[19]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|debounce_cnt[19]~59_combout\ = \u_debounce|debounce_cnt[18]~58\ $ (!\u_debounce|debounce_cnt\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_debounce|debounce_cnt\(19),
	cin => \u_debounce|debounce_cnt[18]~58\,
	combout => \u_debounce|debounce_cnt[19]~59_combout\);

-- Location: FF_X12_Y24_N19
\u_debounce|debounce_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_debounce|debounce_cnt[19]~59_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_debounce|always0~0_combout\,
	ena => \u_debounce|debounce_cnt[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|debounce_cnt\(19));

-- Location: LCCOMB_X12_Y24_N28
\u_debounce|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|Equal1~0_combout\ = (!\u_debounce|debounce_cnt\(19) & (!\u_debounce|debounce_cnt\(17) & !\u_debounce|debounce_cnt\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce|debounce_cnt\(19),
	datac => \u_debounce|debounce_cnt\(17),
	datad => \u_debounce|debounce_cnt\(18),
	combout => \u_debounce|Equal1~0_combout\);

-- Location: LCCOMB_X12_Y25_N6
\u_debounce|Equal1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|Equal1~2_combout\ = (!\u_debounce|debounce_cnt\(5) & (!\u_debounce|debounce_cnt\(8) & (!\u_debounce|debounce_cnt\(7) & !\u_debounce|debounce_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce|debounce_cnt\(5),
	datab => \u_debounce|debounce_cnt\(8),
	datac => \u_debounce|debounce_cnt\(7),
	datad => \u_debounce|debounce_cnt\(6),
	combout => \u_debounce|Equal1~2_combout\);

-- Location: LCCOMB_X12_Y25_N4
\u_debounce|Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|Equal1~1_combout\ = (!\u_debounce|debounce_cnt\(4) & (!\u_debounce|debounce_cnt\(3) & (!\u_debounce|debounce_cnt\(1) & !\u_debounce|debounce_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce|debounce_cnt\(4),
	datab => \u_debounce|debounce_cnt\(3),
	datac => \u_debounce|debounce_cnt\(1),
	datad => \u_debounce|debounce_cnt\(2),
	combout => \u_debounce|Equal1~1_combout\);

-- Location: LCCOMB_X12_Y24_N24
\u_debounce|Equal1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|Equal1~4_combout\ = (!\u_debounce|debounce_cnt\(15) & (!\u_debounce|debounce_cnt\(16) & (!\u_debounce|debounce_cnt\(14) & !\u_debounce|debounce_cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce|debounce_cnt\(15),
	datab => \u_debounce|debounce_cnt\(16),
	datac => \u_debounce|debounce_cnt\(14),
	datad => \u_debounce|debounce_cnt\(13),
	combout => \u_debounce|Equal1~4_combout\);

-- Location: LCCOMB_X12_Y24_N26
\u_debounce|Equal1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|Equal1~3_combout\ = (!\u_debounce|debounce_cnt\(9) & (!\u_debounce|debounce_cnt\(11) & (!\u_debounce|debounce_cnt\(12) & !\u_debounce|debounce_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce|debounce_cnt\(9),
	datab => \u_debounce|debounce_cnt\(11),
	datac => \u_debounce|debounce_cnt\(12),
	datad => \u_debounce|debounce_cnt\(10),
	combout => \u_debounce|Equal1~3_combout\);

-- Location: LCCOMB_X12_Y25_N0
\u_debounce|Equal1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|Equal1~5_combout\ = (\u_debounce|Equal1~2_combout\ & (\u_debounce|Equal1~1_combout\ & (\u_debounce|Equal1~4_combout\ & \u_debounce|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce|Equal1~2_combout\,
	datab => \u_debounce|Equal1~1_combout\,
	datac => \u_debounce|Equal1~4_combout\,
	datad => \u_debounce|Equal1~3_combout\,
	combout => \u_debounce|Equal1~5_combout\);

-- Location: LCCOMB_X12_Y25_N8
\u_debounce|debounce_cnt[10]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|debounce_cnt[10]~22_combout\ = (\u_debounce|debounce_cnt\(0)) # (((\u_debounce|always0~0_combout\) # (!\u_debounce|Equal1~5_combout\)) # (!\u_debounce|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce|debounce_cnt\(0),
	datab => \u_debounce|Equal1~0_combout\,
	datac => \u_debounce|always0~0_combout\,
	datad => \u_debounce|Equal1~5_combout\,
	combout => \u_debounce|debounce_cnt[10]~22_combout\);

-- Location: FF_X12_Y25_N13
\u_debounce|debounce_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_debounce|debounce_cnt[0]~20_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \u_debounce|always0~0_combout\,
	ena => \u_debounce|debounce_cnt[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce|debounce_cnt\(0));

-- Location: LCCOMB_X12_Y25_N10
\u_debounce|Equal1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_debounce|Equal1~6_combout\ = (\u_debounce|debounce_cnt\(0) & (\u_debounce|Equal1~0_combout\ & \u_debounce|Equal1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce|debounce_cnt\(0),
	datac => \u_debounce|Equal1~0_combout\,
	datad => \u_debounce|Equal1~5_combout\,
	combout => \u_debounce|Equal1~6_combout\);

-- Location: LCCOMB_X13_Y25_N22
\state[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state[1]~1_combout\ = (state(0) & (!state(1) & \u_debounce|Equal1~6_combout\)) # (!state(0) & (state(1) & !\u_debounce|Equal1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datac => state(1),
	datad => \u_debounce|Equal1~6_combout\,
	combout => \state[1]~1_combout\);

-- Location: FF_X13_Y25_N23
\state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \state[1]~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(1));

-- Location: LCCOMB_X13_Y25_N24
\state[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state[0]~0_combout\ = (!state(1) & (state(0) $ (\u_debounce|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datac => state(0),
	datad => \u_debounce|Equal1~6_combout\,
	combout => \state[0]~0_combout\);

-- Location: FF_X13_Y25_N25
\state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \state[0]~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(0));

-- Location: LCCOMB_X13_Y25_N16
\u_shuma|Decoder0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_shuma|Decoder0~1_combout\ = (!state(0) & state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datac => state(1),
	combout => \u_shuma|Decoder0~1_combout\);

-- Location: LCCOMB_X13_Y25_N30
\song_offset[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \song_offset[9]~feeder_combout\ = \u_shuma|Decoder0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_shuma|Decoder0~1_combout\,
	combout => \song_offset[9]~feeder_combout\);

-- Location: FF_X13_Y25_N31
\song_offset[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \song_offset[9]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => song_offset(9));

-- Location: LCCOMB_X6_Y24_N28
\current_addr[9]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_addr[9]~0_combout\ = \u_speed_ctrl|cnt\(9) $ (song_offset(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_speed_ctrl|cnt\(9),
	datad => song_offset(9),
	combout => \current_addr[9]~0_combout\);

-- Location: M9K_X7_Y24_N0
\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006034120A04824160C04828120900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000120A0502C160C060341C0E068341209",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/music.ram0_music_mem_a2c4a5a4.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "music_mem:u_music_mem|altsyncram:note_rom_rtl_0|altsyncram_5671:auto_generated|ALTSYNCRAM",
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
	clk0 => \clk_1mhz~clkctrl_outclk\,
	portaaddr => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X9_Y24_N24
\u_music_mem|note_rom~0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_music_mem|note_rom~0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_music_mem|note_rom~0feeder_combout\);

-- Location: FF_X9_Y24_N25
\u_music_mem|note_rom~0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_music_mem|note_rom~0feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_music_mem|note_rom~0_q\);

-- Location: LCCOMB_X6_Y24_N26
\u_lev_ctl|WideOr3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr3~6_combout\ = (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\))) # 
-- (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ & !\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\)))) # 
-- (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\ & (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ $ (((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ & 
-- \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\,
	datac => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\,
	datad => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\,
	combout => \u_lev_ctl|WideOr3~6_combout\);

-- Location: LCCOMB_X6_Y24_N0
\u_lev_ctl|WideOr3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr3~5_combout\ = (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\) # 
-- (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\))) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\,
	datac => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\,
	datad => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\,
	combout => \u_lev_ctl|WideOr3~5_combout\);

-- Location: LCCOMB_X6_Y24_N30
\u_lev_ctl|WideOr3~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr3~9_combout\ = (\u_music_mem|note_rom~0_q\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ & (\u_lev_ctl|WideOr3~6_combout\)) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ & ((\u_lev_ctl|WideOr3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\,
	datab => \u_music_mem|note_rom~0_q\,
	datac => \u_lev_ctl|WideOr3~6_combout\,
	datad => \u_lev_ctl|WideOr3~5_combout\,
	combout => \u_lev_ctl|WideOr3~9_combout\);

-- Location: FF_X6_Y24_N31
\u_lev_ctl|wave_cnt_max[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_lev_ctl|WideOr3~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lev_ctl|wave_cnt_max\(7));

-- Location: LCCOMB_X6_Y24_N8
\u_lev_ctl|WideOr4~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr4~5_combout\ = (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\) # 
-- (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\))) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\,
	datac => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\,
	datad => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\,
	combout => \u_lev_ctl|WideOr4~5_combout\);

-- Location: LCCOMB_X6_Y24_N18
\u_lev_ctl|WideOr4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr4~6_combout\ = (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ & (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ $ (((!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ & 
-- \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\))))) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\) # 
-- ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ & \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\,
	datab => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\,
	datac => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\,
	datad => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \u_lev_ctl|WideOr4~6_combout\);

-- Location: LCCOMB_X6_Y24_N24
\u_lev_ctl|WideOr4~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr4~9_combout\ = (\u_music_mem|note_rom~0_q\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ & ((\u_lev_ctl|WideOr4~6_combout\))) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ & (\u_lev_ctl|WideOr4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom~0_q\,
	datab => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\,
	datac => \u_lev_ctl|WideOr4~5_combout\,
	datad => \u_lev_ctl|WideOr4~6_combout\,
	combout => \u_lev_ctl|WideOr4~9_combout\);

-- Location: FF_X6_Y24_N25
\u_lev_ctl|wave_cnt_max[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_lev_ctl|WideOr4~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lev_ctl|wave_cnt_max\(6));

-- Location: LCCOMB_X10_Y24_N6
\u_wave_gen|div_cnt[0]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|div_cnt[0]~11_combout\ = \u_wave_gen|div_cnt\(0) $ (VCC)
-- \u_wave_gen|div_cnt[0]~12\ = CARRY(\u_wave_gen|div_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_wave_gen|div_cnt\(0),
	datad => VCC,
	combout => \u_wave_gen|div_cnt[0]~11_combout\,
	cout => \u_wave_gen|div_cnt[0]~12\);

-- Location: FF_X10_Y24_N7
\u_wave_gen|div_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_wave_gen|div_cnt[0]~11_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_wave_gen|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_wave_gen|div_cnt\(0));

-- Location: LCCOMB_X10_Y24_N8
\u_wave_gen|div_cnt[1]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|div_cnt[1]~13_combout\ = (\u_wave_gen|div_cnt\(1) & (!\u_wave_gen|div_cnt[0]~12\)) # (!\u_wave_gen|div_cnt\(1) & ((\u_wave_gen|div_cnt[0]~12\) # (GND)))
-- \u_wave_gen|div_cnt[1]~14\ = CARRY((!\u_wave_gen|div_cnt[0]~12\) # (!\u_wave_gen|div_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_wave_gen|div_cnt\(1),
	datad => VCC,
	cin => \u_wave_gen|div_cnt[0]~12\,
	combout => \u_wave_gen|div_cnt[1]~13_combout\,
	cout => \u_wave_gen|div_cnt[1]~14\);

-- Location: FF_X10_Y24_N9
\u_wave_gen|div_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_wave_gen|div_cnt[1]~13_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_wave_gen|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_wave_gen|div_cnt\(1));

-- Location: LCCOMB_X10_Y24_N10
\u_wave_gen|div_cnt[2]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|div_cnt[2]~15_combout\ = (\u_wave_gen|div_cnt\(2) & (\u_wave_gen|div_cnt[1]~14\ $ (GND))) # (!\u_wave_gen|div_cnt\(2) & (!\u_wave_gen|div_cnt[1]~14\ & VCC))
-- \u_wave_gen|div_cnt[2]~16\ = CARRY((\u_wave_gen|div_cnt\(2) & !\u_wave_gen|div_cnt[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_wave_gen|div_cnt\(2),
	datad => VCC,
	cin => \u_wave_gen|div_cnt[1]~14\,
	combout => \u_wave_gen|div_cnt[2]~15_combout\,
	cout => \u_wave_gen|div_cnt[2]~16\);

-- Location: FF_X10_Y24_N11
\u_wave_gen|div_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_wave_gen|div_cnt[2]~15_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_wave_gen|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_wave_gen|div_cnt\(2));

-- Location: LCCOMB_X10_Y24_N12
\u_wave_gen|div_cnt[3]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|div_cnt[3]~17_combout\ = (\u_wave_gen|div_cnt\(3) & (!\u_wave_gen|div_cnt[2]~16\)) # (!\u_wave_gen|div_cnt\(3) & ((\u_wave_gen|div_cnt[2]~16\) # (GND)))
-- \u_wave_gen|div_cnt[3]~18\ = CARRY((!\u_wave_gen|div_cnt[2]~16\) # (!\u_wave_gen|div_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_wave_gen|div_cnt\(3),
	datad => VCC,
	cin => \u_wave_gen|div_cnt[2]~16\,
	combout => \u_wave_gen|div_cnt[3]~17_combout\,
	cout => \u_wave_gen|div_cnt[3]~18\);

-- Location: FF_X10_Y24_N13
\u_wave_gen|div_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_wave_gen|div_cnt[3]~17_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_wave_gen|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_wave_gen|div_cnt\(3));

-- Location: LCCOMB_X10_Y24_N14
\u_wave_gen|div_cnt[4]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|div_cnt[4]~19_combout\ = (\u_wave_gen|div_cnt\(4) & (\u_wave_gen|div_cnt[3]~18\ $ (GND))) # (!\u_wave_gen|div_cnt\(4) & (!\u_wave_gen|div_cnt[3]~18\ & VCC))
-- \u_wave_gen|div_cnt[4]~20\ = CARRY((\u_wave_gen|div_cnt\(4) & !\u_wave_gen|div_cnt[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_wave_gen|div_cnt\(4),
	datad => VCC,
	cin => \u_wave_gen|div_cnt[3]~18\,
	combout => \u_wave_gen|div_cnt[4]~19_combout\,
	cout => \u_wave_gen|div_cnt[4]~20\);

-- Location: FF_X10_Y24_N15
\u_wave_gen|div_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_wave_gen|div_cnt[4]~19_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_wave_gen|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_wave_gen|div_cnt\(4));

-- Location: LCCOMB_X10_Y24_N16
\u_wave_gen|div_cnt[5]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|div_cnt[5]~21_combout\ = (\u_wave_gen|div_cnt\(5) & (!\u_wave_gen|div_cnt[4]~20\)) # (!\u_wave_gen|div_cnt\(5) & ((\u_wave_gen|div_cnt[4]~20\) # (GND)))
-- \u_wave_gen|div_cnt[5]~22\ = CARRY((!\u_wave_gen|div_cnt[4]~20\) # (!\u_wave_gen|div_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_wave_gen|div_cnt\(5),
	datad => VCC,
	cin => \u_wave_gen|div_cnt[4]~20\,
	combout => \u_wave_gen|div_cnt[5]~21_combout\,
	cout => \u_wave_gen|div_cnt[5]~22\);

-- Location: FF_X10_Y24_N17
\u_wave_gen|div_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_wave_gen|div_cnt[5]~21_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_wave_gen|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_wave_gen|div_cnt\(5));

-- Location: LCCOMB_X10_Y24_N18
\u_wave_gen|div_cnt[6]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|div_cnt[6]~23_combout\ = (\u_wave_gen|div_cnt\(6) & (\u_wave_gen|div_cnt[5]~22\ $ (GND))) # (!\u_wave_gen|div_cnt\(6) & (!\u_wave_gen|div_cnt[5]~22\ & VCC))
-- \u_wave_gen|div_cnt[6]~24\ = CARRY((\u_wave_gen|div_cnt\(6) & !\u_wave_gen|div_cnt[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_wave_gen|div_cnt\(6),
	datad => VCC,
	cin => \u_wave_gen|div_cnt[5]~22\,
	combout => \u_wave_gen|div_cnt[6]~23_combout\,
	cout => \u_wave_gen|div_cnt[6]~24\);

-- Location: FF_X10_Y24_N19
\u_wave_gen|div_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_wave_gen|div_cnt[6]~23_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_wave_gen|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_wave_gen|div_cnt\(6));

-- Location: LCCOMB_X10_Y24_N20
\u_wave_gen|div_cnt[7]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|div_cnt[7]~25_combout\ = (\u_wave_gen|div_cnt\(7) & (!\u_wave_gen|div_cnt[6]~24\)) # (!\u_wave_gen|div_cnt\(7) & ((\u_wave_gen|div_cnt[6]~24\) # (GND)))
-- \u_wave_gen|div_cnt[7]~26\ = CARRY((!\u_wave_gen|div_cnt[6]~24\) # (!\u_wave_gen|div_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_wave_gen|div_cnt\(7),
	datad => VCC,
	cin => \u_wave_gen|div_cnt[6]~24\,
	combout => \u_wave_gen|div_cnt[7]~25_combout\,
	cout => \u_wave_gen|div_cnt[7]~26\);

-- Location: FF_X10_Y24_N21
\u_wave_gen|div_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_wave_gen|div_cnt[7]~25_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_wave_gen|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_wave_gen|div_cnt\(7));

-- Location: LCCOMB_X9_Y24_N10
\u_wave_gen|Equal1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|Equal1~3_combout\ = (\u_lev_ctl|wave_cnt_max\(7) & (\u_wave_gen|div_cnt\(7) & (\u_lev_ctl|wave_cnt_max\(6) $ (!\u_wave_gen|div_cnt\(6))))) # (!\u_lev_ctl|wave_cnt_max\(7) & (!\u_wave_gen|div_cnt\(7) & (\u_lev_ctl|wave_cnt_max\(6) $ 
-- (!\u_wave_gen|div_cnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lev_ctl|wave_cnt_max\(7),
	datab => \u_lev_ctl|wave_cnt_max\(6),
	datac => \u_wave_gen|div_cnt\(7),
	datad => \u_wave_gen|div_cnt\(6),
	combout => \u_wave_gen|Equal1~3_combout\);

-- Location: LCCOMB_X6_Y24_N4
\u_lev_ctl|WideOr5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr5~5_combout\ = (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\) # (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\,
	datad => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\,
	combout => \u_lev_ctl|WideOr5~5_combout\);

-- Location: LCCOMB_X6_Y24_N10
\u_lev_ctl|WideOr5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr5~6_combout\ = (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\) # (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ $ 
-- (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\)))) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\))) # 
-- (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ & (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\,
	datac => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\,
	datad => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\,
	combout => \u_lev_ctl|WideOr5~6_combout\);

-- Location: LCCOMB_X6_Y24_N2
\u_lev_ctl|WideOr5~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr5~9_combout\ = (\u_music_mem|note_rom~0_q\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ & ((\u_lev_ctl|WideOr5~6_combout\))) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ & (\u_lev_ctl|WideOr5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\,
	datab => \u_music_mem|note_rom~0_q\,
	datac => \u_lev_ctl|WideOr5~5_combout\,
	datad => \u_lev_ctl|WideOr5~6_combout\,
	combout => \u_lev_ctl|WideOr5~9_combout\);

-- Location: FF_X6_Y24_N3
\u_lev_ctl|wave_cnt_max[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_lev_ctl|WideOr5~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lev_ctl|wave_cnt_max\(5));

-- Location: LCCOMB_X6_Y24_N22
\u_lev_ctl|WideOr6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr6~6_combout\ = (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\) # ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ & 
-- \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\)))) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\) # ((!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ & 
-- \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\,
	datab => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\,
	datac => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\,
	datad => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \u_lev_ctl|WideOr6~6_combout\);

-- Location: LCCOMB_X6_Y24_N12
\u_lev_ctl|WideOr6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr6~5_combout\ = (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\) # ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & 
-- \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\,
	datac => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\,
	datad => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\,
	combout => \u_lev_ctl|WideOr6~5_combout\);

-- Location: LCCOMB_X6_Y24_N16
\u_lev_ctl|WideOr6~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr6~9_combout\ = (\u_music_mem|note_rom~0_q\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ & (\u_lev_ctl|WideOr6~6_combout\)) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ & ((\u_lev_ctl|WideOr6~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom~0_q\,
	datab => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\,
	datac => \u_lev_ctl|WideOr6~6_combout\,
	datad => \u_lev_ctl|WideOr6~5_combout\,
	combout => \u_lev_ctl|WideOr6~9_combout\);

-- Location: FF_X6_Y24_N17
\u_lev_ctl|wave_cnt_max[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_lev_ctl|WideOr6~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lev_ctl|wave_cnt_max\(4));

-- Location: LCCOMB_X9_Y24_N8
\u_wave_gen|Equal1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|Equal1~2_combout\ = (\u_lev_ctl|wave_cnt_max\(5) & (\u_wave_gen|div_cnt\(5) & (\u_lev_ctl|wave_cnt_max\(4) $ (!\u_wave_gen|div_cnt\(4))))) # (!\u_lev_ctl|wave_cnt_max\(5) & (!\u_wave_gen|div_cnt\(5) & (\u_lev_ctl|wave_cnt_max\(4) $ 
-- (!\u_wave_gen|div_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lev_ctl|wave_cnt_max\(5),
	datab => \u_lev_ctl|wave_cnt_max\(4),
	datac => \u_wave_gen|div_cnt\(4),
	datad => \u_wave_gen|div_cnt\(5),
	combout => \u_wave_gen|Equal1~2_combout\);

-- Location: LCCOMB_X8_Y24_N30
\u_lev_ctl|WideOr7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr7~6_combout\ = (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\) # ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\)))) # 
-- (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ & (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ $ (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\,
	datab => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\,
	datac => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\,
	datad => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \u_lev_ctl|WideOr7~6_combout\);

-- Location: LCCOMB_X8_Y24_N0
\u_lev_ctl|WideOr7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr7~5_combout\ = (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\) # ((!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ & 
-- \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\,
	datab => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\,
	datac => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\,
	datad => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \u_lev_ctl|WideOr7~5_combout\);

-- Location: LCCOMB_X8_Y24_N8
\u_lev_ctl|WideOr7~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr7~9_combout\ = (\u_music_mem|note_rom~0_q\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ & (\u_lev_ctl|WideOr7~6_combout\)) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ & ((\u_lev_ctl|WideOr7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\,
	datab => \u_music_mem|note_rom~0_q\,
	datac => \u_lev_ctl|WideOr7~6_combout\,
	datad => \u_lev_ctl|WideOr7~5_combout\,
	combout => \u_lev_ctl|WideOr7~9_combout\);

-- Location: FF_X8_Y24_N9
\u_lev_ctl|wave_cnt_max[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_lev_ctl|WideOr7~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lev_ctl|wave_cnt_max\(3));

-- Location: LCCOMB_X8_Y24_N26
\u_lev_ctl|WideOr8~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr8~6_combout\ = (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\ & (((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\)) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\))) # 
-- (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\ & (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ $ (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\,
	datab => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\,
	datac => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\,
	datad => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \u_lev_ctl|WideOr8~6_combout\);

-- Location: LCCOMB_X8_Y24_N12
\u_lev_ctl|WideOr8~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr8~5_combout\ = (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\) # (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ $ 
-- (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\,
	datab => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\,
	datac => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\,
	datad => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \u_lev_ctl|WideOr8~5_combout\);

-- Location: LCCOMB_X8_Y24_N2
\u_lev_ctl|WideOr8~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr8~9_combout\ = (\u_music_mem|note_rom~0_q\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ & (\u_lev_ctl|WideOr8~6_combout\)) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ & ((\u_lev_ctl|WideOr8~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\,
	datab => \u_music_mem|note_rom~0_q\,
	datac => \u_lev_ctl|WideOr8~6_combout\,
	datad => \u_lev_ctl|WideOr8~5_combout\,
	combout => \u_lev_ctl|WideOr8~9_combout\);

-- Location: FF_X8_Y24_N3
\u_lev_ctl|wave_cnt_max[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_lev_ctl|WideOr8~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lev_ctl|wave_cnt_max\(2));

-- Location: LCCOMB_X9_Y24_N26
\u_wave_gen|Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|Equal1~1_combout\ = (\u_lev_ctl|wave_cnt_max\(3) & (\u_wave_gen|div_cnt\(3) & (\u_wave_gen|div_cnt\(2) $ (!\u_lev_ctl|wave_cnt_max\(2))))) # (!\u_lev_ctl|wave_cnt_max\(3) & (!\u_wave_gen|div_cnt\(3) & (\u_wave_gen|div_cnt\(2) $ 
-- (!\u_lev_ctl|wave_cnt_max\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lev_ctl|wave_cnt_max\(3),
	datab => \u_wave_gen|div_cnt\(2),
	datac => \u_wave_gen|div_cnt\(3),
	datad => \u_lev_ctl|wave_cnt_max\(2),
	combout => \u_wave_gen|Equal1~1_combout\);

-- Location: LCCOMB_X6_Y24_N14
\u_lev_ctl|WideOr10~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr10~6_combout\ = (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ $ (((!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\ & 
-- !\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\))))) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & (((!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\ & 
-- \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\,
	datac => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\,
	datad => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\,
	combout => \u_lev_ctl|WideOr10~6_combout\);

-- Location: LCCOMB_X6_Y24_N20
\u_lev_ctl|WideOr10~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr10~5_combout\ = (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & ((!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\))) # 
-- (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ & \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\,
	datac => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\,
	datad => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\,
	combout => \u_lev_ctl|WideOr10~5_combout\);

-- Location: LCCOMB_X6_Y24_N6
\u_lev_ctl|WideOr10~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr10~9_combout\ = (\u_music_mem|note_rom~0_q\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ & (\u_lev_ctl|WideOr10~6_combout\)) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ & 
-- ((\u_lev_ctl|WideOr10~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\,
	datab => \u_music_mem|note_rom~0_q\,
	datac => \u_lev_ctl|WideOr10~6_combout\,
	datad => \u_lev_ctl|WideOr10~5_combout\,
	combout => \u_lev_ctl|WideOr10~9_combout\);

-- Location: FF_X6_Y24_N7
\u_lev_ctl|wave_cnt_max[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_lev_ctl|WideOr10~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lev_ctl|wave_cnt_max\(0));

-- Location: LCCOMB_X8_Y24_N22
\u_lev_ctl|WideOr9~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr9~6_combout\ = (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\ & (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\) # 
-- (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\)))) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\ & (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ $ 
-- (((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ & !\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\,
	datab => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\,
	datac => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\,
	datad => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \u_lev_ctl|WideOr9~6_combout\);

-- Location: LCCOMB_X8_Y24_N28
\u_lev_ctl|WideOr9~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr9~5_combout\ = (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\) # ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ & 
-- !\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\,
	datab => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\,
	datac => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\,
	datad => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \u_lev_ctl|WideOr9~5_combout\);

-- Location: LCCOMB_X8_Y24_N4
\u_lev_ctl|WideOr9~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr9~9_combout\ = (\u_music_mem|note_rom~0_q\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ & (\u_lev_ctl|WideOr9~6_combout\)) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ & ((\u_lev_ctl|WideOr9~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\,
	datab => \u_music_mem|note_rom~0_q\,
	datac => \u_lev_ctl|WideOr9~6_combout\,
	datad => \u_lev_ctl|WideOr9~5_combout\,
	combout => \u_lev_ctl|WideOr9~9_combout\);

-- Location: FF_X8_Y24_N5
\u_lev_ctl|wave_cnt_max[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_lev_ctl|WideOr9~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lev_ctl|wave_cnt_max\(1));

-- Location: LCCOMB_X9_Y24_N12
\u_wave_gen|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|Equal1~0_combout\ = (\u_lev_ctl|wave_cnt_max\(0) & (\u_wave_gen|div_cnt\(0) & (\u_lev_ctl|wave_cnt_max\(1) $ (!\u_wave_gen|div_cnt\(1))))) # (!\u_lev_ctl|wave_cnt_max\(0) & (!\u_wave_gen|div_cnt\(0) & (\u_lev_ctl|wave_cnt_max\(1) $ 
-- (!\u_wave_gen|div_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lev_ctl|wave_cnt_max\(0),
	datab => \u_lev_ctl|wave_cnt_max\(1),
	datac => \u_wave_gen|div_cnt\(1),
	datad => \u_wave_gen|div_cnt\(0),
	combout => \u_wave_gen|Equal1~0_combout\);

-- Location: LCCOMB_X9_Y24_N0
\u_wave_gen|Equal1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|Equal1~4_combout\ = (\u_wave_gen|Equal1~3_combout\ & (\u_wave_gen|Equal1~2_combout\ & (\u_wave_gen|Equal1~1_combout\ & \u_wave_gen|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_wave_gen|Equal1~3_combout\,
	datab => \u_wave_gen|Equal1~2_combout\,
	datac => \u_wave_gen|Equal1~1_combout\,
	datad => \u_wave_gen|Equal1~0_combout\,
	combout => \u_wave_gen|Equal1~4_combout\);

-- Location: LCCOMB_X8_Y24_N20
\u_lev_ctl|WideOr0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr0~6_combout\ = (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ & ((!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\))) # 
-- (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\) # (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\,
	datac => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\,
	datad => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \u_lev_ctl|WideOr0~6_combout\);

-- Location: LCCOMB_X8_Y24_N6
\u_lev_ctl|WideOr0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr0~11_combout\ = (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ & (\u_music_mem|note_rom~0_q\ & (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ & \u_lev_ctl|WideOr0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\,
	datab => \u_music_mem|note_rom~0_q\,
	datac => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\,
	datad => \u_lev_ctl|WideOr0~6_combout\,
	combout => \u_lev_ctl|WideOr0~11_combout\);

-- Location: FF_X8_Y24_N7
\u_lev_ctl|wave_cnt_max[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_lev_ctl|WideOr0~11_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lev_ctl|wave_cnt_max\(10));

-- Location: LCCOMB_X10_Y24_N22
\u_wave_gen|div_cnt[8]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|div_cnt[8]~27_combout\ = (\u_wave_gen|div_cnt\(8) & (\u_wave_gen|div_cnt[7]~26\ $ (GND))) # (!\u_wave_gen|div_cnt\(8) & (!\u_wave_gen|div_cnt[7]~26\ & VCC))
-- \u_wave_gen|div_cnt[8]~28\ = CARRY((\u_wave_gen|div_cnt\(8) & !\u_wave_gen|div_cnt[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_wave_gen|div_cnt\(8),
	datad => VCC,
	cin => \u_wave_gen|div_cnt[7]~26\,
	combout => \u_wave_gen|div_cnt[8]~27_combout\,
	cout => \u_wave_gen|div_cnt[8]~28\);

-- Location: FF_X10_Y24_N23
\u_wave_gen|div_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_wave_gen|div_cnt[8]~27_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_wave_gen|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_wave_gen|div_cnt\(8));

-- Location: LCCOMB_X10_Y24_N24
\u_wave_gen|div_cnt[9]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|div_cnt[9]~29_combout\ = (\u_wave_gen|div_cnt\(9) & (!\u_wave_gen|div_cnt[8]~28\)) # (!\u_wave_gen|div_cnt\(9) & ((\u_wave_gen|div_cnt[8]~28\) # (GND)))
-- \u_wave_gen|div_cnt[9]~30\ = CARRY((!\u_wave_gen|div_cnt[8]~28\) # (!\u_wave_gen|div_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_wave_gen|div_cnt\(9),
	datad => VCC,
	cin => \u_wave_gen|div_cnt[8]~28\,
	combout => \u_wave_gen|div_cnt[9]~29_combout\,
	cout => \u_wave_gen|div_cnt[9]~30\);

-- Location: FF_X10_Y24_N25
\u_wave_gen|div_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_wave_gen|div_cnt[9]~29_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_wave_gen|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_wave_gen|div_cnt\(9));

-- Location: LCCOMB_X10_Y24_N26
\u_wave_gen|div_cnt[10]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|div_cnt[10]~31_combout\ = \u_wave_gen|div_cnt\(10) $ (!\u_wave_gen|div_cnt[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_wave_gen|div_cnt\(10),
	cin => \u_wave_gen|div_cnt[9]~30\,
	combout => \u_wave_gen|div_cnt[10]~31_combout\);

-- Location: FF_X10_Y24_N27
\u_wave_gen|div_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_wave_gen|div_cnt[10]~31_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_wave_gen|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_wave_gen|div_cnt\(10));

-- Location: LCCOMB_X8_Y24_N14
\u_lev_ctl|WideOr2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr2~6_combout\ = (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\ & (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ $ (((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ & 
-- \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\))))) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ & 
-- ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\))) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ & 
-- ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\,
	datab => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\,
	datac => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\,
	datad => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \u_lev_ctl|WideOr2~6_combout\);

-- Location: LCCOMB_X8_Y24_N24
\u_lev_ctl|WideOr2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr2~5_combout\ = (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ & (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ $ (((!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ & 
-- \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\,
	datab => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\,
	datac => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\,
	datad => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \u_lev_ctl|WideOr2~5_combout\);

-- Location: LCCOMB_X8_Y24_N10
\u_lev_ctl|WideOr2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr2~9_combout\ = (\u_music_mem|note_rom~0_q\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ & (\u_lev_ctl|WideOr2~6_combout\)) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\ & ((\u_lev_ctl|WideOr2~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\,
	datab => \u_music_mem|note_rom~0_q\,
	datac => \u_lev_ctl|WideOr2~6_combout\,
	datad => \u_lev_ctl|WideOr2~5_combout\,
	combout => \u_lev_ctl|WideOr2~9_combout\);

-- Location: FF_X8_Y24_N11
\u_lev_ctl|wave_cnt_max[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_lev_ctl|WideOr2~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lev_ctl|wave_cnt_max\(8));

-- Location: LCCOMB_X8_Y24_N18
\u_lev_ctl|WideOr1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr1~11_combout\ = (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\ & (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ $ (((!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\) # 
-- (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\))))) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\ & ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ & 
-- ((!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\))) # (!\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\ & 
-- ((\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a1\,
	datab => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a2\,
	datac => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\,
	datad => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \u_lev_ctl|WideOr1~11_combout\);

-- Location: LCCOMB_X8_Y24_N16
\u_lev_ctl|WideOr1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_lev_ctl|WideOr1~12_combout\ = (\u_music_mem|note_rom~0_q\ & (\u_lev_ctl|WideOr1~11_combout\ & (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\ $ (\u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a3\,
	datab => \u_music_mem|note_rom~0_q\,
	datac => \u_music_mem|note_rom_rtl_0|auto_generated|ram_block1a4\,
	datad => \u_lev_ctl|WideOr1~11_combout\,
	combout => \u_lev_ctl|WideOr1~12_combout\);

-- Location: FF_X8_Y24_N17
\u_lev_ctl|wave_cnt_max[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_lev_ctl|WideOr1~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lev_ctl|wave_cnt_max\(9));

-- Location: LCCOMB_X9_Y24_N6
\u_wave_gen|Equal1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|Equal1~5_combout\ = (\u_lev_ctl|wave_cnt_max\(8) & (\u_wave_gen|div_cnt\(8) & (\u_wave_gen|div_cnt\(9) $ (!\u_lev_ctl|wave_cnt_max\(9))))) # (!\u_lev_ctl|wave_cnt_max\(8) & (!\u_wave_gen|div_cnt\(8) & (\u_wave_gen|div_cnt\(9) $ 
-- (!\u_lev_ctl|wave_cnt_max\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lev_ctl|wave_cnt_max\(8),
	datab => \u_wave_gen|div_cnt\(9),
	datac => \u_lev_ctl|wave_cnt_max\(9),
	datad => \u_wave_gen|div_cnt\(8),
	combout => \u_wave_gen|Equal1~5_combout\);

-- Location: LCCOMB_X9_Y24_N16
\u_wave_gen|Equal1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|Equal1~6_combout\ = (\u_wave_gen|Equal1~4_combout\ & (\u_wave_gen|Equal1~5_combout\ & (\u_lev_ctl|wave_cnt_max\(10) $ (!\u_wave_gen|div_cnt\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_wave_gen|Equal1~4_combout\,
	datab => \u_lev_ctl|wave_cnt_max\(10),
	datac => \u_wave_gen|div_cnt\(10),
	datad => \u_wave_gen|Equal1~5_combout\,
	combout => \u_wave_gen|Equal1~6_combout\);

-- Location: LCCOMB_X9_Y24_N20
\u_wave_gen|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|Equal0~1_combout\ = (!\u_lev_ctl|wave_cnt_max\(5) & (!\u_lev_ctl|wave_cnt_max\(4) & (!\u_lev_ctl|wave_cnt_max\(7) & !\u_lev_ctl|wave_cnt_max\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lev_ctl|wave_cnt_max\(5),
	datab => \u_lev_ctl|wave_cnt_max\(4),
	datac => \u_lev_ctl|wave_cnt_max\(7),
	datad => \u_lev_ctl|wave_cnt_max\(6),
	combout => \u_wave_gen|Equal0~1_combout\);

-- Location: LCCOMB_X9_Y24_N22
\u_wave_gen|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|Equal0~2_combout\ = (!\u_lev_ctl|wave_cnt_max\(3) & (!\u_lev_ctl|wave_cnt_max\(2) & (!\u_lev_ctl|wave_cnt_max\(1) & \u_wave_gen|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lev_ctl|wave_cnt_max\(3),
	datab => \u_lev_ctl|wave_cnt_max\(2),
	datac => \u_lev_ctl|wave_cnt_max\(1),
	datad => \u_wave_gen|Equal0~1_combout\,
	combout => \u_wave_gen|Equal0~2_combout\);

-- Location: LCCOMB_X9_Y24_N14
\u_wave_gen|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|Equal0~0_combout\ = (!\u_lev_ctl|wave_cnt_max\(9) & (!\u_lev_ctl|wave_cnt_max\(10) & (!\u_lev_ctl|wave_cnt_max\(8) & !\u_lev_ctl|wave_cnt_max\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lev_ctl|wave_cnt_max\(9),
	datab => \u_lev_ctl|wave_cnt_max\(10),
	datac => \u_lev_ctl|wave_cnt_max\(8),
	datad => \u_lev_ctl|wave_cnt_max\(0),
	combout => \u_wave_gen|Equal0~0_combout\);

-- Location: LCCOMB_X10_Y24_N28
\u_wave_gen|been~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_wave_gen|been~0_combout\ = (\u_wave_gen|Equal0~2_combout\ & (!\u_wave_gen|Equal0~0_combout\ & (\u_wave_gen|Equal1~6_combout\ $ (\u_wave_gen|been~q\)))) # (!\u_wave_gen|Equal0~2_combout\ & (\u_wave_gen|Equal1~6_combout\ $ ((\u_wave_gen|been~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_wave_gen|Equal1~6_combout\,
	datab => \u_wave_gen|Equal0~2_combout\,
	datac => \u_wave_gen|been~q\,
	datad => \u_wave_gen|Equal0~0_combout\,
	combout => \u_wave_gen|been~0_combout\);

-- Location: FF_X10_Y24_N29
\u_wave_gen|been\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1mhz~clkctrl_outclk\,
	d => \u_wave_gen|been~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_wave_gen|been~q\);

-- Location: LCCOMB_X14_Y29_N4
\u_shuma|Decoder0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_shuma|Decoder0~0_combout\ = (state(0) & !state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(0),
	datad => state(1),
	combout => \u_shuma|Decoder0~0_combout\);

-- Location: LCCOMB_X14_Y29_N2
\u_shuma|seg~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_shuma|seg~0_combout\ = state(0) $ (state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(0),
	datad => state(1),
	combout => \u_shuma|seg~0_combout\);

ww_been <= \been~output_o\;

ww_seg(0) <= \seg[0]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;
END structure;


