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

-- DATE "09/08/2021 07:22:22"

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

ENTITY 	bai10 IS
    PORT (
	A : IN std_logic_vector(4 DOWNTO 0);
	Y : OUT std_logic
	);
END bai10;

-- Design Ports Information
-- Y	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF bai10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Y : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~5_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[7]~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[6]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[9]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[10]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[10]~17_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[4]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[3]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~5_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[7]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[6]~13_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~5_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[9]~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \always0~1_combout\ : std_logic;
SIGNAL \always0~2_combout\ : std_logic;
SIGNAL \A~combout\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_A <= A;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X29_Y35_N20
\Mod0|auto_generated|divider|divider|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[3]~9_combout\ & (!\Mod0|auto_generated|divider|divider|op_1~1\)) # (!\Mod0|auto_generated|divider|divider|StageOut[3]~9_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_1~1\) # (GND)))
-- \Mod0|auto_generated|divider|divider|op_1~3\ = CARRY((!\Mod0|auto_generated|divider|divider|op_1~1\) # (!\Mod0|auto_generated|divider|divider|StageOut[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[3]~9_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_1~1\,
	combout => \Mod0|auto_generated|divider|divider|op_1~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_1~3\);

-- Location: LCCOMB_X30_Y35_N10
\Mod0|auto_generated|divider|divider|op_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[6]~12_combout\ & (((!\Mod0|auto_generated|divider|divider|op_2~1\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[6]~12_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[6]~13_combout\ & (!\Mod0|auto_generated|divider|divider|op_2~1\)) # (!\Mod0|auto_generated|divider|divider|StageOut[6]~13_combout\ & ((\Mod0|auto_generated|divider|divider|op_2~1\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|op_2~3\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[6]~12_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[6]~13_combout\)) # (!\Mod0|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[6]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[6]~13_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_2~1\,
	combout => \Mod0|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X30_Y35_N24
\Mod0|auto_generated|divider|divider|op_3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[9]~14_combout\ & (((!\Mod0|auto_generated|divider|divider|op_3~1\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[9]~14_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[9]~15_combout\ & (!\Mod0|auto_generated|divider|divider|op_3~1\)) # (!\Mod0|auto_generated|divider|divider|StageOut[9]~15_combout\ & ((\Mod0|auto_generated|divider|divider|op_3~1\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|op_3~3\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[9]~14_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[9]~15_combout\)) # (!\Mod0|auto_generated|divider|divider|op_3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[9]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[9]~15_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_3~1\,
	combout => \Mod0|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X30_Y35_N26
\Mod0|auto_generated|divider|divider|op_3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~5_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[10]~16_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[10]~17_combout\) # (!\Mod0|auto_generated|divider|divider|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[10]~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[10]~17_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_3~3\,
	cout => \Mod0|auto_generated|divider|divider|op_3~5_cout\);

-- Location: LCCOMB_X30_Y35_N28
\Mod0|auto_generated|divider|divider|op_3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~6_combout\ = !\Mod0|auto_generated|divider|divider|op_3~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_3~5_cout\,
	combout => \Mod0|auto_generated|divider|divider|op_3~6_combout\);

-- Location: LCCOMB_X29_Y35_N14
\Mod0|auto_generated|divider|divider|StageOut[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[7]~11_combout\ = (\Mod0|auto_generated|divider|divider|op_1~2_combout\ & !\Mod0|auto_generated|divider|divider|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_1~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[7]~11_combout\);

-- Location: LCCOMB_X30_Y35_N0
\Mod0|auto_generated|divider|divider|StageOut[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[6]~12_combout\ = (\Mod0|auto_generated|divider|divider|op_1~6_combout\ & \A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|op_1~6_combout\,
	datad => \A~combout\(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[6]~12_combout\);

-- Location: LCCOMB_X30_Y35_N20
\Mod0|auto_generated|divider|divider|StageOut[9]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[9]~14_combout\ = (\Mod0|auto_generated|divider|divider|op_2~6_combout\ & \A~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_2~6_combout\,
	datad => \A~combout\(1),
	combout => \Mod0|auto_generated|divider|divider|StageOut[9]~14_combout\);

-- Location: LCCOMB_X30_Y35_N16
\Mod0|auto_generated|divider|divider|StageOut[10]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[10]~16_combout\ = (!\Mod0|auto_generated|divider|divider|op_2~6_combout\ & \Mod0|auto_generated|divider|divider|op_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_2~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_2~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[10]~16_combout\);

-- Location: LCCOMB_X30_Y35_N6
\Mod0|auto_generated|divider|divider|StageOut[10]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[10]~17_combout\ = (\Mod0|auto_generated|divider|divider|op_2~6_combout\ & ((\Mod0|auto_generated|divider|divider|op_1~6_combout\ & (\A~combout\(2))) # (!\Mod0|auto_generated|divider|divider|op_1~6_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \Mod0|auto_generated|divider|divider|op_1~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_2~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_1~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[10]~17_combout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
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
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
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
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCCOMB_X30_Y35_N22
\Mod0|auto_generated|divider|divider|op_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~0_combout\ = \A~combout\(0) $ (VCC)
-- \Mod0|auto_generated|divider|divider|op_3~1\ = CARRY(\A~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_3~1\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
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
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
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
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCCOMB_X29_Y35_N0
\Mod0|auto_generated|divider|divider|StageOut[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[4]~8_combout\ = (!\A~combout\(3) & \A~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(3),
	datad => \A~combout\(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[4]~8_combout\);

-- Location: LCCOMB_X29_Y35_N2
\Mod0|auto_generated|divider|divider|StageOut[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[3]~9_combout\ = (\A~combout\(3) & !\A~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(3),
	datad => \A~combout\(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[3]~9_combout\);

-- Location: LCCOMB_X29_Y35_N18
\Mod0|auto_generated|divider|divider|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~0_combout\ = \A~combout\(2) $ (VCC)
-- \Mod0|auto_generated|divider|divider|op_1~1\ = CARRY(\A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|op_1~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_1~1\);

-- Location: LCCOMB_X29_Y35_N22
\Mod0|auto_generated|divider|divider|op_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~5_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[4]~8_combout\) # (!\Mod0|auto_generated|divider|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[4]~8_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_1~3\,
	cout => \Mod0|auto_generated|divider|divider|op_1~5_cout\);

-- Location: LCCOMB_X29_Y35_N24
\Mod0|auto_generated|divider|divider|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~6_combout\ = !\Mod0|auto_generated|divider|divider|op_1~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_1~5_cout\,
	combout => \Mod0|auto_generated|divider|divider|op_1~6_combout\);

-- Location: LCCOMB_X29_Y35_N28
\Mod0|auto_generated|divider|divider|StageOut[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[7]~10_combout\ = (\A~combout\(3) & (\Mod0|auto_generated|divider|divider|op_1~6_combout\ & !\A~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datac => \Mod0|auto_generated|divider|divider|op_1~6_combout\,
	datad => \A~combout\(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[7]~10_combout\);

-- Location: LCCOMB_X30_Y35_N2
\Mod0|auto_generated|divider|divider|StageOut[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[6]~13_combout\ = (!\Mod0|auto_generated|divider|divider|op_1~6_combout\ & \Mod0|auto_generated|divider|divider|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|op_1~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_1~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[6]~13_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
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
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCCOMB_X30_Y35_N8
\Mod0|auto_generated|divider|divider|op_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~0_combout\ = \A~combout\(1) $ (VCC)
-- \Mod0|auto_generated|divider|divider|op_2~1\ = CARRY(\A~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(1),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|op_2~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X30_Y35_N12
\Mod0|auto_generated|divider|divider|op_2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~5_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[7]~11_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[7]~10_combout\) # (!\Mod0|auto_generated|divider|divider|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[7]~11_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[7]~10_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_2~3\,
	cout => \Mod0|auto_generated|divider|divider|op_2~5_cout\);

-- Location: LCCOMB_X30_Y35_N14
\Mod0|auto_generated|divider|divider|op_2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~6_combout\ = !\Mod0|auto_generated|divider|divider|op_2~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_2~5_cout\,
	combout => \Mod0|auto_generated|divider|divider|op_2~6_combout\);

-- Location: LCCOMB_X30_Y35_N30
\Mod0|auto_generated|divider|divider|StageOut[9]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[9]~15_combout\ = (!\Mod0|auto_generated|divider|divider|op_2~6_combout\ & \Mod0|auto_generated|divider|divider|op_2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|op_2~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_2~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[9]~15_combout\);

-- Location: LCCOMB_X30_Y35_N18
\always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (\A~combout\(0) & ((\Mod0|auto_generated|divider|divider|op_3~6_combout\) # ((\Mod0|auto_generated|divider|divider|op_3~0_combout\) # (\Mod0|auto_generated|divider|divider|op_3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_3~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_3~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_3~2_combout\,
	datad => \A~combout\(0),
	combout => \always0~0_combout\);

-- Location: LCCOMB_X29_Y35_N16
\always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~1_combout\ = (!\A~combout\(2) & (!\A~combout\(3) & !\A~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datac => \A~combout\(3),
	datad => \A~combout\(4),
	combout => \always0~1_combout\);

-- Location: LCCOMB_X30_Y35_N4
\always0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~2_combout\ = (\always0~1_combout\ & ((\A~combout\(1)))) # (!\always0~1_combout\ & (\always0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \always0~0_combout\,
	datac => \always0~1_combout\,
	datad => \A~combout\(1),
	combout => \always0~2_combout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y~I\ : cycloneii_io
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
	datain => \always0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y);
END structure;


