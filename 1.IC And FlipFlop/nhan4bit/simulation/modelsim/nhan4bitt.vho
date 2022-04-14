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

-- DATE "10/27/2021 10:39:39"

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

ENTITY 	nhan4bitt IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	p : OUT std_logic_vector(7 DOWNTO 0)
	);
END nhan4bitt;

-- Design Ports Information
-- p[0]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p[1]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p[2]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p[3]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p[4]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p[5]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p[6]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p[7]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- a[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF nhan4bitt IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_p : std_logic_vector(7 DOWNTO 0);
SIGNAL \H2|co~0_combout\ : std_logic;
SIGNAL \p~0_combout\ : std_logic;
SIGNAL \H1|a_xor_b~combout\ : std_logic;
SIGNAL \H2|s~0_combout\ : std_logic;
SIGNAL \H2|s~1_combout\ : std_logic;
SIGNAL \H5|a_xor_b~combout\ : std_logic;
SIGNAL \H2|co~1_combout\ : std_logic;
SIGNAL \H3|s~combout\ : std_logic;
SIGNAL \H6|s~combout\ : std_logic;
SIGNAL \H9|a_xor_b~combout\ : std_logic;
SIGNAL \H6|co~0_combout\ : std_logic;
SIGNAL \H3|co~0_combout\ : std_logic;
SIGNAL \H7|s~combout\ : std_logic;
SIGNAL \H10|s~combout\ : std_logic;
SIGNAL \H8|a_xor_b~combout\ : std_logic;
SIGNAL \H10|co~0_combout\ : std_logic;
SIGNAL \H7|co~0_combout\ : std_logic;
SIGNAL \H11|s~combout\ : std_logic;
SIGNAL \H8|co~0_combout\ : std_logic;
SIGNAL \H11|co~0_combout\ : std_logic;
SIGNAL \H12|s~0_combout\ : std_logic;
SIGNAL \H12|co~0_combout\ : std_logic;
SIGNAL andd : std_logic_vector(14 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
p <= ww_p;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X64_Y29_N10
\H2|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|co~0_combout\ = (\a~combout\(0)) # (\a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datac => \a~combout\(2),
	combout => \H2|co~0_combout\);

-- Location: LCCOMB_X64_Y29_N26
\andd[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- andd(8) = (\a~combout\(1) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(1),
	datad => \b~combout\(2),
	combout => andd(8));

-- Location: LCCOMB_X64_Y28_N12
\andd[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- andd(6) = (\b~combout\(1) & \a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(1),
	datac => \a~combout\(3),
	combout => andd(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
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
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
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
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LCCOMB_X64_Y29_N24
\p~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p~0_combout\ = (\a~combout\(0) & \b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datac => \b~combout\(0),
	combout => \p~0_combout\);

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
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
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
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
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LCCOMB_X64_Y29_N2
\H1|a_xor_b\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|a_xor_b~combout\ = (\a~combout\(0) & (\b~combout\(1) $ (((\a~combout\(1) & \b~combout\(0)))))) # (!\a~combout\(0) & (\a~combout\(1) & (\b~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \a~combout\(1),
	datac => \b~combout\(0),
	datad => \b~combout\(1),
	combout => \H1|a_xor_b~combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
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
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LCCOMB_X64_Y29_N22
\H2|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|s~0_combout\ = (\b~combout\(1) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datac => \a~combout\(1),
	combout => \H2|s~0_combout\);

-- Location: LCCOMB_X64_Y29_N0
\H2|s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|s~1_combout\ = (\b~combout\(0) & (\a~combout\(2) $ (((!\a~combout\(0) & \H2|s~0_combout\))))) # (!\b~combout\(0) & (((\H2|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datac => \a~combout\(2),
	datad => \H2|s~0_combout\,
	combout => \H2|s~1_combout\);

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
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
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LCCOMB_X64_Y29_N18
\H5|a_xor_b\ : cycloneii_lcell_comb
-- Equation(s):
-- \H5|a_xor_b~combout\ = \H2|s~1_combout\ $ (((\a~combout\(0) & \b~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \H2|s~1_combout\,
	datad => \b~combout\(2),
	combout => \H5|a_xor_b~combout\);

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
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
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LCCOMB_X64_Y29_N20
\H2|co~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|co~1_combout\ = (\H2|co~0_combout\ & (\a~combout\(1) & (\b~combout\(0) & \b~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H2|co~0_combout\,
	datab => \a~combout\(1),
	datac => \b~combout\(0),
	datad => \b~combout\(1),
	combout => \H2|co~1_combout\);

-- Location: LCCOMB_X64_Y29_N6
\andd[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- andd(5) = (\a~combout\(2) & \b~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(2),
	datad => \b~combout\(1),
	combout => andd(5));

-- Location: LCCOMB_X64_Y29_N8
\H3|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|s~combout\ = \H2|co~1_combout\ $ (andd(5) $ (((\a~combout\(3) & \b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \b~combout\(0),
	datac => \H2|co~1_combout\,
	datad => andd(5),
	combout => \H3|s~combout\);

-- Location: LCCOMB_X64_Y29_N28
\andd[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- andd(7) = (\a~combout\(0) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datad => \b~combout\(2),
	combout => andd(7));

-- Location: LCCOMB_X64_Y29_N4
\H6|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|s~combout\ = andd(8) $ (\H3|s~combout\ $ (((\H2|s~1_combout\ & andd(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => andd(8),
	datab => \H2|s~1_combout\,
	datac => \H3|s~combout\,
	datad => andd(7),
	combout => \H6|s~combout\);

-- Location: LCCOMB_X64_Y29_N12
\H9|a_xor_b\ : cycloneii_lcell_comb
-- Equation(s):
-- \H9|a_xor_b~combout\ = \H6|s~combout\ $ (((\a~combout\(0) & \b~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(3),
	datac => \H6|s~combout\,
	combout => \H9|a_xor_b~combout\);

-- Location: LCCOMB_X64_Y28_N10
\andd[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- andd(12) = (\b~combout\(3) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datad => \a~combout\(1),
	combout => andd(12));

-- Location: LCCOMB_X64_Y29_N30
\H6|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H6|co~0_combout\ = (andd(8) & ((\H3|s~combout\) # ((\H2|s~1_combout\ & andd(7))))) # (!andd(8) & (\H2|s~1_combout\ & (\H3|s~combout\ & andd(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => andd(8),
	datab => \H2|s~1_combout\,
	datac => \H3|s~combout\,
	datad => andd(7),
	combout => \H6|co~0_combout\);

-- Location: LCCOMB_X64_Y29_N16
\H3|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|co~0_combout\ = (\H2|co~1_combout\ & ((andd(5)) # ((\a~combout\(3) & \b~combout\(0))))) # (!\H2|co~1_combout\ & (\a~combout\(3) & (\b~combout\(0) & andd(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \b~combout\(0),
	datac => \H2|co~1_combout\,
	datad => andd(5),
	combout => \H3|co~0_combout\);

-- Location: LCCOMB_X64_Y28_N6
\andd[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- andd(9) = (\a~combout\(2) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(2),
	datad => \b~combout\(2),
	combout => andd(9));

-- Location: LCCOMB_X64_Y28_N8
\H7|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \H7|s~combout\ = andd(6) $ (\H6|co~0_combout\ $ (\H3|co~0_combout\ $ (andd(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => andd(6),
	datab => \H6|co~0_combout\,
	datac => \H3|co~0_combout\,
	datad => andd(9),
	combout => \H7|s~combout\);

-- Location: LCCOMB_X64_Y28_N24
\andd[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- andd(11) = (\a~combout\(0) & \b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(0),
	datad => \b~combout\(3),
	combout => andd(11));

-- Location: LCCOMB_X64_Y28_N2
\H10|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \H10|s~combout\ = andd(12) $ (\H7|s~combout\ $ (((andd(11) & \H6|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => andd(12),
	datab => \H7|s~combout\,
	datac => andd(11),
	datad => \H6|s~combout\,
	combout => \H10|s~combout\);

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
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
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LCCOMB_X64_Y28_N22
\H8|a_xor_b\ : cycloneii_lcell_comb
-- Equation(s):
-- \H8|a_xor_b~combout\ = (\a~combout\(3) & (\b~combout\(2) $ (((\H3|co~0_combout\ & \b~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H3|co~0_combout\,
	datab => \b~combout\(1),
	datac => \a~combout\(3),
	datad => \b~combout\(2),
	combout => \H8|a_xor_b~combout\);

-- Location: LCCOMB_X64_Y28_N30
\H10|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H10|co~0_combout\ = (andd(12) & ((\H7|s~combout\) # ((andd(11) & \H6|s~combout\)))) # (!andd(12) & (\H7|s~combout\ & (andd(11) & \H6|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => andd(12),
	datab => \H7|s~combout\,
	datac => andd(11),
	datad => \H6|s~combout\,
	combout => \H10|co~0_combout\);

-- Location: LCCOMB_X64_Y28_N20
\andd[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- andd(13) = (\b~combout\(3) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datac => \a~combout\(2),
	combout => andd(13));

-- Location: LCCOMB_X64_Y28_N0
\H7|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H7|co~0_combout\ = (\H6|co~0_combout\ & ((andd(9)) # (andd(6) $ (\H3|co~0_combout\)))) # (!\H6|co~0_combout\ & (andd(9) & (andd(6) $ (\H3|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => andd(6),
	datab => \H6|co~0_combout\,
	datac => \H3|co~0_combout\,
	datad => andd(9),
	combout => \H7|co~0_combout\);

-- Location: LCCOMB_X64_Y28_N26
\H11|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \H11|s~combout\ = \H8|a_xor_b~combout\ $ (\H10|co~0_combout\ $ (andd(13) $ (\H7|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H8|a_xor_b~combout\,
	datab => \H10|co~0_combout\,
	datac => andd(13),
	datad => \H7|co~0_combout\,
	combout => \H11|s~combout\);

-- Location: LCCOMB_X64_Y28_N14
\andd[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- andd(10) = (\a~combout\(3) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(3),
	datad => \b~combout\(2),
	combout => andd(10));

-- Location: LCCOMB_X64_Y28_N16
\H8|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H8|co~0_combout\ = (andd(10) & ((\H7|co~0_combout\) # ((andd(6) & \H3|co~0_combout\)))) # (!andd(10) & (andd(6) & (\H3|co~0_combout\ & \H7|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => andd(6),
	datab => andd(10),
	datac => \H3|co~0_combout\,
	datad => \H7|co~0_combout\,
	combout => \H8|co~0_combout\);

-- Location: LCCOMB_X64_Y28_N28
\H11|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H11|co~0_combout\ = (\H10|co~0_combout\ & ((andd(13)) # (\H8|a_xor_b~combout\ $ (\H7|co~0_combout\)))) # (!\H10|co~0_combout\ & (andd(13) & (\H8|a_xor_b~combout\ $ (\H7|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H8|a_xor_b~combout\,
	datab => \H10|co~0_combout\,
	datac => andd(13),
	datad => \H7|co~0_combout\,
	combout => \H11|co~0_combout\);

-- Location: LCCOMB_X64_Y28_N18
\H12|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H12|s~0_combout\ = \H8|co~0_combout\ $ (\H11|co~0_combout\ $ (((\a~combout\(3) & \b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H8|co~0_combout\,
	datab => \H11|co~0_combout\,
	datac => \a~combout\(3),
	datad => \b~combout\(3),
	combout => \H12|s~0_combout\);

-- Location: LCCOMB_X64_Y28_N4
\H12|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H12|co~0_combout\ = (\H8|co~0_combout\ & ((\H11|co~0_combout\) # ((\a~combout\(3) & \b~combout\(3))))) # (!\H8|co~0_combout\ & (\H11|co~0_combout\ & (\a~combout\(3) & \b~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H8|co~0_combout\,
	datab => \H11|co~0_combout\,
	datac => \a~combout\(3),
	datad => \b~combout\(3),
	combout => \H12|co~0_combout\);

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[0]~I\ : cycloneii_io
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
	datain => \p~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(0));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[1]~I\ : cycloneii_io
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
	datain => \H1|a_xor_b~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(1));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[2]~I\ : cycloneii_io
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
	datain => \H5|a_xor_b~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(2));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[3]~I\ : cycloneii_io
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
	datain => \H9|a_xor_b~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(3));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[4]~I\ : cycloneii_io
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
	datain => \H10|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(4));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[5]~I\ : cycloneii_io
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
	datain => \H11|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(5));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[6]~I\ : cycloneii_io
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
	datain => \H12|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(6));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[7]~I\ : cycloneii_io
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
	datain => \H12|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(7));
END structure;


