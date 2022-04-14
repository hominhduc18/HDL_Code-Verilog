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

-- DATE "10/13/2021 18:18:52"

-- 
-- Device: Altera EP2C35F672C8 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	baichin IS
    PORT (
	CK : IN std_logic;
	RS : IN std_logic;
	hex0 : OUT std_logic_vector(7 DOWNTO 0);
	hex1 : OUT std_logic_vector(7 DOWNTO 0)
	);
END baichin;

-- Design Ports Information
-- hex0[0]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[1]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[2]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[3]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[4]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[5]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[6]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[7]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[0]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[1]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[2]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[3]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[4]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[5]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[6]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[7]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RS	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF baichin IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CK : std_logic;
SIGNAL ww_RS : std_logic;
SIGNAL ww_hex0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(7 DOWNTO 0);
SIGNAL \CK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CK~combout\ : std_logic;
SIGNAL \CK~clkctrl_outclk\ : std_logic;
SIGNAL \RS~combout\ : std_logic;
SIGNAL \H1|bcd0~1_combout\ : std_logic;
SIGNAL \H1|bcd0~0_combout\ : std_logic;
SIGNAL \H1|Add0~0_combout\ : std_logic;
SIGNAL \H1|bcd0~2_combout\ : std_logic;
SIGNAL \H1|Equal0~1_combout\ : std_logic;
SIGNAL \H1|bcd0~3_combout\ : std_logic;
SIGNAL \H1|Equal0~0_combout\ : std_logic;
SIGNAL \H1|bcd1[0]~2_combout\ : std_logic;
SIGNAL \H1|bcd1[1]~3_combout\ : std_logic;
SIGNAL \H1|bcd1[1]~4_combout\ : std_logic;
SIGNAL \H1|always0~0_combout\ : std_logic;
SIGNAL \H1|bcd1[2]~0_combout\ : std_logic;
SIGNAL \H1|bcd1[2]~1_combout\ : std_logic;
SIGNAL \H2|WideOr6~0_combout\ : std_logic;
SIGNAL \H2|WideOr5~0_combout\ : std_logic;
SIGNAL \H2|WideOr4~0_combout\ : std_logic;
SIGNAL \H2|WideOr3~0_combout\ : std_logic;
SIGNAL \H2|WideOr1~0_combout\ : std_logic;
SIGNAL \H2|WideOr0~0_combout\ : std_logic;
SIGNAL \H3|WideOr6~0_combout\ : std_logic;
SIGNAL \H3|WideOr5~0_combout\ : std_logic;
SIGNAL \H3|WideOr4~0_combout\ : std_logic;
SIGNAL \H3|WideOr3~0_combout\ : std_logic;
SIGNAL \H3|WideOr2~0_combout\ : std_logic;
SIGNAL \H3|WideOr1~0_combout\ : std_logic;
SIGNAL \H3|WideOr0~0_combout\ : std_logic;
SIGNAL \H1|bcd1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \H1|bcd0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \H3|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H2|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_CK <= CK;
ww_RS <= RS;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CK~combout\);
\H3|ALT_INV_WideOr0~0_combout\ <= NOT \H3|WideOr0~0_combout\;
\H2|ALT_INV_WideOr0~0_combout\ <= NOT \H2|WideOr0~0_combout\;

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CK~I\ : cycloneii_io
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
	padio => ww_CK,
	combout => \CK~combout\);

-- Location: CLKCTRL_G3
\CK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CK~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RS~I\ : cycloneii_io
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
	padio => ww_RS,
	combout => \RS~combout\);

-- Location: LCCOMB_X19_Y35_N28
\H1|bcd0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|bcd0~1_combout\ = (!\RS~combout\ & (\H1|Equal0~0_combout\ & (\H1|bcd0\(0) $ (!\H1|bcd0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H1|bcd0\(0),
	datab => \RS~combout\,
	datac => \H1|bcd0\(1),
	datad => \H1|Equal0~0_combout\,
	combout => \H1|bcd0~1_combout\);

-- Location: LCFF_X19_Y35_N29
\H1|bcd0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \H1|bcd0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \H1|bcd0\(1));

-- Location: LCCOMB_X19_Y35_N10
\H1|bcd0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|bcd0~0_combout\ = (\RS~combout\) # (!\H1|bcd0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \H1|bcd0\(0),
	datad => \RS~combout\,
	combout => \H1|bcd0~0_combout\);

-- Location: LCFF_X19_Y35_N11
\H1|bcd0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \H1|bcd0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \H1|bcd0\(0));

-- Location: LCCOMB_X19_Y35_N0
\H1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Add0~0_combout\ = \H1|bcd0\(2) $ (((\H1|bcd0\(1)) # (\H1|bcd0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H1|bcd0\(1),
	datac => \H1|bcd0\(2),
	datad => \H1|bcd0\(0),
	combout => \H1|Add0~0_combout\);

-- Location: LCCOMB_X19_Y35_N14
\H1|bcd0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|bcd0~2_combout\ = (\RS~combout\) # ((\H1|Equal0~0_combout\ & (!\H1|Add0~0_combout\)) # (!\H1|Equal0~0_combout\ & ((\H1|always0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~combout\,
	datab => \H1|Add0~0_combout\,
	datac => \H1|always0~0_combout\,
	datad => \H1|Equal0~0_combout\,
	combout => \H1|bcd0~2_combout\);

-- Location: LCFF_X19_Y35_N15
\H1|bcd0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \H1|bcd0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \H1|bcd0\(2));

-- Location: LCCOMB_X19_Y35_N18
\H1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Equal0~1_combout\ = (!\H1|bcd0\(0) & (!\H1|bcd0\(2) & !\H1|bcd0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H1|bcd0\(0),
	datac => \H1|bcd0\(2),
	datad => \H1|bcd0\(1),
	combout => \H1|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y35_N4
\H1|bcd0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|bcd0~3_combout\ = (!\RS~combout\ & ((\H1|bcd0\(3) & ((!\H1|Equal0~1_combout\))) # (!\H1|bcd0\(3) & (!\H1|always0~0_combout\ & \H1|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H1|always0~0_combout\,
	datab => \RS~combout\,
	datac => \H1|bcd0\(3),
	datad => \H1|Equal0~1_combout\,
	combout => \H1|bcd0~3_combout\);

-- Location: LCFF_X19_Y35_N5
\H1|bcd0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \H1|bcd0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \H1|bcd0\(3));

-- Location: LCCOMB_X19_Y35_N12
\H1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|Equal0~0_combout\ = (\H1|bcd0\(2)) # ((\H1|bcd0\(1)) # ((\H1|bcd0\(3)) # (\H1|bcd0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H1|bcd0\(2),
	datab => \H1|bcd0\(1),
	datac => \H1|bcd0\(3),
	datad => \H1|bcd0\(0),
	combout => \H1|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y35_N30
\H1|bcd1[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|bcd1[0]~2_combout\ = (\RS~combout\) # (\H1|bcd1\(0) $ (!\H1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RS~combout\,
	datac => \H1|bcd1\(0),
	datad => \H1|Equal0~0_combout\,
	combout => \H1|bcd1[0]~2_combout\);

-- Location: LCFF_X19_Y35_N31
\H1|bcd1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \H1|bcd1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \H1|bcd1\(0));

-- Location: LCCOMB_X19_Y35_N6
\H1|bcd1[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|bcd1[1]~3_combout\ = \H1|bcd1\(1) $ (((!\H1|bcd1\(0) & !\H1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H1|bcd1\(0),
	datac => \H1|bcd1\(1),
	datad => \H1|Equal0~0_combout\,
	combout => \H1|bcd1[1]~3_combout\);

-- Location: LCCOMB_X19_Y35_N20
\H1|bcd1[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|bcd1[1]~4_combout\ = (!\RS~combout\ & (\H1|bcd1[1]~3_combout\ & ((\H1|Equal0~0_combout\) # (!\H1|always0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H1|Equal0~0_combout\,
	datab => \RS~combout\,
	datac => \H1|always0~0_combout\,
	datad => \H1|bcd1[1]~3_combout\,
	combout => \H1|bcd1[1]~4_combout\);

-- Location: LCFF_X19_Y35_N21
\H1|bcd1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \H1|bcd1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \H1|bcd1\(1));

-- Location: LCCOMB_X19_Y35_N16
\H1|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|always0~0_combout\ = (!\H1|bcd1\(2) & (!\H1|bcd1\(1) & !\H1|bcd1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H1|bcd1\(2),
	datac => \H1|bcd1\(1),
	datad => \H1|bcd1\(0),
	combout => \H1|always0~0_combout\);

-- Location: LCCOMB_X19_Y35_N22
\H1|bcd1[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|bcd1[2]~0_combout\ = \H1|bcd1\(2) $ (((!\H1|bcd1\(1) & (!\H1|bcd1\(0) & !\H1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H1|bcd1\(1),
	datab => \H1|bcd1\(0),
	datac => \H1|bcd1\(2),
	datad => \H1|Equal0~0_combout\,
	combout => \H1|bcd1[2]~0_combout\);

-- Location: LCCOMB_X19_Y35_N24
\H1|bcd1[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|bcd1[2]~1_combout\ = (!\RS~combout\ & (\H1|bcd1[2]~0_combout\ & ((\H1|Equal0~0_combout\) # (!\H1|always0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H1|Equal0~0_combout\,
	datab => \RS~combout\,
	datac => \H1|always0~0_combout\,
	datad => \H1|bcd1[2]~0_combout\,
	combout => \H1|bcd1[2]~1_combout\);

-- Location: LCFF_X19_Y35_N25
\H1|bcd1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CK~clkctrl_outclk\,
	datain => \H1|bcd1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \H1|bcd1\(2));

-- Location: LCCOMB_X15_Y35_N16
\H2|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr6~0_combout\ = (!\H1|bcd1\(1) & ((\H1|bcd1\(2)) # (\H1|bcd1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H1|bcd1\(2),
	datac => \H1|bcd1\(1),
	datad => \H1|bcd1\(0),
	combout => \H2|WideOr6~0_combout\);

-- Location: LCCOMB_X15_Y35_N26
\H2|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr5~0_combout\ = (\H1|bcd1\(2) & !\H1|bcd1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H1|bcd1\(2),
	datad => \H1|bcd1\(0),
	combout => \H2|WideOr5~0_combout\);

-- Location: LCCOMB_X15_Y35_N12
\H2|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr4~0_combout\ = (!\H1|bcd1\(2) & (\H1|bcd1\(1) & !\H1|bcd1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H1|bcd1\(2),
	datac => \H1|bcd1\(1),
	datad => \H1|bcd1\(0),
	combout => \H2|WideOr4~0_combout\);

-- Location: LCCOMB_X15_Y35_N10
\H2|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr3~0_combout\ = (\H1|bcd1\(2) & ((\H1|bcd1\(0)) # (!\H1|bcd1\(1)))) # (!\H1|bcd1\(2) & (!\H1|bcd1\(1) & \H1|bcd1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H1|bcd1\(2),
	datac => \H1|bcd1\(1),
	datad => \H1|bcd1\(0),
	combout => \H2|WideOr3~0_combout\);

-- Location: LCCOMB_X15_Y35_N4
\H2|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr1~0_combout\ = (\H1|bcd1\(2) & (\H1|bcd1\(1) $ (!\H1|bcd1\(0)))) # (!\H1|bcd1\(2) & ((\H1|bcd1\(1)) # (\H1|bcd1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H1|bcd1\(2),
	datac => \H1|bcd1\(1),
	datad => \H1|bcd1\(0),
	combout => \H2|WideOr1~0_combout\);

-- Location: LCCOMB_X15_Y35_N22
\H2|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr0~0_combout\ = (\H1|bcd1\(2) & ((!\H1|bcd1\(0)) # (!\H1|bcd1\(1)))) # (!\H1|bcd1\(2) & (\H1|bcd1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H1|bcd1\(2),
	datac => \H1|bcd1\(1),
	datad => \H1|bcd1\(0),
	combout => \H2|WideOr0~0_combout\);

-- Location: LCCOMB_X19_Y35_N2
\H3|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|WideOr6~0_combout\ = (\H1|bcd0\(1) & (((\H1|bcd0\(3))))) # (!\H1|bcd0\(1) & ((\H1|bcd0\(2)) # ((\H1|bcd0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H1|bcd0\(1),
	datab => \H1|bcd0\(2),
	datac => \H1|bcd0\(3),
	datad => \H1|bcd0\(0),
	combout => \H3|WideOr6~0_combout\);

-- Location: LCCOMB_X19_Y35_N8
\H3|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|WideOr5~0_combout\ = (\H1|bcd0\(2) & (((\H1|bcd0\(3)) # (!\H1|bcd0\(0))))) # (!\H1|bcd0\(2) & (\H1|bcd0\(1) & (\H1|bcd0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H1|bcd0\(1),
	datab => \H1|bcd0\(2),
	datac => \H1|bcd0\(3),
	datad => \H1|bcd0\(0),
	combout => \H3|WideOr5~0_combout\);

-- Location: LCCOMB_X19_Y35_N26
\H3|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|WideOr4~0_combout\ = (\H1|bcd0\(2) & (((\H1|bcd0\(3))))) # (!\H1|bcd0\(2) & (\H1|bcd0\(1) & ((\H1|bcd0\(3)) # (!\H1|bcd0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H1|bcd0\(1),
	datab => \H1|bcd0\(2),
	datac => \H1|bcd0\(3),
	datad => \H1|bcd0\(0),
	combout => \H3|WideOr4~0_combout\);

-- Location: LCCOMB_X20_Y35_N0
\H3|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|WideOr3~0_combout\ = (\H1|bcd0\(0) & ((\H1|bcd0\(2)) # (\H1|bcd0\(3) $ (!\H1|bcd0\(1))))) # (!\H1|bcd0\(0) & ((\H1|bcd0\(1) & (\H1|bcd0\(3))) # (!\H1|bcd0\(1) & ((\H1|bcd0\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H1|bcd0\(0),
	datab => \H1|bcd0\(3),
	datac => \H1|bcd0\(1),
	datad => \H1|bcd0\(2),
	combout => \H3|WideOr3~0_combout\);

-- Location: LCCOMB_X20_Y35_N10
\H3|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|WideOr2~0_combout\ = (\H1|bcd0\(0)) # ((\H1|bcd0\(3) & ((\H1|bcd0\(1)) # (\H1|bcd0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H1|bcd0\(0),
	datab => \H1|bcd0\(3),
	datac => \H1|bcd0\(1),
	datad => \H1|bcd0\(2),
	combout => \H3|WideOr2~0_combout\);

-- Location: LCCOMB_X20_Y35_N16
\H3|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|WideOr1~0_combout\ = (\H1|bcd0\(1) & ((\H1|bcd0\(0)) # ((\H1|bcd0\(3)) # (!\H1|bcd0\(2))))) # (!\H1|bcd0\(1) & (\H1|bcd0\(2) $ (((\H1|bcd0\(0) & !\H1|bcd0\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H1|bcd0\(0),
	datab => \H1|bcd0\(3),
	datac => \H1|bcd0\(1),
	datad => \H1|bcd0\(2),
	combout => \H3|WideOr1~0_combout\);

-- Location: LCCOMB_X20_Y35_N2
\H3|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|WideOr0~0_combout\ = (\H1|bcd0\(1) & (!\H1|bcd0\(3) & ((!\H1|bcd0\(2)) # (!\H1|bcd0\(0))))) # (!\H1|bcd0\(1) & ((\H1|bcd0\(3) $ (\H1|bcd0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H1|bcd0\(0),
	datab => \H1|bcd0\(3),
	datac => \H1|bcd0\(1),
	datad => \H1|bcd0\(2),
	combout => \H3|WideOr0~0_combout\);

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[0]~I\ : cycloneii_io
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
	datain => \H2|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(0));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[1]~I\ : cycloneii_io
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
	datain => \H2|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(1));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[2]~I\ : cycloneii_io
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
	datain => \H2|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(2));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[3]~I\ : cycloneii_io
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
	datain => \H2|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(3));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[4]~I\ : cycloneii_io
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
	datain => \H1|bcd1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(4));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[5]~I\ : cycloneii_io
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
	datain => \H2|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(5));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[6]~I\ : cycloneii_io
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
	datain => \H2|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(6));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[7]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(7));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[0]~I\ : cycloneii_io
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
	datain => \H3|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(0));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[1]~I\ : cycloneii_io
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
	datain => \H3|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(1));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[2]~I\ : cycloneii_io
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
	datain => \H3|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(2));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[3]~I\ : cycloneii_io
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
	datain => \H3|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(3));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[4]~I\ : cycloneii_io
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
	datain => \H3|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(4));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[5]~I\ : cycloneii_io
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
	datain => \H3|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(5));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[6]~I\ : cycloneii_io
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
	datain => \H3|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(6));

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[7]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(7));
END structure;


