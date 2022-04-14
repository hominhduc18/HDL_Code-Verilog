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

-- DATE "10/27/2021 10:26:48"

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

ENTITY 	baiba IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	C : IN std_logic_vector(3 DOWNTO 0);
	D : IN std_logic_vector(3 DOWNTO 0);
	Y : OUT std_logic_vector(8 DOWNTO 0)
	);
END baiba;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[1]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[2]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[5]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[6]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[7]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[8]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- C[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[1]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D[1]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[2]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D[2]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[3]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D[3]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF baiba IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(8 DOWNTO 0);
SIGNAL \cxd|H6|s1~0_combout\ : std_logic;
SIGNAL \cxd|H6|s1~combout\ : std_logic;
SIGNAL \axb|H2|co~0_combout\ : std_logic;
SIGNAL \axb|H3|s1~combout\ : std_logic;
SIGNAL \axb|H10|n1~2_combout\ : std_logic;
SIGNAL \cxd|H8|n1~combout\ : std_logic;
SIGNAL \congn|B0|n3~combout\ : std_logic;
SIGNAL \cxd|H1|n1~combout\ : std_logic;
SIGNAL \congn|B0|n1~combout\ : std_logic;
SIGNAL \congn|B1|s1~0_combout\ : std_logic;
SIGNAL \congn|B1|co~0_combout\ : std_logic;
SIGNAL \cxd|H2|s1~0_combout\ : std_logic;
SIGNAL \cxd|H2|s1~1_combout\ : std_logic;
SIGNAL \cxd|H5|n1~combout\ : std_logic;
SIGNAL \axb|H2|s1~4_combout\ : std_logic;
SIGNAL \axb|H2|s1~5_combout\ : std_logic;
SIGNAL \congn|B2|s1~combout\ : std_logic;
SIGNAL \axb|H6|s1~combout\ : std_logic;
SIGNAL \congn|B2|co~0_combout\ : std_logic;
SIGNAL \cxd|H9|n1~combout\ : std_logic;
SIGNAL \congn|B3|s1~combout\ : std_logic;
SIGNAL \axb|H6|co~0_combout\ : std_logic;
SIGNAL \axb|H2|co~1_combout\ : std_logic;
SIGNAL \axb|H3|co~0_combout\ : std_logic;
SIGNAL \axb|H10|n1~combout\ : std_logic;
SIGNAL \axb|H9|n3~combout\ : std_logic;
SIGNAL \cxd|H2|co~0_combout\ : std_logic;
SIGNAL \cxd|H2|co~1_combout\ : std_logic;
SIGNAL \cxd|H3|s1~combout\ : std_logic;
SIGNAL \cxd|H6|co~0_combout\ : std_logic;
SIGNAL \cxd|H3|co~0_combout\ : std_logic;
SIGNAL \cxd|H10|s1~0_combout\ : std_logic;
SIGNAL \cxd|H10|s1~combout\ : std_logic;
SIGNAL \congn|B3|co~0_combout\ : std_logic;
SIGNAL \congn|B4|s1~combout\ : std_logic;
SIGNAL \axb|H7|s1~combout\ : std_logic;
SIGNAL \axb|H10|co~0_combout\ : std_logic;
SIGNAL \congn|B4|co~0_combout\ : std_logic;
SIGNAL \cxd|H7|s1~combout\ : std_logic;
SIGNAL \cxd|H10|co~0_combout\ : std_logic;
SIGNAL \cxd|H7|co~0_combout\ : std_logic;
SIGNAL \cxd|H11|s1~combout\ : std_logic;
SIGNAL \axb|H7|co~0_combout\ : std_logic;
SIGNAL \axb|H8|n1~combout\ : std_logic;
SIGNAL \axb|H11|n1~combout\ : std_logic;
SIGNAL \congn|B5|s1~combout\ : std_logic;
SIGNAL \congn|B5|co~0_combout\ : std_logic;
SIGNAL \axb|H8|co~0_combout\ : std_logic;
SIGNAL \axb|H12|n1~combout\ : std_logic;
SIGNAL \cxd|H11|co~0_combout\ : std_logic;
SIGNAL \cxd|H8|co~0_combout\ : std_logic;
SIGNAL \cxd|H12|s1~0_combout\ : std_logic;
SIGNAL \axb|H11|co~0_combout\ : std_logic;
SIGNAL \congn|B6|s1~0_combout\ : std_logic;
SIGNAL \congn|B6|co~0_combout\ : std_logic;
SIGNAL \axb|H12|co~0_combout\ : std_logic;
SIGNAL \cxd|H12|co~0_combout\ : std_logic;
SIGNAL \congn|B7|s1~0_combout\ : std_logic;
SIGNAL \congn|B7|co~0_combout\ : std_logic;
SIGNAL \axb|andd\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \D~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cxd|andd\ : std_logic_vector(14 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X35_Y35_N24
\cxd|andd[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|andd\(7) = (\C~combout\(0) & \D~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~combout\(0),
	datad => \D~combout\(2),
	combout => \cxd|andd\(7));

-- Location: LCCOMB_X35_Y35_N2
\cxd|H6|s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H6|s1~0_combout\ = \cxd|andd\(8) $ (\cxd|andd\(5) $ (((!\C~combout\(3)) # (!\D~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\(0),
	datab => \cxd|andd\(8),
	datac => \C~combout\(3),
	datad => \cxd|andd\(5),
	combout => \cxd|H6|s1~0_combout\);

-- Location: LCCOMB_X35_Y35_N12
\cxd|H6|s1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H6|s1~combout\ = \cxd|H2|co~1_combout\ $ (\cxd|H6|s1~0_combout\ $ (((!\cxd|H2|s1~1_combout\) # (!\cxd|andd\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cxd|andd\(7),
	datab => \cxd|H2|s1~1_combout\,
	datac => \cxd|H2|co~1_combout\,
	datad => \cxd|H6|s1~0_combout\,
	combout => \cxd|H6|s1~combout\);

-- Location: LCCOMB_X36_Y34_N24
\axb|H2|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|H2|co~0_combout\ = (\A~combout\(0)) # (\A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datac => \A~combout\(2),
	combout => \axb|H2|co~0_combout\);

-- Location: LCCOMB_X36_Y34_N6
\axb|H3|s1\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|H3|s1~combout\ = \axb|andd\(5) $ (\axb|H2|co~1_combout\ $ (((\A~combout\(3) & \B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \axb|andd\(5),
	datac => \B~combout\(0),
	datad => \axb|H2|co~1_combout\,
	combout => \axb|H3|s1~combout\);

-- Location: LCCOMB_X35_Y35_N14
\cxd|andd[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|andd\(10) = (\C~combout\(3) & \D~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C~combout\(3),
	datad => \D~combout\(2),
	combout => \cxd|andd\(10));

-- Location: LCCOMB_X37_Y33_N12
\axb|H10|n1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|H10|n1~2_combout\ = (\B~combout\(3) & (\A~combout\(1) $ (((!\B~combout\(2)) # (!\A~combout\(2)))))) # (!\B~combout\(3) & (((!\B~combout\(2))) # (!\A~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(2),
	datac => \A~combout\(1),
	datad => \B~combout\(2),
	combout => \axb|H10|n1~2_combout\);

-- Location: LCCOMB_X36_Y35_N6
\cxd|H8|n1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H8|n1~combout\ = (\C~combout\(3) & (\D~combout\(2) $ (((\cxd|H3|co~0_combout\ & \D~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~combout\(3),
	datab => \cxd|H3|co~0_combout\,
	datac => \D~combout\(2),
	datad => \D~combout\(1),
	combout => \cxd|H8|n1~combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
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
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D[0]~I\ : cycloneii_io
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
	padio => ww_D(0),
	combout => \D~combout\(0));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C[0]~I\ : cycloneii_io
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
	padio => ww_C(0),
	combout => \C~combout\(0));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X36_Y34_N8
\congn|B0|n3\ : cycloneii_lcell_comb
-- Equation(s):
-- \congn|B0|n3~combout\ = (\B~combout\(0) & (\D~combout\(0) & (\C~combout\(0) & \A~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \D~combout\(0),
	datac => \C~combout\(0),
	datad => \A~combout\(0),
	combout => \congn|B0|n3~combout\);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X36_Y34_N12
\axb|andd[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|andd\(0) = (\B~combout\(0) & \A~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(0),
	datad => \A~combout\(1),
	combout => \axb|andd\(0));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
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
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LCCOMB_X36_Y34_N22
\axb|andd[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|andd\(1) = (\B~combout\(1) & \A~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(1),
	datad => \A~combout\(0),
	combout => \axb|andd\(1));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C[1]~I\ : cycloneii_io
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
	padio => ww_C(1),
	combout => \C~combout\(1));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D[1]~I\ : cycloneii_io
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
	padio => ww_D(1),
	combout => \D~combout\(1));

-- Location: LCCOMB_X35_Y35_N8
\cxd|H1|n1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H1|n1~combout\ = (\D~combout\(0) & (\C~combout\(1) $ (((\C~combout\(0) & \D~combout\(1)))))) # (!\D~combout\(0) & (((\C~combout\(0) & \D~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\(0),
	datab => \C~combout\(1),
	datac => \C~combout\(0),
	datad => \D~combout\(1),
	combout => \cxd|H1|n1~combout\);

-- Location: LCCOMB_X36_Y34_N26
\congn|B0|n1\ : cycloneii_lcell_comb
-- Equation(s):
-- \congn|B0|n1~combout\ = (\B~combout\(0) & (\A~combout\(0) $ (((\D~combout\(0) & \C~combout\(0)))))) # (!\B~combout\(0) & (\D~combout\(0) & (\C~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \D~combout\(0),
	datac => \C~combout\(0),
	datad => \A~combout\(0),
	combout => \congn|B0|n1~combout\);

-- Location: LCCOMB_X36_Y34_N0
\congn|B1|s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \congn|B1|s1~0_combout\ = \axb|andd\(0) $ (\axb|andd\(1) $ (\cxd|H1|n1~combout\ $ (\congn|B0|n1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \axb|andd\(0),
	datab => \axb|andd\(1),
	datac => \cxd|H1|n1~combout\,
	datad => \congn|B0|n1~combout\,
	combout => \congn|B1|s1~0_combout\);

-- Location: LCCOMB_X36_Y34_N14
\congn|B1|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \congn|B1|co~0_combout\ = (\cxd|H1|n1~combout\ & ((\congn|B0|n1~combout\) # (\axb|andd\(0) $ (\axb|andd\(1))))) # (!\cxd|H1|n1~combout\ & (\congn|B0|n1~combout\ & (\axb|andd\(0) $ (\axb|andd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \axb|andd\(0),
	datab => \axb|andd\(1),
	datac => \cxd|H1|n1~combout\,
	datad => \congn|B0|n1~combout\,
	combout => \congn|B1|co~0_combout\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C[2]~I\ : cycloneii_io
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
	padio => ww_C(2),
	combout => \C~combout\(2));

-- Location: LCCOMB_X35_Y35_N10
\cxd|H2|s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H2|s1~0_combout\ = (\C~combout\(1) & \D~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~combout\(1),
	datad => \D~combout\(1),
	combout => \cxd|H2|s1~0_combout\);

-- Location: LCCOMB_X35_Y35_N4
\cxd|H2|s1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H2|s1~1_combout\ = (\D~combout\(0) & (\C~combout\(2) $ (((!\C~combout\(0) & \cxd|H2|s1~0_combout\))))) # (!\D~combout\(0) & (((\cxd|H2|s1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\(0),
	datab => \C~combout\(0),
	datac => \C~combout\(2),
	datad => \cxd|H2|s1~0_combout\,
	combout => \cxd|H2|s1~1_combout\);

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D[2]~I\ : cycloneii_io
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
	padio => ww_D(2),
	combout => \D~combout\(2));

-- Location: LCCOMB_X35_Y35_N6
\cxd|H5|n1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H5|n1~combout\ = \cxd|H2|s1~1_combout\ $ (((\C~combout\(0) & \D~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~combout\(0),
	datac => \cxd|H2|s1~1_combout\,
	datad => \D~combout\(2),
	combout => \cxd|H5|n1~combout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X36_Y34_N28
\axb|H2|s1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|H2|s1~4_combout\ = (\B~combout\(0) & (\A~combout\(2) $ (((\B~combout\(1) & \A~combout\(1)))))) # (!\B~combout\(0) & (((\B~combout\(1) & \A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(2),
	datac => \B~combout\(1),
	datad => \A~combout\(1),
	combout => \axb|H2|s1~4_combout\);

-- Location: LCCOMB_X36_Y34_N20
\axb|H2|s1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|H2|s1~5_combout\ = \axb|H2|s1~4_combout\ $ (((\axb|andd\(1) & (\B~combout\(0) & \A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \axb|andd\(1),
	datab => \axb|H2|s1~4_combout\,
	datac => \B~combout\(0),
	datad => \A~combout\(1),
	combout => \axb|H2|s1~5_combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
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
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LCCOMB_X36_Y34_N10
\axb|andd[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|andd\(7) = (\B~combout\(2) & \A~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(2),
	datad => \A~combout\(0),
	combout => \axb|andd\(7));

-- Location: LCCOMB_X36_Y33_N8
\congn|B2|s1\ : cycloneii_lcell_comb
-- Equation(s):
-- \congn|B2|s1~combout\ = \congn|B1|co~0_combout\ $ (\cxd|H5|n1~combout\ $ (\axb|H2|s1~5_combout\ $ (\axb|andd\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \congn|B1|co~0_combout\,
	datab => \cxd|H5|n1~combout\,
	datac => \axb|H2|s1~5_combout\,
	datad => \axb|andd\(7),
	combout => \congn|B2|s1~combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
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
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LCCOMB_X36_Y33_N10
\axb|andd[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|andd\(11) = (\B~combout\(3) & \A~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(3),
	datac => \A~combout\(0),
	combout => \axb|andd\(11));

-- Location: LCCOMB_X36_Y34_N16
\axb|andd[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|andd\(8) = (\B~combout\(2) & \A~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(2),
	datad => \A~combout\(1),
	combout => \axb|andd\(8));

-- Location: LCCOMB_X36_Y33_N12
\axb|H6|s1\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|H6|s1~combout\ = \axb|H3|s1~combout\ $ (\axb|andd\(8) $ (((\axb|H2|s1~5_combout\ & \axb|andd\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \axb|H3|s1~combout\,
	datab => \axb|H2|s1~5_combout\,
	datac => \axb|andd\(8),
	datad => \axb|andd\(7),
	combout => \axb|H6|s1~combout\);

-- Location: LCCOMB_X36_Y33_N14
\congn|B2|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \congn|B2|co~0_combout\ = (\congn|B1|co~0_combout\ & ((\cxd|H5|n1~combout\) # (\axb|H2|s1~5_combout\ $ (\axb|andd\(7))))) # (!\congn|B1|co~0_combout\ & (\cxd|H5|n1~combout\ & (\axb|H2|s1~5_combout\ $ (\axb|andd\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \congn|B1|co~0_combout\,
	datab => \cxd|H5|n1~combout\,
	datac => \axb|H2|s1~5_combout\,
	datad => \axb|andd\(7),
	combout => \congn|B2|co~0_combout\);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D[3]~I\ : cycloneii_io
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
	padio => ww_D(3),
	combout => \D~combout\(3));

-- Location: LCCOMB_X36_Y35_N0
\cxd|H9|n1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H9|n1~combout\ = \cxd|H6|s1~combout\ $ (((\C~combout\(0) & \D~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cxd|H6|s1~combout\,
	datac => \C~combout\(0),
	datad => \D~combout\(3),
	combout => \cxd|H9|n1~combout\);

-- Location: LCCOMB_X36_Y33_N24
\congn|B3|s1\ : cycloneii_lcell_comb
-- Equation(s):
-- \congn|B3|s1~combout\ = \axb|andd\(11) $ (\axb|H6|s1~combout\ $ (\congn|B2|co~0_combout\ $ (\cxd|H9|n1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \axb|andd\(11),
	datab => \axb|H6|s1~combout\,
	datac => \congn|B2|co~0_combout\,
	datad => \cxd|H9|n1~combout\,
	combout => \congn|B3|s1~combout\);

-- Location: LCCOMB_X36_Y33_N18
\axb|H6|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|H6|co~0_combout\ = (\axb|H3|s1~combout\ & ((\axb|andd\(8)) # ((\axb|H2|s1~5_combout\ & \axb|andd\(7))))) # (!\axb|H3|s1~combout\ & (\axb|H2|s1~5_combout\ & (\axb|andd\(8) & \axb|andd\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \axb|H3|s1~combout\,
	datab => \axb|H2|s1~5_combout\,
	datac => \axb|andd\(8),
	datad => \axb|andd\(7),
	combout => \axb|H6|co~0_combout\);

-- Location: LCCOMB_X37_Y33_N8
\axb|andd[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|andd\(6) = (\A~combout\(3) & \B~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datac => \B~combout\(1),
	combout => \axb|andd\(6));

-- Location: LCCOMB_X36_Y34_N4
\axb|andd[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|andd\(5) = (\A~combout\(2) & \B~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datac => \B~combout\(1),
	combout => \axb|andd\(5));

-- Location: LCCOMB_X36_Y34_N18
\axb|H2|co~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|H2|co~1_combout\ = (\axb|H2|co~0_combout\ & (\B~combout\(0) & (\B~combout\(1) & \A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \axb|H2|co~0_combout\,
	datab => \B~combout\(0),
	datac => \B~combout\(1),
	datad => \A~combout\(1),
	combout => \axb|H2|co~1_combout\);

-- Location: LCCOMB_X36_Y34_N2
\axb|H3|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|H3|co~0_combout\ = (\axb|andd\(5) & ((\axb|H2|co~1_combout\) # ((\A~combout\(3) & \B~combout\(0))))) # (!\axb|andd\(5) & (\A~combout\(3) & (\B~combout\(0) & \axb|H2|co~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \axb|andd\(5),
	datac => \B~combout\(0),
	datad => \axb|H2|co~1_combout\,
	combout => \axb|H3|co~0_combout\);

-- Location: LCCOMB_X37_Y33_N4
\axb|H10|n1\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|H10|n1~combout\ = \axb|H10|n1~2_combout\ $ (\axb|H6|co~0_combout\ $ (\axb|andd\(6) $ (!\axb|H3|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \axb|H10|n1~2_combout\,
	datab => \axb|H6|co~0_combout\,
	datac => \axb|andd\(6),
	datad => \axb|H3|co~0_combout\,
	combout => \axb|H10|n1~combout\);

-- Location: LCCOMB_X36_Y33_N30
\axb|H9|n3\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|H9|n3~combout\ = (\A~combout\(0) & (\B~combout\(3) & \axb|H6|s1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datac => \B~combout\(3),
	datad => \axb|H6|s1~combout\,
	combout => \axb|H9|n3~combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C[3]~I\ : cycloneii_io
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
	padio => ww_C(3),
	combout => \C~combout\(3));

-- Location: LCCOMB_X35_Y35_N26
\cxd|H2|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H2|co~0_combout\ = (\C~combout\(0)) # (\C~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~combout\(0),
	datac => \C~combout\(2),
	combout => \cxd|H2|co~0_combout\);

-- Location: LCCOMB_X35_Y35_N20
\cxd|H2|co~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H2|co~1_combout\ = (\D~combout\(0) & (\C~combout\(1) & (\cxd|H2|co~0_combout\ & \D~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\(0),
	datab => \C~combout\(1),
	datac => \cxd|H2|co~0_combout\,
	datad => \D~combout\(1),
	combout => \cxd|H2|co~1_combout\);

-- Location: LCCOMB_X35_Y35_N0
\cxd|andd[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|andd\(5) = (\C~combout\(2) & \D~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C~combout\(2),
	datad => \D~combout\(1),
	combout => \cxd|andd\(5));

-- Location: LCCOMB_X35_Y35_N22
\cxd|H3|s1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H3|s1~combout\ = \cxd|H2|co~1_combout\ $ (\cxd|andd\(5) $ (((\D~combout\(0) & \C~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\(0),
	datab => \C~combout\(3),
	datac => \cxd|H2|co~1_combout\,
	datad => \cxd|andd\(5),
	combout => \cxd|H3|s1~combout\);

-- Location: LCCOMB_X35_Y35_N30
\cxd|andd[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|andd\(8) = (\D~combout\(2) & \C~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\(2),
	datad => \C~combout\(1),
	combout => \cxd|andd\(8));

-- Location: LCCOMB_X35_Y35_N16
\cxd|H6|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H6|co~0_combout\ = (\cxd|H3|s1~combout\ & ((\cxd|andd\(8)) # ((\cxd|andd\(7) & \cxd|H2|s1~1_combout\)))) # (!\cxd|H3|s1~combout\ & (\cxd|andd\(7) & (\cxd|H2|s1~1_combout\ & \cxd|andd\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cxd|andd\(7),
	datab => \cxd|H3|s1~combout\,
	datac => \cxd|H2|s1~1_combout\,
	datad => \cxd|andd\(8),
	combout => \cxd|H6|co~0_combout\);

-- Location: LCCOMB_X35_Y35_N28
\cxd|H3|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H3|co~0_combout\ = (\cxd|H2|co~1_combout\ & ((\cxd|andd\(5)) # ((\D~combout\(0) & \C~combout\(3))))) # (!\cxd|H2|co~1_combout\ & (\D~combout\(0) & (\C~combout\(3) & \cxd|andd\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\(0),
	datab => \C~combout\(3),
	datac => \cxd|H2|co~1_combout\,
	datad => \cxd|andd\(5),
	combout => \cxd|H3|co~0_combout\);

-- Location: LCCOMB_X36_Y35_N20
\cxd|andd[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|andd\(12) = (\C~combout\(1) & \D~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C~combout\(1),
	datad => \D~combout\(3),
	combout => \cxd|andd\(12));

-- Location: LCCOMB_X36_Y35_N22
\cxd|andd[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|andd\(9) = (\C~combout\(2) & \D~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~combout\(2),
	datac => \D~combout\(2),
	combout => \cxd|andd\(9));

-- Location: LCCOMB_X36_Y35_N16
\cxd|H10|s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H10|s1~0_combout\ = \cxd|andd\(6) $ (\cxd|H3|co~0_combout\ $ (\cxd|andd\(12) $ (!\cxd|andd\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cxd|andd\(6),
	datab => \cxd|H3|co~0_combout\,
	datac => \cxd|andd\(12),
	datad => \cxd|andd\(9),
	combout => \cxd|H10|s1~0_combout\);

-- Location: LCCOMB_X36_Y35_N18
\cxd|H10|s1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H10|s1~combout\ = \cxd|H6|co~0_combout\ $ (\cxd|H10|s1~0_combout\ $ (((\cxd|H9|n1~combout\) # (!\cxd|andd\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cxd|andd\(11),
	datab => \cxd|H6|co~0_combout\,
	datac => \cxd|H10|s1~0_combout\,
	datad => \cxd|H9|n1~combout\,
	combout => \cxd|H10|s1~combout\);

-- Location: LCCOMB_X36_Y33_N28
\congn|B3|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \congn|B3|co~0_combout\ = (\congn|B2|co~0_combout\ & ((\cxd|H9|n1~combout\) # (\axb|andd\(11) $ (\axb|H6|s1~combout\)))) # (!\congn|B2|co~0_combout\ & (\cxd|H9|n1~combout\ & (\axb|andd\(11) $ (\axb|H6|s1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \axb|andd\(11),
	datab => \axb|H6|s1~combout\,
	datac => \congn|B2|co~0_combout\,
	datad => \cxd|H9|n1~combout\,
	combout => \congn|B3|co~0_combout\);

-- Location: LCCOMB_X36_Y33_N22
\congn|B4|s1\ : cycloneii_lcell_comb
-- Equation(s):
-- \congn|B4|s1~combout\ = \axb|H10|n1~combout\ $ (\axb|H9|n3~combout\ $ (\cxd|H10|s1~combout\ $ (\congn|B3|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \axb|H10|n1~combout\,
	datab => \axb|H9|n3~combout\,
	datac => \cxd|H10|s1~combout\,
	datad => \congn|B3|co~0_combout\,
	combout => \congn|B4|s1~combout\);

-- Location: LCCOMB_X37_Y33_N26
\axb|andd[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|andd\(9) = (\B~combout\(2) & \A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datad => \A~combout\(2),
	combout => \axb|andd\(9));

-- Location: LCCOMB_X37_Y33_N0
\axb|H7|s1\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|H7|s1~combout\ = \axb|H3|co~0_combout\ $ (\axb|H6|co~0_combout\ $ (\axb|andd\(6) $ (\axb|andd\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \axb|H3|co~0_combout\,
	datab => \axb|H6|co~0_combout\,
	datac => \axb|andd\(6),
	datad => \axb|andd\(9),
	combout => \axb|H7|s1~combout\);

-- Location: LCCOMB_X37_Y33_N6
\axb|andd[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|andd\(12) = (\B~combout\(3) & \A~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datac => \A~combout\(1),
	combout => \axb|andd\(12));

-- Location: LCCOMB_X37_Y33_N10
\axb|H10|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|H10|co~0_combout\ = (\axb|H7|s1~combout\ & ((\axb|andd\(12)) # ((\axb|H6|s1~combout\ & \axb|andd\(11))))) # (!\axb|H7|s1~combout\ & (\axb|H6|s1~combout\ & (\axb|andd\(11) & \axb|andd\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \axb|H6|s1~combout\,
	datab => \axb|H7|s1~combout\,
	datac => \axb|andd\(11),
	datad => \axb|andd\(12),
	combout => \axb|H10|co~0_combout\);

-- Location: LCCOMB_X36_Y33_N16
\congn|B4|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \congn|B4|co~0_combout\ = (\cxd|H10|s1~combout\ & ((\congn|B3|co~0_combout\) # (\axb|H10|n1~combout\ $ (\axb|H9|n3~combout\)))) # (!\cxd|H10|s1~combout\ & (\congn|B3|co~0_combout\ & (\axb|H10|n1~combout\ $ (\axb|H9|n3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \axb|H10|n1~combout\,
	datab => \axb|H9|n3~combout\,
	datac => \cxd|H10|s1~combout\,
	datad => \congn|B3|co~0_combout\,
	combout => \congn|B4|co~0_combout\);

-- Location: LCCOMB_X36_Y35_N4
\cxd|andd[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|andd\(13) = (\D~combout\(3) & \C~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\(3),
	datac => \C~combout\(2),
	combout => \cxd|andd\(13));

-- Location: LCCOMB_X35_Y35_N18
\cxd|andd[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|andd\(6) = (\C~combout\(3) & \D~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C~combout\(3),
	datad => \D~combout\(1),
	combout => \cxd|andd\(6));

-- Location: LCCOMB_X36_Y35_N30
\cxd|H7|s1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H7|s1~combout\ = \cxd|H3|co~0_combout\ $ (\cxd|H6|co~0_combout\ $ (\cxd|andd\(6) $ (\cxd|andd\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cxd|H3|co~0_combout\,
	datab => \cxd|H6|co~0_combout\,
	datac => \cxd|andd\(6),
	datad => \cxd|andd\(9),
	combout => \cxd|H7|s1~combout\);

-- Location: LCCOMB_X36_Y35_N10
\cxd|andd[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|andd\(11) = (\C~combout\(0) & \D~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C~combout\(0),
	datad => \D~combout\(3),
	combout => \cxd|andd\(11));

-- Location: LCCOMB_X36_Y35_N8
\cxd|H10|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H10|co~0_combout\ = (\cxd|H7|s1~combout\ & ((\cxd|andd\(12)) # ((\cxd|H6|s1~combout\ & \cxd|andd\(11))))) # (!\cxd|H7|s1~combout\ & (\cxd|H6|s1~combout\ & (\cxd|andd\(12) & \cxd|andd\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cxd|H6|s1~combout\,
	datab => \cxd|H7|s1~combout\,
	datac => \cxd|andd\(12),
	datad => \cxd|andd\(11),
	combout => \cxd|H10|co~0_combout\);

-- Location: LCCOMB_X36_Y35_N2
\cxd|H7|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H7|co~0_combout\ = (\cxd|H6|co~0_combout\ & ((\cxd|andd\(9)) # (\cxd|H3|co~0_combout\ $ (\cxd|andd\(6))))) # (!\cxd|H6|co~0_combout\ & (\cxd|andd\(9) & (\cxd|H3|co~0_combout\ $ (\cxd|andd\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cxd|H3|co~0_combout\,
	datab => \cxd|H6|co~0_combout\,
	datac => \cxd|andd\(6),
	datad => \cxd|andd\(9),
	combout => \cxd|H7|co~0_combout\);

-- Location: LCCOMB_X36_Y35_N28
\cxd|H11|s1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H11|s1~combout\ = \cxd|H8|n1~combout\ $ (\cxd|andd\(13) $ (\cxd|H10|co~0_combout\ $ (\cxd|H7|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cxd|H8|n1~combout\,
	datab => \cxd|andd\(13),
	datac => \cxd|H10|co~0_combout\,
	datad => \cxd|H7|co~0_combout\,
	combout => \cxd|H11|s1~combout\);

-- Location: LCCOMB_X37_Y33_N28
\axb|H7|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|H7|co~0_combout\ = (\axb|H6|co~0_combout\ & ((\axb|andd\(9)) # (\axb|H3|co~0_combout\ $ (\axb|andd\(6))))) # (!\axb|H6|co~0_combout\ & (\axb|andd\(9) & (\axb|H3|co~0_combout\ $ (\axb|andd\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \axb|H3|co~0_combout\,
	datab => \axb|H6|co~0_combout\,
	datac => \axb|andd\(6),
	datad => \axb|andd\(9),
	combout => \axb|H7|co~0_combout\);

-- Location: LCCOMB_X37_Y33_N22
\axb|H8|n1\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|H8|n1~combout\ = (\A~combout\(3) & (\B~combout\(2) $ (((\B~combout\(1) & \axb|H3|co~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(1),
	datac => \axb|H3|co~0_combout\,
	datad => \B~combout\(2),
	combout => \axb|H8|n1~combout\);

-- Location: LCCOMB_X37_Y33_N30
\axb|H11|n1\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|H11|n1~combout\ = \axb|H7|co~0_combout\ $ (\axb|H8|n1~combout\ $ (((\B~combout\(3) & \A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \axb|H7|co~0_combout\,
	datac => \axb|H8|n1~combout\,
	datad => \A~combout\(2),
	combout => \axb|H11|n1~combout\);

-- Location: LCCOMB_X37_Y33_N24
\congn|B5|s1\ : cycloneii_lcell_comb
-- Equation(s):
-- \congn|B5|s1~combout\ = \axb|H10|co~0_combout\ $ (\congn|B4|co~0_combout\ $ (\cxd|H11|s1~combout\ $ (\axb|H11|n1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \axb|H10|co~0_combout\,
	datab => \congn|B4|co~0_combout\,
	datac => \cxd|H11|s1~combout\,
	datad => \axb|H11|n1~combout\,
	combout => \congn|B5|s1~combout\);

-- Location: LCCOMB_X37_Y33_N2
\congn|B5|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \congn|B5|co~0_combout\ = (\congn|B4|co~0_combout\ & ((\cxd|H11|s1~combout\) # (\axb|H10|co~0_combout\ $ (\axb|H11|n1~combout\)))) # (!\congn|B4|co~0_combout\ & (\cxd|H11|s1~combout\ & (\axb|H10|co~0_combout\ $ (\axb|H11|n1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \axb|H10|co~0_combout\,
	datab => \congn|B4|co~0_combout\,
	datac => \cxd|H11|s1~combout\,
	datad => \axb|H11|n1~combout\,
	combout => \congn|B5|co~0_combout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X37_Y33_N14
\axb|andd[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|andd\(10) = (\B~combout\(2) & \A~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datac => \A~combout\(3),
	combout => \axb|andd\(10));

-- Location: LCCOMB_X37_Y33_N16
\axb|H8|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|H8|co~0_combout\ = (\axb|andd\(10) & ((\axb|H7|co~0_combout\) # ((\axb|H3|co~0_combout\ & \axb|andd\(6))))) # (!\axb|andd\(10) & (\axb|H3|co~0_combout\ & (\axb|andd\(6) & \axb|H7|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \axb|H3|co~0_combout\,
	datab => \axb|andd\(10),
	datac => \axb|andd\(6),
	datad => \axb|H7|co~0_combout\,
	combout => \axb|H8|co~0_combout\);

-- Location: LCCOMB_X36_Y33_N26
\axb|H12|n1\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|H12|n1~combout\ = \axb|H8|co~0_combout\ $ (((\B~combout\(3) & \A~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(3),
	datac => \axb|H8|co~0_combout\,
	datad => \A~combout\(3),
	combout => \axb|H12|n1~combout\);

-- Location: LCCOMB_X36_Y35_N14
\cxd|H11|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H11|co~0_combout\ = (\cxd|andd\(13) & ((\cxd|H10|co~0_combout\) # (\cxd|H8|n1~combout\ $ (\cxd|H7|co~0_combout\)))) # (!\cxd|andd\(13) & (\cxd|H10|co~0_combout\ & (\cxd|H8|n1~combout\ $ (\cxd|H7|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cxd|H8|n1~combout\,
	datab => \cxd|andd\(13),
	datac => \cxd|H10|co~0_combout\,
	datad => \cxd|H7|co~0_combout\,
	combout => \cxd|H11|co~0_combout\);

-- Location: LCCOMB_X36_Y35_N24
\cxd|H8|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H8|co~0_combout\ = (\cxd|andd\(10) & ((\cxd|H7|co~0_combout\) # ((\cxd|H3|co~0_combout\ & \cxd|andd\(6))))) # (!\cxd|andd\(10) & (\cxd|H3|co~0_combout\ & (\cxd|andd\(6) & \cxd|H7|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cxd|andd\(10),
	datab => \cxd|H3|co~0_combout\,
	datac => \cxd|andd\(6),
	datad => \cxd|H7|co~0_combout\,
	combout => \cxd|H8|co~0_combout\);

-- Location: LCCOMB_X36_Y35_N26
\cxd|H12|s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H12|s1~0_combout\ = \cxd|H11|co~0_combout\ $ (\cxd|H8|co~0_combout\ $ (((\C~combout\(3) & \D~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~combout\(3),
	datab => \cxd|H11|co~0_combout\,
	datac => \cxd|H8|co~0_combout\,
	datad => \D~combout\(3),
	combout => \cxd|H12|s1~0_combout\);

-- Location: LCCOMB_X37_Y33_N18
\axb|andd[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|andd\(13) = (\B~combout\(3) & \A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datad => \A~combout\(2),
	combout => \axb|andd\(13));

-- Location: LCCOMB_X37_Y33_N20
\axb|H11|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|H11|co~0_combout\ = (\axb|H10|co~0_combout\ & ((\axb|andd\(13)) # (\axb|H8|n1~combout\ $ (\axb|H7|co~0_combout\)))) # (!\axb|H10|co~0_combout\ & (\axb|andd\(13) & (\axb|H8|n1~combout\ $ (\axb|H7|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \axb|H10|co~0_combout\,
	datab => \axb|H8|n1~combout\,
	datac => \axb|andd\(13),
	datad => \axb|H7|co~0_combout\,
	combout => \axb|H11|co~0_combout\);

-- Location: LCCOMB_X36_Y33_N20
\congn|B6|s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \congn|B6|s1~0_combout\ = \congn|B5|co~0_combout\ $ (\axb|H12|n1~combout\ $ (\cxd|H12|s1~0_combout\ $ (\axb|H11|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \congn|B5|co~0_combout\,
	datab => \axb|H12|n1~combout\,
	datac => \cxd|H12|s1~0_combout\,
	datad => \axb|H11|co~0_combout\,
	combout => \congn|B6|s1~0_combout\);

-- Location: LCCOMB_X36_Y33_N6
\congn|B6|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \congn|B6|co~0_combout\ = (\congn|B5|co~0_combout\ & ((\cxd|H12|s1~0_combout\) # (\axb|H12|n1~combout\ $ (\axb|H11|co~0_combout\)))) # (!\congn|B5|co~0_combout\ & (\cxd|H12|s1~0_combout\ & (\axb|H12|n1~combout\ $ (\axb|H11|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \congn|B5|co~0_combout\,
	datab => \axb|H12|n1~combout\,
	datac => \cxd|H12|s1~0_combout\,
	datad => \axb|H11|co~0_combout\,
	combout => \congn|B6|co~0_combout\);

-- Location: LCCOMB_X36_Y33_N0
\axb|H12|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \axb|H12|co~0_combout\ = (\axb|H8|co~0_combout\ & ((\axb|H11|co~0_combout\) # ((\B~combout\(3) & \A~combout\(3))))) # (!\axb|H8|co~0_combout\ & (\axb|H11|co~0_combout\ & (\B~combout\(3) & \A~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \axb|H8|co~0_combout\,
	datab => \axb|H11|co~0_combout\,
	datac => \B~combout\(3),
	datad => \A~combout\(3),
	combout => \axb|H12|co~0_combout\);

-- Location: LCCOMB_X36_Y35_N12
\cxd|H12|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cxd|H12|co~0_combout\ = (\cxd|H11|co~0_combout\ & ((\cxd|H8|co~0_combout\) # ((\C~combout\(3) & \D~combout\(3))))) # (!\cxd|H11|co~0_combout\ & (\C~combout\(3) & (\cxd|H8|co~0_combout\ & \D~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~combout\(3),
	datab => \cxd|H11|co~0_combout\,
	datac => \cxd|H8|co~0_combout\,
	datad => \D~combout\(3),
	combout => \cxd|H12|co~0_combout\);

-- Location: LCCOMB_X36_Y33_N2
\congn|B7|s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \congn|B7|s1~0_combout\ = \congn|B6|co~0_combout\ $ (\axb|H12|co~0_combout\ $ (\cxd|H12|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \congn|B6|co~0_combout\,
	datab => \axb|H12|co~0_combout\,
	datad => \cxd|H12|co~0_combout\,
	combout => \congn|B7|s1~0_combout\);

-- Location: LCCOMB_X36_Y33_N4
\congn|B7|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \congn|B7|co~0_combout\ = (\congn|B6|co~0_combout\ & ((\axb|H12|co~0_combout\) # (\cxd|H12|co~0_combout\))) # (!\congn|B6|co~0_combout\ & (\axb|H12|co~0_combout\ & \cxd|H12|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \congn|B6|co~0_combout\,
	datab => \axb|H12|co~0_combout\,
	datad => \cxd|H12|co~0_combout\,
	combout => \congn|B7|co~0_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[0]~I\ : cycloneii_io
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
	datain => \congn|B0|n3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(0));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[1]~I\ : cycloneii_io
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
	datain => \congn|B1|s1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(1));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[2]~I\ : cycloneii_io
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
	datain => \congn|B2|s1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(2));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[3]~I\ : cycloneii_io
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
	datain => \congn|B3|s1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(3));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[4]~I\ : cycloneii_io
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
	datain => \congn|B4|s1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(4));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[5]~I\ : cycloneii_io
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
	datain => \congn|B5|s1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(5));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[6]~I\ : cycloneii_io
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
	datain => \congn|B6|s1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(6));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[7]~I\ : cycloneii_io
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
	datain => \congn|B7|s1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(7));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[8]~I\ : cycloneii_io
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
	datain => \congn|B7|co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(8));
END structure;


