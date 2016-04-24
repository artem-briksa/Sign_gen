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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "04/08/2016 00:14:30"

-- 
-- Device: Altera EP1C6Q240C6 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE;
LIBRARY IEEE;
USE CYCLONE.CYCLONE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Frequency_divider IS
    PORT (
	CLK : IN std_logic;
	Enable : IN std_logic;
	Counts : IN std_logic_vector(17 DOWNTO 0);
	Output : OUT std_logic
	);
END Frequency_divider;

-- Design Ports Information
-- Output	=>  Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Enable	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Counts[0]	=>  Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Counts[1]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Counts[2]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Counts[3]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Counts[4]	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Counts[5]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Counts[6]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Counts[7]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Counts[8]	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Counts[9]	=>  Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Counts[10]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Counts[11]	=>  Location: PIN_159,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Counts[12]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Counts[13]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Counts[14]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Counts[15]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Counts[16]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Counts[17]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Frequency_divider IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_Counts : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_Output : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \Enable~combout\ : std_logic;
SIGNAL \Edge_selector_module|FallSelector~regout\ : std_logic;
SIGNAL \Edge_selector_module|Fall~regout\ : std_logic;
SIGNAL \Edge_selector_module|Rise~regout\ : std_logic;
SIGNAL \state~regout\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_120\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_122\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_106\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_108\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_110\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_112\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_114\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_116\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_124\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Counter[0]~0_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_128\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_130\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~82COUT1_132\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Counter~1_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_118\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_126\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Out_t~0_combout\ : std_logic;
SIGNAL \Out_t~regout\ : std_logic;
SIGNAL Counter : std_logic_vector(17 DOWNTO 0);
SIGNAL \Counts~combout\ : std_logic_vector(17 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_Enable <= Enable;
ww_Counts <= Counts;
Output <= ww_Output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cyclone_io
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
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Enable~I\ : cyclone_io
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
	padio => ww_Enable,
	combout => \Enable~combout\);

-- Location: LC_X26_Y8_N0
\Edge_selector_module|FallSelector\ : cyclone_lcell
-- Equation(s):
-- \Edge_selector_module|FallSelector~regout\ = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Enable~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Enable~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Edge_selector_module|FallSelector~regout\);

-- Location: LC_X26_Y8_N7
\Edge_selector_module|Fall\ : cyclone_lcell
-- Equation(s):
-- \Edge_selector_module|Fall~regout\ = DFFEAS((((!\Enable~combout\ & \Edge_selector_module|FallSelector~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Enable~combout\,
	datad => \Edge_selector_module|FallSelector~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Edge_selector_module|Fall~regout\);

-- Location: LC_X26_Y8_N3
\Edge_selector_module|Rise\ : cyclone_lcell
-- Equation(s):
-- \Edge_selector_module|Rise~regout\ = DFFEAS((((\Enable~combout\ & !\Edge_selector_module|FallSelector~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Enable~combout\,
	datad => \Edge_selector_module|FallSelector~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Edge_selector_module|Rise~regout\);

-- Location: LC_X26_Y8_N1
state : cyclone_lcell
-- Equation(s):
-- \state~regout\ = DFFEAS((\state~regout\ & (((!\Edge_selector_module|Fall~regout\)))) # (!\state~regout\ & (((\Edge_selector_module|Rise~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \state~regout\,
	datac => \Edge_selector_module|Fall~regout\,
	datad => \Edge_selector_module|Rise~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state~regout\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Counts[16]~I\ : cyclone_io
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
	padio => ww_Counts(16),
	combout => \Counts~combout\(16));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Counts[13]~I\ : cyclone_io
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
	padio => ww_Counts(13),
	combout => \Counts~combout\(13));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Counts[8]~I\ : cyclone_io
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
	padio => ww_Counts(8),
	combout => \Counts~combout\(8));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Counts[17]~I\ : cyclone_io
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
	padio => ww_Counts(17),
	combout => \Counts~combout\(17));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Counts[15]~I\ : cyclone_io
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
	padio => ww_Counts(15),
	combout => \Counts~combout\(15));

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Counts[14]~I\ : cyclone_io
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
	padio => ww_Counts(14),
	combout => \Counts~combout\(14));

-- Location: LC_X25_Y8_N5
\Add0~70\ : cyclone_lcell
-- Equation(s):
-- \Add0~70_combout\ = (Counter(14) $ ((\Add0~67\)))
-- \Add0~72\ = CARRY(((Counter(14)) # (!\Add0~67\)))
-- \Add0~72COUT1_128\ = CARRY(((Counter(14)) # (!\Add0~67\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Counter(14),
	cin => \Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_128\);

-- Location: LC_X26_Y8_N2
\Equal0~5\ : cyclone_lcell
-- Equation(s):
-- \Equal0~5_combout\ = ((!Counter(17) & ((!Counter(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Counter(17),
	datad => Counter(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5_combout\);

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Counts[9]~I\ : cyclone_io
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
	padio => ww_Counts(9),
	combout => \Counts~combout\(9));

-- Location: LC_X25_Y8_N0
\Add0~45\ : cyclone_lcell
-- Equation(s):
-- \Add0~45_combout\ = (Counter(9) $ ((!\Add0~42\)))
-- \Add0~47\ = CARRY(((!Counter(9) & !\Add0~42\)))
-- \Add0~47COUT1_120\ = CARRY(((!Counter(9) & !\Add0~42\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Counter(9),
	cin => \Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_120\);

-- Location: LC_X26_Y9_N2
\Counter[9]\ : cyclone_lcell
-- Equation(s):
-- Counter(9) = DFFEAS((\Counts~combout\(9) & ((\Counter[0]~0_combout\) # ((!\Counter~1_combout\ & \Add0~45_combout\)))) # (!\Counts~combout\(9) & (!\Counter~1_combout\ & (\Add0~45_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counts~combout\(9),
	datab => \Counter~1_combout\,
	datac => \Add0~45_combout\,
	datad => \Counter[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter(9));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Counts[10]~I\ : cyclone_io
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
	padio => ww_Counts(10),
	combout => \Counts~combout\(10));

-- Location: LC_X25_Y8_N1
\Add0~50\ : cyclone_lcell
-- Equation(s):
-- \Add0~50_combout\ = (Counter(10) $ (((!\Add0~42\ & \Add0~47\) # (\Add0~42\ & \Add0~47COUT1_120\))))
-- \Add0~52\ = CARRY(((Counter(10)) # (!\Add0~47\)))
-- \Add0~52COUT1_122\ = CARRY(((Counter(10)) # (!\Add0~47COUT1_120\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Counter(10),
	cin => \Add0~42\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_122\);

-- Location: LC_X26_Y9_N7
\Counter[10]\ : cyclone_lcell
-- Equation(s):
-- Counter(10) = DFFEAS((\Counts~combout\(10) & ((\Counter[0]~0_combout\) # ((!\Counter~1_combout\ & \Add0~50_combout\)))) # (!\Counts~combout\(10) & (!\Counter~1_combout\ & (\Add0~50_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counts~combout\(10),
	datab => \Counter~1_combout\,
	datac => \Add0~50_combout\,
	datad => \Counter[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter(10));

-- Location: PIN_159,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Counts[11]~I\ : cyclone_io
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
	padio => ww_Counts(11),
	combout => \Counts~combout\(11));

-- Location: LC_X25_Y8_N2
\Add0~55\ : cyclone_lcell
-- Equation(s):
-- \Add0~55_combout\ = Counter(11) $ ((((!(!\Add0~42\ & \Add0~52\) # (\Add0~42\ & \Add0~52COUT1_122\)))))
-- \Add0~57\ = CARRY((!Counter(11) & ((!\Add0~52\))))
-- \Add0~57COUT1_124\ = CARRY((!Counter(11) & ((!\Add0~52COUT1_122\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Counter(11),
	cin => \Add0~42\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_124\);

-- Location: LC_X26_Y9_N0
\Counter[11]\ : cyclone_lcell
-- Equation(s):
-- Counter(11) = DFFEAS((\Counts~combout\(11) & ((\Counter[0]~0_combout\) # ((!\Counter~1_combout\ & \Add0~55_combout\)))) # (!\Counts~combout\(11) & (!\Counter~1_combout\ & (\Add0~55_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counts~combout\(11),
	datab => \Counter~1_combout\,
	datac => \Add0~55_combout\,
	datad => \Counter[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter(11));

-- Location: LC_X26_Y9_N1
\Equal0~2\ : cyclone_lcell
-- Equation(s):
-- \Equal0~2_combout\ = (!Counter(9) & (!Counter(8) & (!Counter(10) & !Counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Counter(9),
	datab => Counter(8),
	datac => Counter(10),
	datad => Counter(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2_combout\);

-- Location: LC_X25_Y9_N1
\Add0~0\ : cyclone_lcell
-- Equation(s):
-- \Add0~0_combout\ = ((!Counter(0)))
-- \Add0~2\ = CARRY(((Counter(0))))
-- \Add0~2COUT1_106\ = CARRY(((Counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Counter(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_106\);

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Counts[0]~I\ : cyclone_io
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
	padio => ww_Counts(0),
	combout => \Counts~combout\(0));

-- Location: LC_X24_Y9_N0
\Counter[0]\ : cyclone_lcell
-- Equation(s):
-- Counter(0) = DFFEAS((\Add0~0_combout\ & (((\Counts~combout\(0) & \Counter[0]~0_combout\)) # (!\Counter~1_combout\))) # (!\Add0~0_combout\ & (\Counts~combout\(0) & (\Counter[0]~0_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Add0~0_combout\,
	datab => \Counts~combout\(0),
	datac => \Counter[0]~0_combout\,
	datad => \Counter~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter(0));

-- Location: LC_X25_Y9_N2
\Add0~5\ : cyclone_lcell
-- Equation(s):
-- \Add0~5_combout\ = (Counter(1) $ ((!\Add0~2\)))
-- \Add0~7\ = CARRY(((!Counter(1) & !\Add0~2\)))
-- \Add0~7COUT1_108\ = CARRY(((!Counter(1) & !\Add0~2COUT1_106\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Counter(1),
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_108\);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Counts[1]~I\ : cyclone_io
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
	padio => ww_Counts(1),
	combout => \Counts~combout\(1));

-- Location: LC_X24_Y9_N2
\Counter[1]\ : cyclone_lcell
-- Equation(s):
-- Counter(1) = DFFEAS((\Add0~5_combout\ & (((\Counts~combout\(1) & \Counter[0]~0_combout\)) # (!\Counter~1_combout\))) # (!\Add0~5_combout\ & (\Counts~combout\(1) & (\Counter[0]~0_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Add0~5_combout\,
	datab => \Counts~combout\(1),
	datac => \Counter[0]~0_combout\,
	datad => \Counter~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter(1));

-- Location: LC_X25_Y9_N3
\Add0~10\ : cyclone_lcell
-- Equation(s):
-- \Add0~10_combout\ = (Counter(2) $ ((\Add0~7\)))
-- \Add0~12\ = CARRY(((Counter(2)) # (!\Add0~7\)))
-- \Add0~12COUT1_110\ = CARRY(((Counter(2)) # (!\Add0~7COUT1_108\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Counter(2),
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_110\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Counts[2]~I\ : cyclone_io
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
	padio => ww_Counts(2),
	combout => \Counts~combout\(2));

-- Location: LC_X24_Y9_N9
\Counter[2]\ : cyclone_lcell
-- Equation(s):
-- Counter(2) = DFFEAS((\Add0~10_combout\ & (((\Counts~combout\(2) & \Counter[0]~0_combout\)) # (!\Counter~1_combout\))) # (!\Add0~10_combout\ & (\Counts~combout\(2) & (\Counter[0]~0_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Add0~10_combout\,
	datab => \Counts~combout\(2),
	datac => \Counter[0]~0_combout\,
	datad => \Counter~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter(2));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Counts[3]~I\ : cyclone_io
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
	padio => ww_Counts(3),
	combout => \Counts~combout\(3));

-- Location: LC_X25_Y9_N4
\Add0~15\ : cyclone_lcell
-- Equation(s):
-- \Add0~15_combout\ = Counter(3) $ ((((!\Add0~12\))))
-- \Add0~17\ = CARRY((!Counter(3) & ((!\Add0~12COUT1_110\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Counter(3),
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout => \Add0~17\);

-- Location: LC_X24_Y9_N6
\Counter[3]\ : cyclone_lcell
-- Equation(s):
-- Counter(3) = DFFEAS((\Counts~combout\(3) & ((\Counter[0]~0_combout\) # ((\Add0~15_combout\ & !\Counter~1_combout\)))) # (!\Counts~combout\(3) & (\Add0~15_combout\ & ((!\Counter~1_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counts~combout\(3),
	datab => \Add0~15_combout\,
	datac => \Counter[0]~0_combout\,
	datad => \Counter~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter(3));

-- Location: LC_X24_Y9_N3
\Equal0~0\ : cyclone_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (!Counter(1) & (!Counter(0) & (!Counter(2) & !Counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Counter(1),
	datab => Counter(0),
	datac => Counter(2),
	datad => Counter(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Counts[4]~I\ : cyclone_io
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
	padio => ww_Counts(4),
	combout => \Counts~combout\(4));

-- Location: LC_X25_Y9_N5
\Add0~20\ : cyclone_lcell
-- Equation(s):
-- \Add0~20_combout\ = (Counter(4) $ ((\Add0~17\)))
-- \Add0~22\ = CARRY(((Counter(4)) # (!\Add0~17\)))
-- \Add0~22COUT1_112\ = CARRY(((Counter(4)) # (!\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Counter(4),
	cin => \Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_112\);

-- Location: LC_X24_Y9_N7
\Counter[4]\ : cyclone_lcell
-- Equation(s):
-- Counter(4) = DFFEAS((\Counts~combout\(4) & ((\Counter[0]~0_combout\) # ((\Add0~20_combout\ & !\Counter~1_combout\)))) # (!\Counts~combout\(4) & (\Add0~20_combout\ & ((!\Counter~1_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counts~combout\(4),
	datab => \Add0~20_combout\,
	datac => \Counter[0]~0_combout\,
	datad => \Counter~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter(4));

-- Location: LC_X25_Y9_N6
\Add0~25\ : cyclone_lcell
-- Equation(s):
-- \Add0~25_combout\ = Counter(5) $ ((((!(!\Add0~17\ & \Add0~22\) # (\Add0~17\ & \Add0~22COUT1_112\)))))
-- \Add0~27\ = CARRY((!Counter(5) & ((!\Add0~22\))))
-- \Add0~27COUT1_114\ = CARRY((!Counter(5) & ((!\Add0~22COUT1_112\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Counter(5),
	cin => \Add0~17\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_114\);

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Counts[5]~I\ : cyclone_io
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
	padio => ww_Counts(5),
	combout => \Counts~combout\(5));

-- Location: LC_X24_Y9_N1
\Counter[5]\ : cyclone_lcell
-- Equation(s):
-- Counter(5) = DFFEAS((\Add0~25_combout\ & (((\Counts~combout\(5) & \Counter[0]~0_combout\)) # (!\Counter~1_combout\))) # (!\Add0~25_combout\ & (\Counts~combout\(5) & (\Counter[0]~0_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Add0~25_combout\,
	datab => \Counts~combout\(5),
	datac => \Counter[0]~0_combout\,
	datad => \Counter~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter(5));

-- Location: LC_X25_Y9_N7
\Add0~30\ : cyclone_lcell
-- Equation(s):
-- \Add0~30_combout\ = (Counter(6) $ (((!\Add0~17\ & \Add0~27\) # (\Add0~17\ & \Add0~27COUT1_114\))))
-- \Add0~32\ = CARRY(((Counter(6)) # (!\Add0~27\)))
-- \Add0~32COUT1_116\ = CARRY(((Counter(6)) # (!\Add0~27COUT1_114\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Counter(6),
	cin => \Add0~17\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_116\);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Counts[6]~I\ : cyclone_io
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
	padio => ww_Counts(6),
	combout => \Counts~combout\(6));

-- Location: LC_X24_Y9_N4
\Counter[6]\ : cyclone_lcell
-- Equation(s):
-- Counter(6) = DFFEAS((\Add0~30_combout\ & (((\Counts~combout\(6) & \Counter[0]~0_combout\)) # (!\Counter~1_combout\))) # (!\Add0~30_combout\ & (\Counts~combout\(6) & (\Counter[0]~0_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Add0~30_combout\,
	datab => \Counts~combout\(6),
	datac => \Counter[0]~0_combout\,
	datad => \Counter~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter(6));

-- Location: LC_X25_Y9_N8
\Add0~35\ : cyclone_lcell
-- Equation(s):
-- \Add0~35_combout\ = (Counter(7) $ ((!(!\Add0~17\ & \Add0~32\) # (\Add0~17\ & \Add0~32COUT1_116\))))
-- \Add0~37\ = CARRY(((!Counter(7) & !\Add0~32\)))
-- \Add0~37COUT1_118\ = CARRY(((!Counter(7) & !\Add0~32COUT1_116\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Counter(7),
	cin => \Add0~17\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_118\);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Counts[7]~I\ : cyclone_io
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
	padio => ww_Counts(7),
	combout => \Counts~combout\(7));

-- Location: LC_X24_Y9_N5
\Counter[7]\ : cyclone_lcell
-- Equation(s):
-- Counter(7) = DFFEAS((\Add0~35_combout\ & (((\Counts~combout\(7) & \Counter[0]~0_combout\)) # (!\Counter~1_combout\))) # (!\Add0~35_combout\ & (\Counts~combout\(7) & (\Counter[0]~0_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Add0~35_combout\,
	datab => \Counts~combout\(7),
	datac => \Counter[0]~0_combout\,
	datad => \Counter~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter(7));

-- Location: LC_X24_Y9_N8
\Equal0~1\ : cyclone_lcell
-- Equation(s):
-- \Equal0~1_combout\ = (!Counter(4) & (!Counter(7) & (!Counter(6) & !Counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Counter(4),
	datab => Counter(7),
	datac => Counter(6),
	datad => Counter(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X25_Y8_N3
\Add0~60\ : cyclone_lcell
-- Equation(s):
-- \Add0~60_combout\ = (Counter(12) $ (((!\Add0~42\ & \Add0~57\) # (\Add0~42\ & \Add0~57COUT1_124\))))
-- \Add0~62\ = CARRY(((Counter(12)) # (!\Add0~57\)))
-- \Add0~62COUT1_126\ = CARRY(((Counter(12)) # (!\Add0~57COUT1_124\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Counter(12),
	cin => \Add0~42\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_126\);

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Counts[12]~I\ : cyclone_io
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
	padio => ww_Counts(12),
	combout => \Counts~combout\(12));

-- Location: LC_X26_Y8_N4
\Counter[12]\ : cyclone_lcell
-- Equation(s):
-- Counter(12) = DFFEAS((\Add0~60_combout\ & (((\Counts~combout\(12) & \Counter[0]~0_combout\)) # (!\Counter~1_combout\))) # (!\Add0~60_combout\ & (\Counts~combout\(12) & ((\Counter[0]~0_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Add0~60_combout\,
	datab => \Counts~combout\(12),
	datac => \Counter~1_combout\,
	datad => \Counter[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter(12));

-- Location: LC_X26_Y9_N5
\Equal0~3\ : cyclone_lcell
-- Equation(s):
-- \Equal0~3_combout\ = (!Counter(15) & (!Counter(14) & (!Counter(13) & !Counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Counter(15),
	datab => Counter(14),
	datac => Counter(13),
	datad => Counter(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3_combout\);

-- Location: LC_X26_Y9_N6
\Equal0~4\ : cyclone_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X25_Y9_N0
\Counter[0]~0\ : cyclone_lcell
-- Equation(s):
-- \Counter[0]~0_combout\ = (\state~regout\ & (((\Equal0~5_combout\ & \Equal0~4_combout\)))) # (!\state~regout\ & (\Edge_selector_module|Rise~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Edge_selector_module|Rise~regout\,
	datab => \state~regout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Counter[0]~0_combout\);

-- Location: LC_X26_Y9_N8
\Counter[14]\ : cyclone_lcell
-- Equation(s):
-- Counter(14) = DFFEAS((\Counts~combout\(14) & ((\Counter[0]~0_combout\) # ((!\Counter~1_combout\ & \Add0~70_combout\)))) # (!\Counts~combout\(14) & (!\Counter~1_combout\ & (\Add0~70_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counts~combout\(14),
	datab => \Counter~1_combout\,
	datac => \Add0~70_combout\,
	datad => \Counter[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter(14));

-- Location: LC_X25_Y8_N6
\Add0~75\ : cyclone_lcell
-- Equation(s):
-- \Add0~75_combout\ = Counter(15) $ ((((!(!\Add0~67\ & \Add0~72\) # (\Add0~67\ & \Add0~72COUT1_128\)))))
-- \Add0~77\ = CARRY((!Counter(15) & ((!\Add0~72\))))
-- \Add0~77COUT1_130\ = CARRY((!Counter(15) & ((!\Add0~72COUT1_128\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Counter(15),
	cin => \Add0~67\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_130\);

-- Location: LC_X26_Y9_N9
\Counter[15]\ : cyclone_lcell
-- Equation(s):
-- Counter(15) = DFFEAS((\Counts~combout\(15) & ((\Counter[0]~0_combout\) # ((!\Counter~1_combout\ & \Add0~75_combout\)))) # (!\Counts~combout\(15) & (!\Counter~1_combout\ & (\Add0~75_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counts~combout\(15),
	datab => \Counter~1_combout\,
	datac => \Add0~75_combout\,
	datad => \Counter[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter(15));

-- Location: LC_X25_Y8_N7
\Add0~80\ : cyclone_lcell
-- Equation(s):
-- \Add0~80_combout\ = Counter(16) $ (((((!\Add0~67\ & \Add0~77\) # (\Add0~67\ & \Add0~77COUT1_130\)))))
-- \Add0~82\ = CARRY((Counter(16)) # ((!\Add0~77\)))
-- \Add0~82COUT1_132\ = CARRY((Counter(16)) # ((!\Add0~77COUT1_130\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Counter(16),
	cin => \Add0~67\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout0 => \Add0~82\,
	cout1 => \Add0~82COUT1_132\);

-- Location: LC_X25_Y8_N8
\Add0~85\ : cyclone_lcell
-- Equation(s):
-- \Add0~85_combout\ = (((!\Add0~67\ & \Add0~82\) # (\Add0~67\ & \Add0~82COUT1_132\) $ (!Counter(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => Counter(17),
	cin => \Add0~67\,
	cin0 => \Add0~82\,
	cin1 => \Add0~82COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\);

-- Location: LC_X26_Y8_N5
\Counter[17]\ : cyclone_lcell
-- Equation(s):
-- Counter(17) = DFFEAS((\Counts~combout\(17) & ((\Counter[0]~0_combout\) # ((!\Counter~1_combout\ & \Add0~85_combout\)))) # (!\Counts~combout\(17) & (!\Counter~1_combout\ & (\Add0~85_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counts~combout\(17),
	datab => \Counter~1_combout\,
	datac => \Add0~85_combout\,
	datad => \Counter[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter(17));

-- Location: LC_X26_Y9_N3
\Counter~1\ : cyclone_lcell
-- Equation(s):
-- \Counter~1_combout\ = ((!Counter(17) & (!Counter(16) & \Equal0~4_combout\))) # (!\state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3733",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Counter(17),
	datab => \state~regout\,
	datac => Counter(16),
	datad => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Counter~1_combout\);

-- Location: LC_X25_Y9_N9
\Add0~40\ : cyclone_lcell
-- Equation(s):
-- \Add0~40_combout\ = (Counter(8) $ (((!\Add0~17\ & \Add0~37\) # (\Add0~17\ & \Add0~37COUT1_118\))))
-- \Add0~42\ = CARRY(((Counter(8)) # (!\Add0~37COUT1_118\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Counter(8),
	cin => \Add0~17\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_118\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout => \Add0~42\);

-- Location: LC_X26_Y9_N4
\Counter[8]\ : cyclone_lcell
-- Equation(s):
-- Counter(8) = DFFEAS((\Counts~combout\(8) & ((\Counter[0]~0_combout\) # ((!\Counter~1_combout\ & \Add0~40_combout\)))) # (!\Counts~combout\(8) & (!\Counter~1_combout\ & (\Add0~40_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counts~combout\(8),
	datab => \Counter~1_combout\,
	datac => \Add0~40_combout\,
	datad => \Counter[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter(8));

-- Location: LC_X25_Y8_N4
\Add0~65\ : cyclone_lcell
-- Equation(s):
-- \Add0~65_combout\ = Counter(13) $ ((((!(!\Add0~42\ & \Add0~62\) # (\Add0~42\ & \Add0~62COUT1_126\)))))
-- \Add0~67\ = CARRY((!Counter(13) & ((!\Add0~62COUT1_126\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Counter(13),
	cin => \Add0~42\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout => \Add0~67\);

-- Location: LC_X25_Y8_N9
\Counter[13]\ : cyclone_lcell
-- Equation(s):
-- Counter(13) = DFFEAS((\Counts~combout\(13) & ((\Counter[0]~0_combout\) # ((\Add0~65_combout\ & !\Counter~1_combout\)))) # (!\Counts~combout\(13) & (\Add0~65_combout\ & (!\Counter~1_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counts~combout\(13),
	datab => \Add0~65_combout\,
	datac => \Counter~1_combout\,
	datad => \Counter[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter(13));

-- Location: LC_X26_Y8_N6
\Counter[16]\ : cyclone_lcell
-- Equation(s):
-- Counter(16) = DFFEAS((\Counts~combout\(16) & ((\Counter[0]~0_combout\) # ((\Add0~80_combout\ & !\Counter~1_combout\)))) # (!\Counts~combout\(16) & (\Add0~80_combout\ & (!\Counter~1_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Counts~combout\(16),
	datab => \Add0~80_combout\,
	datac => \Counter~1_combout\,
	datad => \Counter[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter(16));

-- Location: LC_X26_Y8_N8
\Out_t~0\ : cyclone_lcell
-- Equation(s):
-- \Out_t~0_combout\ = (!Counter(16) & (!Counter(17) & (!\Edge_selector_module|Fall~regout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Counter(16),
	datab => Counter(17),
	datac => \Edge_selector_module|Fall~regout\,
	datad => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Out_t~0_combout\);

-- Location: LC_X26_Y8_N9
Out_t : cyclone_lcell
-- Equation(s):
-- \Out_t~regout\ = DFFEAS((\state~regout\ & (((\Out_t~0_combout\)))) # (!\state~regout\ & ((\Edge_selector_module|Rise~regout\) # ((\Out_t~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe54",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \state~regout\,
	datab => \Edge_selector_module|Rise~regout\,
	datac => \Out_t~regout\,
	datad => \Out_t~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Out_t~regout\);

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output~I\ : cyclone_io
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
	datain => \Out_t~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output);
END structure;


