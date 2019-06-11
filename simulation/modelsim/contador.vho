-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "06/11/2019 09:09:03"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	contador IS
    PORT (
	clock : IN std_logic;
	LED_out : BUFFER std_logic_vector(0 TO 6)
	);
END contador;

-- Design Ports Information
-- LED_out[6]	=>  Location: PIN_Y18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED_out[5]	=>  Location: PIN_Y19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED_out[4]	=>  Location: PIN_Y20,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED_out[3]	=>  Location: PIN_W18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED_out[2]	=>  Location: PIN_V17,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED_out[1]	=>  Location: PIN_V18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED_out[0]	=>  Location: PIN_V19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- clock	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_LED_out : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \clockcounter[0]~3_combout\ : std_logic;
SIGNAL \clockcounter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \clockcounter[1]~2_combout\ : std_logic;
SIGNAL \clockcounter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \clockcounter~0_combout\ : std_logic;
SIGNAL \clockcounter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \clockcounter[3]~1_combout\ : std_logic;
SIGNAL \clockcounter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \contagem[0]~0_combout\ : std_logic;
SIGNAL \contagem[1]~1_combout\ : std_logic;
SIGNAL \contagem[1]~DUPLICATE_q\ : std_logic;
SIGNAL \contagem[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \contagem[2]~2_combout\ : std_logic;
SIGNAL \contagem[2]~DUPLICATE_q\ : std_logic;
SIGNAL \contagem[3]~3_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL contagem : std_logic_vector(3 DOWNTO 0);
SIGNAL clockcounter : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clockcounter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clockcounter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clockcounter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clockcounter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_contagem[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_contagem[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_contagem[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL ALT_INV_clockcounter : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL ALT_INV_contagem : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clock <= clock;
LED_out <= ww_LED_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clockcounter[0]~DUPLICATE_q\ <= NOT \clockcounter[0]~DUPLICATE_q\;
\ALT_INV_clockcounter[1]~DUPLICATE_q\ <= NOT \clockcounter[1]~DUPLICATE_q\;
\ALT_INV_clockcounter[3]~DUPLICATE_q\ <= NOT \clockcounter[3]~DUPLICATE_q\;
\ALT_INV_clockcounter[2]~DUPLICATE_q\ <= NOT \clockcounter[2]~DUPLICATE_q\;
\ALT_INV_contagem[2]~DUPLICATE_q\ <= NOT \contagem[2]~DUPLICATE_q\;
\ALT_INV_contagem[1]~DUPLICATE_q\ <= NOT \contagem[1]~DUPLICATE_q\;
\ALT_INV_contagem[0]~DUPLICATE_q\ <= NOT \contagem[0]~DUPLICATE_q\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_clockcounter(0) <= NOT clockcounter(0);
ALT_INV_clockcounter(1) <= NOT clockcounter(1);
ALT_INV_clockcounter(3) <= NOT clockcounter(3);
ALT_INV_clockcounter(2) <= NOT clockcounter(2);
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
ALT_INV_contagem(3) <= NOT contagem(3);
ALT_INV_contagem(2) <= NOT contagem(2);
ALT_INV_contagem(1) <= NOT contagem(1);
ALT_INV_contagem(0) <= NOT contagem(0);

-- Location: IOOBUF_X62_Y0_N42
\LED_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_out(6));

-- Location: IOOBUF_X65_Y0_N19
\LED_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_out(5));

-- Location: IOOBUF_X65_Y0_N2
\LED_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_out(4));

-- Location: IOOBUF_X66_Y0_N19
\LED_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_out(3));

-- Location: IOOBUF_X64_Y0_N19
\LED_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_out(2));

-- Location: IOOBUF_X64_Y0_N2
\LED_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_out(1));

-- Location: IOOBUF_X66_Y0_N2
\LED_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_out(0));

-- Location: IOIBUF_X38_Y61_N1
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G12
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: FF_X65_Y2_N22
\clockcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \clockcounter[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(1));

-- Location: FF_X65_Y2_N17
\clockcounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \clockcounter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(0));

-- Location: LABCELL_X65_Y2_N15
\clockcounter[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockcounter[0]~3_combout\ = !clockcounter(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clockcounter(0),
	combout => \clockcounter[0]~3_combout\);

-- Location: FF_X65_Y2_N16
\clockcounter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \clockcounter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockcounter[0]~DUPLICATE_q\);

-- Location: LABCELL_X65_Y2_N21
\clockcounter[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockcounter[1]~2_combout\ = ( \clockcounter[0]~DUPLICATE_q\ & ( !clockcounter(1) ) ) # ( !\clockcounter[0]~DUPLICATE_q\ & ( clockcounter(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clockcounter(1),
	dataf => \ALT_INV_clockcounter[0]~DUPLICATE_q\,
	combout => \clockcounter[1]~2_combout\);

-- Location: FF_X65_Y2_N23
\clockcounter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \clockcounter[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockcounter[1]~DUPLICATE_q\);

-- Location: FF_X65_Y2_N25
\clockcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \clockcounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(2));

-- Location: LABCELL_X65_Y2_N24
\clockcounter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockcounter~0_combout\ = ( \clockcounter[0]~DUPLICATE_q\ & ( (!\clockcounter[1]~DUPLICATE_q\ & ((clockcounter(2)))) # (\clockcounter[1]~DUPLICATE_q\ & (\clockcounter[3]~DUPLICATE_q\ & !clockcounter(2))) ) ) # ( !\clockcounter[0]~DUPLICATE_q\ & ( 
-- clockcounter(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111100000000001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clockcounter[3]~DUPLICATE_q\,
	datac => \ALT_INV_clockcounter[1]~DUPLICATE_q\,
	datad => ALT_INV_clockcounter(2),
	dataf => \ALT_INV_clockcounter[0]~DUPLICATE_q\,
	combout => \clockcounter~0_combout\);

-- Location: FF_X65_Y2_N26
\clockcounter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \clockcounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockcounter[2]~DUPLICATE_q\);

-- Location: FF_X65_Y2_N58
\clockcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \clockcounter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(3));

-- Location: LABCELL_X65_Y2_N57
\clockcounter[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockcounter[3]~1_combout\ = ( clockcounter(3) & ( clockcounter(1) & ( (!clockcounter(0)) # (!\clockcounter[2]~DUPLICATE_q\) ) ) ) # ( !clockcounter(3) & ( clockcounter(1) & ( (clockcounter(0) & \clockcounter[2]~DUPLICATE_q\) ) ) ) # ( clockcounter(3) & 
-- ( !clockcounter(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000011111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clockcounter(0),
	datad => \ALT_INV_clockcounter[2]~DUPLICATE_q\,
	datae => ALT_INV_clockcounter(3),
	dataf => ALT_INV_clockcounter(1),
	combout => \clockcounter[3]~1_combout\);

-- Location: FF_X65_Y2_N59
\clockcounter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \clockcounter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockcounter[3]~DUPLICATE_q\);

-- Location: FF_X65_Y2_N43
\contagem[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem(1));

-- Location: LABCELL_X65_Y2_N39
\contagem[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem[0]~0_combout\ = ( contagem(0) & ( clockcounter(1) & ( (!\clockcounter[0]~DUPLICATE_q\) # ((\clockcounter[2]~DUPLICATE_q\) # (\clockcounter[3]~DUPLICATE_q\)) ) ) ) # ( !contagem(0) & ( clockcounter(1) & ( (\clockcounter[0]~DUPLICATE_q\ & 
-- (!\clockcounter[3]~DUPLICATE_q\ & !\clockcounter[2]~DUPLICATE_q\)) ) ) ) # ( contagem(0) & ( !clockcounter(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110000000000001100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clockcounter[0]~DUPLICATE_q\,
	datac => \ALT_INV_clockcounter[3]~DUPLICATE_q\,
	datad => \ALT_INV_clockcounter[2]~DUPLICATE_q\,
	datae => ALT_INV_contagem(0),
	dataf => ALT_INV_clockcounter(1),
	combout => \contagem[0]~0_combout\);

-- Location: FF_X65_Y2_N40
\contagem[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem(0));

-- Location: LABCELL_X65_Y2_N42
\contagem[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem[1]~1_combout\ = ( contagem(1) & ( contagem(0) & ( (!\clockcounter[1]~DUPLICATE_q\) # (((!\clockcounter[0]~DUPLICATE_q\) # (clockcounter(2))) # (\clockcounter[3]~DUPLICATE_q\)) ) ) ) # ( !contagem(1) & ( contagem(0) & ( 
-- (\clockcounter[1]~DUPLICATE_q\ & (!\clockcounter[3]~DUPLICATE_q\ & (\clockcounter[0]~DUPLICATE_q\ & !clockcounter(2)))) ) ) ) # ( contagem(1) & ( !contagem(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000100000000001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clockcounter[1]~DUPLICATE_q\,
	datab => \ALT_INV_clockcounter[3]~DUPLICATE_q\,
	datac => \ALT_INV_clockcounter[0]~DUPLICATE_q\,
	datad => ALT_INV_clockcounter(2),
	datae => ALT_INV_contagem(1),
	dataf => ALT_INV_contagem(0),
	combout => \contagem[1]~1_combout\);

-- Location: FF_X65_Y2_N44
\contagem[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contagem[1]~DUPLICATE_q\);

-- Location: FF_X65_Y2_N41
\contagem[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contagem[0]~DUPLICATE_q\);

-- Location: FF_X65_Y2_N52
\contagem[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem(2));

-- Location: LABCELL_X65_Y2_N30
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !clockcounter(3) & ( (clockcounter(0) & (!\clockcounter[2]~DUPLICATE_q\ & \clockcounter[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_clockcounter(0),
	datac => \ALT_INV_clockcounter[2]~DUPLICATE_q\,
	datad => \ALT_INV_clockcounter[1]~DUPLICATE_q\,
	dataf => ALT_INV_clockcounter(3),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X65_Y2_N51
\contagem[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem[2]~2_combout\ = ( \Equal0~0_combout\ & ( !contagem(2) $ (((!\contagem[0]~DUPLICATE_q\) # (!\contagem[1]~DUPLICATE_q\))) ) ) # ( !\Equal0~0_combout\ & ( contagem(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_contagem[0]~DUPLICATE_q\,
	datac => \ALT_INV_contagem[1]~DUPLICATE_q\,
	datad => ALT_INV_contagem(2),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \contagem[2]~2_combout\);

-- Location: FF_X65_Y2_N53
\contagem[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contagem[2]~DUPLICATE_q\);

-- Location: LABCELL_X65_Y2_N6
\contagem[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem[3]~3_combout\ = ( contagem(3) & ( \Equal0~0_combout\ & ( (!\contagem[1]~DUPLICATE_q\) # ((!\contagem[2]~DUPLICATE_q\) # (!\contagem[0]~DUPLICATE_q\)) ) ) ) # ( !contagem(3) & ( \Equal0~0_combout\ & ( (\contagem[1]~DUPLICATE_q\ & 
-- (\contagem[2]~DUPLICATE_q\ & \contagem[0]~DUPLICATE_q\)) ) ) ) # ( contagem(3) & ( !\Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000111111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_contagem[1]~DUPLICATE_q\,
	datac => \ALT_INV_contagem[2]~DUPLICATE_q\,
	datad => \ALT_INV_contagem[0]~DUPLICATE_q\,
	datae => ALT_INV_contagem(3),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \contagem[3]~3_combout\);

-- Location: FF_X65_Y2_N7
\contagem[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem(3));

-- Location: LABCELL_X65_Y2_N18
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \contagem[0]~DUPLICATE_q\ & ( (!\contagem[1]~DUPLICATE_q\ $ (!\contagem[2]~DUPLICATE_q\)) # (contagem(3)) ) ) # ( !\contagem[0]~DUPLICATE_q\ & ( (!\contagem[2]~DUPLICATE_q\ $ (!contagem(3))) # (\contagem[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111110101010111111111010101011010111111110101101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_contagem[1]~DUPLICATE_q\,
	datac => \ALT_INV_contagem[2]~DUPLICATE_q\,
	datad => ALT_INV_contagem(3),
	dataf => \ALT_INV_contagem[0]~DUPLICATE_q\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X65_Y2_N33
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \contagem[2]~DUPLICATE_q\ & ( (!\contagem[1]~DUPLICATE_q\ & (!\contagem[0]~DUPLICATE_q\ $ (contagem(3)))) # (\contagem[1]~DUPLICATE_q\ & (\contagem[0]~DUPLICATE_q\ & !contagem(3))) ) ) # ( !\contagem[2]~DUPLICATE_q\ & ( 
-- (!\contagem[0]~DUPLICATE_q\ & (\contagem[1]~DUPLICATE_q\)) # (\contagem[0]~DUPLICATE_q\ & ((!contagem(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010000010111110101000010100101000010101010010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_contagem[1]~DUPLICATE_q\,
	datac => \ALT_INV_contagem[0]~DUPLICATE_q\,
	datad => ALT_INV_contagem(3),
	dataf => \ALT_INV_contagem[2]~DUPLICATE_q\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X65_Y2_N48
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\contagem[1]~DUPLICATE_q\ & ((!\contagem[2]~DUPLICATE_q\ & (\contagem[0]~DUPLICATE_q\)) # (\contagem[2]~DUPLICATE_q\ & ((!contagem(3)))))) # (\contagem[1]~DUPLICATE_q\ & (\contagem[0]~DUPLICATE_q\ & ((!contagem(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100100000001110110010000000111011001000000011101100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_contagem[1]~DUPLICATE_q\,
	datab => \ALT_INV_contagem[0]~DUPLICATE_q\,
	datac => \ALT_INV_contagem[2]~DUPLICATE_q\,
	datad => ALT_INV_contagem(3),
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X65_Y2_N27
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \contagem[1]~DUPLICATE_q\ & ( (\contagem[0]~DUPLICATE_q\ & contagem(2)) ) ) # ( !\contagem[1]~DUPLICATE_q\ & ( (\contagem[0]~DUPLICATE_q\ & (!contagem(2) & !contagem(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_contagem[0]~DUPLICATE_q\,
	datac => ALT_INV_contagem(2),
	datad => ALT_INV_contagem(3),
	dataf => \ALT_INV_contagem[1]~DUPLICATE_q\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X65_Y2_N0
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \contagem[1]~DUPLICATE_q\ & ( (!contagem(3) & (!\contagem[0]~DUPLICATE_q\ & !contagem(2))) # (contagem(3) & ((contagem(2)))) ) ) # ( !\contagem[1]~DUPLICATE_q\ & ( (contagem(3) & (!\contagem[0]~DUPLICATE_q\ & contagem(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem(3),
	datac => \ALT_INV_contagem[0]~DUPLICATE_q\,
	datad => ALT_INV_contagem(2),
	dataf => \ALT_INV_contagem[1]~DUPLICATE_q\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X65_Y2_N3
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \contagem[2]~DUPLICATE_q\ & ( (!contagem(3) & (!\contagem[0]~DUPLICATE_q\ $ (!contagem(1)))) # (contagem(3) & ((!\contagem[0]~DUPLICATE_q\) # (contagem(1)))) ) ) # ( !\contagem[2]~DUPLICATE_q\ & ( (contagem(3) & 
-- (\contagem[0]~DUPLICATE_q\ & contagem(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011010111101010101101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem(3),
	datac => \ALT_INV_contagem[0]~DUPLICATE_q\,
	datad => ALT_INV_contagem(1),
	dataf => \ALT_INV_contagem[2]~DUPLICATE_q\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X65_Y2_N12
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \contagem[0]~DUPLICATE_q\ & ( (!\contagem[1]~DUPLICATE_q\ & (!\contagem[2]~DUPLICATE_q\ $ (contagem(3)))) # (\contagem[1]~DUPLICATE_q\ & (!\contagem[2]~DUPLICATE_q\ & contagem(3))) ) ) # ( !\contagem[0]~DUPLICATE_q\ & ( 
-- (!\contagem[1]~DUPLICATE_q\ & (\contagem[2]~DUPLICATE_q\ & !contagem(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010100000010110101010000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_contagem[1]~DUPLICATE_q\,
	datac => \ALT_INV_contagem[2]~DUPLICATE_q\,
	datad => ALT_INV_contagem(3),
	dataf => \ALT_INV_contagem[0]~DUPLICATE_q\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X67_Y49_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


