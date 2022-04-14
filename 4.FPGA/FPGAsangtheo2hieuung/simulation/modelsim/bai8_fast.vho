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

-- DATE "11/10/2021 07:58:28"

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

ENTITY 	bai8 IS
    PORT (
	ck : IN std_logic;
	rs : IN std_logic;
	s : IN std_logic;
	led : OUT std_logic_vector(7 DOWNTO 0)
	);
END bai8;

-- Design Ports Information
-- led[0]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[1]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[2]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[3]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[4]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[5]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[6]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[7]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ck	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rs	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF bai8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ck : std_logic;
SIGNAL ww_rs : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_led : std_logic_vector(7 DOWNTO 0);
SIGNAL \ck~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rs~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ck~combout\ : std_logic;
SIGNAL \ck~clkctrl_outclk\ : std_logic;
SIGNAL \s~combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \next_state.s6~0_combout\ : std_logic;
SIGNAL \rs~combout\ : std_logic;
SIGNAL \rs~clkctrl_outclk\ : std_logic;
SIGNAL \current_state.s6~regout\ : std_logic;
SIGNAL \next_state.s7~0_combout\ : std_logic;
SIGNAL \current_state.s7~regout\ : std_logic;
SIGNAL \next_state.s1~0_combout\ : std_logic;
SIGNAL \current_state.s1~regout\ : std_logic;
SIGNAL \next_state.s2~0_combout\ : std_logic;
SIGNAL \current_state.s2~regout\ : std_logic;
SIGNAL \next_state.s3~0_combout\ : std_logic;
SIGNAL \current_state.s3~regout\ : std_logic;
SIGNAL \next_state.s4~0_combout\ : std_logic;
SIGNAL \current_state.s4~regout\ : std_logic;
SIGNAL \next_state.s5~0_combout\ : std_logic;
SIGNAL \current_state.s5~regout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \current_state.s0~regout\ : std_logic;
SIGNAL \next_state.s9~0_combout\ : std_logic;
SIGNAL \current_state.s9~regout\ : std_logic;
SIGNAL \next_state.s10~0_combout\ : std_logic;
SIGNAL \current_state.s10~regout\ : std_logic;
SIGNAL \next_state.s11~0_combout\ : std_logic;
SIGNAL \current_state.s11~regout\ : std_logic;
SIGNAL \next_state.s12~0_combout\ : std_logic;
SIGNAL \current_state.s12~regout\ : std_logic;
SIGNAL \next_state.s13~0_combout\ : std_logic;
SIGNAL \current_state.s13~regout\ : std_logic;
SIGNAL \next_state.s14~0_combout\ : std_logic;
SIGNAL \current_state.s14~regout\ : std_logic;
SIGNAL \next_state.s15~0_combout\ : std_logic;
SIGNAL \current_state.s15~regout\ : std_logic;
SIGNAL \next_state.s16~0_combout\ : std_logic;
SIGNAL \current_state.s16~regout\ : std_logic;
SIGNAL \next_state.s8~0_combout\ : std_logic;
SIGNAL \current_state.s8~regout\ : std_logic;
SIGNAL \led~0_combout\ : std_logic;
SIGNAL \WideOr6~combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \ALT_INV_led~0_combout\ : std_logic;

BEGIN

ww_ck <= ck;
ww_rs <= rs;
ww_s <= s;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ck~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ck~combout\);

\rs~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rs~combout\);
\ALT_INV_WideOr0~combout\ <= NOT \WideOr0~combout\;
\ALT_INV_led~0_combout\ <= NOT \led~0_combout\;

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ck~I\ : cycloneii_io
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
	padio => ww_ck,
	combout => \ck~combout\);

-- Location: CLKCTRL_G3
\ck~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ck~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ck~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s~I\ : cycloneii_io
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
	padio => ww_s,
	combout => \s~combout\);

-- Location: LCCOMB_X35_Y35_N24
\WideOr0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (!\current_state.s14~regout\ & !\current_state.s15~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s14~regout\,
	datad => \current_state.s15~regout\,
	combout => \WideOr0~1_combout\);

-- Location: LCCOMB_X36_Y35_N6
\WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (!\current_state.s13~regout\ & (!\current_state.s11~regout\ & (!\current_state.s12~regout\ & !\current_state.s10~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s13~regout\,
	datab => \current_state.s11~regout\,
	datac => \current_state.s12~regout\,
	datad => \current_state.s10~regout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X35_Y35_N16
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\s~combout\ & ((\current_state.s9~regout\) # ((!\WideOr0~0_combout\) # (!\WideOr0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\,
	datab => \current_state.s9~regout\,
	datac => \WideOr0~1_combout\,
	datad => \WideOr0~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X35_Y35_N6
\next_state.s6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.s6~0_combout\ = (\current_state.s5~regout\ & \s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s5~regout\,
	datac => \s~combout\,
	combout => \next_state.s6~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rs~I\ : cycloneii_io
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
	padio => ww_rs,
	combout => \rs~combout\);

-- Location: CLKCTRL_G1
\rs~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rs~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rs~clkctrl_outclk\);

-- Location: LCFF_X35_Y35_N7
\current_state.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next_state.s6~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.s6~regout\);

-- Location: LCCOMB_X35_Y35_N28
\next_state.s7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.s7~0_combout\ = (\s~combout\ & \current_state.s6~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s~combout\,
	datad => \current_state.s6~regout\,
	combout => \next_state.s7~0_combout\);

-- Location: LCFF_X35_Y35_N29
\current_state.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next_state.s7~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.s7~regout\);

-- Location: LCCOMB_X36_Y35_N4
\next_state.s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.s1~0_combout\ = (\s~combout\ & !\current_state.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~combout\,
	datad => \current_state.s0~regout\,
	combout => \next_state.s1~0_combout\);

-- Location: LCFF_X36_Y35_N5
\current_state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next_state.s1~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.s1~regout\);

-- Location: LCCOMB_X36_Y35_N14
\next_state.s2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.s2~0_combout\ = (\current_state.s1~regout\ & \s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.s1~regout\,
	datad => \s~combout\,
	combout => \next_state.s2~0_combout\);

-- Location: LCFF_X36_Y35_N15
\current_state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next_state.s2~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.s2~regout\);

-- Location: LCCOMB_X36_Y35_N10
\next_state.s3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.s3~0_combout\ = (\s~combout\ & \current_state.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~combout\,
	datad => \current_state.s2~regout\,
	combout => \next_state.s3~0_combout\);

-- Location: LCFF_X36_Y35_N11
\current_state.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next_state.s3~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.s3~regout\);

-- Location: LCCOMB_X36_Y35_N0
\next_state.s4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.s4~0_combout\ = (\s~combout\ & \current_state.s3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~combout\,
	datac => \current_state.s3~regout\,
	combout => \next_state.s4~0_combout\);

-- Location: LCFF_X36_Y35_N1
\current_state.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next_state.s4~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.s4~regout\);

-- Location: LCCOMB_X36_Y35_N26
\next_state.s5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.s5~0_combout\ = (\s~combout\ & \current_state.s4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~combout\,
	datac => \current_state.s4~regout\,
	combout => \next_state.s5~0_combout\);

-- Location: LCFF_X36_Y35_N27
\current_state.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next_state.s5~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.s5~regout\);

-- Location: LCCOMB_X36_Y35_N30
\Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\current_state.s2~regout\) # ((\current_state.s4~regout\) # ((\current_state.s1~regout\) # (\current_state.s3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s2~regout\,
	datab => \current_state.s4~regout\,
	datac => \current_state.s1~regout\,
	datad => \current_state.s3~regout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X35_Y35_N30
\Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\current_state.s6~regout\) # ((\current_state.s7~regout\) # ((\current_state.s5~regout\) # (\Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s6~regout\,
	datab => \current_state.s7~regout\,
	datac => \current_state.s5~regout\,
	datad => \Selector0~1_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X35_Y35_N14
\Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\led~0_combout\ & (!\Selector0~0_combout\ & ((\s~combout\) # (!\Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~combout\,
	datab => \led~0_combout\,
	datac => \Selector0~0_combout\,
	datad => \Selector0~2_combout\,
	combout => \Selector0~3_combout\);

-- Location: LCFF_X35_Y35_N15
\current_state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \Selector0~3_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.s0~regout\);

-- Location: LCCOMB_X35_Y35_N26
\next_state.s9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.s9~0_combout\ = (!\current_state.s0~regout\ & !\s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.s0~regout\,
	datac => \s~combout\,
	combout => \next_state.s9~0_combout\);

-- Location: LCFF_X35_Y35_N27
\current_state.s9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next_state.s9~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.s9~regout\);

-- Location: LCCOMB_X36_Y35_N12
\next_state.s10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.s10~0_combout\ = (!\s~combout\ & \current_state.s9~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~combout\,
	datad => \current_state.s9~regout\,
	combout => \next_state.s10~0_combout\);

-- Location: LCFF_X36_Y35_N13
\current_state.s10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next_state.s10~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.s10~regout\);

-- Location: LCCOMB_X36_Y35_N28
\next_state.s11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.s11~0_combout\ = (\current_state.s10~regout\ & !\s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.s10~regout\,
	datad => \s~combout\,
	combout => \next_state.s11~0_combout\);

-- Location: LCFF_X36_Y35_N29
\current_state.s11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next_state.s11~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.s11~regout\);

-- Location: LCCOMB_X36_Y35_N22
\next_state.s12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.s12~0_combout\ = (\current_state.s11~regout\ & !\s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.s11~regout\,
	datad => \s~combout\,
	combout => \next_state.s12~0_combout\);

-- Location: LCFF_X36_Y35_N23
\current_state.s12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next_state.s12~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.s12~regout\);

-- Location: LCCOMB_X36_Y35_N20
\next_state.s13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.s13~0_combout\ = (!\s~combout\ & \current_state.s12~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~combout\,
	datad => \current_state.s12~regout\,
	combout => \next_state.s13~0_combout\);

-- Location: LCFF_X36_Y35_N21
\current_state.s13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next_state.s13~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.s13~regout\);

-- Location: LCCOMB_X35_Y35_N12
\next_state.s14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.s14~0_combout\ = (!\s~combout\ & \current_state.s13~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s~combout\,
	datad => \current_state.s13~regout\,
	combout => \next_state.s14~0_combout\);

-- Location: LCFF_X35_Y35_N13
\current_state.s14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next_state.s14~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.s14~regout\);

-- Location: LCCOMB_X35_Y35_N18
\next_state.s15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.s15~0_combout\ = (!\s~combout\ & \current_state.s14~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s~combout\,
	datad => \current_state.s14~regout\,
	combout => \next_state.s15~0_combout\);

-- Location: LCFF_X35_Y35_N19
\current_state.s15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next_state.s15~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.s15~regout\);

-- Location: LCCOMB_X35_Y35_N8
\next_state.s16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.s16~0_combout\ = (!\s~combout\ & \current_state.s15~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s~combout\,
	datad => \current_state.s15~regout\,
	combout => \next_state.s16~0_combout\);

-- Location: LCFF_X35_Y35_N9
\current_state.s16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next_state.s16~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.s16~regout\);

-- Location: LCCOMB_X35_Y35_N22
\next_state.s8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.s8~0_combout\ = (\s~combout\ & \current_state.s7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s~combout\,
	datad => \current_state.s7~regout\,
	combout => \next_state.s8~0_combout\);

-- Location: LCFF_X35_Y35_N23
\current_state.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next_state.s8~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.s8~regout\);

-- Location: LCCOMB_X35_Y35_N4
\led~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led~0_combout\ = (!\current_state.s16~regout\ & !\current_state.s8~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.s16~regout\,
	datad => \current_state.s8~regout\,
	combout => \led~0_combout\);

-- Location: LCCOMB_X35_Y35_N10
WideOr6 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr6~combout\ = (\current_state.s7~regout\) # ((\current_state.s15~regout\) # (\current_state.s8~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.s7~regout\,
	datac => \current_state.s15~regout\,
	datad => \current_state.s8~regout\,
	combout => \WideOr6~combout\);

-- Location: LCCOMB_X35_Y35_N20
WideOr5 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = (\current_state.s6~regout\) # ((\current_state.s8~regout\) # ((\current_state.s14~regout\) # (\current_state.s7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s6~regout\,
	datab => \current_state.s8~regout\,
	datac => \current_state.s14~regout\,
	datad => \current_state.s7~regout\,
	combout => \WideOr5~combout\);

-- Location: LCCOMB_X35_Y35_N2
\WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (!\current_state.s6~regout\ & (!\current_state.s7~regout\ & (!\current_state.s5~regout\ & !\current_state.s8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s6~regout\,
	datab => \current_state.s7~regout\,
	datac => \current_state.s5~regout\,
	datad => \current_state.s8~regout\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X36_Y35_N24
WideOr4 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (\current_state.s13~regout\) # (!\WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.s13~regout\,
	datad => \WideOr1~0_combout\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X36_Y35_N2
WideOr3 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = (\current_state.s12~regout\) # ((\current_state.s4~regout\) # (!\WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.s12~regout\,
	datac => \current_state.s4~regout\,
	datad => \WideOr1~0_combout\,
	combout => \WideOr3~combout\);

-- Location: LCCOMB_X36_Y35_N8
WideOr2 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\current_state.s4~regout\) # ((\current_state.s11~regout\) # ((\current_state.s3~regout\) # (!\WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s4~regout\,
	datab => \current_state.s11~regout\,
	datac => \current_state.s3~regout\,
	datad => \WideOr1~0_combout\,
	combout => \WideOr2~combout\);

-- Location: LCCOMB_X36_Y35_N18
\WideOr1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~1_combout\ = (\current_state.s10~regout\) # (\current_state.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.s10~regout\,
	datad => \current_state.s2~regout\,
	combout => \WideOr1~1_combout\);

-- Location: LCCOMB_X36_Y35_N16
WideOr1 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = ((\WideOr1~1_combout\) # ((\current_state.s4~regout\) # (\current_state.s3~regout\))) # (!\WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => \WideOr1~1_combout\,
	datac => \current_state.s4~regout\,
	datad => \current_state.s3~regout\,
	combout => \WideOr1~combout\);

-- Location: LCCOMB_X35_Y35_N0
WideOr0 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = ((\current_state.s16~regout\) # ((!\WideOr0~0_combout\) # (!\current_state.s0~regout\))) # (!\WideOr0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~1_combout\,
	datab => \current_state.s16~regout\,
	datac => \current_state.s0~regout\,
	datad => \WideOr0~0_combout\,
	combout => \WideOr0~combout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[0]~I\ : cycloneii_io
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
	datain => \ALT_INV_led~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(0));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[1]~I\ : cycloneii_io
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
	datain => \WideOr6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(1));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[2]~I\ : cycloneii_io
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
	datain => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(2));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[3]~I\ : cycloneii_io
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
	datain => \WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(3));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[4]~I\ : cycloneii_io
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
	datain => \WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(4));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[5]~I\ : cycloneii_io
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
	datain => \WideOr2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(5));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[6]~I\ : cycloneii_io
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
	datain => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(6));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[7]~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(7));
END structure;


