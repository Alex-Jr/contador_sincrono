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

-- DATE "06/11/2019 22:02:00"

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
	switch : IN std_logic_vector(0 DOWNTO 0);
	LED00_out : OUT std_logic_vector(0 TO 6);
	LED01_out : OUT std_logic_vector(0 TO 6);
	LED10_out : OUT std_logic_vector(0 TO 6);
	LED11_out : OUT std_logic_vector(0 TO 6)
	);
END contador;

-- Design Ports Information
-- LED00_out[6]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED00_out[5]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED00_out[4]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED00_out[3]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED00_out[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED00_out[1]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED00_out[0]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED01_out[6]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED01_out[5]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED01_out[4]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED01_out[3]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED01_out[2]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED01_out[1]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED01_out[0]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED10_out[6]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED10_out[5]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED10_out[4]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED10_out[3]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED10_out[2]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED10_out[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED10_out[0]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED11_out[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED11_out[5]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED11_out[4]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED11_out[3]	=>  Location: PIN_AD13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED11_out[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED11_out[1]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED11_out[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_switch : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LED00_out : std_logic_vector(0 TO 6);
SIGNAL ww_LED01_out : std_logic_vector(0 TO 6);
SIGNAL ww_LED10_out : std_logic_vector(0 TO 6);
SIGNAL ww_LED11_out : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \clockcounter[0]~3_combout\ : std_logic;
SIGNAL \clockcounter[1]~2_combout\ : std_logic;
SIGNAL \clockcounter[3]~1_combout\ : std_logic;
SIGNAL \clockcounter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \clockcounter~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \contagem00[0]~0_combout\ : std_logic;
SIGNAL \contagem00[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \LED00_out[6]~reg0_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \LED00_out[5]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \LED00_out[4]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \LED00_out[3]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \LED00_out[2]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \LED00_out[1]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \LED00_out[0]~reg0_q\ : std_logic;
SIGNAL \contagem01[0]~5_combout\ : std_logic;
SIGNAL \contagem01~0_combout\ : std_logic;
SIGNAL \contagem01~1_combout\ : std_logic;
SIGNAL \contagem01[3]~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \LED01_out[6]~reg0_q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \LED01_out[5]~reg0_q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \LED01_out[4]~reg0_q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \LED01_out[3]~reg0_q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \LED01_out[2]~reg0_q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \LED01_out[1]~reg0_q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \LED01_out[0]~reg0_q\ : std_logic;
SIGNAL \contagem01~3_combout\ : std_logic;
SIGNAL \contagem01~4_combout\ : std_logic;
SIGNAL \contagem10[0]~0_combout\ : std_logic;
SIGNAL \contagem10[0]~1_combout\ : std_logic;
SIGNAL \contagem10[0]~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \contagem10[3]~3_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \LED10_out[6]~reg0_q\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \LED10_out[5]~reg0_q\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \LED10_out[4]~reg0_q\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \LED10_out[3]~reg0_q\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \LED10_out[2]~reg0_q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \LED10_out[1]~reg0_q\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \LED10_out[0]~reg0_q\ : std_logic;
SIGNAL \contagem11[0]~0_combout\ : std_logic;
SIGNAL \contagem11[0]~1_combout\ : std_logic;
SIGNAL \contagem11[0]~2_combout\ : std_logic;
SIGNAL \contagem11[0]~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \contagem10~4_combout\ : std_logic;
SIGNAL \contagem11[3]~4_combout\ : std_logic;
SIGNAL \contagem11[3]~5_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \LED11_out[6]~reg0_q\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \LED11_out[5]~reg0_q\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \LED11_out[4]~reg0_q\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \LED11_out[3]~reg0_q\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \LED11_out[2]~reg0_q\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \LED11_out[1]~reg0_q\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \LED11_out[0]~reg0_q\ : std_logic;
SIGNAL contagem00 : std_logic_vector(3 DOWNTO 0);
SIGNAL clockcounter : std_logic_vector(3 DOWNTO 0);
SIGNAL contagem01 : std_logic_vector(3 DOWNTO 0);
SIGNAL contagem10 : std_logic_vector(3 DOWNTO 0);
SIGNAL contagem11 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clockcounter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_contagem00[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_switch[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_contagem11[3]~4_combout\ : std_logic;
SIGNAL \ALT_INV_contagem10~4_combout\ : std_logic;
SIGNAL \ALT_INV_contagem11[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_contagem11[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_contagem11[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_contagem10[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_contagem10[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_contagem01~4_combout\ : std_logic;
SIGNAL \ALT_INV_contagem01~3_combout\ : std_logic;
SIGNAL \ALT_INV_contagem01~1_combout\ : std_logic;
SIGNAL \ALT_INV_contagem01~0_combout\ : std_logic;
SIGNAL ALT_INV_contagem11 : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_contagem10 : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_contagem01 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL ALT_INV_clockcounter : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_contagem00 : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_switch <= switch;
LED00_out <= ww_LED00_out;
LED01_out <= ww_LED01_out;
LED10_out <= ww_LED10_out;
LED11_out <= ww_LED11_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clockcounter[3]~DUPLICATE_q\ <= NOT \clockcounter[3]~DUPLICATE_q\;
\ALT_INV_contagem00[0]~DUPLICATE_q\ <= NOT \contagem00[0]~DUPLICATE_q\;
\ALT_INV_switch[0]~input_o\ <= NOT \switch[0]~input_o\;
\ALT_INV_contagem11[3]~4_combout\ <= NOT \contagem11[3]~4_combout\;
\ALT_INV_contagem10~4_combout\ <= NOT \contagem10~4_combout\;
\ALT_INV_contagem11[0]~2_combout\ <= NOT \contagem11[0]~2_combout\;
\ALT_INV_contagem11[0]~1_combout\ <= NOT \contagem11[0]~1_combout\;
\ALT_INV_contagem11[0]~0_combout\ <= NOT \contagem11[0]~0_combout\;
\ALT_INV_contagem10[0]~1_combout\ <= NOT \contagem10[0]~1_combout\;
\ALT_INV_contagem10[0]~0_combout\ <= NOT \contagem10[0]~0_combout\;
\ALT_INV_contagem01~4_combout\ <= NOT \contagem01~4_combout\;
\ALT_INV_contagem01~3_combout\ <= NOT \contagem01~3_combout\;
\ALT_INV_contagem01~1_combout\ <= NOT \contagem01~1_combout\;
\ALT_INV_contagem01~0_combout\ <= NOT \contagem01~0_combout\;
ALT_INV_contagem11(3) <= NOT contagem11(3);
ALT_INV_contagem11(2) <= NOT contagem11(2);
ALT_INV_contagem11(1) <= NOT contagem11(1);
ALT_INV_contagem11(0) <= NOT contagem11(0);
ALT_INV_contagem10(3) <= NOT contagem10(3);
ALT_INV_contagem10(2) <= NOT contagem10(2);
ALT_INV_contagem10(1) <= NOT contagem10(1);
ALT_INV_contagem10(0) <= NOT contagem10(0);
ALT_INV_contagem01(3) <= NOT contagem01(3);
ALT_INV_contagem01(2) <= NOT contagem01(2);
ALT_INV_contagem01(1) <= NOT contagem01(1);
ALT_INV_contagem01(0) <= NOT contagem01(0);
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_clockcounter(1) <= NOT clockcounter(1);
ALT_INV_clockcounter(0) <= NOT clockcounter(0);
ALT_INV_clockcounter(3) <= NOT clockcounter(3);
ALT_INV_clockcounter(2) <= NOT clockcounter(2);
ALT_INV_contagem00(3) <= NOT contagem00(3);
ALT_INV_contagem00(2) <= NOT contagem00(2);
ALT_INV_contagem00(1) <= NOT contagem00(1);
ALT_INV_contagem00(0) <= NOT contagem00(0);

-- Location: IOOBUF_X38_Y0_N2
\LED00_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED00_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED00_out(6));

-- Location: IOOBUF_X42_Y0_N36
\LED00_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED00_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED00_out(5));

-- Location: IOOBUF_X36_Y0_N19
\LED00_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED00_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED00_out(4));

-- Location: IOOBUF_X36_Y0_N2
\LED00_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED00_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED00_out(3));

-- Location: IOOBUF_X40_Y0_N42
\LED00_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED00_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED00_out(2));

-- Location: IOOBUF_X40_Y0_N76
\LED00_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED00_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED00_out(1));

-- Location: IOOBUF_X40_Y0_N59
\LED00_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED00_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED00_out(0));

-- Location: IOOBUF_X38_Y0_N53
\LED01_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED01_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED01_out(6));

-- Location: IOOBUF_X38_Y0_N36
\LED01_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED01_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED01_out(5));

-- Location: IOOBUF_X44_Y0_N36
\LED01_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED01_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED01_out(4));

-- Location: IOOBUF_X42_Y0_N53
\LED01_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED01_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED01_out(3));

-- Location: IOOBUF_X40_Y0_N93
\LED01_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED01_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED01_out(2));

-- Location: IOOBUF_X42_Y0_N2
\LED01_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED01_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED01_out(1));

-- Location: IOOBUF_X42_Y0_N19
\LED01_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED01_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED01_out(0));

-- Location: IOOBUF_X44_Y0_N53
\LED10_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED10_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED10_out(6));

-- Location: IOOBUF_X38_Y0_N19
\LED10_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED10_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED10_out(5));

-- Location: IOOBUF_X36_Y0_N53
\LED10_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED10_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED10_out(4));

-- Location: IOOBUF_X44_Y0_N19
\LED10_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED10_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED10_out(3));

-- Location: IOOBUF_X46_Y0_N36
\LED10_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED10_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED10_out(2));

-- Location: IOOBUF_X44_Y0_N2
\LED10_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED10_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED10_out(1));

-- Location: IOOBUF_X34_Y0_N53
\LED10_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED10_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED10_out(0));

-- Location: IOOBUF_X32_Y0_N59
\LED11_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED11_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED11_out(6));

-- Location: IOOBUF_X32_Y0_N93
\LED11_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED11_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED11_out(5));

-- Location: IOOBUF_X32_Y0_N42
\LED11_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED11_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED11_out(4));

-- Location: IOOBUF_X34_Y0_N36
\LED11_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED11_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED11_out(3));

-- Location: IOOBUF_X34_Y0_N2
\LED11_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED11_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED11_out(2));

-- Location: IOOBUF_X34_Y0_N19
\LED11_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED11_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED11_out(1));

-- Location: IOOBUF_X32_Y0_N76
\LED11_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LED11_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED11_out(0));

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

-- Location: IOIBUF_X36_Y0_N35
\switch[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: LABCELL_X36_Y3_N9
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

-- Location: FF_X36_Y3_N10
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

-- Location: LABCELL_X36_Y3_N42
\clockcounter[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockcounter[1]~2_combout\ = ( clockcounter(0) & ( !clockcounter(1) ) ) # ( !clockcounter(0) & ( clockcounter(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clockcounter(1),
	dataf => ALT_INV_clockcounter(0),
	combout => \clockcounter[1]~2_combout\);

-- Location: FF_X36_Y3_N44
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

-- Location: FF_X36_Y3_N17
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

-- Location: LABCELL_X36_Y3_N15
\clockcounter[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockcounter[3]~1_combout\ = ( clockcounter(1) & ( !clockcounter(3) $ (((!clockcounter(0)) # (!clockcounter(2)))) ) ) # ( !clockcounter(1) & ( clockcounter(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clockcounter(0),
	datac => ALT_INV_clockcounter(2),
	datad => ALT_INV_clockcounter(3),
	dataf => ALT_INV_clockcounter(1),
	combout => \clockcounter[3]~1_combout\);

-- Location: FF_X36_Y3_N16
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

-- Location: LABCELL_X36_Y3_N12
\clockcounter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockcounter~0_combout\ = ( \clockcounter[3]~DUPLICATE_q\ & ( !clockcounter(2) $ (((!clockcounter(1)) # (!clockcounter(0)))) ) ) # ( !\clockcounter[3]~DUPLICATE_q\ & ( (clockcounter(2) & ((!clockcounter(1)) # (!clockcounter(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_clockcounter(1),
	datac => ALT_INV_clockcounter(0),
	datad => ALT_INV_clockcounter(2),
	dataf => \ALT_INV_clockcounter[3]~DUPLICATE_q\,
	combout => \clockcounter~0_combout\);

-- Location: FF_X36_Y3_N14
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

-- Location: LABCELL_X36_Y3_N27
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !clockcounter(3) & ( (clockcounter(1) & (!clockcounter(2) & clockcounter(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_clockcounter(1),
	datac => ALT_INV_clockcounter(2),
	datad => ALT_INV_clockcounter(0),
	dataf => ALT_INV_clockcounter(3),
	combout => \Equal0~0_combout\);

-- Location: FF_X37_Y3_N52
\contagem00[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem00[0]~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem00(0));

-- Location: MLABCELL_X37_Y3_N51
\contagem00[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem00[0]~0_combout\ = !contagem00(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_contagem00(0),
	combout => \contagem00[0]~0_combout\);

-- Location: FF_X37_Y3_N53
\contagem00[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem00[0]~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contagem00[0]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y3_N42
\Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = ( \contagem00[0]~DUPLICATE_q\ & ( !\switch[0]~input_o\ $ (contagem00(1)) ) ) # ( !\contagem00[0]~DUPLICATE_q\ & ( !\switch[0]~input_o\ $ (!contagem00(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switch[0]~input_o\,
	datad => ALT_INV_contagem00(1),
	dataf => \ALT_INV_contagem00[0]~DUPLICATE_q\,
	combout => \Add3~0_combout\);

-- Location: FF_X37_Y3_N44
\contagem00[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add3~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem00(1));

-- Location: MLABCELL_X37_Y3_N54
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = ( contagem00(1) & ( !contagem00(2) $ (((!\contagem00[0]~DUPLICATE_q\) # (\switch[0]~input_o\))) ) ) # ( !contagem00(1) & ( !contagem00(2) $ (((!\switch[0]~input_o\) # (\contagem00[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011001111001100001100111100001100111100110000110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switch[0]~input_o\,
	datac => \ALT_INV_contagem00[0]~DUPLICATE_q\,
	datad => ALT_INV_contagem00(2),
	dataf => ALT_INV_contagem00(1),
	combout => \Add3~1_combout\);

-- Location: FF_X37_Y3_N56
\contagem00[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add3~1_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem00(2));

-- Location: MLABCELL_X37_Y3_N27
\Add3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = ( contagem00(1) & ( !contagem00(3) $ (((!\contagem00[0]~DUPLICATE_q\) # ((!contagem00(2)) # (\switch[0]~input_o\)))) ) ) # ( !contagem00(1) & ( !contagem00(3) $ ((((!\switch[0]~input_o\) # (contagem00(2))) # 
-- (\contagem00[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011110111000010001111011100010000111011110001000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_contagem00[0]~DUPLICATE_q\,
	datab => ALT_INV_contagem00(2),
	datac => \ALT_INV_switch[0]~input_o\,
	datad => ALT_INV_contagem00(3),
	dataf => ALT_INV_contagem00(1),
	combout => \Add3~2_combout\);

-- Location: FF_X37_Y3_N29
\contagem00[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add3~2_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem00(3));

-- Location: MLABCELL_X37_Y3_N21
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \contagem00[0]~DUPLICATE_q\ & ( (!contagem00(3) & (!contagem00(2) $ (contagem00(1)))) ) ) # ( !\contagem00[0]~DUPLICATE_q\ & ( (!contagem00(1) & (!contagem00(2) $ (contagem00(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000010100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem00(2),
	datac => ALT_INV_contagem00(1),
	datad => ALT_INV_contagem00(3),
	dataf => \ALT_INV_contagem00[0]~DUPLICATE_q\,
	combout => \Mux6~0_combout\);

-- Location: FF_X37_Y3_N22
\LED00_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux6~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED00_out[6]~reg0_q\);

-- Location: MLABCELL_X37_Y3_N36
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( contagem00(1) & ( (!\contagem00[0]~DUPLICATE_q\ & (!contagem00(2))) # (\contagem00[0]~DUPLICATE_q\ & ((!contagem00(3)))) ) ) # ( !contagem00(1) & ( (!\contagem00[0]~DUPLICATE_q\ & (contagem00(2) & !contagem00(3))) # 
-- (\contagem00[0]~DUPLICATE_q\ & (!contagem00(2) $ (contagem00(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010110100000010111110101101000001111010110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_contagem00[0]~DUPLICATE_q\,
	datac => ALT_INV_contagem00(2),
	datad => ALT_INV_contagem00(3),
	dataf => ALT_INV_contagem00(1),
	combout => \Mux5~0_combout\);

-- Location: FF_X37_Y3_N37
\LED00_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux5~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED00_out[5]~reg0_q\);

-- Location: MLABCELL_X37_Y3_N24
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( contagem00(1) & ( (\contagem00[0]~DUPLICATE_q\ & !contagem00(3)) ) ) # ( !contagem00(1) & ( (!contagem00(2) & (\contagem00[0]~DUPLICATE_q\)) # (contagem00(2) & ((!contagem00(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010000010111110101000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_contagem00[0]~DUPLICATE_q\,
	datac => ALT_INV_contagem00(2),
	datad => ALT_INV_contagem00(3),
	dataf => ALT_INV_contagem00(1),
	combout => \Mux4~0_combout\);

-- Location: FF_X37_Y3_N26
\LED00_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux4~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED00_out[4]~reg0_q\);

-- Location: MLABCELL_X37_Y3_N0
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( contagem00(1) & ( (contagem00(2) & \contagem00[0]~DUPLICATE_q\) ) ) # ( !contagem00(1) & ( (!contagem00(2) & (\contagem00[0]~DUPLICATE_q\ & !contagem00(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem00(2),
	datac => \ALT_INV_contagem00[0]~DUPLICATE_q\,
	datad => ALT_INV_contagem00(3),
	dataf => ALT_INV_contagem00(1),
	combout => \Mux3~0_combout\);

-- Location: FF_X37_Y3_N1
\LED00_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux3~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED00_out[3]~reg0_q\);

-- Location: MLABCELL_X37_Y3_N3
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( contagem00(1) & ( (!contagem00(2) & (!\contagem00[0]~DUPLICATE_q\ & !contagem00(3))) # (contagem00(2) & ((contagem00(3)))) ) ) # ( !contagem00(1) & ( (!\contagem00[0]~DUPLICATE_q\ & (contagem00(2) & contagem00(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_contagem00[0]~DUPLICATE_q\,
	datac => ALT_INV_contagem00(2),
	datad => ALT_INV_contagem00(3),
	dataf => ALT_INV_contagem00(1),
	combout => \Mux2~0_combout\);

-- Location: FF_X37_Y3_N4
\LED00_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED00_out[2]~reg0_q\);

-- Location: MLABCELL_X37_Y3_N33
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( contagem00(1) & ( (!\contagem00[0]~DUPLICATE_q\ & (contagem00(2))) # (\contagem00[0]~DUPLICATE_q\ & ((contagem00(3)))) ) ) # ( !contagem00(1) & ( (contagem00(2) & (!\contagem00[0]~DUPLICATE_q\ $ (!contagem00(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_contagem00[0]~DUPLICATE_q\,
	datac => ALT_INV_contagem00(2),
	datad => ALT_INV_contagem00(3),
	dataf => ALT_INV_contagem00(1),
	combout => \Mux1~0_combout\);

-- Location: FF_X37_Y3_N34
\LED00_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux1~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED00_out[1]~reg0_q\);

-- Location: MLABCELL_X37_Y3_N57
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( contagem00(3) & ( (contagem00(0) & (!contagem00(1) $ (!contagem00(2)))) ) ) # ( !contagem00(3) & ( (!contagem00(1) & (!contagem00(0) $ (!contagem00(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem00(1),
	datac => ALT_INV_contagem00(0),
	datad => ALT_INV_contagem00(2),
	dataf => ALT_INV_contagem00(3),
	combout => \Mux0~0_combout\);

-- Location: FF_X37_Y3_N58
\LED00_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux0~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED00_out[0]~reg0_q\);

-- Location: LABCELL_X36_Y3_N36
\contagem01[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem01[0]~5_combout\ = !contagem01(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_contagem01(0),
	combout => \contagem01[0]~5_combout\);

-- Location: LABCELL_X36_Y3_N45
\contagem01~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem01~0_combout\ = ( \contagem00[0]~DUPLICATE_q\ & ( (contagem00(1) & (contagem00(2) & contagem00(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem00(1),
	datac => ALT_INV_contagem00(2),
	datad => ALT_INV_contagem00(3),
	dataf => \ALT_INV_contagem00[0]~DUPLICATE_q\,
	combout => \contagem01~0_combout\);

-- Location: MLABCELL_X37_Y3_N18
\contagem01~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem01~1_combout\ = ( !contagem00(1) & ( (!contagem00(0) & (!contagem00(3) & !contagem00(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem00(0),
	datac => ALT_INV_contagem00(3),
	datad => ALT_INV_contagem00(2),
	dataf => ALT_INV_contagem00(1),
	combout => \contagem01~1_combout\);

-- Location: LABCELL_X36_Y3_N6
\contagem01[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem01[3]~2_combout\ = ( \contagem01~1_combout\ & ( (\Equal0~0_combout\ & ((\contagem01~0_combout\) # (\switch[0]~input_o\))) ) ) # ( !\contagem01~1_combout\ & ( (!\switch[0]~input_o\ & (\Equal0~0_combout\ & \contagem01~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switch[0]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_contagem01~0_combout\,
	dataf => \ALT_INV_contagem01~1_combout\,
	combout => \contagem01[3]~2_combout\);

-- Location: FF_X36_Y3_N38
\contagem01[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem01[0]~5_combout\,
	ena => \contagem01[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem01(0));

-- Location: LABCELL_X36_Y3_N21
\Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = ( contagem01(0) & ( !\switch[0]~input_o\ $ (contagem01(1)) ) ) # ( !contagem01(0) & ( !\switch[0]~input_o\ $ (!contagem01(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_switch[0]~input_o\,
	datad => ALT_INV_contagem01(1),
	dataf => ALT_INV_contagem01(0),
	combout => \Add2~0_combout\);

-- Location: FF_X36_Y3_N23
\contagem01[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~0_combout\,
	ena => \contagem01[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem01(1));

-- Location: LABCELL_X36_Y3_N57
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = ( contagem01(0) & ( !contagem01(2) $ (((!contagem01(1)) # (\switch[0]~input_o\))) ) ) # ( !contagem01(0) & ( !contagem01(2) $ (((!\switch[0]~input_o\) # (contagem01(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011011101001000101101110101000100101110110100010010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(1),
	datab => \ALT_INV_switch[0]~input_o\,
	datad => ALT_INV_contagem01(2),
	dataf => ALT_INV_contagem01(0),
	combout => \Add2~1_combout\);

-- Location: FF_X36_Y3_N59
\contagem01[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~1_combout\,
	ena => \contagem01[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem01(2));

-- Location: LABCELL_X36_Y3_N54
\Add2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = ( contagem01(2) & ( !contagem01(3) $ (((!contagem01(1)) # ((!contagem01(0)) # (\switch[0]~input_o\)))) ) ) # ( !contagem01(2) & ( !contagem01(3) $ ((((!\switch[0]~input_o\) # (contagem01(0))) # (contagem01(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011011111001000001101111100000100111110110000010011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(1),
	datab => \ALT_INV_switch[0]~input_o\,
	datac => ALT_INV_contagem01(0),
	datad => ALT_INV_contagem01(3),
	dataf => ALT_INV_contagem01(2),
	combout => \Add2~2_combout\);

-- Location: FF_X36_Y3_N56
\contagem01[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~2_combout\,
	ena => \contagem01[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem01(3));

-- Location: MLABCELL_X37_Y3_N39
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( contagem01(0) & ( (!contagem01(3) & (!contagem01(1) $ (contagem01(2)))) ) ) # ( !contagem01(0) & ( (!contagem01(1) & (!contagem01(2) $ (contagem01(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110011000011000000001100001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem01(1),
	datac => ALT_INV_contagem01(2),
	datad => ALT_INV_contagem01(3),
	dataf => ALT_INV_contagem01(0),
	combout => \Mux13~0_combout\);

-- Location: FF_X37_Y3_N40
\LED01_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux13~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED01_out[6]~reg0_q\);

-- Location: MLABCELL_X37_Y3_N15
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( contagem01(0) & ( !contagem01(3) $ (((!contagem01(1) & contagem01(2)))) ) ) # ( !contagem01(0) & ( (!contagem01(1) & (contagem01(2) & !contagem01(3))) # (contagem01(1) & (!contagem01(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001010000010110100101000011110101000010101111010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(1),
	datac => ALT_INV_contagem01(2),
	datad => ALT_INV_contagem01(3),
	dataf => ALT_INV_contagem01(0),
	combout => \Mux12~0_combout\);

-- Location: FF_X37_Y3_N16
\LED01_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux12~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED01_out[5]~reg0_q\);

-- Location: LABCELL_X38_Y3_N36
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( !contagem01(3) & ( contagem01(1) & ( contagem01(0) ) ) ) # ( contagem01(3) & ( !contagem01(1) & ( (!contagem01(2) & contagem01(0)) ) ) ) # ( !contagem01(3) & ( !contagem01(1) & ( (contagem01(0)) # (contagem01(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000011000000110000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem01(2),
	datac => ALT_INV_contagem01(0),
	datae => ALT_INV_contagem01(3),
	dataf => ALT_INV_contagem01(1),
	combout => \Mux11~0_combout\);

-- Location: FF_X38_Y3_N37
\LED01_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux11~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED01_out[4]~reg0_q\);

-- Location: MLABCELL_X37_Y3_N6
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( contagem01(0) & ( (!contagem01(1) & (!contagem01(2) & !contagem01(3))) # (contagem01(1) & (contagem01(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010011001000100011001100100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(1),
	datab => ALT_INV_contagem01(2),
	datad => ALT_INV_contagem01(3),
	dataf => ALT_INV_contagem01(0),
	combout => \Mux10~0_combout\);

-- Location: FF_X37_Y3_N7
\LED01_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux10~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED01_out[3]~reg0_q\);

-- Location: MLABCELL_X37_Y3_N30
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( contagem01(0) & ( (contagem01(2) & (contagem01(1) & contagem01(3))) ) ) # ( !contagem01(0) & ( (!contagem01(2) & (contagem01(1) & !contagem01(3))) # (contagem01(2) & ((contagem01(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110011000011000011001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem01(2),
	datac => ALT_INV_contagem01(1),
	datad => ALT_INV_contagem01(3),
	dataf => ALT_INV_contagem01(0),
	combout => \Mux9~0_combout\);

-- Location: FF_X37_Y3_N31
\LED01_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux9~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED01_out[2]~reg0_q\);

-- Location: MLABCELL_X37_Y3_N12
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( contagem01(0) & ( (!contagem01(1) & (contagem01(2) & !contagem01(3))) # (contagem01(1) & ((contagem01(3)))) ) ) # ( !contagem01(0) & ( (contagem01(2) & ((contagem01(3)) # (contagem01(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000100010011001100100010010101010010001001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(1),
	datab => ALT_INV_contagem01(2),
	datad => ALT_INV_contagem01(3),
	dataf => ALT_INV_contagem01(0),
	combout => \Mux8~0_combout\);

-- Location: FF_X37_Y3_N13
\LED01_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux8~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED01_out[1]~reg0_q\);

-- Location: MLABCELL_X37_Y3_N9
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( contagem01(0) & ( (!contagem01(1) & (!contagem01(2) $ (contagem01(3)))) # (contagem01(1) & (!contagem01(2) & contagem01(3))) ) ) # ( !contagem01(0) & ( (!contagem01(1) & (contagem01(2) & !contagem01(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010100000010110101010000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(1),
	datac => ALT_INV_contagem01(2),
	datad => ALT_INV_contagem01(3),
	dataf => ALT_INV_contagem01(0),
	combout => \Mux7~0_combout\);

-- Location: FF_X37_Y3_N10
\LED01_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux7~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED01_out[0]~reg0_q\);

-- Location: MLABCELL_X37_Y3_N45
\contagem01~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem01~3_combout\ = ( contagem00(1) & ( (contagem00(3) & (!\switch[0]~input_o\ & (contagem00(0) & contagem00(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem00(3),
	datab => \ALT_INV_switch[0]~input_o\,
	datac => ALT_INV_contagem00(0),
	datad => ALT_INV_contagem00(2),
	dataf => ALT_INV_contagem00(1),
	combout => \contagem01~3_combout\);

-- Location: MLABCELL_X37_Y3_N48
\contagem01~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem01~4_combout\ = ( !contagem00(1) & ( (!contagem00(3) & (\switch[0]~input_o\ & (!\contagem00[0]~DUPLICATE_q\ & !contagem00(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem00(3),
	datab => \ALT_INV_switch[0]~input_o\,
	datac => \ALT_INV_contagem00[0]~DUPLICATE_q\,
	datad => ALT_INV_contagem00(2),
	dataf => ALT_INV_contagem00(1),
	combout => \contagem01~4_combout\);

-- Location: LABCELL_X36_Y3_N18
\contagem10[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem10[0]~0_combout\ = ( contagem01(1) & ( (contagem01(0) & (contagem01(3) & contagem01(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(0),
	datac => ALT_INV_contagem01(3),
	datad => ALT_INV_contagem01(2),
	dataf => ALT_INV_contagem01(1),
	combout => \contagem10[0]~0_combout\);

-- Location: LABCELL_X36_Y3_N24
\contagem10[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem10[0]~1_combout\ = ( !contagem01(0) & ( (!contagem01(1) & (!contagem01(3) & !contagem01(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(1),
	datac => ALT_INV_contagem01(3),
	datad => ALT_INV_contagem01(2),
	dataf => ALT_INV_contagem01(0),
	combout => \contagem10[0]~1_combout\);

-- Location: LABCELL_X35_Y3_N48
\contagem10[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem10[0]~2_combout\ = ( contagem10(0) & ( \contagem10[0]~1_combout\ & ( (!\Equal0~0_combout\) # ((!\contagem01~4_combout\ & ((!\contagem01~3_combout\) # (!\contagem10[0]~0_combout\)))) ) ) ) # ( !contagem10(0) & ( \contagem10[0]~1_combout\ & ( 
-- (\Equal0~0_combout\ & (((\contagem01~3_combout\ & \contagem10[0]~0_combout\)) # (\contagem01~4_combout\))) ) ) ) # ( contagem10(0) & ( !\contagem10[0]~1_combout\ & ( (!\Equal0~0_combout\) # ((!\contagem01~3_combout\) # (!\contagem10[0]~0_combout\)) ) ) ) 
-- # ( !contagem10(0) & ( !\contagem10[0]~1_combout\ & ( (\Equal0~0_combout\ & (\contagem01~3_combout\ & \contagem10[0]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001111111111110111000000101000101011111101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_contagem01~3_combout\,
	datac => \ALT_INV_contagem01~4_combout\,
	datad => \ALT_INV_contagem10[0]~0_combout\,
	datae => ALT_INV_contagem10(0),
	dataf => \ALT_INV_contagem10[0]~1_combout\,
	combout => \contagem10[0]~2_combout\);

-- Location: FF_X35_Y3_N50
\contagem10[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem10[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem10(0));

-- Location: LABCELL_X36_Y3_N51
\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ( contagem10(0) & ( !\switch[0]~input_o\ $ (contagem10(1)) ) ) # ( !contagem10(0) & ( !\switch[0]~input_o\ $ (!contagem10(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_switch[0]~input_o\,
	datad => ALT_INV_contagem10(1),
	dataf => ALT_INV_contagem10(0),
	combout => \Add1~0_combout\);

-- Location: LABCELL_X36_Y3_N0
\contagem10[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem10[3]~3_combout\ = ( \contagem01~0_combout\ & ( \contagem01~1_combout\ & ( (\Equal0~0_combout\ & ((!\switch[0]~input_o\ & (\contagem10[0]~0_combout\)) # (\switch[0]~input_o\ & ((\contagem10[0]~1_combout\))))) ) ) ) # ( !\contagem01~0_combout\ & ( 
-- \contagem01~1_combout\ & ( (\switch[0]~input_o\ & (\contagem10[0]~1_combout\ & \Equal0~0_combout\)) ) ) ) # ( \contagem01~0_combout\ & ( !\contagem01~1_combout\ & ( (\contagem10[0]~0_combout\ & (!\switch[0]~input_o\ & \Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100010000000000000000110000000001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_contagem10[0]~0_combout\,
	datab => \ALT_INV_switch[0]~input_o\,
	datac => \ALT_INV_contagem10[0]~1_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_contagem01~0_combout\,
	dataf => \ALT_INV_contagem01~1_combout\,
	combout => \contagem10[3]~3_combout\);

-- Location: FF_X36_Y3_N53
\contagem10[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add1~0_combout\,
	ena => \contagem10[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem10(1));

-- Location: LABCELL_X36_Y3_N30
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = ( contagem10(1) & ( !contagem10(2) $ (((!contagem10(0)) # (\switch[0]~input_o\))) ) ) # ( !contagem10(1) & ( !contagem10(2) $ (((!\switch[0]~input_o\) # (contagem10(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011001111001100001100111100001100111100110000110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switch[0]~input_o\,
	datac => ALT_INV_contagem10(0),
	datad => ALT_INV_contagem10(2),
	dataf => ALT_INV_contagem10(1),
	combout => \Add1~1_combout\);

-- Location: FF_X36_Y3_N32
\contagem10[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add1~1_combout\,
	ena => \contagem10[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem10(2));

-- Location: LABCELL_X35_Y3_N6
\Add1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = ( contagem10(1) & ( !contagem10(3) $ (((!contagem10(0)) # ((!contagem10(2)) # (\switch[0]~input_o\)))) ) ) # ( !contagem10(1) & ( !contagem10(3) $ ((((!\switch[0]~input_o\) # (contagem10(2))) # (contagem10(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011110111000010001111011100010000111011110001000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem10(0),
	datab => ALT_INV_contagem10(2),
	datac => \ALT_INV_switch[0]~input_o\,
	datad => ALT_INV_contagem10(3),
	dataf => ALT_INV_contagem10(1),
	combout => \Add1~2_combout\);

-- Location: FF_X36_Y3_N5
\contagem10[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Add1~2_combout\,
	sload => VCC,
	ena => \contagem10[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem10(3));

-- Location: LABCELL_X38_Y3_N6
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( contagem10(3) & ( (contagem10(2) & (!contagem10(1) & !contagem10(0))) ) ) # ( !contagem10(3) & ( (!contagem10(2) & (!contagem10(1))) # (contagem10(2) & (contagem10(1) & contagem10(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100110001001100010011000100101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem10(2),
	datab => ALT_INV_contagem10(1),
	datac => ALT_INV_contagem10(0),
	dataf => ALT_INV_contagem10(3),
	combout => \Mux20~0_combout\);

-- Location: FF_X38_Y3_N7
\LED10_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux20~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED10_out[6]~reg0_q\);

-- Location: LABCELL_X38_Y3_N3
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( contagem10(3) & ( (!contagem10(0) & (contagem10(1) & !contagem10(2))) # (contagem10(0) & (!contagem10(1) & contagem10(2))) ) ) # ( !contagem10(3) & ( (!contagem10(0) & (!contagem10(1) $ (!contagem10(2)))) # (contagem10(0) & 
-- ((!contagem10(2)) # (contagem10(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100101010111111010010100001010010100000000101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem10(0),
	datac => ALT_INV_contagem10(1),
	datad => ALT_INV_contagem10(2),
	dataf => ALT_INV_contagem10(3),
	combout => \Mux19~0_combout\);

-- Location: FF_X38_Y3_N4
\LED10_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux19~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED10_out[5]~reg0_q\);

-- Location: LABCELL_X35_Y3_N33
\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( contagem10(0) & ( (!contagem10(3)) # ((!contagem10(2) & !contagem10(1))) ) ) # ( !contagem10(0) & ( (!contagem10(3) & (contagem10(2) & !contagem10(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000011111010101010101111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem10(3),
	datac => ALT_INV_contagem10(2),
	datad => ALT_INV_contagem10(1),
	dataf => ALT_INV_contagem10(0),
	combout => \Mux18~0_combout\);

-- Location: FF_X35_Y3_N34
\LED10_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux18~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED10_out[4]~reg0_q\);

-- Location: LABCELL_X38_Y3_N18
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( contagem10(3) & ( (contagem10(2) & (contagem10(1) & contagem10(0))) ) ) # ( !contagem10(3) & ( (contagem10(0) & (!contagem10(2) $ (contagem10(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem10(2),
	datab => ALT_INV_contagem10(1),
	datac => ALT_INV_contagem10(0),
	dataf => ALT_INV_contagem10(3),
	combout => \Mux17~0_combout\);

-- Location: FF_X38_Y3_N19
\LED10_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux17~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED10_out[3]~reg0_q\);

-- Location: LABCELL_X38_Y3_N15
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( contagem10(3) & ( (contagem10(2) & ((!contagem10(0)) # (contagem10(1)))) ) ) # ( !contagem10(3) & ( (!contagem10(0) & (contagem10(1) & !contagem10(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem10(0),
	datac => ALT_INV_contagem10(1),
	datad => ALT_INV_contagem10(2),
	dataf => ALT_INV_contagem10(3),
	combout => \Mux16~0_combout\);

-- Location: FF_X38_Y3_N16
\LED10_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux16~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED10_out[2]~reg0_q\);

-- Location: LABCELL_X38_Y3_N57
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( contagem10(3) & ( (!contagem10(0) & ((contagem10(2)))) # (contagem10(0) & (contagem10(1))) ) ) # ( !contagem10(3) & ( (contagem10(2) & (!contagem10(0) $ (!contagem10(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem10(0),
	datac => ALT_INV_contagem10(1),
	datad => ALT_INV_contagem10(2),
	dataf => ALT_INV_contagem10(3),
	combout => \Mux15~0_combout\);

-- Location: FF_X38_Y3_N58
\LED10_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux15~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED10_out[1]~reg0_q\);

-- Location: LABCELL_X35_Y3_N24
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( contagem10(2) & ( (!contagem10(1) & (!contagem10(3) $ (contagem10(0)))) ) ) # ( !contagem10(2) & ( (contagem10(0) & (!contagem10(3) $ (contagem10(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101000010100000010110100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem10(3),
	datac => ALT_INV_contagem10(0),
	datad => ALT_INV_contagem10(1),
	dataf => ALT_INV_contagem10(2),
	combout => \Mux14~0_combout\);

-- Location: FF_X35_Y3_N26
\LED10_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux14~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED10_out[0]~reg0_q\);

-- Location: LABCELL_X35_Y3_N39
\contagem11[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem11[0]~0_combout\ = ( contagem10(2) & ( (contagem10(0) & (contagem10(1) & contagem10(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem10(0),
	datac => ALT_INV_contagem10(1),
	datad => ALT_INV_contagem10(3),
	dataf => ALT_INV_contagem10(2),
	combout => \contagem11[0]~0_combout\);

-- Location: LABCELL_X35_Y3_N21
\contagem11[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem11[0]~1_combout\ = ( \contagem01~0_combout\ & ( (!\switch[0]~input_o\ & (\contagem10[0]~0_combout\ & \contagem11[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch[0]~input_o\,
	datac => \ALT_INV_contagem10[0]~0_combout\,
	datad => \ALT_INV_contagem11[0]~0_combout\,
	dataf => \ALT_INV_contagem01~0_combout\,
	combout => \contagem11[0]~1_combout\);

-- Location: LABCELL_X35_Y3_N9
\contagem11[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem11[0]~2_combout\ = ( !contagem10(0) & ( (!contagem10(2) & (!contagem10(1) & !contagem10(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem10(2),
	datac => ALT_INV_contagem10(1),
	datad => ALT_INV_contagem10(3),
	dataf => ALT_INV_contagem10(0),
	combout => \contagem11[0]~2_combout\);

-- Location: LABCELL_X35_Y3_N54
\contagem11[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem11[0]~3_combout\ = ( contagem11(0) & ( \contagem10[0]~1_combout\ & ( (!\Equal0~0_combout\) # ((!\contagem11[0]~1_combout\ & ((!\contagem01~4_combout\) # (!\contagem11[0]~2_combout\)))) ) ) ) # ( !contagem11(0) & ( \contagem10[0]~1_combout\ & ( 
-- (\Equal0~0_combout\ & (((\contagem01~4_combout\ & \contagem11[0]~2_combout\)) # (\contagem11[0]~1_combout\))) ) ) ) # ( contagem11(0) & ( !\contagem10[0]~1_combout\ & ( (!\Equal0~0_combout\) # (!\contagem11[0]~1_combout\) ) ) ) # ( !contagem11(0) & ( 
-- !\contagem10[0]~1_combout\ & ( (\Equal0~0_combout\ & \contagem11[0]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111110101111101000000101000101011111101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_contagem01~4_combout\,
	datac => \ALT_INV_contagem11[0]~1_combout\,
	datad => \ALT_INV_contagem11[0]~2_combout\,
	datae => ALT_INV_contagem11(0),
	dataf => \ALT_INV_contagem10[0]~1_combout\,
	combout => \contagem11[0]~3_combout\);

-- Location: FF_X35_Y3_N56
\contagem11[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem11[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem11(0));

-- Location: LABCELL_X35_Y3_N12
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( contagem11(0) & ( !\switch[0]~input_o\ $ (contagem11(1)) ) ) # ( !contagem11(0) & ( !\switch[0]~input_o\ $ (!contagem11(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_switch[0]~input_o\,
	datad => ALT_INV_contagem11(1),
	dataf => ALT_INV_contagem11(0),
	combout => \Add0~0_combout\);

-- Location: LABCELL_X36_Y3_N33
\contagem10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem10~4_combout\ = ( contagem01(1) & ( (contagem01(3) & (!\switch[0]~input_o\ & (contagem01(2) & contagem01(0)))) ) ) # ( !contagem01(1) & ( (!contagem01(3) & (\switch[0]~input_o\ & (!contagem01(2) & !contagem01(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(3),
	datab => \ALT_INV_switch[0]~input_o\,
	datac => ALT_INV_contagem01(2),
	datad => ALT_INV_contagem01(0),
	dataf => ALT_INV_contagem01(1),
	combout => \contagem10~4_combout\);

-- Location: LABCELL_X36_Y3_N39
\contagem11[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem11[3]~4_combout\ = ( contagem10(0) & ( (contagem10(1) & (!\switch[0]~input_o\ & (contagem10(2) & contagem10(3)))) ) ) # ( !contagem10(0) & ( (!contagem10(1) & (\switch[0]~input_o\ & (!contagem10(2) & !contagem10(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem10(1),
	datab => \ALT_INV_switch[0]~input_o\,
	datac => ALT_INV_contagem10(2),
	datad => ALT_INV_contagem10(3),
	dataf => ALT_INV_contagem10(0),
	combout => \contagem11[3]~4_combout\);

-- Location: LABCELL_X36_Y3_N48
\contagem11[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem11[3]~5_combout\ = ( \contagem11[3]~4_combout\ & ( (\contagem10~4_combout\ & (\Equal0~0_combout\ & ((\contagem01~4_combout\) # (\contagem01~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000100010000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_contagem10~4_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_contagem01~3_combout\,
	datad => \ALT_INV_contagem01~4_combout\,
	dataf => \ALT_INV_contagem11[3]~4_combout\,
	combout => \contagem11[3]~5_combout\);

-- Location: FF_X35_Y3_N14
\contagem11[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~0_combout\,
	ena => \contagem11[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem11(1));

-- Location: LABCELL_X35_Y3_N15
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = ( contagem11(1) & ( !contagem11(2) $ (((!contagem11(0)) # (\switch[0]~input_o\))) ) ) # ( !contagem11(1) & ( !contagem11(2) $ (((!\switch[0]~input_o\) # (contagem11(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011011101001000101101110101000100101110110100010010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem11(0),
	datab => \ALT_INV_switch[0]~input_o\,
	datad => ALT_INV_contagem11(2),
	dataf => ALT_INV_contagem11(1),
	combout => \Add0~1_combout\);

-- Location: FF_X35_Y3_N17
\contagem11[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~1_combout\,
	ena => \contagem11[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem11(2));

-- Location: LABCELL_X35_Y3_N18
\Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = ( contagem11(1) & ( !contagem11(3) $ ((((!contagem11(2)) # (!contagem11(0))) # (\switch[0]~input_o\))) ) ) # ( !contagem11(1) & ( !contagem11(3) $ (((!\switch[0]~input_o\) # ((contagem11(0)) # (contagem11(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010111111010000001011111100000010111111010000001011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch[0]~input_o\,
	datab => ALT_INV_contagem11(2),
	datac => ALT_INV_contagem11(0),
	datad => ALT_INV_contagem11(3),
	dataf => ALT_INV_contagem11(1),
	combout => \Add0~2_combout\);

-- Location: FF_X35_Y3_N20
\contagem11[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~2_combout\,
	ena => \contagem11[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem11(3));

-- Location: LABCELL_X35_Y3_N30
\Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( contagem11(3) & ( (!contagem11(1) & (contagem11(2) & !contagem11(0))) ) ) # ( !contagem11(3) & ( (!contagem11(1) & (!contagem11(2))) # (contagem11(1) & (contagem11(2) & contagem11(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000011110000001100001100001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem11(1),
	datac => ALT_INV_contagem11(2),
	datad => ALT_INV_contagem11(0),
	dataf => ALT_INV_contagem11(3),
	combout => \Mux27~0_combout\);

-- Location: FF_X35_Y3_N31
\LED11_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux27~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED11_out[6]~reg0_q\);

-- Location: LABCELL_X35_Y3_N27
\Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( contagem11(3) & ( (!contagem11(1) & (contagem11(2) & contagem11(0))) # (contagem11(1) & (!contagem11(2) & !contagem11(0))) ) ) # ( !contagem11(3) & ( (!contagem11(1) & (!contagem11(2) $ (!contagem11(0)))) # (contagem11(1) & 
-- ((!contagem11(2)) # (contagem11(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110011001111001111001100110000000011000011000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem11(1),
	datac => ALT_INV_contagem11(2),
	datad => ALT_INV_contagem11(0),
	dataf => ALT_INV_contagem11(3),
	combout => \Mux26~0_combout\);

-- Location: FF_X35_Y3_N28
\LED11_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux26~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED11_out[5]~reg0_q\);

-- Location: LABCELL_X35_Y3_N45
\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( contagem11(3) & ( (!contagem11(1) & (!contagem11(2) & contagem11(0))) ) ) # ( !contagem11(3) & ( ((!contagem11(1) & contagem11(2))) # (contagem11(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111111000011001111111100000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem11(1),
	datac => ALT_INV_contagem11(2),
	datad => ALT_INV_contagem11(0),
	dataf => ALT_INV_contagem11(3),
	combout => \Mux25~0_combout\);

-- Location: FF_X35_Y3_N46
\LED11_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux25~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED11_out[4]~reg0_q\);

-- Location: LABCELL_X35_Y3_N42
\Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( contagem11(3) & ( (contagem11(1) & (contagem11(2) & contagem11(0))) ) ) # ( !contagem11(3) & ( (contagem11(0) & (!contagem11(1) $ (contagem11(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011000000001100001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem11(1),
	datac => ALT_INV_contagem11(2),
	datad => ALT_INV_contagem11(0),
	dataf => ALT_INV_contagem11(3),
	combout => \Mux24~0_combout\);

-- Location: FF_X35_Y3_N44
\LED11_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux24~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED11_out[3]~reg0_q\);

-- Location: LABCELL_X35_Y3_N0
\Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( contagem11(3) & ( (contagem11(2) & ((!contagem11(0)) # (contagem11(1)))) ) ) # ( !contagem11(3) & ( (contagem11(1) & (!contagem11(2) & !contagem11(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem11(1),
	datac => ALT_INV_contagem11(2),
	datad => ALT_INV_contagem11(0),
	dataf => ALT_INV_contagem11(3),
	combout => \Mux23~0_combout\);

-- Location: FF_X35_Y3_N1
\LED11_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux23~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED11_out[2]~reg0_q\);

-- Location: LABCELL_X35_Y3_N3
\Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( contagem11(3) & ( (!contagem11(0) & ((contagem11(2)))) # (contagem11(0) & (contagem11(1))) ) ) # ( !contagem11(3) & ( (contagem11(2) & (!contagem11(0) $ (!contagem11(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem11(0),
	datab => ALT_INV_contagem11(1),
	datac => ALT_INV_contagem11(2),
	dataf => ALT_INV_contagem11(3),
	combout => \Mux22~0_combout\);

-- Location: FF_X35_Y3_N5
\LED11_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux22~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED11_out[1]~reg0_q\);

-- Location: LABCELL_X35_Y3_N36
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( contagem11(3) & ( (contagem11(0) & (!contagem11(1) $ (!contagem11(2)))) ) ) # ( !contagem11(3) & ( (!contagem11(1) & (!contagem11(2) $ (!contagem11(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem11(1),
	datac => ALT_INV_contagem11(2),
	datad => ALT_INV_contagem11(0),
	dataf => ALT_INV_contagem11(3),
	combout => \Mux21~0_combout\);

-- Location: FF_X35_Y3_N37
\LED11_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux21~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED11_out[0]~reg0_q\);

-- Location: LABCELL_X23_Y46_N3
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


