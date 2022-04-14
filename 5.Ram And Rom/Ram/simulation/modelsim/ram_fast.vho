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

-- DATE "11/17/2021 06:45:33"

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

ENTITY 	ram IS
    PORT (
	dataIn : IN std_logic_vector(7 DOWNTO 0);
	dataOut : OUT std_logic_vector(7 DOWNTO 0);
	Addr : IN std_logic_vector(2 DOWNTO 0);
	CS : IN std_logic;
	WE : IN std_logic;
	Clk : IN std_logic
	);
END ram;

-- Design Ports Information
-- dataOut[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dataOut[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dataOut[2]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dataOut[3]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dataOut[4]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dataOut[5]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dataOut[6]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dataOut[7]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Addr[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Addr[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Addr[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WE	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dataIn[0]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CS	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dataIn[1]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dataIn[2]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dataIn[3]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dataIn[4]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dataIn[5]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dataIn[6]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dataIn[7]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ram IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dataIn : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dataOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Addr : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CS : std_logic;
SIGNAL ww_WE : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL \Clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SRAM~41_regout\ : std_logic;
SIGNAL \SRAM~42_regout\ : std_logic;
SIGNAL \SRAM~27_regout\ : std_logic;
SIGNAL \SRAM~28_regout\ : std_logic;
SIGNAL \SRAM~41feeder_combout\ : std_logic;
SIGNAL \SRAM~42feeder_combout\ : std_logic;
SIGNAL \SRAM~28feeder_combout\ : std_logic;
SIGNAL \Clk~combout\ : std_logic;
SIGNAL \Clk~clkctrl_outclk\ : std_logic;
SIGNAL \CS~combout\ : std_logic;
SIGNAL \WE~combout\ : std_logic;
SIGNAL \SRAM~106_combout\ : std_logic;
SIGNAL \SRAM~110_combout\ : std_logic;
SIGNAL \SRAM~16_regout\ : std_logic;
SIGNAL \SRAM~104_combout\ : std_logic;
SIGNAL \SRAM~113_combout\ : std_logic;
SIGNAL \SRAM~24_regout\ : std_logic;
SIGNAL \SRAM~112_combout\ : std_logic;
SIGNAL \SRAM~0_regout\ : std_logic;
SIGNAL \SRAM~111_combout\ : std_logic;
SIGNAL \SRAM~8_regout\ : std_logic;
SIGNAL \SRAM~66_combout\ : std_logic;
SIGNAL \SRAM~67_combout\ : std_logic;
SIGNAL \SRAM~109_combout\ : std_logic;
SIGNAL \SRAM~56_regout\ : std_logic;
SIGNAL \SRAM~105_combout\ : std_logic;
SIGNAL \SRAM~40_regout\ : std_logic;
SIGNAL \SRAM~108_combout\ : std_logic;
SIGNAL \SRAM~32_regout\ : std_logic;
SIGNAL \SRAM~107_combout\ : std_logic;
SIGNAL \SRAM~48_regout\ : std_logic;
SIGNAL \SRAM~64_combout\ : std_logic;
SIGNAL \SRAM~65_combout\ : std_logic;
SIGNAL \SRAM~68_combout\ : std_logic;
SIGNAL \dataOut[0]~reg0_regout\ : std_logic;
SIGNAL \SRAM~57feeder_combout\ : std_logic;
SIGNAL \SRAM~57_regout\ : std_logic;
SIGNAL \SRAM~33_regout\ : std_logic;
SIGNAL \SRAM~49feeder_combout\ : std_logic;
SIGNAL \SRAM~49_regout\ : std_logic;
SIGNAL \SRAM~69_combout\ : std_logic;
SIGNAL \SRAM~70_combout\ : std_logic;
SIGNAL \SRAM~25feeder_combout\ : std_logic;
SIGNAL \SRAM~25_regout\ : std_logic;
SIGNAL \SRAM~17_regout\ : std_logic;
SIGNAL \SRAM~1_regout\ : std_logic;
SIGNAL \SRAM~9_regout\ : std_logic;
SIGNAL \SRAM~71_combout\ : std_logic;
SIGNAL \SRAM~72_combout\ : std_logic;
SIGNAL \SRAM~73_combout\ : std_logic;
SIGNAL \dataOut[1]~reg0_regout\ : std_logic;
SIGNAL \SRAM~18feeder_combout\ : std_logic;
SIGNAL \SRAM~18_regout\ : std_logic;
SIGNAL \SRAM~26_regout\ : std_logic;
SIGNAL \SRAM~2_regout\ : std_logic;
SIGNAL \SRAM~10_regout\ : std_logic;
SIGNAL \SRAM~76_combout\ : std_logic;
SIGNAL \SRAM~77_combout\ : std_logic;
SIGNAL \SRAM~58feeder_combout\ : std_logic;
SIGNAL \SRAM~58_regout\ : std_logic;
SIGNAL \SRAM~34_regout\ : std_logic;
SIGNAL \SRAM~50_regout\ : std_logic;
SIGNAL \SRAM~74_combout\ : std_logic;
SIGNAL \SRAM~75_combout\ : std_logic;
SIGNAL \SRAM~78_combout\ : std_logic;
SIGNAL \dataOut[2]~reg0_regout\ : std_logic;
SIGNAL \SRAM~19_regout\ : std_logic;
SIGNAL \SRAM~3_regout\ : std_logic;
SIGNAL \SRAM~11_regout\ : std_logic;
SIGNAL \SRAM~81_combout\ : std_logic;
SIGNAL \SRAM~82_combout\ : std_logic;
SIGNAL \SRAM~59feeder_combout\ : std_logic;
SIGNAL \SRAM~59_regout\ : std_logic;
SIGNAL \SRAM~43_regout\ : std_logic;
SIGNAL \SRAM~35_regout\ : std_logic;
SIGNAL \SRAM~51_regout\ : std_logic;
SIGNAL \SRAM~79_combout\ : std_logic;
SIGNAL \SRAM~80_combout\ : std_logic;
SIGNAL \SRAM~83_combout\ : std_logic;
SIGNAL \dataOut[3]~reg0_regout\ : std_logic;
SIGNAL \SRAM~20_regout\ : std_logic;
SIGNAL \SRAM~4_regout\ : std_logic;
SIGNAL \SRAM~12_regout\ : std_logic;
SIGNAL \SRAM~86_combout\ : std_logic;
SIGNAL \SRAM~87_combout\ : std_logic;
SIGNAL \SRAM~60feeder_combout\ : std_logic;
SIGNAL \SRAM~60_regout\ : std_logic;
SIGNAL \SRAM~44_regout\ : std_logic;
SIGNAL \SRAM~36_regout\ : std_logic;
SIGNAL \SRAM~52_regout\ : std_logic;
SIGNAL \SRAM~84_combout\ : std_logic;
SIGNAL \SRAM~85_combout\ : std_logic;
SIGNAL \SRAM~88_combout\ : std_logic;
SIGNAL \dataOut[4]~reg0_regout\ : std_logic;
SIGNAL \SRAM~29_regout\ : std_logic;
SIGNAL \SRAM~21_regout\ : std_logic;
SIGNAL \SRAM~5_regout\ : std_logic;
SIGNAL \SRAM~13feeder_combout\ : std_logic;
SIGNAL \SRAM~13_regout\ : std_logic;
SIGNAL \SRAM~91_combout\ : std_logic;
SIGNAL \SRAM~92_combout\ : std_logic;
SIGNAL \SRAM~61feeder_combout\ : std_logic;
SIGNAL \SRAM~61_regout\ : std_logic;
SIGNAL \SRAM~45_regout\ : std_logic;
SIGNAL \SRAM~37_regout\ : std_logic;
SIGNAL \SRAM~53_regout\ : std_logic;
SIGNAL \SRAM~89_combout\ : std_logic;
SIGNAL \SRAM~90_combout\ : std_logic;
SIGNAL \SRAM~93_combout\ : std_logic;
SIGNAL \dataOut[5]~reg0_regout\ : std_logic;
SIGNAL \SRAM~30_regout\ : std_logic;
SIGNAL \SRAM~22_regout\ : std_logic;
SIGNAL \SRAM~6_regout\ : std_logic;
SIGNAL \SRAM~14_regout\ : std_logic;
SIGNAL \SRAM~96_combout\ : std_logic;
SIGNAL \SRAM~97_combout\ : std_logic;
SIGNAL \SRAM~62feeder_combout\ : std_logic;
SIGNAL \SRAM~62_regout\ : std_logic;
SIGNAL \SRAM~46_regout\ : std_logic;
SIGNAL \SRAM~38_regout\ : std_logic;
SIGNAL \SRAM~54_regout\ : std_logic;
SIGNAL \SRAM~94_combout\ : std_logic;
SIGNAL \SRAM~95_combout\ : std_logic;
SIGNAL \SRAM~98_combout\ : std_logic;
SIGNAL \dataOut[6]~reg0_regout\ : std_logic;
SIGNAL \SRAM~31_regout\ : std_logic;
SIGNAL \SRAM~23_regout\ : std_logic;
SIGNAL \SRAM~7_regout\ : std_logic;
SIGNAL \SRAM~15_regout\ : std_logic;
SIGNAL \SRAM~101_combout\ : std_logic;
SIGNAL \SRAM~102_combout\ : std_logic;
SIGNAL \SRAM~63feeder_combout\ : std_logic;
SIGNAL \SRAM~63_regout\ : std_logic;
SIGNAL \SRAM~47_regout\ : std_logic;
SIGNAL \SRAM~39_regout\ : std_logic;
SIGNAL \SRAM~55_regout\ : std_logic;
SIGNAL \SRAM~99_combout\ : std_logic;
SIGNAL \SRAM~100_combout\ : std_logic;
SIGNAL \SRAM~103_combout\ : std_logic;
SIGNAL \dataOut[7]~reg0_regout\ : std_logic;
SIGNAL \dataIn~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Addr~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_WE~combout\ : std_logic;

BEGIN

ww_dataIn <= dataIn;
dataOut <= ww_dataOut;
ww_Addr <= Addr;
ww_CS <= CS;
ww_WE <= WE;
ww_Clk <= Clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clk~combout\);
\ALT_INV_WE~combout\ <= NOT \WE~combout\;

-- Location: LCFF_X29_Y34_N31
\SRAM~41\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~41feeder_combout\,
	ena => \SRAM~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~41_regout\);

-- Location: LCFF_X29_Y34_N11
\SRAM~42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~42feeder_combout\,
	ena => \SRAM~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~42_regout\);

-- Location: LCFF_X33_Y34_N7
\SRAM~27\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(3),
	sload => VCC,
	ena => \SRAM~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~27_regout\);

-- Location: LCFF_X33_Y34_N3
\SRAM~28\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~28feeder_combout\,
	ena => \SRAM~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~28_regout\);

-- Location: LCCOMB_X29_Y34_N30
\SRAM~41feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~41feeder_combout\ = \dataIn~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataIn~combout\(1),
	combout => \SRAM~41feeder_combout\);

-- Location: LCCOMB_X29_Y34_N10
\SRAM~42feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~42feeder_combout\ = \dataIn~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataIn~combout\(2),
	combout => \SRAM~42feeder_combout\);

-- Location: LCCOMB_X33_Y34_N2
\SRAM~28feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~28feeder_combout\ = \dataIn~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataIn~combout\(4),
	combout => \SRAM~28feeder_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk~I\ : cycloneii_io
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
	padio => ww_Clk,
	combout => \Clk~combout\);

-- Location: CLKCTRL_G3
\Clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~clkctrl_outclk\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Addr[2]~I\ : cycloneii_io
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
	padio => ww_Addr(2),
	combout => \Addr~combout\(2));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dataIn[0]~I\ : cycloneii_io
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
	padio => ww_dataIn(0),
	combout => \dataIn~combout\(0));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CS~I\ : cycloneii_io
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
	padio => ww_CS,
	combout => \CS~combout\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WE~I\ : cycloneii_io
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
	padio => ww_WE,
	combout => \WE~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Addr[0]~I\ : cycloneii_io
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
	padio => ww_Addr(0),
	combout => \Addr~combout\(0));

-- Location: LCCOMB_X30_Y34_N4
\SRAM~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~106_combout\ = (\CS~combout\ & (\WE~combout\ & !\Addr~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CS~combout\,
	datac => \WE~combout\,
	datad => \Addr~combout\(0),
	combout => \SRAM~106_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Addr[1]~I\ : cycloneii_io
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
	padio => ww_Addr(1),
	combout => \Addr~combout\(1));

-- Location: LCCOMB_X31_Y34_N16
\SRAM~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~110_combout\ = (!\Addr~combout\(2) & (\SRAM~106_combout\ & \Addr~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(2),
	datab => \SRAM~106_combout\,
	datad => \Addr~combout\(1),
	combout => \SRAM~110_combout\);

-- Location: LCFF_X32_Y34_N7
\SRAM~16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(0),
	sload => VCC,
	ena => \SRAM~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~16_regout\);

-- Location: LCCOMB_X30_Y34_N22
\SRAM~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~104_combout\ = (\CS~combout\ & (\WE~combout\ & \Addr~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CS~combout\,
	datac => \WE~combout\,
	datad => \Addr~combout\(0),
	combout => \SRAM~104_combout\);

-- Location: LCCOMB_X30_Y34_N0
\SRAM~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~113_combout\ = (\SRAM~104_combout\ & (!\Addr~combout\(2) & \Addr~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM~104_combout\,
	datac => \Addr~combout\(2),
	datad => \Addr~combout\(1),
	combout => \SRAM~113_combout\);

-- Location: LCFF_X30_Y34_N15
\SRAM~24\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(0),
	sload => VCC,
	ena => \SRAM~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~24_regout\);

-- Location: LCCOMB_X31_Y34_N28
\SRAM~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~112_combout\ = (!\Addr~combout\(2) & (\SRAM~106_combout\ & !\Addr~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(2),
	datab => \SRAM~106_combout\,
	datad => \Addr~combout\(1),
	combout => \SRAM~112_combout\);

-- Location: LCFF_X31_Y34_N31
\SRAM~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(0),
	sload => VCC,
	ena => \SRAM~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~0_regout\);

-- Location: LCCOMB_X31_Y34_N24
\SRAM~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~111_combout\ = (!\Addr~combout\(2) & (\SRAM~104_combout\ & !\Addr~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(2),
	datab => \SRAM~104_combout\,
	datad => \Addr~combout\(1),
	combout => \SRAM~111_combout\);

-- Location: LCFF_X31_Y34_N9
\SRAM~8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(0),
	sload => VCC,
	ena => \SRAM~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~8_regout\);

-- Location: LCCOMB_X31_Y34_N30
\SRAM~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~66_combout\ = (\Addr~combout\(1) & (\Addr~combout\(0))) # (!\Addr~combout\(1) & ((\Addr~combout\(0) & ((\SRAM~8_regout\))) # (!\Addr~combout\(0) & (\SRAM~0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \Addr~combout\(0),
	datac => \SRAM~0_regout\,
	datad => \SRAM~8_regout\,
	combout => \SRAM~66_combout\);

-- Location: LCCOMB_X30_Y34_N14
\SRAM~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~67_combout\ = (\Addr~combout\(1) & ((\SRAM~66_combout\ & ((\SRAM~24_regout\))) # (!\SRAM~66_combout\ & (\SRAM~16_regout\)))) # (!\Addr~combout\(1) & (((\SRAM~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \SRAM~16_regout\,
	datac => \SRAM~24_regout\,
	datad => \SRAM~66_combout\,
	combout => \SRAM~67_combout\);

-- Location: LCCOMB_X30_Y34_N30
\SRAM~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~109_combout\ = (\SRAM~104_combout\ & (\Addr~combout\(2) & \Addr~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM~104_combout\,
	datac => \Addr~combout\(2),
	datad => \Addr~combout\(1),
	combout => \SRAM~109_combout\);

-- Location: LCFF_X29_Y34_N25
\SRAM~56\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(0),
	sload => VCC,
	ena => \SRAM~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~56_regout\);

-- Location: LCCOMB_X31_Y34_N20
\SRAM~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~105_combout\ = (\Addr~combout\(2) & (\SRAM~104_combout\ & !\Addr~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(2),
	datab => \SRAM~104_combout\,
	datad => \Addr~combout\(1),
	combout => \SRAM~105_combout\);

-- Location: LCFF_X33_Y34_N17
\SRAM~40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(0),
	sload => VCC,
	ena => \SRAM~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~40_regout\);

-- Location: LCCOMB_X31_Y34_N12
\SRAM~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~108_combout\ = (\Addr~combout\(2) & (\SRAM~106_combout\ & !\Addr~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(2),
	datab => \SRAM~106_combout\,
	datad => \Addr~combout\(1),
	combout => \SRAM~108_combout\);

-- Location: LCFF_X34_Y34_N31
\SRAM~32\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(0),
	sload => VCC,
	ena => \SRAM~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~32_regout\);

-- Location: LCCOMB_X31_Y34_N0
\SRAM~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~107_combout\ = (\Addr~combout\(2) & (\SRAM~106_combout\ & \Addr~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(2),
	datab => \SRAM~106_combout\,
	datad => \Addr~combout\(1),
	combout => \SRAM~107_combout\);

-- Location: LCFF_X34_Y34_N13
\SRAM~48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(0),
	sload => VCC,
	ena => \SRAM~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~48_regout\);

-- Location: LCCOMB_X34_Y34_N30
\SRAM~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~64_combout\ = (\Addr~combout\(1) & ((\Addr~combout\(0)) # ((\SRAM~48_regout\)))) # (!\Addr~combout\(1) & (!\Addr~combout\(0) & (\SRAM~32_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \Addr~combout\(0),
	datac => \SRAM~32_regout\,
	datad => \SRAM~48_regout\,
	combout => \SRAM~64_combout\);

-- Location: LCCOMB_X33_Y34_N16
\SRAM~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~65_combout\ = (\Addr~combout\(0) & ((\SRAM~64_combout\ & (\SRAM~56_regout\)) # (!\SRAM~64_combout\ & ((\SRAM~40_regout\))))) # (!\Addr~combout\(0) & (((\SRAM~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(0),
	datab => \SRAM~56_regout\,
	datac => \SRAM~40_regout\,
	datad => \SRAM~64_combout\,
	combout => \SRAM~65_combout\);

-- Location: LCCOMB_X30_Y34_N16
\SRAM~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~68_combout\ = (\Addr~combout\(2) & ((\SRAM~65_combout\))) # (!\Addr~combout\(2) & (\SRAM~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Addr~combout\(2),
	datac => \SRAM~67_combout\,
	datad => \SRAM~65_combout\,
	combout => \SRAM~68_combout\);

-- Location: LCFF_X30_Y34_N17
\dataOut[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~68_combout\,
	ena => \ALT_INV_WE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dataOut[0]~reg0_regout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dataIn[1]~I\ : cycloneii_io
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
	padio => ww_dataIn(1),
	combout => \dataIn~combout\(1));

-- Location: LCCOMB_X29_Y34_N0
\SRAM~57feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~57feeder_combout\ = \dataIn~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataIn~combout\(1),
	combout => \SRAM~57feeder_combout\);

-- Location: LCFF_X29_Y34_N1
\SRAM~57\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~57feeder_combout\,
	ena => \SRAM~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~57_regout\);

-- Location: LCFF_X34_Y34_N15
\SRAM~33\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(1),
	sload => VCC,
	ena => \SRAM~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~33_regout\);

-- Location: LCCOMB_X34_Y34_N16
\SRAM~49feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~49feeder_combout\ = \dataIn~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataIn~combout\(1),
	combout => \SRAM~49feeder_combout\);

-- Location: LCFF_X34_Y34_N17
\SRAM~49\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~49feeder_combout\,
	ena => \SRAM~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~49_regout\);

-- Location: LCCOMB_X34_Y34_N14
\SRAM~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~69_combout\ = (\Addr~combout\(1) & ((\Addr~combout\(0)) # ((\SRAM~49_regout\)))) # (!\Addr~combout\(1) & (!\Addr~combout\(0) & (\SRAM~33_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \Addr~combout\(0),
	datac => \SRAM~33_regout\,
	datad => \SRAM~49_regout\,
	combout => \SRAM~69_combout\);

-- Location: LCCOMB_X30_Y34_N20
\SRAM~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~70_combout\ = (\Addr~combout\(0) & ((\SRAM~69_combout\ & ((\SRAM~57_regout\))) # (!\SRAM~69_combout\ & (\SRAM~41_regout\)))) # (!\Addr~combout\(0) & (((\SRAM~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM~41_regout\,
	datab => \Addr~combout\(0),
	datac => \SRAM~57_regout\,
	datad => \SRAM~69_combout\,
	combout => \SRAM~70_combout\);

-- Location: LCCOMB_X33_Y34_N18
\SRAM~25feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~25feeder_combout\ = \dataIn~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataIn~combout\(1),
	combout => \SRAM~25feeder_combout\);

-- Location: LCFF_X33_Y34_N19
\SRAM~25\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~25feeder_combout\,
	ena => \SRAM~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~25_regout\);

-- Location: LCFF_X32_Y34_N1
\SRAM~17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(1),
	sload => VCC,
	ena => \SRAM~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~17_regout\);

-- Location: LCFF_X31_Y34_N15
\SRAM~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(1),
	sload => VCC,
	ena => \SRAM~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~1_regout\);

-- Location: LCFF_X31_Y34_N29
\SRAM~9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(1),
	sload => VCC,
	ena => \SRAM~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~9_regout\);

-- Location: LCCOMB_X31_Y34_N14
\SRAM~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~71_combout\ = (\Addr~combout\(1) & (\Addr~combout\(0))) # (!\Addr~combout\(1) & ((\Addr~combout\(0) & ((\SRAM~9_regout\))) # (!\Addr~combout\(0) & (\SRAM~1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \Addr~combout\(0),
	datac => \SRAM~1_regout\,
	datad => \SRAM~9_regout\,
	combout => \SRAM~71_combout\);

-- Location: LCCOMB_X32_Y34_N0
\SRAM~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~72_combout\ = (\Addr~combout\(1) & ((\SRAM~71_combout\ & (\SRAM~25_regout\)) # (!\SRAM~71_combout\ & ((\SRAM~17_regout\))))) # (!\Addr~combout\(1) & (((\SRAM~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \SRAM~25_regout\,
	datac => \SRAM~17_regout\,
	datad => \SRAM~71_combout\,
	combout => \SRAM~72_combout\);

-- Location: LCCOMB_X30_Y34_N26
\SRAM~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~73_combout\ = (\Addr~combout\(2) & (\SRAM~70_combout\)) # (!\Addr~combout\(2) & ((\SRAM~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Addr~combout\(2),
	datac => \SRAM~70_combout\,
	datad => \SRAM~72_combout\,
	combout => \SRAM~73_combout\);

-- Location: LCFF_X30_Y34_N27
\dataOut[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~73_combout\,
	ena => \ALT_INV_WE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dataOut[1]~reg0_regout\);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dataIn[2]~I\ : cycloneii_io
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
	padio => ww_dataIn(2),
	combout => \dataIn~combout\(2));

-- Location: LCCOMB_X32_Y34_N30
\SRAM~18feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~18feeder_combout\ = \dataIn~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataIn~combout\(2),
	combout => \SRAM~18feeder_combout\);

-- Location: LCFF_X32_Y34_N31
\SRAM~18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~18feeder_combout\,
	ena => \SRAM~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~18_regout\);

-- Location: LCFF_X30_Y34_N25
\SRAM~26\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(2),
	sload => VCC,
	ena => \SRAM~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~26_regout\);

-- Location: LCFF_X31_Y34_N7
\SRAM~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(2),
	sload => VCC,
	ena => \SRAM~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~2_regout\);

-- Location: LCFF_X31_Y34_N25
\SRAM~10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(2),
	sload => VCC,
	ena => \SRAM~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~10_regout\);

-- Location: LCCOMB_X31_Y34_N6
\SRAM~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~76_combout\ = (\Addr~combout\(1) & (\Addr~combout\(0))) # (!\Addr~combout\(1) & ((\Addr~combout\(0) & ((\SRAM~10_regout\))) # (!\Addr~combout\(0) & (\SRAM~2_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \Addr~combout\(0),
	datac => \SRAM~2_regout\,
	datad => \SRAM~10_regout\,
	combout => \SRAM~76_combout\);

-- Location: LCCOMB_X30_Y34_N24
\SRAM~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~77_combout\ = (\Addr~combout\(1) & ((\SRAM~76_combout\ & ((\SRAM~26_regout\))) # (!\SRAM~76_combout\ & (\SRAM~18_regout\)))) # (!\Addr~combout\(1) & (((\SRAM~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \SRAM~18_regout\,
	datac => \SRAM~26_regout\,
	datad => \SRAM~76_combout\,
	combout => \SRAM~77_combout\);

-- Location: LCCOMB_X29_Y34_N4
\SRAM~58feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~58feeder_combout\ = \dataIn~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataIn~combout\(2),
	combout => \SRAM~58feeder_combout\);

-- Location: LCFF_X29_Y34_N5
\SRAM~58\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~58feeder_combout\,
	ena => \SRAM~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~58_regout\);

-- Location: LCFF_X34_Y34_N11
\SRAM~34\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(2),
	sload => VCC,
	ena => \SRAM~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~34_regout\);

-- Location: LCFF_X34_Y34_N29
\SRAM~50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(2),
	sload => VCC,
	ena => \SRAM~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~50_regout\);

-- Location: LCCOMB_X34_Y34_N10
\SRAM~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~74_combout\ = (\Addr~combout\(1) & ((\Addr~combout\(0)) # ((\SRAM~50_regout\)))) # (!\Addr~combout\(1) & (!\Addr~combout\(0) & (\SRAM~34_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \Addr~combout\(0),
	datac => \SRAM~34_regout\,
	datad => \SRAM~50_regout\,
	combout => \SRAM~74_combout\);

-- Location: LCCOMB_X30_Y34_N2
\SRAM~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~75_combout\ = (\Addr~combout\(0) & ((\SRAM~74_combout\ & ((\SRAM~58_regout\))) # (!\SRAM~74_combout\ & (\SRAM~42_regout\)))) # (!\Addr~combout\(0) & (((\SRAM~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM~42_regout\,
	datab => \Addr~combout\(0),
	datac => \SRAM~58_regout\,
	datad => \SRAM~74_combout\,
	combout => \SRAM~75_combout\);

-- Location: LCCOMB_X30_Y34_N12
\SRAM~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~78_combout\ = (\Addr~combout\(2) & ((\SRAM~75_combout\))) # (!\Addr~combout\(2) & (\SRAM~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Addr~combout\(2),
	datac => \SRAM~77_combout\,
	datad => \SRAM~75_combout\,
	combout => \SRAM~78_combout\);

-- Location: LCFF_X30_Y34_N13
\dataOut[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~78_combout\,
	ena => \ALT_INV_WE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dataOut[2]~reg0_regout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dataIn[3]~I\ : cycloneii_io
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
	padio => ww_dataIn(3),
	combout => \dataIn~combout\(3));

-- Location: LCFF_X32_Y34_N25
\SRAM~19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(3),
	sload => VCC,
	ena => \SRAM~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~19_regout\);

-- Location: LCFF_X31_Y34_N11
\SRAM~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(3),
	sload => VCC,
	ena => \SRAM~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~3_regout\);

-- Location: LCFF_X31_Y34_N13
\SRAM~11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(3),
	sload => VCC,
	ena => \SRAM~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~11_regout\);

-- Location: LCCOMB_X31_Y34_N10
\SRAM~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~81_combout\ = (\Addr~combout\(1) & (\Addr~combout\(0))) # (!\Addr~combout\(1) & ((\Addr~combout\(0) & ((\SRAM~11_regout\))) # (!\Addr~combout\(0) & (\SRAM~3_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \Addr~combout\(0),
	datac => \SRAM~3_regout\,
	datad => \SRAM~11_regout\,
	combout => \SRAM~81_combout\);

-- Location: LCCOMB_X32_Y34_N24
\SRAM~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~82_combout\ = (\Addr~combout\(1) & ((\SRAM~81_combout\ & (\SRAM~27_regout\)) # (!\SRAM~81_combout\ & ((\SRAM~19_regout\))))) # (!\Addr~combout\(1) & (((\SRAM~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM~27_regout\,
	datab => \Addr~combout\(1),
	datac => \SRAM~19_regout\,
	datad => \SRAM~81_combout\,
	combout => \SRAM~82_combout\);

-- Location: LCCOMB_X29_Y34_N2
\SRAM~59feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~59feeder_combout\ = \dataIn~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataIn~combout\(3),
	combout => \SRAM~59feeder_combout\);

-- Location: LCFF_X29_Y34_N3
\SRAM~59\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~59feeder_combout\,
	ena => \SRAM~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~59_regout\);

-- Location: LCFF_X33_Y34_N25
\SRAM~43\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(3),
	sload => VCC,
	ena => \SRAM~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~43_regout\);

-- Location: LCFF_X34_Y34_N3
\SRAM~35\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(3),
	sload => VCC,
	ena => \SRAM~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~35_regout\);

-- Location: LCFF_X34_Y34_N5
\SRAM~51\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(3),
	sload => VCC,
	ena => \SRAM~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~51_regout\);

-- Location: LCCOMB_X34_Y34_N2
\SRAM~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~79_combout\ = (\Addr~combout\(1) & ((\Addr~combout\(0)) # ((\SRAM~51_regout\)))) # (!\Addr~combout\(1) & (!\Addr~combout\(0) & (\SRAM~35_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \Addr~combout\(0),
	datac => \SRAM~35_regout\,
	datad => \SRAM~51_regout\,
	combout => \SRAM~79_combout\);

-- Location: LCCOMB_X33_Y34_N24
\SRAM~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~80_combout\ = (\Addr~combout\(0) & ((\SRAM~79_combout\ & (\SRAM~59_regout\)) # (!\SRAM~79_combout\ & ((\SRAM~43_regout\))))) # (!\Addr~combout\(0) & (((\SRAM~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(0),
	datab => \SRAM~59_regout\,
	datac => \SRAM~43_regout\,
	datad => \SRAM~79_combout\,
	combout => \SRAM~80_combout\);

-- Location: LCCOMB_X32_Y34_N16
\SRAM~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~83_combout\ = (\Addr~combout\(2) & ((\SRAM~80_combout\))) # (!\Addr~combout\(2) & (\SRAM~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Addr~combout\(2),
	datac => \SRAM~82_combout\,
	datad => \SRAM~80_combout\,
	combout => \SRAM~83_combout\);

-- Location: LCFF_X32_Y34_N17
\dataOut[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~83_combout\,
	ena => \ALT_INV_WE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dataOut[3]~reg0_regout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dataIn[4]~I\ : cycloneii_io
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
	padio => ww_dataIn(4),
	combout => \dataIn~combout\(4));

-- Location: LCFF_X32_Y34_N15
\SRAM~20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(4),
	sload => VCC,
	ena => \SRAM~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~20_regout\);

-- Location: LCFF_X31_Y34_N23
\SRAM~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(4),
	sload => VCC,
	ena => \SRAM~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~4_regout\);

-- Location: LCFF_X31_Y34_N1
\SRAM~12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(4),
	sload => VCC,
	ena => \SRAM~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~12_regout\);

-- Location: LCCOMB_X31_Y34_N22
\SRAM~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~86_combout\ = (\Addr~combout\(1) & (\Addr~combout\(0))) # (!\Addr~combout\(1) & ((\Addr~combout\(0) & ((\SRAM~12_regout\))) # (!\Addr~combout\(0) & (\SRAM~4_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \Addr~combout\(0),
	datac => \SRAM~4_regout\,
	datad => \SRAM~12_regout\,
	combout => \SRAM~86_combout\);

-- Location: LCCOMB_X32_Y34_N14
\SRAM~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~87_combout\ = (\Addr~combout\(1) & ((\SRAM~86_combout\ & (\SRAM~28_regout\)) # (!\SRAM~86_combout\ & ((\SRAM~20_regout\))))) # (!\Addr~combout\(1) & (((\SRAM~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM~28_regout\,
	datab => \Addr~combout\(1),
	datac => \SRAM~20_regout\,
	datad => \SRAM~86_combout\,
	combout => \SRAM~87_combout\);

-- Location: LCCOMB_X29_Y34_N20
\SRAM~60feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~60feeder_combout\ = \dataIn~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataIn~combout\(4),
	combout => \SRAM~60feeder_combout\);

-- Location: LCFF_X29_Y34_N21
\SRAM~60\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~60feeder_combout\,
	ena => \SRAM~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~60_regout\);

-- Location: LCFF_X33_Y34_N5
\SRAM~44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(4),
	sload => VCC,
	ena => \SRAM~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~44_regout\);

-- Location: LCFF_X34_Y34_N23
\SRAM~36\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(4),
	sload => VCC,
	ena => \SRAM~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~36_regout\);

-- Location: LCFF_X34_Y34_N9
\SRAM~52\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(4),
	sload => VCC,
	ena => \SRAM~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~52_regout\);

-- Location: LCCOMB_X34_Y34_N22
\SRAM~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~84_combout\ = (\Addr~combout\(1) & ((\Addr~combout\(0)) # ((\SRAM~52_regout\)))) # (!\Addr~combout\(1) & (!\Addr~combout\(0) & (\SRAM~36_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \Addr~combout\(0),
	datac => \SRAM~36_regout\,
	datad => \SRAM~52_regout\,
	combout => \SRAM~84_combout\);

-- Location: LCCOMB_X33_Y34_N4
\SRAM~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~85_combout\ = (\Addr~combout\(0) & ((\SRAM~84_combout\ & (\SRAM~60_regout\)) # (!\SRAM~84_combout\ & ((\SRAM~44_regout\))))) # (!\Addr~combout\(0) & (((\SRAM~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(0),
	datab => \SRAM~60_regout\,
	datac => \SRAM~44_regout\,
	datad => \SRAM~84_combout\,
	combout => \SRAM~85_combout\);

-- Location: LCCOMB_X32_Y34_N10
\SRAM~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~88_combout\ = (\Addr~combout\(2) & ((\SRAM~85_combout\))) # (!\Addr~combout\(2) & (\SRAM~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Addr~combout\(2),
	datac => \SRAM~87_combout\,
	datad => \SRAM~85_combout\,
	combout => \SRAM~88_combout\);

-- Location: LCFF_X32_Y34_N11
\dataOut[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~88_combout\,
	ena => \ALT_INV_WE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dataOut[4]~reg0_regout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dataIn[5]~I\ : cycloneii_io
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
	padio => ww_dataIn(5),
	combout => \dataIn~combout\(5));

-- Location: LCFF_X33_Y34_N31
\SRAM~29\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(5),
	sload => VCC,
	ena => \SRAM~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~29_regout\);

-- Location: LCFF_X32_Y34_N9
\SRAM~21\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(5),
	sload => VCC,
	ena => \SRAM~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~21_regout\);

-- Location: LCFF_X31_Y34_N27
\SRAM~5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(5),
	sload => VCC,
	ena => \SRAM~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~5_regout\);

-- Location: LCCOMB_X31_Y34_N4
\SRAM~13feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~13feeder_combout\ = \dataIn~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataIn~combout\(5),
	combout => \SRAM~13feeder_combout\);

-- Location: LCFF_X31_Y34_N5
\SRAM~13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~13feeder_combout\,
	ena => \SRAM~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~13_regout\);

-- Location: LCCOMB_X31_Y34_N26
\SRAM~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~91_combout\ = (\Addr~combout\(1) & (\Addr~combout\(0))) # (!\Addr~combout\(1) & ((\Addr~combout\(0) & ((\SRAM~13_regout\))) # (!\Addr~combout\(0) & (\SRAM~5_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \Addr~combout\(0),
	datac => \SRAM~5_regout\,
	datad => \SRAM~13_regout\,
	combout => \SRAM~91_combout\);

-- Location: LCCOMB_X32_Y34_N8
\SRAM~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~92_combout\ = (\Addr~combout\(1) & ((\SRAM~91_combout\ & (\SRAM~29_regout\)) # (!\SRAM~91_combout\ & ((\SRAM~21_regout\))))) # (!\Addr~combout\(1) & (((\SRAM~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \SRAM~29_regout\,
	datac => \SRAM~21_regout\,
	datad => \SRAM~91_combout\,
	combout => \SRAM~92_combout\);

-- Location: LCCOMB_X29_Y34_N18
\SRAM~61feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~61feeder_combout\ = \dataIn~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataIn~combout\(5),
	combout => \SRAM~61feeder_combout\);

-- Location: LCFF_X29_Y34_N19
\SRAM~61\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~61feeder_combout\,
	ena => \SRAM~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~61_regout\);

-- Location: LCFF_X33_Y34_N21
\SRAM~45\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(5),
	sload => VCC,
	ena => \SRAM~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~45_regout\);

-- Location: LCFF_X34_Y34_N27
\SRAM~37\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(5),
	sload => VCC,
	ena => \SRAM~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~37_regout\);

-- Location: LCFF_X34_Y34_N25
\SRAM~53\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(5),
	sload => VCC,
	ena => \SRAM~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~53_regout\);

-- Location: LCCOMB_X34_Y34_N26
\SRAM~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~89_combout\ = (\Addr~combout\(1) & ((\Addr~combout\(0)) # ((\SRAM~53_regout\)))) # (!\Addr~combout\(1) & (!\Addr~combout\(0) & (\SRAM~37_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \Addr~combout\(0),
	datac => \SRAM~37_regout\,
	datad => \SRAM~53_regout\,
	combout => \SRAM~89_combout\);

-- Location: LCCOMB_X33_Y34_N20
\SRAM~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~90_combout\ = (\Addr~combout\(0) & ((\SRAM~89_combout\ & (\SRAM~61_regout\)) # (!\SRAM~89_combout\ & ((\SRAM~45_regout\))))) # (!\Addr~combout\(0) & (((\SRAM~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(0),
	datab => \SRAM~61_regout\,
	datac => \SRAM~45_regout\,
	datad => \SRAM~89_combout\,
	combout => \SRAM~90_combout\);

-- Location: LCCOMB_X32_Y34_N4
\SRAM~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~93_combout\ = (\Addr~combout\(2) & ((\SRAM~90_combout\))) # (!\Addr~combout\(2) & (\SRAM~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Addr~combout\(2),
	datac => \SRAM~92_combout\,
	datad => \SRAM~90_combout\,
	combout => \SRAM~93_combout\);

-- Location: LCFF_X32_Y34_N5
\dataOut[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~93_combout\,
	ena => \ALT_INV_WE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dataOut[5]~reg0_regout\);

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dataIn[6]~I\ : cycloneii_io
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
	padio => ww_dataIn(6),
	combout => \dataIn~combout\(6));

-- Location: LCFF_X33_Y34_N11
\SRAM~30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(6),
	sload => VCC,
	ena => \SRAM~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~30_regout\);

-- Location: LCFF_X32_Y34_N23
\SRAM~22\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(6),
	sload => VCC,
	ena => \SRAM~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~22_regout\);

-- Location: LCFF_X31_Y34_N3
\SRAM~6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(6),
	sload => VCC,
	ena => \SRAM~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~6_regout\);

-- Location: LCFF_X31_Y34_N17
\SRAM~14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(6),
	sload => VCC,
	ena => \SRAM~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~14_regout\);

-- Location: LCCOMB_X31_Y34_N2
\SRAM~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~96_combout\ = (\Addr~combout\(1) & (\Addr~combout\(0))) # (!\Addr~combout\(1) & ((\Addr~combout\(0) & ((\SRAM~14_regout\))) # (!\Addr~combout\(0) & (\SRAM~6_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \Addr~combout\(0),
	datac => \SRAM~6_regout\,
	datad => \SRAM~14_regout\,
	combout => \SRAM~96_combout\);

-- Location: LCCOMB_X32_Y34_N22
\SRAM~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~97_combout\ = (\Addr~combout\(1) & ((\SRAM~96_combout\ & (\SRAM~30_regout\)) # (!\SRAM~96_combout\ & ((\SRAM~22_regout\))))) # (!\Addr~combout\(1) & (((\SRAM~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \SRAM~30_regout\,
	datac => \SRAM~22_regout\,
	datad => \SRAM~96_combout\,
	combout => \SRAM~97_combout\);

-- Location: LCCOMB_X29_Y34_N12
\SRAM~62feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~62feeder_combout\ = \dataIn~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataIn~combout\(6),
	combout => \SRAM~62feeder_combout\);

-- Location: LCFF_X29_Y34_N13
\SRAM~62\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~62feeder_combout\,
	ena => \SRAM~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~62_regout\);

-- Location: LCFF_X33_Y34_N9
\SRAM~46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(6),
	sload => VCC,
	ena => \SRAM~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~46_regout\);

-- Location: LCFF_X34_Y34_N19
\SRAM~38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(6),
	sload => VCC,
	ena => \SRAM~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~38_regout\);

-- Location: LCFF_X34_Y34_N21
\SRAM~54\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(6),
	sload => VCC,
	ena => \SRAM~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~54_regout\);

-- Location: LCCOMB_X34_Y34_N18
\SRAM~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~94_combout\ = (\Addr~combout\(1) & ((\Addr~combout\(0)) # ((\SRAM~54_regout\)))) # (!\Addr~combout\(1) & (!\Addr~combout\(0) & (\SRAM~38_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \Addr~combout\(0),
	datac => \SRAM~38_regout\,
	datad => \SRAM~54_regout\,
	combout => \SRAM~94_combout\);

-- Location: LCCOMB_X33_Y34_N8
\SRAM~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~95_combout\ = (\Addr~combout\(0) & ((\SRAM~94_combout\ & (\SRAM~62_regout\)) # (!\SRAM~94_combout\ & ((\SRAM~46_regout\))))) # (!\Addr~combout\(0) & (((\SRAM~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(0),
	datab => \SRAM~62_regout\,
	datac => \SRAM~46_regout\,
	datad => \SRAM~94_combout\,
	combout => \SRAM~95_combout\);

-- Location: LCCOMB_X32_Y34_N2
\SRAM~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~98_combout\ = (\Addr~combout\(2) & ((\SRAM~95_combout\))) # (!\Addr~combout\(2) & (\SRAM~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(2),
	datab => \SRAM~97_combout\,
	datac => \SRAM~95_combout\,
	combout => \SRAM~98_combout\);

-- Location: LCFF_X32_Y34_N3
\dataOut[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~98_combout\,
	ena => \ALT_INV_WE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dataOut[6]~reg0_regout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dataIn[7]~I\ : cycloneii_io
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
	padio => ww_dataIn(7),
	combout => \dataIn~combout\(7));

-- Location: LCFF_X33_Y34_N15
\SRAM~31\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(7),
	sload => VCC,
	ena => \SRAM~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~31_regout\);

-- Location: LCFF_X32_Y34_N21
\SRAM~23\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(7),
	sload => VCC,
	ena => \SRAM~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~23_regout\);

-- Location: LCFF_X31_Y34_N19
\SRAM~7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(7),
	sload => VCC,
	ena => \SRAM~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~7_regout\);

-- Location: LCFF_X31_Y34_N21
\SRAM~15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(7),
	sload => VCC,
	ena => \SRAM~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~15_regout\);

-- Location: LCCOMB_X31_Y34_N18
\SRAM~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~101_combout\ = (\Addr~combout\(1) & (\Addr~combout\(0))) # (!\Addr~combout\(1) & ((\Addr~combout\(0) & ((\SRAM~15_regout\))) # (!\Addr~combout\(0) & (\SRAM~7_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \Addr~combout\(0),
	datac => \SRAM~7_regout\,
	datad => \SRAM~15_regout\,
	combout => \SRAM~101_combout\);

-- Location: LCCOMB_X32_Y34_N20
\SRAM~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~102_combout\ = (\Addr~combout\(1) & ((\SRAM~101_combout\ & (\SRAM~31_regout\)) # (!\SRAM~101_combout\ & ((\SRAM~23_regout\))))) # (!\Addr~combout\(1) & (((\SRAM~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \SRAM~31_regout\,
	datac => \SRAM~23_regout\,
	datad => \SRAM~101_combout\,
	combout => \SRAM~102_combout\);

-- Location: LCCOMB_X29_Y34_N6
\SRAM~63feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~63feeder_combout\ = \dataIn~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataIn~combout\(7),
	combout => \SRAM~63feeder_combout\);

-- Location: LCFF_X29_Y34_N7
\SRAM~63\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~63feeder_combout\,
	ena => \SRAM~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~63_regout\);

-- Location: LCFF_X33_Y34_N29
\SRAM~47\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(7),
	sload => VCC,
	ena => \SRAM~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~47_regout\);

-- Location: LCFF_X34_Y34_N7
\SRAM~39\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(7),
	sload => VCC,
	ena => \SRAM~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~39_regout\);

-- Location: LCFF_X34_Y34_N1
\SRAM~55\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \dataIn~combout\(7),
	sload => VCC,
	ena => \SRAM~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM~55_regout\);

-- Location: LCCOMB_X34_Y34_N6
\SRAM~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~99_combout\ = (\Addr~combout\(1) & ((\Addr~combout\(0)) # ((\SRAM~55_regout\)))) # (!\Addr~combout\(1) & (!\Addr~combout\(0) & (\SRAM~39_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(1),
	datab => \Addr~combout\(0),
	datac => \SRAM~39_regout\,
	datad => \SRAM~55_regout\,
	combout => \SRAM~99_combout\);

-- Location: LCCOMB_X33_Y34_N28
\SRAM~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~100_combout\ = (\Addr~combout\(0) & ((\SRAM~99_combout\ & (\SRAM~63_regout\)) # (!\SRAM~99_combout\ & ((\SRAM~47_regout\))))) # (!\Addr~combout\(0) & (((\SRAM~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Addr~combout\(0),
	datab => \SRAM~63_regout\,
	datac => \SRAM~47_regout\,
	datad => \SRAM~99_combout\,
	combout => \SRAM~100_combout\);

-- Location: LCCOMB_X32_Y34_N12
\SRAM~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM~103_combout\ = (\Addr~combout\(2) & ((\SRAM~100_combout\))) # (!\Addr~combout\(2) & (\SRAM~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Addr~combout\(2),
	datac => \SRAM~102_combout\,
	datad => \SRAM~100_combout\,
	combout => \SRAM~103_combout\);

-- Location: LCFF_X32_Y34_N13
\dataOut[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \SRAM~103_combout\,
	ena => \ALT_INV_WE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dataOut[7]~reg0_regout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dataOut[0]~I\ : cycloneii_io
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
	datain => \dataOut[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dataOut(0));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dataOut[1]~I\ : cycloneii_io
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
	datain => \dataOut[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dataOut(1));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dataOut[2]~I\ : cycloneii_io
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
	datain => \dataOut[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dataOut(2));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dataOut[3]~I\ : cycloneii_io
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
	datain => \dataOut[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dataOut(3));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dataOut[4]~I\ : cycloneii_io
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
	datain => \dataOut[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dataOut(4));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dataOut[5]~I\ : cycloneii_io
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
	datain => \dataOut[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dataOut(5));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dataOut[6]~I\ : cycloneii_io
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
	datain => \dataOut[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dataOut(6));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dataOut[7]~I\ : cycloneii_io
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
	datain => \dataOut[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dataOut(7));
END structure;


