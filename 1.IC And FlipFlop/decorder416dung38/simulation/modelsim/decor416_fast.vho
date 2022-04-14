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

-- DATE "10/05/2021 19:17:07"

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

ENTITY 	decor416 IS
    PORT (
	\in\ : IN std_logic_vector(3 DOWNTO 0);
	\out\ : OUT std_logic_vector(15 DOWNTO 0)
	);
END decor416;

-- Design Ports Information
-- out[0]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[1]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[2]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[3]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[4]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[5]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[6]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[7]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[8]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[9]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[10]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[11]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[12]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[13]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[14]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[15]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- in[3]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[2]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[1]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF decor416 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_in\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ww_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u1|Decoder0~0_combout\ : std_logic;
SIGNAL \u1|Decoder0~1_combout\ : std_logic;
SIGNAL \u1|Decoder0~2_combout\ : std_logic;
SIGNAL \u1|Decoder0~3_combout\ : std_logic;
SIGNAL \u1|Decoder0~4_combout\ : std_logic;
SIGNAL \u1|Decoder0~5_combout\ : std_logic;
SIGNAL \u1|Decoder0~6_combout\ : std_logic;
SIGNAL \u1|Decoder0~7_combout\ : std_logic;
SIGNAL \u2|o\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|o\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \in~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

\ww_in\ <= \in\;
\out\ <= \ww_out\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[0]~I\ : cycloneii_io
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
	padio => \ww_in\(0),
	combout => \in~combout\(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[2]~I\ : cycloneii_io
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
	padio => \ww_in\(2),
	combout => \in~combout\(2));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[1]~I\ : cycloneii_io
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
	padio => \ww_in\(1),
	combout => \in~combout\(1));

-- Location: LCCOMB_X22_Y34_N16
\u1|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Decoder0~0_combout\ = (!\in~combout\(0) & (!\in~combout\(2) & !\in~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(0),
	datac => \in~combout\(2),
	datad => \in~combout\(1),
	combout => \u1|Decoder0~0_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[3]~I\ : cycloneii_io
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
	padio => \ww_in\(3),
	combout => \in~combout\(3));

-- Location: LCCOMB_X22_Y34_N24
\u1|o[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|o\(0) = (!\in~combout\(3) & ((\u1|Decoder0~0_combout\) # (\u1|o\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Decoder0~0_combout\,
	datac => \in~combout\(3),
	datad => \u1|o\(0),
	combout => \u1|o\(0));

-- Location: LCCOMB_X22_Y34_N2
\u1|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Decoder0~1_combout\ = (\in~combout\(0) & (!\in~combout\(2) & !\in~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(0),
	datac => \in~combout\(2),
	datad => \in~combout\(1),
	combout => \u1|Decoder0~1_combout\);

-- Location: LCCOMB_X22_Y34_N26
\u1|o[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|o\(1) = (!\in~combout\(3) & ((\u1|Decoder0~1_combout\) # (\u1|o\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Decoder0~1_combout\,
	datac => \in~combout\(3),
	datad => \u1|o\(1),
	combout => \u1|o\(1));

-- Location: LCCOMB_X22_Y34_N12
\u1|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Decoder0~2_combout\ = (!\in~combout\(0) & (!\in~combout\(2) & \in~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(0),
	datac => \in~combout\(2),
	datad => \in~combout\(1),
	combout => \u1|Decoder0~2_combout\);

-- Location: LCCOMB_X22_Y34_N4
\u1|o[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|o\(2) = (!\in~combout\(3) & ((\u1|Decoder0~2_combout\) # (\u1|o\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Decoder0~2_combout\,
	datab => \in~combout\(3),
	datac => \u1|o\(2),
	combout => \u1|o\(2));

-- Location: LCCOMB_X22_Y34_N14
\u1|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Decoder0~3_combout\ = (\in~combout\(0) & (!\in~combout\(2) & \in~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(0),
	datac => \in~combout\(2),
	datad => \in~combout\(1),
	combout => \u1|Decoder0~3_combout\);

-- Location: LCCOMB_X22_Y34_N22
\u1|o[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|o\(3) = (!\in~combout\(3) & ((\u1|Decoder0~3_combout\) # (\u1|o\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in~combout\(3),
	datac => \u1|Decoder0~3_combout\,
	datad => \u1|o\(3),
	combout => \u1|o\(3));

-- Location: LCCOMB_X22_Y34_N8
\u1|Decoder0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Decoder0~4_combout\ = (!\in~combout\(0) & (\in~combout\(2) & !\in~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(0),
	datac => \in~combout\(2),
	datad => \in~combout\(1),
	combout => \u1|Decoder0~4_combout\);

-- Location: LCCOMB_X59_Y34_N0
\u1|o[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|o\(4) = (!\in~combout\(3) & ((\u1|Decoder0~4_combout\) # (\u1|o\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Decoder0~4_combout\,
	datab => \in~combout\(3),
	datad => \u1|o\(4),
	combout => \u1|o\(4));

-- Location: LCCOMB_X22_Y34_N10
\u1|Decoder0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Decoder0~5_combout\ = (\in~combout\(0) & (\in~combout\(2) & !\in~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(0),
	datac => \in~combout\(2),
	datad => \in~combout\(1),
	combout => \u1|Decoder0~5_combout\);

-- Location: LCCOMB_X59_Y34_N26
\u1|o[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|o\(5) = (!\in~combout\(3) & ((\u1|Decoder0~5_combout\) # (\u1|o\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Decoder0~5_combout\,
	datac => \in~combout\(3),
	datad => \u1|o\(5),
	combout => \u1|o\(5));

-- Location: LCCOMB_X22_Y34_N20
\u1|Decoder0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Decoder0~6_combout\ = (!\in~combout\(0) & (\in~combout\(2) & \in~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(0),
	datac => \in~combout\(2),
	datad => \in~combout\(1),
	combout => \u1|Decoder0~6_combout\);

-- Location: LCCOMB_X59_Y34_N12
\u1|o[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|o\(6) = (!\in~combout\(3) & ((\u1|Decoder0~6_combout\) # (\u1|o\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Decoder0~6_combout\,
	datab => \in~combout\(3),
	datad => \u1|o\(6),
	combout => \u1|o\(6));

-- Location: LCCOMB_X22_Y34_N6
\u1|Decoder0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Decoder0~7_combout\ = (\in~combout\(0) & (\in~combout\(2) & \in~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(0),
	datac => \in~combout\(2),
	datad => \in~combout\(1),
	combout => \u1|Decoder0~7_combout\);

-- Location: LCCOMB_X59_Y34_N22
\u1|o[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|o\(7) = (!\in~combout\(3) & ((\u1|Decoder0~7_combout\) # (\u1|o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in~combout\(3),
	datac => \u1|Decoder0~7_combout\,
	datad => \u1|o\(7),
	combout => \u1|o\(7));

-- Location: LCCOMB_X22_Y34_N0
\u2|o[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|o\(0) = (\in~combout\(3) & ((\u1|Decoder0~0_combout\) # (\u2|o\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Decoder0~0_combout\,
	datac => \in~combout\(3),
	datad => \u2|o\(0),
	combout => \u2|o\(0));

-- Location: LCCOMB_X22_Y34_N18
\u2|o[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|o\(1) = (\in~combout\(3) & ((\u1|Decoder0~1_combout\) # (\u2|o\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Decoder0~1_combout\,
	datac => \in~combout\(3),
	datad => \u2|o\(1),
	combout => \u2|o\(1));

-- Location: LCCOMB_X22_Y34_N28
\u2|o[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|o\(2) = (\in~combout\(3) & ((\u1|Decoder0~2_combout\) # (\u2|o\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Decoder0~2_combout\,
	datac => \in~combout\(3),
	datad => \u2|o\(2),
	combout => \u2|o\(2));

-- Location: LCCOMB_X22_Y34_N30
\u2|o[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|o\(3) = (\in~combout\(3) & ((\u1|Decoder0~3_combout\) # (\u2|o\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in~combout\(3),
	datac => \u1|Decoder0~3_combout\,
	datad => \u2|o\(3),
	combout => \u2|o\(3));

-- Location: LCCOMB_X59_Y34_N16
\u2|o[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|o\(4) = (\in~combout\(3) & ((\u1|Decoder0~4_combout\) # (\u2|o\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Decoder0~4_combout\,
	datac => \u2|o\(4),
	datad => \in~combout\(3),
	combout => \u2|o\(4));

-- Location: LCCOMB_X59_Y34_N2
\u2|o[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|o\(5) = (\in~combout\(3) & ((\u1|Decoder0~5_combout\) # (\u2|o\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Decoder0~5_combout\,
	datac => \in~combout\(3),
	datad => \u2|o\(5),
	combout => \u2|o\(5));

-- Location: LCCOMB_X59_Y34_N28
\u2|o[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|o\(6) = (\in~combout\(3) & ((\u1|Decoder0~6_combout\) # (\u2|o\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Decoder0~6_combout\,
	datab => \in~combout\(3),
	datad => \u2|o\(6),
	combout => \u2|o\(6));

-- Location: LCCOMB_X59_Y34_N6
\u2|o[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|o\(7) = (\in~combout\(3) & ((\u1|Decoder0~7_combout\) # (\u2|o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in~combout\(3),
	datac => \u1|Decoder0~7_combout\,
	datad => \u2|o\(7),
	combout => \u2|o\(7));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[0]~I\ : cycloneii_io
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
	datain => \u1|o\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(0));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[1]~I\ : cycloneii_io
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
	datain => \u1|o\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(1));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[2]~I\ : cycloneii_io
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
	datain => \u1|o\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(2));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[3]~I\ : cycloneii_io
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
	datain => \u1|o\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(3));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[4]~I\ : cycloneii_io
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
	datain => \u1|o\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(4));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[5]~I\ : cycloneii_io
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
	datain => \u1|o\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(5));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[6]~I\ : cycloneii_io
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
	datain => \u1|o\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(6));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[7]~I\ : cycloneii_io
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
	datain => \u1|o\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(7));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[8]~I\ : cycloneii_io
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
	datain => \u2|o\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(8));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[9]~I\ : cycloneii_io
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
	datain => \u2|o\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(9));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[10]~I\ : cycloneii_io
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
	datain => \u2|o\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(10));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[11]~I\ : cycloneii_io
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
	datain => \u2|o\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(11));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[12]~I\ : cycloneii_io
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
	datain => \u2|o\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(12));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[13]~I\ : cycloneii_io
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
	datain => \u2|o\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(13));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[14]~I\ : cycloneii_io
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
	datain => \u2|o\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(14));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[15]~I\ : cycloneii_io
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
	datain => \u2|o\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(15));
END structure;


