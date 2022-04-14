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

-- DATE "11/17/2021 10:41:42"

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

ENTITY 	bai2 IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	Cs : IN std_logic;
	We : IN std_logic;
	CLk : IN std_logic;
	dataOUT : OUT std_logic_vector(4 DOWNTO 0)
	);
END bai2;

-- Design Ports Information
-- dataOUT[0]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dataOUT[1]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dataOUT[2]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dataOUT[3]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dataOUT[4]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Cs	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- We	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF bai2 IS
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
SIGNAL ww_Cs : std_logic;
SIGNAL ww_We : std_logic;
SIGNAL ww_CLk : std_logic;
SIGNAL ww_dataOUT : std_logic_vector(4 DOWNTO 0);
SIGNAL \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \We~combout\ : std_logic;
SIGNAL \Cs~combout\ : std_logic;
SIGNAL \H2|SRAM~0_combout\ : std_logic;
SIGNAL \CLk~combout\ : std_logic;
SIGNAL \CLk~clkctrl_outclk\ : std_logic;
SIGNAL \H1|datain[0]~0_combout\ : std_logic;
SIGNAL \H1|datain[0]~1\ : std_logic;
SIGNAL \H1|datain[1]~2_combout\ : std_logic;
SIGNAL \H1|datain[1]~3\ : std_logic;
SIGNAL \H1|datain[2]~4_combout\ : std_logic;
SIGNAL \H1|datain[2]~5\ : std_logic;
SIGNAL \H1|datain[3]~6_combout\ : std_logic;
SIGNAL \H1|datain[3]~7\ : std_logic;
SIGNAL \H1|datain[4]~8_combout\ : std_logic;
SIGNAL \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0~portadataout\ : std_logic;
SIGNAL \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a1\ : std_logic;
SIGNAL \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a2\ : std_logic;
SIGNAL \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a3\ : std_logic;
SIGNAL \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a4\ : std_logic;
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_We~combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_Cs <= Cs;
ww_We <= We;
ww_CLk <= CLk;
dataOUT <= ww_dataOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc & vcc);

\H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ <= (\H1|datain[4]~8_combout\ & \H1|datain[3]~6_combout\ & \H1|datain[2]~4_combout\ & \H1|datain[1]~2_combout\ & \H1|datain[0]~0_combout\);

\H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ <= (\a~combout\(3) & \a~combout\(2) & \a~combout\(1) & \a~combout\(0) & \b~combout\(3) & \b~combout\(2) & \b~combout\(1) & \b~combout\(0));

\H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ <= (\a~combout\(3) & \a~combout\(2) & \a~combout\(1) & \a~combout\(0) & \b~combout\(3) & \b~combout\(2) & \b~combout\(1) & \b~combout\(0));

\H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0~portadataout\ <= \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(0);
\H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a1\ <= \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(1);
\H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a2\ <= \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(2);
\H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a3\ <= \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(3);
\H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a4\ <= \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(4);

\CLk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLk~combout\);
\ALT_INV_We~combout\ <= NOT \We~combout\;

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\We~I\ : cycloneii_io
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
	padio => ww_We,
	combout => \We~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Cs~I\ : cycloneii_io
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
	padio => ww_Cs,
	combout => \Cs~combout\);

-- Location: LCCOMB_X31_Y25_N16
\H2|SRAM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|SRAM~0_combout\ = (\We~combout\ & \Cs~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \We~combout\,
	datac => \Cs~combout\,
	combout => \H2|SRAM~0_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLk~I\ : cycloneii_io
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
	padio => ww_CLk,
	combout => \CLk~combout\);

-- Location: CLKCTRL_G3
\CLk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLk~clkctrl_outclk\);

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X9_Y16_N6
\H1|datain[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|datain[0]~0_combout\ = (\a~combout\(0) & (\b~combout\(0) $ (VCC))) # (!\a~combout\(0) & (\b~combout\(0) & VCC))
-- \H1|datain[0]~1\ = CARRY((\a~combout\(0) & \b~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datad => VCC,
	combout => \H1|datain[0]~0_combout\,
	cout => \H1|datain[0]~1\);

-- Location: LCCOMB_X9_Y16_N8
\H1|datain[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|datain[1]~2_combout\ = (\b~combout\(1) & ((\a~combout\(1) & (\H1|datain[0]~1\ & VCC)) # (!\a~combout\(1) & (!\H1|datain[0]~1\)))) # (!\b~combout\(1) & ((\a~combout\(1) & (!\H1|datain[0]~1\)) # (!\a~combout\(1) & ((\H1|datain[0]~1\) # (GND)))))
-- \H1|datain[1]~3\ = CARRY((\b~combout\(1) & (!\a~combout\(1) & !\H1|datain[0]~1\)) # (!\b~combout\(1) & ((!\H1|datain[0]~1\) # (!\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(1),
	datad => VCC,
	cin => \H1|datain[0]~1\,
	combout => \H1|datain[1]~2_combout\,
	cout => \H1|datain[1]~3\);

-- Location: LCCOMB_X9_Y16_N10
\H1|datain[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|datain[2]~4_combout\ = ((\a~combout\(2) $ (\b~combout\(2) $ (!\H1|datain[1]~3\)))) # (GND)
-- \H1|datain[2]~5\ = CARRY((\a~combout\(2) & ((\b~combout\(2)) # (!\H1|datain[1]~3\))) # (!\a~combout\(2) & (\b~combout\(2) & !\H1|datain[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \b~combout\(2),
	datad => VCC,
	cin => \H1|datain[1]~3\,
	combout => \H1|datain[2]~4_combout\,
	cout => \H1|datain[2]~5\);

-- Location: LCCOMB_X9_Y16_N12
\H1|datain[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|datain[3]~6_combout\ = (\a~combout\(3) & ((\b~combout\(3) & (\H1|datain[2]~5\ & VCC)) # (!\b~combout\(3) & (!\H1|datain[2]~5\)))) # (!\a~combout\(3) & ((\b~combout\(3) & (!\H1|datain[2]~5\)) # (!\b~combout\(3) & ((\H1|datain[2]~5\) # (GND)))))
-- \H1|datain[3]~7\ = CARRY((\a~combout\(3) & (!\b~combout\(3) & !\H1|datain[2]~5\)) # (!\a~combout\(3) & ((!\H1|datain[2]~5\) # (!\b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \b~combout\(3),
	datad => VCC,
	cin => \H1|datain[2]~5\,
	combout => \H1|datain[3]~6_combout\,
	cout => \H1|datain[3]~7\);

-- Location: LCCOMB_X9_Y16_N14
\H1|datain[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|datain[4]~8_combout\ = !\H1|datain[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \H1|datain[3]~7\,
	combout => \H1|datain[4]~8_combout\);

-- Location: M4K_X13_Y16
\H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram:H2|altsyncram:SRAM_rtl_0|altsyncram_8ld1:auto_generated|altsyncram_a8h1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 5,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 5,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 5,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 5,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \H2|SRAM~0_combout\,
	clk0 => \CLk~clkctrl_outclk\,
	clk1 => \CLk~clkctrl_outclk\,
	ena0 => \ALT_INV_We~combout\,
	ena1 => \H2|SRAM~0_combout\,
	portadatain => \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\,
	portbdatain => \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\,
	portaaddr => \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\,
	portbaddr => \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\);

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dataOUT[0]~I\ : cycloneii_io
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
	datain => \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a0~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dataOUT(0));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dataOUT[1]~I\ : cycloneii_io
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
	datain => \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dataOUT(1));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dataOUT[2]~I\ : cycloneii_io
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
	datain => \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dataOUT(2));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dataOUT[3]~I\ : cycloneii_io
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
	datain => \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dataOUT(3));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dataOUT[4]~I\ : cycloneii_io
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
	datain => \H2|SRAM_rtl_0|auto_generated|altsyncram1|ram_block2a4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dataOUT(4));
END structure;


