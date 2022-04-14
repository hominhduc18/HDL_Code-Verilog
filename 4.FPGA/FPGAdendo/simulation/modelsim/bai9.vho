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

-- DATE "11/10/2021 10:25:07"

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

ENTITY 	bai9 IS
    PORT (
	ck : IN std_logic;
	rs : IN std_logic;
	hex : OUT std_logic_vector(6 DOWNTO 0);
	stop : IN std_logic;
	led_do : OUT std_logic;
	led_vang : OUT std_logic;
	led_xanh : OUT std_logic
	);
END bai9;

-- Design Ports Information
-- hex[0]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex[1]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex[2]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex[3]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex[4]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex[5]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex[6]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_do	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_vang	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_xanh	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stop	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ck	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rs	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF bai9 IS
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
SIGNAL ww_hex : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_stop : std_logic;
SIGNAL ww_led_do : std_logic;
SIGNAL ww_led_vang : std_logic;
SIGNAL ww_led_xanh : std_logic;
SIGNAL \ck~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rs~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ck~combout\ : std_logic;
SIGNAL \ck~clkctrl_outclk\ : std_logic;
SIGNAL \stop~combout\ : std_logic;
SIGNAL \rs~combout\ : std_logic;
SIGNAL \rs~clkctrl_outclk\ : std_logic;
SIGNAL \curent.statestop~regout\ : std_logic;
SIGNAL \next.state16~0_combout\ : std_logic;
SIGNAL \curent.state16~regout\ : std_logic;
SIGNAL \next.state17~0_combout\ : std_logic;
SIGNAL \curent.state17~regout\ : std_logic;
SIGNAL \next.state18~0_combout\ : std_logic;
SIGNAL \curent.state18~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \curent.state1~regout\ : std_logic;
SIGNAL \next.state2~0_combout\ : std_logic;
SIGNAL \curent.state2~regout\ : std_logic;
SIGNAL \next.state3~0_combout\ : std_logic;
SIGNAL \curent.state3~regout\ : std_logic;
SIGNAL \next.state4~0_combout\ : std_logic;
SIGNAL \curent.state4~regout\ : std_logic;
SIGNAL \next.state5~0_combout\ : std_logic;
SIGNAL \curent.state5~regout\ : std_logic;
SIGNAL \next.state6~0_combout\ : std_logic;
SIGNAL \curent.state6~regout\ : std_logic;
SIGNAL \next.state7~0_combout\ : std_logic;
SIGNAL \curent.state7~regout\ : std_logic;
SIGNAL \next.state8~0_combout\ : std_logic;
SIGNAL \curent.state8~regout\ : std_logic;
SIGNAL \next.state9~0_combout\ : std_logic;
SIGNAL \curent.state9~regout\ : std_logic;
SIGNAL \next.state10~0_combout\ : std_logic;
SIGNAL \curent.state10~regout\ : std_logic;
SIGNAL \next.state11~0_combout\ : std_logic;
SIGNAL \curent.state11~regout\ : std_logic;
SIGNAL \next.state12~0_combout\ : std_logic;
SIGNAL \curent.state12~regout\ : std_logic;
SIGNAL \next.state13~0_combout\ : std_logic;
SIGNAL \curent.state13~regout\ : std_logic;
SIGNAL \next.state14~0_combout\ : std_logic;
SIGNAL \curent.state14~regout\ : std_logic;
SIGNAL \next.state15~0_combout\ : std_logic;
SIGNAL \curent.state15~regout\ : std_logic;
SIGNAL \WideOr9~combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \WideOr8~combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr7~combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr6~combout\ : std_logic;
SIGNAL \WideOr4~1_combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \WideOr4~2_combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \WideOr3~1_combout\ : std_logic;
SIGNAL \WideOr1~2_combout\ : std_logic;
SIGNAL \WideOr1~3_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \WideOr1~4_combout\ : std_logic;
SIGNAL \WideOr1~5_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~5_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~4_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr3~1_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr4~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr5~combout\ : std_logic;

BEGIN

ww_ck <= ck;
ww_rs <= rs;
hex <= ww_hex;
ww_stop <= stop;
led_do <= ww_led_do;
led_vang <= ww_led_vang;
led_xanh <= ww_led_xanh;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ck~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ck~combout\);

\rs~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rs~combout\);
\ALT_INV_WideOr1~5_combout\ <= NOT \WideOr1~5_combout\;
\ALT_INV_WideOr1~4_combout\ <= NOT \WideOr1~4_combout\;
\ALT_INV_WideOr1~combout\ <= NOT \WideOr1~combout\;
\ALT_INV_WideOr3~1_combout\ <= NOT \WideOr3~1_combout\;
\ALT_INV_WideOr4~combout\ <= NOT \WideOr4~combout\;
\ALT_INV_WideOr5~combout\ <= NOT \WideOr5~combout\;

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
\stop~I\ : cycloneii_io
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
	padio => ww_stop,
	combout => \stop~combout\);

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

-- Location: LCFF_X1_Y35_N1
\curent.statestop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \stop~combout\,
	aclr => \rs~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \curent.statestop~regout\);

-- Location: LCCOMB_X2_Y35_N0
\next.state16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next.state16~0_combout\ = (!\stop~combout\ & \curent.state15~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop~combout\,
	datad => \curent.state15~regout\,
	combout => \next.state16~0_combout\);

-- Location: LCFF_X2_Y35_N1
\curent.state16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next.state16~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \curent.state16~regout\);

-- Location: LCCOMB_X2_Y35_N26
\next.state17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next.state17~0_combout\ = (!\stop~combout\ & \curent.state16~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop~combout\,
	datad => \curent.state16~regout\,
	combout => \next.state17~0_combout\);

-- Location: LCFF_X2_Y35_N27
\curent.state17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next.state17~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \curent.state17~regout\);

-- Location: LCCOMB_X2_Y35_N24
\next.state18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next.state18~0_combout\ = (!\stop~combout\ & \curent.state17~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop~combout\,
	datad => \curent.state17~regout\,
	combout => \next.state18~0_combout\);

-- Location: LCFF_X2_Y35_N25
\curent.state18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next.state18~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \curent.state18~regout\);

-- Location: LCCOMB_X1_Y35_N10
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\stop~combout\) # ((!\curent.statestop~regout\ & !\curent.state18~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \curent.statestop~regout\,
	datac => \stop~combout\,
	datad => \curent.state18~regout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X1_Y35_N11
\curent.state1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \curent.state1~regout\);

-- Location: LCCOMB_X1_Y35_N2
\next.state2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next.state2~0_combout\ = (!\stop~combout\ & !\curent.state1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop~combout\,
	datad => \curent.state1~regout\,
	combout => \next.state2~0_combout\);

-- Location: LCFF_X1_Y35_N3
\curent.state2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next.state2~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \curent.state2~regout\);

-- Location: LCCOMB_X1_Y35_N30
\next.state3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next.state3~0_combout\ = (!\stop~combout\ & \curent.state2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop~combout\,
	datad => \curent.state2~regout\,
	combout => \next.state3~0_combout\);

-- Location: LCFF_X1_Y35_N31
\curent.state3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next.state3~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \curent.state3~regout\);

-- Location: LCCOMB_X1_Y35_N14
\next.state4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next.state4~0_combout\ = (!\stop~combout\ & \curent.state3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop~combout\,
	datad => \curent.state3~regout\,
	combout => \next.state4~0_combout\);

-- Location: LCFF_X1_Y35_N15
\curent.state4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next.state4~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \curent.state4~regout\);

-- Location: LCCOMB_X2_Y35_N22
\next.state5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next.state5~0_combout\ = (!\stop~combout\ & \curent.state4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop~combout\,
	datad => \curent.state4~regout\,
	combout => \next.state5~0_combout\);

-- Location: LCFF_X2_Y35_N23
\curent.state5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next.state5~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \curent.state5~regout\);

-- Location: LCCOMB_X2_Y35_N18
\next.state6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next.state6~0_combout\ = (!\stop~combout\ & \curent.state5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop~combout\,
	datad => \curent.state5~regout\,
	combout => \next.state6~0_combout\);

-- Location: LCFF_X2_Y35_N19
\curent.state6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next.state6~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \curent.state6~regout\);

-- Location: LCCOMB_X2_Y35_N2
\next.state7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next.state7~0_combout\ = (!\stop~combout\ & \curent.state6~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop~combout\,
	datad => \curent.state6~regout\,
	combout => \next.state7~0_combout\);

-- Location: LCFF_X2_Y35_N3
\curent.state7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next.state7~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \curent.state7~regout\);

-- Location: LCCOMB_X2_Y35_N28
\next.state8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next.state8~0_combout\ = (!\stop~combout\ & \curent.state7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop~combout\,
	datad => \curent.state7~regout\,
	combout => \next.state8~0_combout\);

-- Location: LCFF_X2_Y35_N29
\curent.state8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next.state8~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \curent.state8~regout\);

-- Location: LCCOMB_X2_Y35_N4
\next.state9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next.state9~0_combout\ = (!\stop~combout\ & \curent.state8~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop~combout\,
	datad => \curent.state8~regout\,
	combout => \next.state9~0_combout\);

-- Location: LCFF_X2_Y35_N5
\curent.state9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next.state9~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \curent.state9~regout\);

-- Location: LCCOMB_X1_Y35_N24
\next.state10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next.state10~0_combout\ = (!\stop~combout\ & \curent.state9~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop~combout\,
	datad => \curent.state9~regout\,
	combout => \next.state10~0_combout\);

-- Location: LCFF_X1_Y35_N25
\curent.state10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next.state10~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \curent.state10~regout\);

-- Location: LCCOMB_X1_Y35_N26
\next.state11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next.state11~0_combout\ = (!\stop~combout\ & \curent.state10~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~combout\,
	datac => \curent.state10~regout\,
	combout => \next.state11~0_combout\);

-- Location: LCFF_X1_Y35_N27
\curent.state11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next.state11~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \curent.state11~regout\);

-- Location: LCCOMB_X1_Y35_N4
\next.state12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next.state12~0_combout\ = (!\stop~combout\ & \curent.state11~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop~combout\,
	datad => \curent.state11~regout\,
	combout => \next.state12~0_combout\);

-- Location: LCFF_X1_Y35_N5
\curent.state12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next.state12~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \curent.state12~regout\);

-- Location: LCCOMB_X1_Y35_N28
\next.state13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next.state13~0_combout\ = (!\stop~combout\ & \curent.state12~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~combout\,
	datac => \curent.state12~regout\,
	combout => \next.state13~0_combout\);

-- Location: LCFF_X1_Y35_N29
\curent.state13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next.state13~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \curent.state13~regout\);

-- Location: LCCOMB_X1_Y35_N12
\next.state14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next.state14~0_combout\ = (!\stop~combout\ & \curent.state13~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop~combout\,
	datad => \curent.state13~regout\,
	combout => \next.state14~0_combout\);

-- Location: LCFF_X1_Y35_N13
\curent.state14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next.state14~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \curent.state14~regout\);

-- Location: LCCOMB_X1_Y35_N16
\next.state15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next.state15~0_combout\ = (!\stop~combout\ & \curent.state14~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop~combout\,
	datad => \curent.state14~regout\,
	combout => \next.state15~0_combout\);

-- Location: LCFF_X1_Y35_N17
\curent.state15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \next.state15~0_combout\,
	aclr => \rs~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \curent.state15~regout\);

-- Location: LCCOMB_X2_Y35_N16
WideOr9 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr9~combout\ = (\curent.statestop~regout\) # ((\curent.state15~regout\) # (\curent.state4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curent.statestop~regout\,
	datac => \curent.state15~regout\,
	datad => \curent.state4~regout\,
	combout => \WideOr9~combout\);

-- Location: LCCOMB_X1_Y35_N18
\WideOr8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (\curent.state14~regout\) # ((\curent.state2~regout\) # ((\curent.state13~regout\) # (\curent.state3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curent.state14~regout\,
	datab => \curent.state2~regout\,
	datac => \curent.state13~regout\,
	datad => \curent.state3~regout\,
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X1_Y35_N0
WideOr8 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr8~combout\ = (\curent.statestop~regout\) # (\WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \curent.statestop~regout\,
	datad => \WideOr8~0_combout\,
	combout => \WideOr8~combout\);

-- Location: LCCOMB_X2_Y35_N30
\WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (!\curent.state18~regout\ & (!\curent.state9~regout\ & (!\curent.statestop~regout\ & !\curent.state7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curent.state18~regout\,
	datab => \curent.state9~regout\,
	datac => \curent.statestop~regout\,
	datad => \curent.state7~regout\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X2_Y35_N12
WideOr7 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr7~combout\ = (\curent.state8~regout\) # ((\curent.state17~regout\) # ((\curent.state6~regout\) # (!\WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curent.state8~regout\,
	datab => \curent.state17~regout\,
	datac => \WideOr3~0_combout\,
	datad => \curent.state6~regout\,
	combout => \WideOr7~combout\);

-- Location: LCCOMB_X2_Y35_N10
\WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (!\curent.state15~regout\ & !\curent.state4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \curent.state15~regout\,
	datad => \curent.state4~regout\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y35_N20
WideOr6 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr6~combout\ = (((\curent.state12~regout\) # (!\WideOr3~0_combout\)) # (!\WideOr4~0_combout\)) # (!\curent.state1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curent.state1~regout\,
	datab => \WideOr4~0_combout\,
	datac => \curent.state12~regout\,
	datad => \WideOr3~0_combout\,
	combout => \WideOr6~combout\);

-- Location: LCCOMB_X2_Y35_N8
\WideOr4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~1_combout\ = (!\curent.state2~regout\ & (!\curent.state11~regout\ & !\curent.state13~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curent.state2~regout\,
	datab => \curent.state11~regout\,
	datad => \curent.state13~regout\,
	combout => \WideOr4~1_combout\);

-- Location: LCCOMB_X2_Y35_N14
WideOr5 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = (\curent.state8~regout\) # ((\curent.state17~regout\) # ((\curent.state6~regout\) # (!\WideOr4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curent.state8~regout\,
	datab => \curent.state17~regout\,
	datac => \WideOr4~1_combout\,
	datad => \curent.state6~regout\,
	combout => \WideOr5~combout\);

-- Location: LCCOMB_X1_Y35_N22
\WideOr4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~2_combout\ = (\curent.state13~regout\) # ((\curent.state11~regout\) # ((\curent.state10~regout\) # (\curent.state2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curent.state13~regout\,
	datab => \curent.state11~regout\,
	datac => \curent.state10~regout\,
	datad => \curent.state2~regout\,
	combout => \WideOr4~2_combout\);

-- Location: LCCOMB_X1_Y35_N8
WideOr4 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (\curent.state14~regout\) # ((\WideOr4~2_combout\) # ((\curent.state3~regout\) # (!\WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curent.state14~regout\,
	datab => \WideOr4~2_combout\,
	datac => \WideOr4~0_combout\,
	datad => \curent.state3~regout\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X1_Y35_N6
\WideOr3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~1_combout\ = (\curent.state1~regout\ & (!\curent.state12~regout\ & \WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curent.state1~regout\,
	datac => \curent.state12~regout\,
	datad => \WideOr3~0_combout\,
	combout => \WideOr3~1_combout\);

-- Location: LCCOMB_X2_Y35_N20
\WideOr1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~2_combout\ = (!\curent.state2~regout\ & (!\curent.state4~regout\ & (!\curent.state3~regout\ & \curent.state1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curent.state2~regout\,
	datab => \curent.state4~regout\,
	datac => \curent.state3~regout\,
	datad => \curent.state1~regout\,
	combout => \WideOr1~2_combout\);

-- Location: LCCOMB_X3_Y35_N12
\WideOr1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~3_combout\ = (!\curent.state7~regout\ & (!\curent.state5~regout\ & !\curent.state6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curent.state7~regout\,
	datab => \curent.state5~regout\,
	datad => \curent.state6~regout\,
	combout => \WideOr1~3_combout\);

-- Location: LCCOMB_X3_Y35_N2
WideOr1 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = ((\curent.state8~regout\) # ((\curent.state9~regout\) # (!\WideOr1~3_combout\))) # (!\WideOr1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~2_combout\,
	datab => \curent.state8~regout\,
	datac => \curent.state9~regout\,
	datad => \WideOr1~3_combout\,
	combout => \WideOr1~combout\);

-- Location: LCCOMB_X3_Y35_N0
\WideOr1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~4_combout\ = (!\curent.state9~regout\ & !\curent.state8~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \curent.state9~regout\,
	datad => \curent.state8~regout\,
	combout => \WideOr1~4_combout\);

-- Location: LCCOMB_X3_Y35_N22
\WideOr1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~5_combout\ = (!\curent.state7~regout\ & (!\curent.state5~regout\ & (\WideOr1~2_combout\ & !\curent.state6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curent.state7~regout\,
	datab => \curent.state5~regout\,
	datac => \WideOr1~2_combout\,
	datad => \curent.state6~regout\,
	combout => \WideOr1~5_combout\);

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex[0]~I\ : cycloneii_io
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
	datain => \WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex(0));

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex[1]~I\ : cycloneii_io
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
	datain => \WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex(1));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex[2]~I\ : cycloneii_io
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
	datain => \WideOr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex(2));

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex[3]~I\ : cycloneii_io
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
	padio => ww_hex(3));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex[4]~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex(4));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex[5]~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex(5));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex[6]~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex(6));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_do~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_do);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_vang~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_vang);

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_xanh~I\ : cycloneii_io
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
	datain => \ALT_INV_WideOr1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_xanh);
END structure;


