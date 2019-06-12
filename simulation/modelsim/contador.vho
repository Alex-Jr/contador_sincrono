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

-- DATE "06/11/2019 21:32:05"

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
	LED00_out : OUT std_logic_vector(0 TO 6);
	LED01_out : OUT std_logic_vector(0 TO 6);
	LED10_out : OUT std_logic_vector(0 TO 6);
	LED11_out : OUT std_logic_vector(0 TO 6)
	);
END contador;

-- Design Ports Information
-- LED00_out[6]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED00_out[5]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED00_out[4]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED00_out[3]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED00_out[2]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED00_out[1]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED00_out[0]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED01_out[6]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED01_out[5]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED01_out[4]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED01_out[3]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED01_out[2]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED01_out[1]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED01_out[0]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED10_out[6]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED10_out[5]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED10_out[4]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED10_out[3]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED10_out[2]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED10_out[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED10_out[0]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED11_out[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED11_out[5]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED11_out[4]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED11_out[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED11_out[2]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED11_out[1]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED11_out[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_LED00_out : std_logic_vector(0 TO 6);
SIGNAL ww_LED01_out : std_logic_vector(0 TO 6);
SIGNAL ww_LED10_out : std_logic_vector(0 TO 6);
SIGNAL ww_LED11_out : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \contagem00[0]~4_combout\ : std_logic;
SIGNAL \clockcounter~0_combout\ : std_logic;
SIGNAL \clockcounter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \clockcounter~1_combout\ : std_logic;
SIGNAL \clockcounter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \clockcounter[2]~2_combout\ : std_logic;
SIGNAL \clockcounter[3]~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \contagem00[0]~DUPLICATE_q\ : std_logic;
SIGNAL \contagem00[1]~3_combout\ : std_logic;
SIGNAL \contagem00[2]~0_combout\ : std_logic;
SIGNAL \contagem00[2]~2_combout\ : std_logic;
SIGNAL \contagem00[2]~DUPLICATE_q\ : std_logic;
SIGNAL \contagem00[3]~1_combout\ : std_logic;
SIGNAL \contagem00[3]~DUPLICATE_q\ : std_logic;
SIGNAL \contagem01[0]~0_combout\ : std_logic;
SIGNAL \contagem01[0]~DUPLICATE_q\ : std_logic;
SIGNAL \contagem01[1]~1_combout\ : std_logic;
SIGNAL \contagem01[2]~2_combout\ : std_logic;
SIGNAL \contagem01[1]~DUPLICATE_q\ : std_logic;
SIGNAL \contagem10[0]~0_combout\ : std_logic;
SIGNAL \contagem01[3]~3_combout\ : std_logic;
SIGNAL \contagem01[3]~DUPLICATE_q\ : std_logic;
SIGNAL \contagem10[0]~4_combout\ : std_logic;
SIGNAL \contagem10[1]~3_combout\ : std_logic;
SIGNAL \contagem10[2]~2_combout\ : std_logic;
SIGNAL \contagem10[3]~1_combout\ : std_logic;
SIGNAL \contagem11[3]~0_combout\ : std_logic;
SIGNAL \contagem11[0]~1_combout\ : std_logic;
SIGNAL \contagem11[1]~2_combout\ : std_logic;
SIGNAL \contagem11[1]~DUPLICATE_q\ : std_logic;
SIGNAL \contagem11[0]~DUPLICATE_q\ : std_logic;
SIGNAL \contagem11[2]~3_combout\ : std_logic;
SIGNAL \contagem11[2]~DUPLICATE_q\ : std_logic;
SIGNAL \contagem11[3]~4_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \LED00_out[6]~reg0_q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \LED00_out[5]~reg0_q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \LED00_out[4]~reg0_q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \LED00_out[3]~reg0_q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \LED00_out[2]~reg0_q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \LED00_out[1]~reg0_q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \LED00_out[0]~reg0_q\ : std_logic;
SIGNAL \contagem01[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \LED01_out[6]~reg0_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \LED01_out[5]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \LED01_out[4]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \LED01_out[3]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \LED01_out[2]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \LED01_out[1]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \LED01_out[0]~reg0_q\ : std_logic;
SIGNAL contagem11 : std_logic_vector(3 DOWNTO 0);
SIGNAL clockcounter : std_logic_vector(3 DOWNTO 0);
SIGNAL contagem01 : std_logic_vector(3 DOWNTO 0);
SIGNAL contagem10 : std_logic_vector(3 DOWNTO 0);
SIGNAL contagem00 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_contagem00[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_contagem00[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_contagem00[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_contagem01[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_contagem01[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_contagem01[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_contagem01[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clockcounter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clockcounter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_contagem11[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_contagem11[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_contagem11[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_contagem11[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_contagem10[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_contagem00[2]~0_combout\ : std_logic;
SIGNAL ALT_INV_contagem00 : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_contagem10 : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_contagem01 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL ALT_INV_clockcounter : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_contagem11 : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clock <= clock;
LED00_out <= ww_LED00_out;
LED01_out <= ww_LED01_out;
LED10_out <= ww_LED10_out;
LED11_out <= ww_LED11_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_contagem00[0]~DUPLICATE_q\ <= NOT \contagem00[0]~DUPLICATE_q\;
\ALT_INV_contagem00[2]~DUPLICATE_q\ <= NOT \contagem00[2]~DUPLICATE_q\;
\ALT_INV_contagem00[3]~DUPLICATE_q\ <= NOT \contagem00[3]~DUPLICATE_q\;
\ALT_INV_contagem01[3]~DUPLICATE_q\ <= NOT \contagem01[3]~DUPLICATE_q\;
\ALT_INV_contagem01[2]~DUPLICATE_q\ <= NOT \contagem01[2]~DUPLICATE_q\;
\ALT_INV_contagem01[1]~DUPLICATE_q\ <= NOT \contagem01[1]~DUPLICATE_q\;
\ALT_INV_contagem01[0]~DUPLICATE_q\ <= NOT \contagem01[0]~DUPLICATE_q\;
\ALT_INV_clockcounter[1]~DUPLICATE_q\ <= NOT \clockcounter[1]~DUPLICATE_q\;
\ALT_INV_clockcounter[0]~DUPLICATE_q\ <= NOT \clockcounter[0]~DUPLICATE_q\;
\ALT_INV_contagem11[2]~DUPLICATE_q\ <= NOT \contagem11[2]~DUPLICATE_q\;
\ALT_INV_contagem11[1]~DUPLICATE_q\ <= NOT \contagem11[1]~DUPLICATE_q\;
\ALT_INV_contagem11[0]~DUPLICATE_q\ <= NOT \contagem11[0]~DUPLICATE_q\;
\ALT_INV_contagem11[3]~0_combout\ <= NOT \contagem11[3]~0_combout\;
\ALT_INV_contagem10[0]~0_combout\ <= NOT \contagem10[0]~0_combout\;
\ALT_INV_contagem00[2]~0_combout\ <= NOT \contagem00[2]~0_combout\;
ALT_INV_contagem00(0) <= NOT contagem00(0);
ALT_INV_contagem00(1) <= NOT contagem00(1);
ALT_INV_contagem00(2) <= NOT contagem00(2);
ALT_INV_contagem00(3) <= NOT contagem00(3);
ALT_INV_contagem10(0) <= NOT contagem10(0);
ALT_INV_contagem10(1) <= NOT contagem10(1);
ALT_INV_contagem10(2) <= NOT contagem10(2);
ALT_INV_contagem10(3) <= NOT contagem10(3);
ALT_INV_contagem01(3) <= NOT contagem01(3);
ALT_INV_contagem01(2) <= NOT contagem01(2);
ALT_INV_contagem01(1) <= NOT contagem01(1);
ALT_INV_contagem01(0) <= NOT contagem01(0);
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_clockcounter(3) <= NOT clockcounter(3);
ALT_INV_clockcounter(2) <= NOT clockcounter(2);
ALT_INV_clockcounter(1) <= NOT clockcounter(1);
ALT_INV_clockcounter(0) <= NOT clockcounter(0);
ALT_INV_contagem11(3) <= NOT contagem11(3);
ALT_INV_contagem11(2) <= NOT contagem11(2);
ALT_INV_contagem11(1) <= NOT contagem11(1);
ALT_INV_contagem11(0) <= NOT contagem11(0);

-- Location: IOOBUF_X68_Y26_N56
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

-- Location: IOOBUF_X68_Y26_N22
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

-- Location: IOOBUF_X68_Y24_N39
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

-- Location: IOOBUF_X68_Y27_N22
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

-- Location: IOOBUF_X68_Y24_N5
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

-- Location: IOOBUF_X68_Y24_N22
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

-- Location: IOOBUF_X68_Y26_N39
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

-- Location: IOOBUF_X68_Y22_N45
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

-- Location: IOOBUF_X68_Y27_N56
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

-- Location: IOOBUF_X68_Y27_N39
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

-- Location: IOOBUF_X68_Y24_N56
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

-- Location: IOOBUF_X68_Y26_N5
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

-- Location: IOOBUF_X68_Y22_N79
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

-- Location: IOOBUF_X68_Y27_N5
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

-- Location: IOOBUF_X66_Y61_N19
\LED10_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED10_out(6));

-- Location: IOOBUF_X38_Y0_N2
\LED10_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED10_out(5));

-- Location: IOOBUF_X68_Y12_N22
\LED10_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED10_out(4));

-- Location: IOOBUF_X68_Y33_N22
\LED10_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED10_out(3));

-- Location: IOOBUF_X18_Y61_N53
\LED10_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED10_out(2));

-- Location: IOOBUF_X53_Y61_N19
\LED10_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED10_out(1));

-- Location: IOOBUF_X68_Y19_N22
\LED10_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED10_out(0));

-- Location: IOOBUF_X10_Y61_N76
\LED11_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED11_out(6));

-- Location: IOOBUF_X65_Y0_N19
\LED11_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED11_out(5));

-- Location: IOOBUF_X68_Y47_N62
\LED11_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED11_out(4));

-- Location: IOOBUF_X53_Y61_N36
\LED11_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED11_out(3));

-- Location: IOOBUF_X55_Y0_N42
\LED11_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED11_out(2));

-- Location: IOOBUF_X32_Y0_N76
\LED11_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED11_out(1));

-- Location: IOOBUF_X51_Y0_N2
\LED11_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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

-- Location: FF_X63_Y26_N29
\contagem01[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem01[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem01(3));

-- Location: FF_X63_Y26_N1
\contagem00[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem00[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem00(2));

-- Location: LABCELL_X64_Y26_N48
\contagem00[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem00[0]~4_combout\ = !contagem00(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_contagem00(0),
	combout => \contagem00[0]~4_combout\);

-- Location: FF_X64_Y26_N43
\clockcounter[0]\ : dffeas
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
	q => clockcounter(0));

-- Location: LABCELL_X64_Y26_N42
\clockcounter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockcounter~0_combout\ = ( \Equal0~0_combout\ & ( clockcounter(0) ) ) # ( !\Equal0~0_combout\ & ( !clockcounter(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clockcounter(0),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \clockcounter~0_combout\);

-- Location: FF_X64_Y26_N44
\clockcounter[0]~DUPLICATE\ : dffeas
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
	q => \clockcounter[0]~DUPLICATE_q\);

-- Location: FF_X64_Y26_N4
\clockcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \clockcounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(1));

-- Location: LABCELL_X64_Y26_N3
\clockcounter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockcounter~1_combout\ = ( \Equal0~0_combout\ & ( !\clockcounter[0]~DUPLICATE_q\ $ (clockcounter(1)) ) ) # ( !\Equal0~0_combout\ & ( !\clockcounter[0]~DUPLICATE_q\ $ (!clockcounter(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clockcounter[0]~DUPLICATE_q\,
	datad => ALT_INV_clockcounter(1),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \clockcounter~1_combout\);

-- Location: FF_X64_Y26_N5
\clockcounter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \clockcounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockcounter[1]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y26_N12
\clockcounter[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockcounter[2]~2_combout\ = ( clockcounter(0) & ( !\clockcounter[1]~DUPLICATE_q\ $ (!clockcounter(2)) ) ) # ( !clockcounter(0) & ( clockcounter(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clockcounter[1]~DUPLICATE_q\,
	datad => ALT_INV_clockcounter(2),
	dataf => ALT_INV_clockcounter(0),
	combout => \clockcounter[2]~2_combout\);

-- Location: FF_X64_Y26_N14
\clockcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \clockcounter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(2));

-- Location: LABCELL_X63_Y26_N57
\clockcounter[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockcounter[3]~3_combout\ = ( \clockcounter[0]~DUPLICATE_q\ & ( clockcounter(1) & ( !clockcounter(2) $ (!clockcounter(3)) ) ) ) # ( !\clockcounter[0]~DUPLICATE_q\ & ( clockcounter(1) & ( clockcounter(3) ) ) ) # ( \clockcounter[0]~DUPLICATE_q\ & ( 
-- !clockcounter(1) & ( clockcounter(3) ) ) ) # ( !\clockcounter[0]~DUPLICATE_q\ & ( !clockcounter(1) & ( clockcounter(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_clockcounter(2),
	datac => ALT_INV_clockcounter(3),
	datae => \ALT_INV_clockcounter[0]~DUPLICATE_q\,
	dataf => ALT_INV_clockcounter(1),
	combout => \clockcounter[3]~3_combout\);

-- Location: FF_X64_Y26_N59
\clockcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clockcounter[3]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(3));

-- Location: LABCELL_X64_Y26_N51
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !clockcounter(2) & ( (!clockcounter(3) & (!\clockcounter[0]~DUPLICATE_q\ & \clockcounter[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_clockcounter(3),
	datac => \ALT_INV_clockcounter[0]~DUPLICATE_q\,
	datad => \ALT_INV_clockcounter[1]~DUPLICATE_q\,
	dataf => ALT_INV_clockcounter(2),
	combout => \Equal0~0_combout\);

-- Location: FF_X64_Y26_N50
\contagem00[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem00[0]~4_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem00(0));

-- Location: FF_X64_Y26_N49
\contagem00[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem00[0]~4_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contagem00[0]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y26_N30
\contagem00[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem00[1]~3_combout\ = ( \Equal0~0_combout\ & ( !\contagem00[0]~DUPLICATE_q\ $ (!contagem00(1)) ) ) # ( !\Equal0~0_combout\ & ( contagem00(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_contagem00[0]~DUPLICATE_q\,
	datad => ALT_INV_contagem00(1),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \contagem00[1]~3_combout\);

-- Location: FF_X63_Y26_N31
\contagem00[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem00[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem00(1));

-- Location: LABCELL_X64_Y26_N18
\contagem00[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem00[2]~0_combout\ = ( \clockcounter[1]~DUPLICATE_q\ & ( !clockcounter(2) & ( (contagem00(0) & (!clockcounter(3) & (contagem00(1) & !\clockcounter[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem00(0),
	datab => ALT_INV_clockcounter(3),
	datac => ALT_INV_contagem00(1),
	datad => \ALT_INV_clockcounter[0]~DUPLICATE_q\,
	datae => \ALT_INV_clockcounter[1]~DUPLICATE_q\,
	dataf => ALT_INV_clockcounter(2),
	combout => \contagem00[2]~0_combout\);

-- Location: LABCELL_X63_Y26_N0
\contagem00[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem00[2]~2_combout\ = ( !contagem00(2) & ( \contagem00[2]~0_combout\ ) ) # ( contagem00(2) & ( !\contagem00[2]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_contagem00(2),
	dataf => \ALT_INV_contagem00[2]~0_combout\,
	combout => \contagem00[2]~2_combout\);

-- Location: FF_X63_Y26_N2
\contagem00[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem00[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contagem00[2]~DUPLICATE_q\);

-- Location: FF_X63_Y26_N26
\contagem00[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem00[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem00(3));

-- Location: LABCELL_X63_Y26_N24
\contagem00[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem00[3]~1_combout\ = ( \contagem00[2]~0_combout\ & ( !\contagem00[2]~DUPLICATE_q\ $ (!contagem00(3)) ) ) # ( !\contagem00[2]~0_combout\ & ( contagem00(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_contagem00[2]~DUPLICATE_q\,
	datad => ALT_INV_contagem00(3),
	dataf => \ALT_INV_contagem00[2]~0_combout\,
	combout => \contagem00[3]~1_combout\);

-- Location: FF_X63_Y26_N25
\contagem00[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem00[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contagem00[3]~DUPLICATE_q\);

-- Location: FF_X64_Y26_N17
\contagem01[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem01[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem01(0));

-- Location: LABCELL_X64_Y26_N15
\contagem01[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem01[0]~0_combout\ = ( \contagem00[2]~0_combout\ & ( !contagem01(0) $ (((!contagem00(2)) # (!\contagem00[3]~DUPLICATE_q\))) ) ) # ( !\contagem00[2]~0_combout\ & ( contagem01(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem00(2),
	datac => \ALT_INV_contagem00[3]~DUPLICATE_q\,
	datad => ALT_INV_contagem01(0),
	dataf => \ALT_INV_contagem00[2]~0_combout\,
	combout => \contagem01[0]~0_combout\);

-- Location: FF_X64_Y26_N16
\contagem01[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem01[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contagem01[0]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y26_N33
\contagem01[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem01[1]~1_combout\ = ( \contagem00[2]~0_combout\ & ( !contagem01(1) $ (((!\contagem00[2]~DUPLICATE_q\) # ((!\contagem01[0]~DUPLICATE_q\) # (!\contagem00[3]~DUPLICATE_q\)))) ) ) # ( !\contagem00[2]~0_combout\ & ( contagem01(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_contagem00[2]~DUPLICATE_q\,
	datab => \ALT_INV_contagem01[0]~DUPLICATE_q\,
	datac => \ALT_INV_contagem00[3]~DUPLICATE_q\,
	datad => ALT_INV_contagem01(1),
	dataf => \ALT_INV_contagem00[2]~0_combout\,
	combout => \contagem01[1]~1_combout\);

-- Location: FF_X63_Y26_N35
\contagem01[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem01[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem01(1));

-- Location: LABCELL_X63_Y26_N45
\contagem01[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem01[2]~2_combout\ = ( contagem01(2) & ( \contagem01[0]~DUPLICATE_q\ & ( (!contagem01(1)) # ((!contagem00(2)) # ((!\contagem00[2]~0_combout\) # (!contagem00(3)))) ) ) ) # ( !contagem01(2) & ( \contagem01[0]~DUPLICATE_q\ & ( (contagem01(1) & 
-- (contagem00(2) & (\contagem00[2]~0_combout\ & contagem00(3)))) ) ) ) # ( contagem01(2) & ( !\contagem01[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(1),
	datab => ALT_INV_contagem00(2),
	datac => \ALT_INV_contagem00[2]~0_combout\,
	datad => ALT_INV_contagem00(3),
	datae => ALT_INV_contagem01(2),
	dataf => \ALT_INV_contagem01[0]~DUPLICATE_q\,
	combout => \contagem01[2]~2_combout\);

-- Location: FF_X63_Y26_N46
\contagem01[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem01[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem01(2));

-- Location: FF_X63_Y26_N34
\contagem01[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem01[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contagem01[1]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y26_N6
\contagem10[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem10[0]~0_combout\ = ( \contagem01[1]~DUPLICATE_q\ & ( \contagem00[2]~0_combout\ & ( (contagem01(2) & (contagem00(2) & (\contagem00[3]~DUPLICATE_q\ & contagem01(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(2),
	datab => ALT_INV_contagem00(2),
	datac => \ALT_INV_contagem00[3]~DUPLICATE_q\,
	datad => ALT_INV_contagem01(0),
	datae => \ALT_INV_contagem01[1]~DUPLICATE_q\,
	dataf => \ALT_INV_contagem00[2]~0_combout\,
	combout => \contagem10[0]~0_combout\);

-- Location: LABCELL_X63_Y26_N27
\contagem01[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem01[3]~3_combout\ = ( \contagem10[0]~0_combout\ & ( !contagem01(3) ) ) # ( !\contagem10[0]~0_combout\ & ( contagem01(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_contagem01(3),
	dataf => \ALT_INV_contagem10[0]~0_combout\,
	combout => \contagem01[3]~3_combout\);

-- Location: FF_X63_Y26_N28
\contagem01[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem01[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contagem01[3]~DUPLICATE_q\);

-- Location: LABCELL_X65_Y26_N57
\contagem10[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem10[0]~4_combout\ = ( contagem10(0) & ( \contagem10[0]~0_combout\ & ( !\contagem01[3]~DUPLICATE_q\ ) ) ) # ( !contagem10(0) & ( \contagem10[0]~0_combout\ & ( \contagem01[3]~DUPLICATE_q\ ) ) ) # ( contagem10(0) & ( !\contagem10[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_contagem01[3]~DUPLICATE_q\,
	datae => ALT_INV_contagem10(0),
	dataf => \ALT_INV_contagem10[0]~0_combout\,
	combout => \contagem10[0]~4_combout\);

-- Location: FF_X65_Y26_N59
\contagem10[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem10[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem10(0));

-- Location: LABCELL_X65_Y26_N24
\contagem10[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem10[1]~3_combout\ = ( contagem10(1) & ( \contagem10[0]~0_combout\ & ( (!\contagem01[3]~DUPLICATE_q\) # (!contagem10(0)) ) ) ) # ( !contagem10(1) & ( \contagem10[0]~0_combout\ & ( (\contagem01[3]~DUPLICATE_q\ & contagem10(0)) ) ) ) # ( 
-- contagem10(1) & ( !\contagem10[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000010101011111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_contagem01[3]~DUPLICATE_q\,
	datad => ALT_INV_contagem10(0),
	datae => ALT_INV_contagem10(1),
	dataf => \ALT_INV_contagem10[0]~0_combout\,
	combout => \contagem10[1]~3_combout\);

-- Location: FF_X65_Y26_N26
\contagem10[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem10[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem10(1));

-- Location: LABCELL_X65_Y26_N21
\contagem10[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem10[2]~2_combout\ = ( contagem10(2) & ( \contagem10[0]~0_combout\ & ( (!contagem10(0)) # ((!\contagem01[3]~DUPLICATE_q\) # (!contagem10(1))) ) ) ) # ( !contagem10(2) & ( \contagem10[0]~0_combout\ & ( (contagem10(0) & (\contagem01[3]~DUPLICATE_q\ & 
-- contagem10(1))) ) ) ) # ( contagem10(2) & ( !\contagem10[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000111111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem10(0),
	datac => \ALT_INV_contagem01[3]~DUPLICATE_q\,
	datad => ALT_INV_contagem10(1),
	datae => ALT_INV_contagem10(2),
	dataf => \ALT_INV_contagem10[0]~0_combout\,
	combout => \contagem10[2]~2_combout\);

-- Location: FF_X65_Y26_N23
\contagem10[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem10[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem10(2));

-- Location: LABCELL_X65_Y26_N15
\contagem10[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem10[3]~1_combout\ = ( contagem10(3) & ( \contagem10[0]~0_combout\ & ( (!contagem10(1)) # ((!\contagem01[3]~DUPLICATE_q\) # ((!contagem10(0)) # (!contagem10(2)))) ) ) ) # ( !contagem10(3) & ( \contagem10[0]~0_combout\ & ( (contagem10(1) & 
-- (\contagem01[3]~DUPLICATE_q\ & (contagem10(0) & contagem10(2)))) ) ) ) # ( contagem10(3) & ( !\contagem10[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem10(1),
	datab => \ALT_INV_contagem01[3]~DUPLICATE_q\,
	datac => ALT_INV_contagem10(0),
	datad => ALT_INV_contagem10(2),
	datae => ALT_INV_contagem10(3),
	dataf => \ALT_INV_contagem10[0]~0_combout\,
	combout => \contagem10[3]~1_combout\);

-- Location: FF_X65_Y26_N17
\contagem10[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem10[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem10(3));

-- Location: LABCELL_X64_Y26_N24
\contagem11[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem11[3]~0_combout\ = ( contagem10(3) & ( \contagem10[0]~0_combout\ & ( (contagem10(2) & (contagem10(1) & (\contagem01[3]~DUPLICATE_q\ & contagem10(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem10(2),
	datab => ALT_INV_contagem10(1),
	datac => \ALT_INV_contagem01[3]~DUPLICATE_q\,
	datad => ALT_INV_contagem10(0),
	datae => ALT_INV_contagem10(3),
	dataf => \ALT_INV_contagem10[0]~0_combout\,
	combout => \contagem11[3]~0_combout\);

-- Location: LABCELL_X64_Y26_N54
\contagem11[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem11[0]~1_combout\ = ( \contagem11[3]~0_combout\ & ( !contagem11(0) ) ) # ( !\contagem11[3]~0_combout\ & ( contagem11(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_contagem11(0),
	dataf => \ALT_INV_contagem11[3]~0_combout\,
	combout => \contagem11[0]~1_combout\);

-- Location: FF_X64_Y26_N55
\contagem11[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem11[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem11(0));

-- Location: FF_X64_Y26_N34
\contagem11[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem11[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem11(1));

-- Location: LABCELL_X64_Y26_N33
\contagem11[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem11[1]~2_combout\ = ( \contagem11[3]~0_combout\ & ( !contagem11(0) $ (!contagem11(1)) ) ) # ( !\contagem11[3]~0_combout\ & ( contagem11(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_contagem11(0),
	datad => ALT_INV_contagem11(1),
	dataf => \ALT_INV_contagem11[3]~0_combout\,
	combout => \contagem11[1]~2_combout\);

-- Location: FF_X64_Y26_N35
\contagem11[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem11[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contagem11[1]~DUPLICATE_q\);

-- Location: FF_X64_Y26_N56
\contagem11[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem11[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contagem11[0]~DUPLICATE_q\);

-- Location: FF_X64_Y26_N31
\contagem11[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem11[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem11(2));

-- Location: LABCELL_X64_Y26_N30
\contagem11[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem11[2]~3_combout\ = ( \contagem11[3]~0_combout\ & ( !contagem11(2) $ (((!\contagem11[0]~DUPLICATE_q\) # (!\contagem11[1]~DUPLICATE_q\))) ) ) # ( !\contagem11[3]~0_combout\ & ( contagem11(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_contagem11[0]~DUPLICATE_q\,
	datac => \ALT_INV_contagem11[1]~DUPLICATE_q\,
	datad => ALT_INV_contagem11(2),
	dataf => \ALT_INV_contagem11[3]~0_combout\,
	combout => \contagem11[2]~3_combout\);

-- Location: FF_X64_Y26_N32
\contagem11[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem11[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contagem11[2]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y26_N45
\contagem11[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem11[3]~4_combout\ = ( \contagem11[3]~0_combout\ & ( !contagem11(3) $ (((!\contagem11[1]~DUPLICATE_q\) # ((!\contagem11[2]~DUPLICATE_q\) # (!contagem11(0))))) ) ) # ( !\contagem11[3]~0_combout\ & ( contagem11(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_contagem11[1]~DUPLICATE_q\,
	datab => \ALT_INV_contagem11[2]~DUPLICATE_q\,
	datac => ALT_INV_contagem11(0),
	datad => ALT_INV_contagem11(3),
	dataf => \ALT_INV_contagem11[3]~0_combout\,
	combout => \contagem11[3]~4_combout\);

-- Location: FF_X64_Y26_N47
\contagem11[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem11[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem11(3));

-- Location: LABCELL_X64_Y26_N57
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \contagem11[2]~DUPLICATE_q\ & ( (!\contagem11[1]~DUPLICATE_q\ & (contagem11(3) & !contagem11(0))) # (\contagem11[1]~DUPLICATE_q\ & (!contagem11(3) & contagem11(0))) ) ) # ( !\contagem11[2]~DUPLICATE_q\ & ( 
-- (!\contagem11[1]~DUPLICATE_q\ & !contagem11(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000100100001001000010010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_contagem11[1]~DUPLICATE_q\,
	datab => ALT_INV_contagem11(3),
	datac => ALT_INV_contagem11(0),
	dataf => \ALT_INV_contagem11[2]~DUPLICATE_q\,
	combout => \Mux13~0_combout\);

-- Location: FF_X64_Y26_N19
\LED00_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mux13~0_combout\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED00_out[6]~reg0_q\);

-- Location: LABCELL_X63_Y26_N48
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \contagem11[2]~DUPLICATE_q\ & ( (!contagem11(3) & (!\contagem11[1]~DUPLICATE_q\ $ (\contagem11[0]~DUPLICATE_q\))) # (contagem11(3) & (!\contagem11[1]~DUPLICATE_q\ & \contagem11[0]~DUPLICATE_q\)) ) ) # ( !\contagem11[2]~DUPLICATE_q\ & 
-- ( (!\contagem11[0]~DUPLICATE_q\ & ((\contagem11[1]~DUPLICATE_q\))) # (\contagem11[0]~DUPLICATE_q\ & (!contagem11(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001100000011111100110011000000001111001100000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem11(3),
	datac => \ALT_INV_contagem11[1]~DUPLICATE_q\,
	datad => \ALT_INV_contagem11[0]~DUPLICATE_q\,
	dataf => \ALT_INV_contagem11[2]~DUPLICATE_q\,
	combout => \Mux12~0_combout\);

-- Location: FF_X63_Y26_N49
\LED00_out[5]~reg0\ : dffeas
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
	q => \LED00_out[5]~reg0_q\);

-- Location: LABCELL_X64_Y26_N39
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( contagem11(2) & ( (!contagem11(3) & ((!\contagem11[1]~DUPLICATE_q\) # (\contagem11[0]~DUPLICATE_q\))) ) ) # ( !contagem11(2) & ( (\contagem11[0]~DUPLICATE_q\ & ((!\contagem11[1]~DUPLICATE_q\) # (!contagem11(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101010100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_contagem11[1]~DUPLICATE_q\,
	datac => ALT_INV_contagem11(3),
	datad => \ALT_INV_contagem11[0]~DUPLICATE_q\,
	dataf => ALT_INV_contagem11(2),
	combout => \Mux11~0_combout\);

-- Location: FF_X64_Y26_N40
\LED00_out[4]~reg0\ : dffeas
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
	q => \LED00_out[4]~reg0_q\);

-- Location: LABCELL_X64_Y26_N0
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \contagem11[2]~DUPLICATE_q\ & ( (\contagem11[1]~DUPLICATE_q\ & \contagem11[0]~DUPLICATE_q\) ) ) # ( !\contagem11[2]~DUPLICATE_q\ & ( (!contagem11(3) & (!\contagem11[1]~DUPLICATE_q\ & \contagem11[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem11(3),
	datac => \ALT_INV_contagem11[1]~DUPLICATE_q\,
	datad => \ALT_INV_contagem11[0]~DUPLICATE_q\,
	dataf => \ALT_INV_contagem11[2]~DUPLICATE_q\,
	combout => \Mux10~0_combout\);

-- Location: FF_X64_Y26_N25
\LED00_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mux10~0_combout\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED00_out[3]~reg0_q\);

-- Location: LABCELL_X63_Y26_N36
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \contagem11[2]~DUPLICATE_q\ & ( (contagem11(3) & ((!\contagem11[0]~DUPLICATE_q\) # (contagem11(1)))) ) ) # ( !\contagem11[2]~DUPLICATE_q\ & ( (contagem11(1) & (!contagem11(3) & !\contagem11[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem11(1),
	datac => ALT_INV_contagem11(3),
	datad => \ALT_INV_contagem11[0]~DUPLICATE_q\,
	dataf => \ALT_INV_contagem11[2]~DUPLICATE_q\,
	combout => \Mux9~0_combout\);

-- Location: FF_X64_Y26_N8
\LED00_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mux9~0_combout\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED00_out[2]~reg0_q\);

-- Location: LABCELL_X63_Y26_N21
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \contagem11[2]~DUPLICATE_q\ & ( (!\contagem11[1]~DUPLICATE_q\ & (!\contagem11[0]~DUPLICATE_q\ $ (!contagem11(3)))) # (\contagem11[1]~DUPLICATE_q\ & ((!\contagem11[0]~DUPLICATE_q\) # (contagem11(3)))) ) ) # ( 
-- !\contagem11[2]~DUPLICATE_q\ & ( (\contagem11[1]~DUPLICATE_q\ & (\contagem11[0]~DUPLICATE_q\ & contagem11(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011010111101010101101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_contagem11[1]~DUPLICATE_q\,
	datac => \ALT_INV_contagem11[0]~DUPLICATE_q\,
	datad => ALT_INV_contagem11(3),
	dataf => \ALT_INV_contagem11[2]~DUPLICATE_q\,
	combout => \Mux8~0_combout\);

-- Location: FF_X64_Y26_N22
\LED00_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mux8~0_combout\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED00_out[1]~reg0_q\);

-- Location: LABCELL_X64_Y26_N36
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( contagem11(3) & ( (\contagem11[0]~DUPLICATE_q\ & (!\contagem11[2]~DUPLICATE_q\ $ (!\contagem11[1]~DUPLICATE_q\))) ) ) # ( !contagem11(3) & ( (!\contagem11[1]~DUPLICATE_q\ & (!\contagem11[2]~DUPLICATE_q\ $ 
-- (!\contagem11[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_contagem11[2]~DUPLICATE_q\,
	datac => \ALT_INV_contagem11[1]~DUPLICATE_q\,
	datad => \ALT_INV_contagem11[0]~DUPLICATE_q\,
	dataf => ALT_INV_contagem11(3),
	combout => \Mux7~0_combout\);

-- Location: FF_X64_Y26_N37
\LED00_out[0]~reg0\ : dffeas
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
	q => \LED00_out[0]~reg0_q\);

-- Location: FF_X63_Y26_N47
\contagem01[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem01[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contagem01[2]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y26_N12
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \contagem01[0]~DUPLICATE_q\ & ( (!contagem01(3) & (!contagem01(1) $ (\contagem01[2]~DUPLICATE_q\))) ) ) # ( !\contagem01[0]~DUPLICATE_q\ & ( (!contagem01(1) & (!contagem01(3) $ (\contagem01[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101010100000010100001010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(1),
	datac => ALT_INV_contagem01(3),
	datad => \ALT_INV_contagem01[2]~DUPLICATE_q\,
	dataf => \ALT_INV_contagem01[0]~DUPLICATE_q\,
	combout => \Mux6~0_combout\);

-- Location: FF_X63_Y26_N13
\LED01_out[6]~reg0\ : dffeas
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
	q => \LED01_out[6]~reg0_q\);

-- Location: LABCELL_X63_Y26_N9
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \contagem01[0]~DUPLICATE_q\ & ( !contagem01(3) $ (((!contagem01(1) & \contagem01[2]~DUPLICATE_q\))) ) ) # ( !\contagem01[0]~DUPLICATE_q\ & ( (!contagem01(1) & (\contagem01[2]~DUPLICATE_q\ & !contagem01(3))) # (contagem01(1) & 
-- (!\contagem01[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001010000010110100101000011110101000010101111010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(1),
	datac => \ALT_INV_contagem01[2]~DUPLICATE_q\,
	datad => ALT_INV_contagem01(3),
	dataf => \ALT_INV_contagem01[0]~DUPLICATE_q\,
	combout => \Mux5~0_combout\);

-- Location: FF_X64_Y26_N29
\LED01_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mux5~0_combout\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED01_out[5]~reg0_q\);

-- Location: LABCELL_X63_Y26_N51
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \contagem01[0]~DUPLICATE_q\ & ( (!contagem01(3)) # ((!contagem01(1) & !\contagem01[2]~DUPLICATE_q\)) ) ) # ( !\contagem01[0]~DUPLICATE_q\ & ( (!contagem01(1) & (\contagem01[2]~DUPLICATE_q\ & !contagem01(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000011111111101000001111111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(1),
	datac => \ALT_INV_contagem01[2]~DUPLICATE_q\,
	datad => ALT_INV_contagem01(3),
	dataf => \ALT_INV_contagem01[0]~DUPLICATE_q\,
	combout => \Mux4~0_combout\);

-- Location: FF_X64_Y26_N52
\LED01_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mux4~0_combout\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED01_out[4]~reg0_q\);

-- Location: LABCELL_X63_Y26_N6
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \contagem01[0]~DUPLICATE_q\ & ( (!contagem01(1) & (!contagem01(3) & !\contagem01[2]~DUPLICATE_q\)) # (contagem01(1) & ((\contagem01[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(1),
	datac => ALT_INV_contagem01(3),
	datad => \ALT_INV_contagem01[2]~DUPLICATE_q\,
	dataf => \ALT_INV_contagem01[0]~DUPLICATE_q\,
	combout => \Mux3~0_combout\);

-- Location: FF_X63_Y26_N8
\LED01_out[3]~reg0\ : dffeas
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
	q => \LED01_out[3]~reg0_q\);

-- Location: LABCELL_X63_Y26_N15
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \contagem01[0]~DUPLICATE_q\ & ( (contagem01(1) & (\contagem01[2]~DUPLICATE_q\ & contagem01(3))) ) ) # ( !\contagem01[0]~DUPLICATE_q\ & ( (!\contagem01[2]~DUPLICATE_q\ & (contagem01(1) & !contagem01(3))) # (\contagem01[2]~DUPLICATE_q\ 
-- & ((contagem01(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001111010100000000111100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(1),
	datac => \ALT_INV_contagem01[2]~DUPLICATE_q\,
	datad => ALT_INV_contagem01(3),
	dataf => \ALT_INV_contagem01[0]~DUPLICATE_q\,
	combout => \Mux2~0_combout\);

-- Location: FF_X64_Y26_N10
\LED01_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mux2~0_combout\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED01_out[2]~reg0_q\);

-- Location: LABCELL_X63_Y26_N18
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \contagem01[0]~DUPLICATE_q\ & ( (!contagem01(1) & (\contagem01[2]~DUPLICATE_q\ & !contagem01(3))) # (contagem01(1) & ((contagem01(3)))) ) ) # ( !\contagem01[0]~DUPLICATE_q\ & ( (\contagem01[2]~DUPLICATE_q\ & ((contagem01(3)) # 
-- (contagem01(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_contagem01[2]~DUPLICATE_q\,
	datac => ALT_INV_contagem01(1),
	datad => ALT_INV_contagem01(3),
	dataf => \ALT_INV_contagem01[0]~DUPLICATE_q\,
	combout => \Mux1~0_combout\);

-- Location: FF_X63_Y26_N19
\LED01_out[1]~reg0\ : dffeas
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
	q => \LED01_out[1]~reg0_q\);

-- Location: LABCELL_X63_Y26_N39
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \contagem01[0]~DUPLICATE_q\ & ( (!contagem01(1) & (!\contagem01[2]~DUPLICATE_q\ $ (contagem01(3)))) # (contagem01(1) & (!\contagem01[2]~DUPLICATE_q\ & contagem01(3))) ) ) # ( !\contagem01[0]~DUPLICATE_q\ & ( (!contagem01(1) & 
-- (\contagem01[2]~DUPLICATE_q\ & !contagem01(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010100000010110101010000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(1),
	datac => \ALT_INV_contagem01[2]~DUPLICATE_q\,
	datad => ALT_INV_contagem01(3),
	dataf => \ALT_INV_contagem01[0]~DUPLICATE_q\,
	combout => \Mux0~0_combout\);

-- Location: FF_X63_Y26_N40
\LED01_out[0]~reg0\ : dffeas
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
	q => \LED01_out[0]~reg0_q\);

-- Location: LABCELL_X2_Y1_N0
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


