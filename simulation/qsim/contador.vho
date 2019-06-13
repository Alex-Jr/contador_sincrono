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

-- DATE "06/12/2019 21:34:51"

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
	switch : IN std_logic;
	LED00_out : OUT std_logic_vector(0 TO 6);
	LED01_out : OUT std_logic_vector(0 TO 6);
	LED10_out : OUT std_logic_vector(0 TO 6);
	LED11_out : OUT std_logic_vector(0 TO 6)
	);
END contador;

-- Design Ports Information
-- LED00_out[6]	=>  Location: PIN_Y18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED00_out[5]	=>  Location: PIN_Y19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED00_out[4]	=>  Location: PIN_Y20,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED00_out[3]	=>  Location: PIN_W18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED00_out[2]	=>  Location: PIN_V17,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED00_out[1]	=>  Location: PIN_V18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED00_out[0]	=>  Location: PIN_V19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED01_out[6]	=>  Location: PIN_AF24,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED01_out[5]	=>  Location: PIN_AC19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED01_out[4]	=>  Location: PIN_AE25,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED01_out[3]	=>  Location: PIN_AE26,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED01_out[2]	=>  Location: PIN_AB19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED01_out[1]	=>  Location: PIN_AD26,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED01_out[0]	=>  Location: PIN_AA18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LED10_out[6]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LED10_out[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LED10_out[4]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LED10_out[3]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LED10_out[2]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LED10_out[1]	=>  Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LED10_out[0]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LED11_out[6]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LED11_out[5]	=>  Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LED11_out[4]	=>  Location: PIN_AC24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LED11_out[3]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LED11_out[2]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LED11_out[1]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LED11_out[0]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- clock	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_switch : std_logic;
SIGNAL ww_LED00_out : std_logic_vector(0 TO 6);
SIGNAL ww_LED01_out : std_logic_vector(0 TO 6);
SIGNAL ww_LED10_out : std_logic_vector(0 TO 6);
SIGNAL ww_LED11_out : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add8~53_sumout\ : std_logic;
SIGNAL \Add8~22\ : std_logic;
SIGNAL \Add8~25_sumout\ : std_logic;
SIGNAL \Add8~26\ : std_logic;
SIGNAL \Add8~1_sumout\ : std_logic;
SIGNAL \clockcounter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \clockcounter~0_combout\ : std_logic;
SIGNAL \Add8~54\ : std_logic;
SIGNAL \Add8~57_sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add8~58\ : std_logic;
SIGNAL \Add8~61_sumout\ : std_logic;
SIGNAL \clockcounter~1_combout\ : std_logic;
SIGNAL \Add8~62\ : std_logic;
SIGNAL \Add8~65_sumout\ : std_logic;
SIGNAL \clockcounter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add8~66\ : std_logic;
SIGNAL \Add8~69_sumout\ : std_logic;
SIGNAL \Add8~70\ : std_logic;
SIGNAL \Add8~73_sumout\ : std_logic;
SIGNAL \Add8~74\ : std_logic;
SIGNAL \Add8~77_sumout\ : std_logic;
SIGNAL \Add8~78\ : std_logic;
SIGNAL \Add8~81_sumout\ : std_logic;
SIGNAL \Add8~82\ : std_logic;
SIGNAL \Add8~85_sumout\ : std_logic;
SIGNAL \clockcounter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Add8~86\ : std_logic;
SIGNAL \Add8~89_sumout\ : std_logic;
SIGNAL \Add8~90\ : std_logic;
SIGNAL \Add8~93_sumout\ : std_logic;
SIGNAL \Add8~94\ : std_logic;
SIGNAL \Add8~97_sumout\ : std_logic;
SIGNAL \Add8~98\ : std_logic;
SIGNAL \Add8~29_sumout\ : std_logic;
SIGNAL \clockcounter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add8~30\ : std_logic;
SIGNAL \Add8~33_sumout\ : std_logic;
SIGNAL \Add8~34\ : std_logic;
SIGNAL \Add8~37_sumout\ : std_logic;
SIGNAL \Add8~38\ : std_logic;
SIGNAL \Add8~41_sumout\ : std_logic;
SIGNAL \Add8~42\ : std_logic;
SIGNAL \Add8~45_sumout\ : std_logic;
SIGNAL \Add8~46\ : std_logic;
SIGNAL \Add8~49_sumout\ : std_logic;
SIGNAL \clockcounter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Add8~50\ : std_logic;
SIGNAL \Add8~5_sumout\ : std_logic;
SIGNAL \Add8~6\ : std_logic;
SIGNAL \Add8~9_sumout\ : std_logic;
SIGNAL \Add8~10\ : std_logic;
SIGNAL \Add8~13_sumout\ : std_logic;
SIGNAL \Add8~14\ : std_logic;
SIGNAL \Add8~17_sumout\ : std_logic;
SIGNAL \Add8~18\ : std_logic;
SIGNAL \Add8~21_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \switch~input_o\ : std_logic;
SIGNAL \contagem00[0]~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \contagem00[1]~_wirecell_combout\ : std_logic;
SIGNAL \contagem00[2]~1_combout\ : std_logic;
SIGNAL \contagem00~2_combout\ : std_logic;
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
SIGNAL \contagem01[0]~2_combout\ : std_logic;
SIGNAL \contagem01[3]~0_combout\ : std_logic;
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
SIGNAL \contagem10[0]~0_combout\ : std_logic;
SIGNAL \contagem10[0]~1_combout\ : std_logic;
SIGNAL \contagem10~2_combout\ : std_logic;
SIGNAL \contagem10[0]~3_combout\ : std_logic;
SIGNAL \contagem10[0]~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \contagem10~5_combout\ : std_logic;
SIGNAL \contagem01~1_combout\ : std_logic;
SIGNAL \contagem10[3]~6_combout\ : std_logic;
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
SIGNAL \contagem11[0]~1_combout\ : std_logic;
SIGNAL \contagem11[0]~0_combout\ : std_logic;
SIGNAL \contagem11[0]~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \contagem11[3]~3_combout\ : std_logic;
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
SIGNAL clockcounter : std_logic_vector(24 DOWNTO 0);
SIGNAL contagem01 : std_logic_vector(3 DOWNTO 0);
SIGNAL contagem10 : std_logic_vector(3 DOWNTO 0);
SIGNAL contagem11 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clockcounter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clockcounter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clockcounter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clockcounter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clockcounter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_switch~input_o\ : std_logic;
SIGNAL \ALT_INV_contagem11[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_contagem11[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_contagem10~5_combout\ : std_logic;
SIGNAL \ALT_INV_contagem01~1_combout\ : std_logic;
SIGNAL \ALT_INV_contagem10[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_contagem10~2_combout\ : std_logic;
SIGNAL \ALT_INV_contagem10[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_contagem10[0]~0_combout\ : std_logic;
SIGNAL ALT_INV_contagem11 : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_contagem10 : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_contagem01 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL ALT_INV_clockcounter : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL ALT_INV_contagem00 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Add8~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~53_sumout\ : std_logic;

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
\ALT_INV_clockcounter[10]~DUPLICATE_q\ <= NOT \clockcounter[10]~DUPLICATE_q\;
\ALT_INV_clockcounter[8]~DUPLICATE_q\ <= NOT \clockcounter[8]~DUPLICATE_q\;
\ALT_INV_clockcounter[3]~DUPLICATE_q\ <= NOT \clockcounter[3]~DUPLICATE_q\;
\ALT_INV_clockcounter[17]~DUPLICATE_q\ <= NOT \clockcounter[17]~DUPLICATE_q\;
\ALT_INV_clockcounter[12]~DUPLICATE_q\ <= NOT \clockcounter[12]~DUPLICATE_q\;
\ALT_INV_switch~input_o\ <= NOT \switch~input_o\;
\ALT_INV_contagem11[0]~1_combout\ <= NOT \contagem11[0]~1_combout\;
\ALT_INV_contagem11[0]~0_combout\ <= NOT \contagem11[0]~0_combout\;
\ALT_INV_contagem10~5_combout\ <= NOT \contagem10~5_combout\;
\ALT_INV_contagem01~1_combout\ <= NOT \contagem01~1_combout\;
\ALT_INV_contagem10[0]~3_combout\ <= NOT \contagem10[0]~3_combout\;
\ALT_INV_contagem10~2_combout\ <= NOT \contagem10~2_combout\;
\ALT_INV_contagem10[0]~1_combout\ <= NOT \contagem10[0]~1_combout\;
\ALT_INV_contagem10[0]~0_combout\ <= NOT \contagem10[0]~0_combout\;
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
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
ALT_INV_clockcounter(11) <= NOT clockcounter(11);
ALT_INV_clockcounter(10) <= NOT clockcounter(10);
ALT_INV_clockcounter(9) <= NOT clockcounter(9);
ALT_INV_clockcounter(8) <= NOT clockcounter(8);
ALT_INV_clockcounter(7) <= NOT clockcounter(7);
ALT_INV_clockcounter(6) <= NOT clockcounter(6);
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
ALT_INV_clockcounter(5) <= NOT clockcounter(5);
ALT_INV_clockcounter(4) <= NOT clockcounter(4);
ALT_INV_clockcounter(3) <= NOT clockcounter(3);
ALT_INV_clockcounter(2) <= NOT clockcounter(2);
ALT_INV_clockcounter(1) <= NOT clockcounter(1);
ALT_INV_clockcounter(0) <= NOT clockcounter(0);
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
ALT_INV_clockcounter(17) <= NOT clockcounter(17);
ALT_INV_clockcounter(16) <= NOT clockcounter(16);
ALT_INV_clockcounter(15) <= NOT clockcounter(15);
ALT_INV_clockcounter(14) <= NOT clockcounter(14);
ALT_INV_clockcounter(13) <= NOT clockcounter(13);
ALT_INV_clockcounter(12) <= NOT clockcounter(12);
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_clockcounter(23) <= NOT clockcounter(23);
ALT_INV_clockcounter(22) <= NOT clockcounter(22);
ALT_INV_clockcounter(21) <= NOT clockcounter(21);
ALT_INV_clockcounter(20) <= NOT clockcounter(20);
ALT_INV_clockcounter(19) <= NOT clockcounter(19);
ALT_INV_clockcounter(18) <= NOT clockcounter(18);
ALT_INV_clockcounter(24) <= NOT clockcounter(24);
ALT_INV_contagem00(3) <= NOT contagem00(3);
ALT_INV_contagem00(2) <= NOT contagem00(2);
ALT_INV_contagem00(0) <= NOT contagem00(0);
\ALT_INV_Add8~61_sumout\ <= NOT \Add8~61_sumout\;
\ALT_INV_Add8~53_sumout\ <= NOT \Add8~53_sumout\;
ALT_INV_contagem00(1) <= NOT contagem00(1);

-- Location: IOOBUF_X62_Y0_N42
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

-- Location: IOOBUF_X65_Y0_N19
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

-- Location: IOOBUF_X65_Y0_N2
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

-- Location: IOOBUF_X66_Y0_N19
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

-- Location: IOOBUF_X64_Y0_N19
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

-- Location: IOOBUF_X64_Y0_N2
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

-- Location: IOOBUF_X66_Y0_N2
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

-- Location: IOOBUF_X62_Y0_N93
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

-- Location: IOOBUF_X65_Y0_N53
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

-- Location: IOOBUF_X62_Y0_N76
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

-- Location: IOOBUF_X64_Y0_N53
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

-- Location: IOOBUF_X65_Y0_N36
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

-- Location: IOOBUF_X64_Y0_N36
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

-- Location: IOOBUF_X62_Y0_N59
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

-- Location: IOOBUF_X68_Y11_N5
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

-- Location: IOOBUF_X68_Y11_N22
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

-- Location: IOOBUF_X68_Y10_N62
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

-- Location: IOOBUF_X68_Y12_N5
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

-- Location: IOOBUF_X68_Y13_N22
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

-- Location: IOOBUF_X7_Y0_N53
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

-- Location: IOOBUF_X7_Y0_N36
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

-- Location: IOOBUF_X68_Y10_N79
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

-- Location: IOOBUF_X68_Y10_N96
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

-- Location: IOOBUF_X68_Y12_N39
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

-- Location: IOOBUF_X68_Y11_N39
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

-- Location: IOOBUF_X68_Y11_N56
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

-- Location: IOOBUF_X68_Y13_N39
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

-- Location: IOOBUF_X68_Y13_N56
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

-- Location: FF_X64_Y2_N40
\clockcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(3));

-- Location: FF_X64_Y1_N23
\clockcounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(17));

-- Location: FF_X64_Y1_N7
\clockcounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(12));

-- Location: LABCELL_X64_Y1_N54
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !clockcounter(12) & ( !clockcounter(13) & ( (!clockcounter(17) & (!clockcounter(15) & (!clockcounter(16) & !clockcounter(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clockcounter(17),
	datab => ALT_INV_clockcounter(15),
	datac => ALT_INV_clockcounter(16),
	datad => ALT_INV_clockcounter(14),
	datae => ALT_INV_clockcounter(12),
	dataf => ALT_INV_clockcounter(13),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X64_Y2_N30
\Add8~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~53_sumout\ = SUM(( clockcounter(0) ) + ( VCC ) + ( !VCC ))
-- \Add8~54\ = CARRY(( clockcounter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clockcounter(0),
	cin => GND,
	sumout => \Add8~53_sumout\,
	cout => \Add8~54\);

-- Location: LABCELL_X64_Y1_N36
\Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~21_sumout\ = SUM(( clockcounter(22) ) + ( GND ) + ( \Add8~18\ ))
-- \Add8~22\ = CARRY(( clockcounter(22) ) + ( GND ) + ( \Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clockcounter(22),
	cin => \Add8~18\,
	sumout => \Add8~21_sumout\,
	cout => \Add8~22\);

-- Location: LABCELL_X64_Y1_N39
\Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~25_sumout\ = SUM(( clockcounter(23) ) + ( GND ) + ( \Add8~22\ ))
-- \Add8~26\ = CARRY(( clockcounter(23) ) + ( GND ) + ( \Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clockcounter(23),
	cin => \Add8~22\,
	sumout => \Add8~25_sumout\,
	cout => \Add8~26\);

-- Location: FF_X64_Y1_N41
\clockcounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(23));

-- Location: LABCELL_X64_Y1_N42
\Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~1_sumout\ = SUM(( clockcounter(24) ) + ( GND ) + ( \Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clockcounter(24),
	cin => \Add8~26\,
	sumout => \Add8~1_sumout\);

-- Location: FF_X64_Y1_N43
\clockcounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(24));

-- Location: FF_X64_Y2_N56
\clockcounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(8));

-- Location: FF_X64_Y1_N1
\clockcounter[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockcounter[10]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y2_N6
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !clockcounter(11) & ( !clockcounter(6) & ( (!clockcounter(8) & (!clockcounter(9) & (!clockcounter(7) & !\clockcounter[10]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clockcounter(8),
	datab => ALT_INV_clockcounter(9),
	datac => ALT_INV_clockcounter(7),
	datad => \ALT_INV_clockcounter[10]~DUPLICATE_q\,
	datae => ALT_INV_clockcounter(11),
	dataf => ALT_INV_clockcounter(6),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X64_Y2_N0
\clockcounter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockcounter~0_combout\ = ( clockcounter(24) & ( \Equal0~3_combout\ & ( \Add8~53_sumout\ ) ) ) # ( !clockcounter(24) & ( \Equal0~3_combout\ & ( ((\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\))) # (\Add8~53_sumout\) ) ) ) # ( 
-- clockcounter(24) & ( !\Equal0~3_combout\ & ( \Add8~53_sumout\ ) ) ) # ( !clockcounter(24) & ( !\Equal0~3_combout\ & ( \Add8~53_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Add8~53_sumout\,
	datae => ALT_INV_clockcounter(24),
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \clockcounter~0_combout\);

-- Location: FF_X64_Y2_N2
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

-- Location: LABCELL_X64_Y2_N33
\Add8~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~57_sumout\ = SUM(( clockcounter(1) ) + ( GND ) + ( \Add8~54\ ))
-- \Add8~58\ = CARRY(( clockcounter(1) ) + ( GND ) + ( \Add8~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clockcounter(1),
	cin => \Add8~54\,
	sumout => \Add8~57_sumout\,
	cout => \Add8~58\);

-- Location: FF_X64_Y2_N35
\clockcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(1));

-- Location: LABCELL_X64_Y2_N15
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( clockcounter(0) & ( clockcounter(1) & ( (!clockcounter(3) & (!clockcounter(4) & (!clockcounter(5) & !clockcounter(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clockcounter(3),
	datab => ALT_INV_clockcounter(4),
	datac => ALT_INV_clockcounter(5),
	datad => ALT_INV_clockcounter(2),
	datae => ALT_INV_clockcounter(0),
	dataf => ALT_INV_clockcounter(1),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X64_Y2_N36
\Add8~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~61_sumout\ = SUM(( clockcounter(2) ) + ( GND ) + ( \Add8~58\ ))
-- \Add8~62\ = CARRY(( clockcounter(2) ) + ( GND ) + ( \Add8~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clockcounter(2),
	cin => \Add8~58\,
	sumout => \Add8~61_sumout\,
	cout => \Add8~62\);

-- Location: LABCELL_X64_Y2_N24
\clockcounter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockcounter~1_combout\ = ( \Add8~61_sumout\ & ( \Equal0~3_combout\ & ( (!\Equal0~0_combout\) # ((!\Equal0~2_combout\) # ((!\Equal0~1_combout\) # (clockcounter(24)))) ) ) ) # ( \Add8~61_sumout\ & ( !\Equal0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => ALT_INV_clockcounter(24),
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_Add8~61_sumout\,
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \clockcounter~1_combout\);

-- Location: FF_X64_Y2_N26
\clockcounter[2]\ : dffeas
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
	q => clockcounter(2));

-- Location: LABCELL_X64_Y2_N39
\Add8~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~65_sumout\ = SUM(( \clockcounter[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add8~62\ ))
-- \Add8~66\ = CARRY(( \clockcounter[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add8~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clockcounter[3]~DUPLICATE_q\,
	cin => \Add8~62\,
	sumout => \Add8~65_sumout\,
	cout => \Add8~66\);

-- Location: FF_X64_Y2_N41
\clockcounter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockcounter[3]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y2_N42
\Add8~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~69_sumout\ = SUM(( clockcounter(4) ) + ( GND ) + ( \Add8~66\ ))
-- \Add8~70\ = CARRY(( clockcounter(4) ) + ( GND ) + ( \Add8~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_clockcounter(4),
	cin => \Add8~66\,
	sumout => \Add8~69_sumout\,
	cout => \Add8~70\);

-- Location: FF_X64_Y2_N44
\clockcounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(4));

-- Location: LABCELL_X64_Y2_N45
\Add8~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~73_sumout\ = SUM(( clockcounter(5) ) + ( GND ) + ( \Add8~70\ ))
-- \Add8~74\ = CARRY(( clockcounter(5) ) + ( GND ) + ( \Add8~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clockcounter(5),
	cin => \Add8~70\,
	sumout => \Add8~73_sumout\,
	cout => \Add8~74\);

-- Location: FF_X64_Y2_N46
\clockcounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(5));

-- Location: LABCELL_X64_Y2_N48
\Add8~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~77_sumout\ = SUM(( clockcounter(6) ) + ( GND ) + ( \Add8~74\ ))
-- \Add8~78\ = CARRY(( clockcounter(6) ) + ( GND ) + ( \Add8~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clockcounter(6),
	cin => \Add8~74\,
	sumout => \Add8~77_sumout\,
	cout => \Add8~78\);

-- Location: FF_X64_Y2_N50
\clockcounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(6));

-- Location: LABCELL_X64_Y2_N51
\Add8~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~81_sumout\ = SUM(( clockcounter(7) ) + ( GND ) + ( \Add8~78\ ))
-- \Add8~82\ = CARRY(( clockcounter(7) ) + ( GND ) + ( \Add8~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clockcounter(7),
	cin => \Add8~78\,
	sumout => \Add8~81_sumout\,
	cout => \Add8~82\);

-- Location: FF_X64_Y2_N53
\clockcounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(7));

-- Location: LABCELL_X64_Y2_N54
\Add8~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~85_sumout\ = SUM(( \clockcounter[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add8~82\ ))
-- \Add8~86\ = CARRY(( \clockcounter[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add8~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_clockcounter[8]~DUPLICATE_q\,
	cin => \Add8~82\,
	sumout => \Add8~85_sumout\,
	cout => \Add8~86\);

-- Location: FF_X64_Y2_N55
\clockcounter[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockcounter[8]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y2_N57
\Add8~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~89_sumout\ = SUM(( clockcounter(9) ) + ( GND ) + ( \Add8~86\ ))
-- \Add8~90\ = CARRY(( clockcounter(9) ) + ( GND ) + ( \Add8~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clockcounter(9),
	cin => \Add8~86\,
	sumout => \Add8~89_sumout\,
	cout => \Add8~90\);

-- Location: FF_X64_Y2_N59
\clockcounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(9));

-- Location: LABCELL_X64_Y1_N0
\Add8~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~93_sumout\ = SUM(( clockcounter(10) ) + ( GND ) + ( \Add8~90\ ))
-- \Add8~94\ = CARRY(( clockcounter(10) ) + ( GND ) + ( \Add8~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clockcounter(10),
	cin => \Add8~90\,
	sumout => \Add8~93_sumout\,
	cout => \Add8~94\);

-- Location: FF_X64_Y1_N2
\clockcounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(10));

-- Location: LABCELL_X64_Y1_N3
\Add8~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~97_sumout\ = SUM(( clockcounter(11) ) + ( GND ) + ( \Add8~94\ ))
-- \Add8~98\ = CARRY(( clockcounter(11) ) + ( GND ) + ( \Add8~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clockcounter(11),
	cin => \Add8~94\,
	sumout => \Add8~97_sumout\,
	cout => \Add8~98\);

-- Location: FF_X64_Y1_N5
\clockcounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(11));

-- Location: LABCELL_X64_Y1_N6
\Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~29_sumout\ = SUM(( \clockcounter[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add8~98\ ))
-- \Add8~30\ = CARRY(( \clockcounter[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add8~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clockcounter[12]~DUPLICATE_q\,
	cin => \Add8~98\,
	sumout => \Add8~29_sumout\,
	cout => \Add8~30\);

-- Location: FF_X64_Y1_N8
\clockcounter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockcounter[12]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y1_N9
\Add8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~33_sumout\ = SUM(( clockcounter(13) ) + ( GND ) + ( \Add8~30\ ))
-- \Add8~34\ = CARRY(( clockcounter(13) ) + ( GND ) + ( \Add8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clockcounter(13),
	cin => \Add8~30\,
	sumout => \Add8~33_sumout\,
	cout => \Add8~34\);

-- Location: FF_X64_Y1_N11
\clockcounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(13));

-- Location: LABCELL_X64_Y1_N12
\Add8~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~37_sumout\ = SUM(( clockcounter(14) ) + ( GND ) + ( \Add8~34\ ))
-- \Add8~38\ = CARRY(( clockcounter(14) ) + ( GND ) + ( \Add8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_clockcounter(14),
	cin => \Add8~34\,
	sumout => \Add8~37_sumout\,
	cout => \Add8~38\);

-- Location: FF_X64_Y1_N14
\clockcounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(14));

-- Location: LABCELL_X64_Y1_N15
\Add8~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~41_sumout\ = SUM(( clockcounter(15) ) + ( GND ) + ( \Add8~38\ ))
-- \Add8~42\ = CARRY(( clockcounter(15) ) + ( GND ) + ( \Add8~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clockcounter(15),
	cin => \Add8~38\,
	sumout => \Add8~41_sumout\,
	cout => \Add8~42\);

-- Location: FF_X64_Y1_N17
\clockcounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(15));

-- Location: LABCELL_X64_Y1_N18
\Add8~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~45_sumout\ = SUM(( clockcounter(16) ) + ( GND ) + ( \Add8~42\ ))
-- \Add8~46\ = CARRY(( clockcounter(16) ) + ( GND ) + ( \Add8~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clockcounter(16),
	cin => \Add8~42\,
	sumout => \Add8~45_sumout\,
	cout => \Add8~46\);

-- Location: FF_X64_Y1_N20
\clockcounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(16));

-- Location: LABCELL_X64_Y1_N21
\Add8~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~49_sumout\ = SUM(( \clockcounter[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add8~46\ ))
-- \Add8~50\ = CARRY(( \clockcounter[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add8~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clockcounter[17]~DUPLICATE_q\,
	cin => \Add8~46\,
	sumout => \Add8~49_sumout\,
	cout => \Add8~50\);

-- Location: FF_X64_Y1_N22
\clockcounter[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockcounter[17]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y1_N24
\Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~5_sumout\ = SUM(( clockcounter(18) ) + ( GND ) + ( \Add8~50\ ))
-- \Add8~6\ = CARRY(( clockcounter(18) ) + ( GND ) + ( \Add8~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clockcounter(18),
	cin => \Add8~50\,
	sumout => \Add8~5_sumout\,
	cout => \Add8~6\);

-- Location: FF_X64_Y1_N26
\clockcounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(18));

-- Location: LABCELL_X64_Y1_N27
\Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~9_sumout\ = SUM(( clockcounter(19) ) + ( GND ) + ( \Add8~6\ ))
-- \Add8~10\ = CARRY(( clockcounter(19) ) + ( GND ) + ( \Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clockcounter(19),
	cin => \Add8~6\,
	sumout => \Add8~9_sumout\,
	cout => \Add8~10\);

-- Location: FF_X64_Y1_N29
\clockcounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(19));

-- Location: LABCELL_X64_Y1_N30
\Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~13_sumout\ = SUM(( clockcounter(20) ) + ( GND ) + ( \Add8~10\ ))
-- \Add8~14\ = CARRY(( clockcounter(20) ) + ( GND ) + ( \Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_clockcounter(20),
	cin => \Add8~10\,
	sumout => \Add8~13_sumout\,
	cout => \Add8~14\);

-- Location: FF_X64_Y1_N32
\clockcounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(20));

-- Location: LABCELL_X64_Y1_N33
\Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~17_sumout\ = SUM(( clockcounter(21) ) + ( GND ) + ( \Add8~14\ ))
-- \Add8~18\ = CARRY(( clockcounter(21) ) + ( GND ) + ( \Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clockcounter(21),
	cin => \Add8~14\,
	sumout => \Add8~17_sumout\,
	cout => \Add8~18\);

-- Location: FF_X64_Y1_N35
\clockcounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(21));

-- Location: FF_X64_Y1_N38
\clockcounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add8~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockcounter(22));

-- Location: LABCELL_X64_Y1_N48
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !clockcounter(19) & ( !clockcounter(18) & ( (!clockcounter(22) & (!clockcounter(23) & (!clockcounter(21) & !clockcounter(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clockcounter(22),
	datab => ALT_INV_clockcounter(23),
	datac => ALT_INV_clockcounter(21),
	datad => ALT_INV_clockcounter(20),
	datae => ALT_INV_clockcounter(19),
	dataf => ALT_INV_clockcounter(18),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X64_Y2_N18
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( \Equal0~1_combout\ & ( (\Equal0~0_combout\ & (\Equal0~2_combout\ & (!clockcounter(24) & \Equal0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => ALT_INV_clockcounter(24),
	datad => \ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: IOIBUF_X68_Y10_N44
\switch~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch,
	o => \switch~input_o\);

-- Location: LABCELL_X65_Y2_N39
\contagem00[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem00[0]~0_combout\ = ( \Equal0~4_combout\ & ( !\switch~input_o\ $ (!contagem00(0)) ) ) # ( !\Equal0~4_combout\ & ( contagem00(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switch~input_o\,
	datad => ALT_INV_contagem00(0),
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \contagem00[0]~0_combout\);

-- Location: FF_X65_Y2_N41
\contagem00[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem00[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem00(0));

-- Location: LABCELL_X64_Y3_N48
\Add7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = !contagem00(0) $ (contagem00(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_contagem00(0),
	datad => ALT_INV_contagem00(1),
	combout => \Add7~0_combout\);

-- Location: LABCELL_X64_Y3_N45
\contagem00[1]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem00[1]~_wirecell_combout\ = ( !contagem00(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_contagem00(1),
	combout => \contagem00[1]~_wirecell_combout\);

-- Location: FF_X64_Y3_N50
\contagem00[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add7~0_combout\,
	asdata => \contagem00[1]~_wirecell_combout\,
	sload => \ALT_INV_switch~input_o\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem00(1));

-- Location: LABCELL_X65_Y2_N36
\contagem00[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem00[2]~1_combout\ = ( contagem00(0) & ( !contagem00(2) $ (((!\Equal0~4_combout\) # ((!contagem00(1)) # (\switch~input_o\)))) ) ) # ( !contagem00(0) & ( !contagem00(2) $ (((!\Equal0~4_combout\) # (!\switch~input_o\ $ (contagem00(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010011101011000101001110101100000100111110110000010011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \ALT_INV_switch~input_o\,
	datac => ALT_INV_contagem00(1),
	datad => ALT_INV_contagem00(2),
	dataf => ALT_INV_contagem00(0),
	combout => \contagem00[2]~1_combout\);

-- Location: FF_X65_Y2_N38
\contagem00[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem00[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem00(2));

-- Location: LABCELL_X64_Y3_N0
\contagem00~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem00~2_combout\ = ( contagem00(3) & ( contagem00(1) & ( (\switch~input_o\) # (contagem00(2)) ) ) ) # ( !contagem00(3) & ( contagem00(1) & ( (!contagem00(2) & !\switch~input_o\) ) ) ) # ( contagem00(3) & ( !contagem00(1) & ( (\switch~input_o\ & 
-- ((contagem00(0)) # (contagem00(2)))) ) ) ) # ( !contagem00(3) & ( !contagem00(1) & ( (!\switch~input_o\) # ((!contagem00(2) & !contagem00(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011101100000100110001001110001000100010000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem00(2),
	datab => \ALT_INV_switch~input_o\,
	datac => ALT_INV_contagem00(0),
	datae => ALT_INV_contagem00(3),
	dataf => ALT_INV_contagem00(1),
	combout => \contagem00~2_combout\);

-- Location: FF_X64_Y3_N2
\contagem00[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem00~2_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem00(3));

-- Location: LABCELL_X63_Y3_N3
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( contagem00(1) & ( contagem00(0) & ( (!contagem00(3) & contagem00(2)) ) ) ) # ( !contagem00(1) & ( contagem00(0) & ( (!contagem00(3) & !contagem00(2)) ) ) ) # ( !contagem00(1) & ( !contagem00(0) & ( !contagem00(3) $ (contagem00(2)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101000000000000000010101010000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem00(3),
	datad => ALT_INV_contagem00(2),
	datae => ALT_INV_contagem00(1),
	dataf => ALT_INV_contagem00(0),
	combout => \Mux6~0_combout\);

-- Location: FF_X63_Y2_N13
\LED00_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mux6~0_combout\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED00_out[6]~reg0_q\);

-- Location: LABCELL_X65_Y1_N15
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( contagem00(3) & ( contagem00(1) & ( (!contagem00(2) & !contagem00(0)) ) ) ) # ( !contagem00(3) & ( contagem00(1) & ( (!contagem00(2)) # (contagem00(0)) ) ) ) # ( contagem00(3) & ( !contagem00(1) & ( (contagem00(2) & contagem00(0)) ) ) 
-- ) # ( !contagem00(3) & ( !contagem00(1) & ( !contagem00(2) $ (!contagem00(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000110000001111001111110011111100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem00(2),
	datac => ALT_INV_contagem00(0),
	datae => ALT_INV_contagem00(3),
	dataf => ALT_INV_contagem00(1),
	combout => \Mux5~0_combout\);

-- Location: FF_X65_Y1_N16
\LED00_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux5~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED00_out[5]~reg0_q\);

-- Location: LABCELL_X65_Y1_N45
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( !contagem00(3) & ( contagem00(1) & ( contagem00(0) ) ) ) # ( contagem00(3) & ( !contagem00(1) & ( (!contagem00(2) & contagem00(0)) ) ) ) # ( !contagem00(3) & ( !contagem00(1) & ( (contagem00(0)) # (contagem00(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000011000000110000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem00(2),
	datac => ALT_INV_contagem00(0),
	datae => ALT_INV_contagem00(3),
	dataf => ALT_INV_contagem00(1),
	combout => \Mux4~0_combout\);

-- Location: FF_X65_Y1_N46
\LED00_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux4~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED00_out[4]~reg0_q\);

-- Location: LABCELL_X65_Y1_N36
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( contagem00(3) & ( contagem00(2) & ( (contagem00(0) & contagem00(1)) ) ) ) # ( !contagem00(3) & ( contagem00(2) & ( (contagem00(0) & contagem00(1)) ) ) ) # ( !contagem00(3) & ( !contagem00(2) & ( (contagem00(0) & !contagem00(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem00(0),
	datac => ALT_INV_contagem00(1),
	datae => ALT_INV_contagem00(3),
	dataf => ALT_INV_contagem00(2),
	combout => \Mux3~0_combout\);

-- Location: FF_X65_Y1_N37
\LED00_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux3~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED00_out[3]~reg0_q\);

-- Location: LABCELL_X65_Y1_N30
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( contagem00(3) & ( contagem00(2) & ( (!contagem00(0)) # (contagem00(1)) ) ) ) # ( !contagem00(3) & ( !contagem00(2) & ( (!contagem00(0) & contagem00(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem00(0),
	datac => ALT_INV_contagem00(1),
	datae => ALT_INV_contagem00(3),
	dataf => ALT_INV_contagem00(2),
	combout => \Mux2~0_combout\);

-- Location: FF_X65_Y1_N32
\LED00_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED00_out[2]~reg0_q\);

-- Location: LABCELL_X63_Y2_N21
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( contagem00(2) & ( (!contagem00(0) & ((contagem00(3)) # (contagem00(1)))) # (contagem00(0) & (!contagem00(1) $ (contagem00(3)))) ) ) # ( !contagem00(2) & ( (contagem00(0) & (contagem00(1) & contagem00(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100111100110011110011110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem00(0),
	datac => ALT_INV_contagem00(1),
	datad => ALT_INV_contagem00(3),
	dataf => ALT_INV_contagem00(2),
	combout => \Mux1~0_combout\);

-- Location: FF_X63_Y2_N22
\LED00_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux1~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED00_out[1]~reg0_q\);

-- Location: LABCELL_X63_Y2_N18
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( contagem00(1) & ( (!contagem00(2) & (contagem00(0) & contagem00(3))) ) ) # ( !contagem00(1) & ( (!contagem00(2) & (contagem00(0) & !contagem00(3))) # (contagem00(2) & (!contagem00(0) $ (contagem00(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem00(2),
	datab => ALT_INV_contagem00(0),
	datac => ALT_INV_contagem00(3),
	dataf => ALT_INV_contagem00(1),
	combout => \Mux0~0_combout\);

-- Location: FF_X63_Y2_N19
\LED00_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux0~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED00_out[0]~reg0_q\);

-- Location: LABCELL_X63_Y2_N6
\contagem01[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem01[0]~2_combout\ = ( !contagem01(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_contagem01(0),
	combout => \contagem01[0]~2_combout\);

-- Location: LABCELL_X63_Y2_N15
\contagem01[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem01[3]~0_combout\ = ( contagem00(0) & ( \Equal0~4_combout\ & ( (contagem00(3) & (contagem00(1) & (!\switch~input_o\ & contagem00(2)))) ) ) ) # ( !contagem00(0) & ( \Equal0~4_combout\ & ( (!contagem00(3) & (!contagem00(1) & (\switch~input_o\ & 
-- !contagem00(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem00(3),
	datab => ALT_INV_contagem00(1),
	datac => \ALT_INV_switch~input_o\,
	datad => ALT_INV_contagem00(2),
	datae => ALT_INV_contagem00(0),
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \contagem01[3]~0_combout\);

-- Location: FF_X63_Y2_N50
\contagem01[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \contagem01[0]~2_combout\,
	sload => VCC,
	ena => \contagem01[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem01(0));

-- Location: LABCELL_X63_Y2_N9
\Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = ( contagem01(0) & ( !\switch~input_o\ $ (contagem01(1)) ) ) # ( !contagem01(0) & ( !\switch~input_o\ $ (!contagem01(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_switch~input_o\,
	datad => ALT_INV_contagem01(1),
	dataf => ALT_INV_contagem01(0),
	combout => \Add2~0_combout\);

-- Location: FF_X63_Y2_N11
\contagem01[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add2~0_combout\,
	ena => \contagem01[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem01(1));

-- Location: LABCELL_X63_Y2_N48
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = ( \switch~input_o\ & ( !contagem01(2) $ (((contagem01(0)) # (contagem01(1)))) ) ) # ( !\switch~input_o\ & ( !contagem01(2) $ (((!contagem01(1)) # (!contagem01(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010101010110011010011001010101011001100101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(2),
	datab => ALT_INV_contagem01(1),
	datad => ALT_INV_contagem01(0),
	dataf => \ALT_INV_switch~input_o\,
	combout => \Add2~1_combout\);

-- Location: FF_X63_Y2_N8
\contagem01[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Add2~1_combout\,
	sload => VCC,
	ena => \contagem01[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem01(2));

-- Location: LABCELL_X63_Y2_N45
\Add2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = ( \switch~input_o\ & ( !contagem01(3) $ ((((contagem01(0)) # (contagem01(1))) # (contagem01(2)))) ) ) # ( !\switch~input_o\ & ( !contagem01(3) $ (((!contagem01(2)) # ((!contagem01(1)) # (!contagem01(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010110010101010101011010010101010101011001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(3),
	datab => ALT_INV_contagem01(2),
	datac => ALT_INV_contagem01(1),
	datad => ALT_INV_contagem01(0),
	dataf => \ALT_INV_switch~input_o\,
	combout => \Add2~2_combout\);

-- Location: FF_X63_Y2_N53
\contagem01[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Add2~2_combout\,
	sload => VCC,
	ena => \contagem01[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem01(3));

-- Location: LABCELL_X63_Y2_N51
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( contagem01(0) & ( (!contagem01(3) & (!contagem01(2) $ (contagem01(1)))) ) ) # ( !contagem01(0) & ( (!contagem01(1) & (!contagem01(2) $ (contagem01(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000010100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(2),
	datac => ALT_INV_contagem01(1),
	datad => ALT_INV_contagem01(3),
	dataf => ALT_INV_contagem01(0),
	combout => \Mux13~0_combout\);

-- Location: FF_X64_Y2_N8
\LED01_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mux13~0_combout\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED01_out[6]~reg0_q\);

-- Location: LABCELL_X63_Y2_N27
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( contagem01(3) & ( (!contagem01(0) & (!contagem01(2) & contagem01(1))) # (contagem01(0) & (contagem01(2) & !contagem01(1))) ) ) # ( !contagem01(3) & ( (!contagem01(0) & (!contagem01(2) $ (!contagem01(1)))) # (contagem01(0) & 
-- ((!contagem01(2)) # (contagem01(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110101101101011011010110110100011000000110000001100000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(0),
	datab => ALT_INV_contagem01(2),
	datac => ALT_INV_contagem01(1),
	dataf => ALT_INV_contagem01(3),
	combout => \Mux12~0_combout\);

-- Location: FF_X63_Y2_N28
\LED01_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux12~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED01_out[5]~reg0_q\);

-- Location: LABCELL_X63_Y2_N42
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( contagem01(3) & ( (!contagem01(2) & (contagem01(0) & !contagem01(1))) ) ) # ( !contagem01(3) & ( ((contagem01(2) & !contagem01(1))) # (contagem01(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001111001111110000111100001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem01(2),
	datac => ALT_INV_contagem01(0),
	datad => ALT_INV_contagem01(1),
	dataf => ALT_INV_contagem01(3),
	combout => \Mux11~0_combout\);

-- Location: FF_X63_Y2_N44
\LED01_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux11~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED01_out[4]~reg0_q\);

-- Location: LABCELL_X63_Y2_N39
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( contagem01(3) & ( (contagem01(0) & (contagem01(1) & contagem01(2))) ) ) # ( !contagem01(3) & ( (contagem01(0) & (!contagem01(1) $ (contagem01(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001010000010100000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(0),
	datab => ALT_INV_contagem01(1),
	datac => ALT_INV_contagem01(2),
	dataf => ALT_INV_contagem01(3),
	combout => \Mux10~0_combout\);

-- Location: FF_X63_Y2_N40
\LED01_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux10~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED01_out[3]~reg0_q\);

-- Location: LABCELL_X63_Y2_N30
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( contagem01(3) & ( (contagem01(2) & ((!contagem01(0)) # (contagem01(1)))) ) ) # ( !contagem01(3) & ( (contagem01(1) & (!contagem01(0) & !contagem01(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000111100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem01(1),
	datac => ALT_INV_contagem01(0),
	datad => ALT_INV_contagem01(2),
	dataf => ALT_INV_contagem01(3),
	combout => \Mux9~0_combout\);

-- Location: FF_X63_Y2_N31
\LED01_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux9~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED01_out[2]~reg0_q\);

-- Location: LABCELL_X63_Y2_N0
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( contagem01(3) & ( (!contagem01(0) & (contagem01(2))) # (contagem01(0) & ((contagem01(1)))) ) ) # ( !contagem01(3) & ( (contagem01(2) & (!contagem01(0) $ (!contagem01(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001000100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(0),
	datab => ALT_INV_contagem01(2),
	datad => ALT_INV_contagem01(1),
	dataf => ALT_INV_contagem01(3),
	combout => \Mux8~0_combout\);

-- Location: FF_X63_Y2_N1
\LED01_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux8~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED01_out[1]~reg0_q\);

-- Location: LABCELL_X63_Y2_N3
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( contagem01(3) & ( (contagem01(0) & (!contagem01(2) $ (!contagem01(1)))) ) ) # ( !contagem01(3) & ( (!contagem01(1) & (!contagem01(0) $ (!contagem01(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(0),
	datab => ALT_INV_contagem01(2),
	datac => ALT_INV_contagem01(1),
	dataf => ALT_INV_contagem01(3),
	combout => \Mux7~0_combout\);

-- Location: FF_X63_Y2_N5
\LED01_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux7~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED01_out[0]~reg0_q\);

-- Location: LABCELL_X63_Y2_N33
\contagem10[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem10[0]~0_combout\ = ( !contagem01(3) & ( (!contagem01(2) & (!contagem01(1) & !contagem01(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(2),
	datac => ALT_INV_contagem01(1),
	datad => ALT_INV_contagem01(0),
	dataf => ALT_INV_contagem01(3),
	combout => \contagem10[0]~0_combout\);

-- Location: LABCELL_X63_Y2_N54
\contagem10[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem10[0]~1_combout\ = ( !contagem00(0) & ( \contagem10[0]~0_combout\ & ( (!contagem00(3) & (\switch~input_o\ & (!contagem00(2) & !contagem00(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem00(3),
	datab => \ALT_INV_switch~input_o\,
	datac => ALT_INV_contagem00(2),
	datad => ALT_INV_contagem00(1),
	datae => ALT_INV_contagem00(0),
	dataf => \ALT_INV_contagem10[0]~0_combout\,
	combout => \contagem10[0]~1_combout\);

-- Location: LABCELL_X63_Y2_N24
\contagem10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem10~2_combout\ = ( contagem01(2) & ( (contagem01(0) & (contagem01(3) & contagem01(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(0),
	datac => ALT_INV_contagem01(3),
	datad => ALT_INV_contagem01(1),
	dataf => ALT_INV_contagem01(2),
	combout => \contagem10~2_combout\);

-- Location: LABCELL_X64_Y3_N12
\contagem10[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem10[0]~3_combout\ = ( contagem00(0) & ( \contagem10~2_combout\ & ( (contagem00(1) & (!\switch~input_o\ & (contagem00(2) & contagem00(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem00(1),
	datab => \ALT_INV_switch~input_o\,
	datac => ALT_INV_contagem00(2),
	datad => ALT_INV_contagem00(3),
	datae => ALT_INV_contagem00(0),
	dataf => \ALT_INV_contagem10~2_combout\,
	combout => \contagem10[0]~3_combout\);

-- Location: LABCELL_X65_Y2_N9
\contagem10[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem10[0]~4_combout\ = ( \contagem10[0]~3_combout\ & ( !\Equal0~4_combout\ $ (!contagem10(0)) ) ) # ( !\contagem10[0]~3_combout\ & ( !contagem10(0) $ (((!\Equal0~4_combout\) # (!\contagem10[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datac => \ALT_INV_contagem10[0]~1_combout\,
	datad => ALT_INV_contagem10(0),
	dataf => \ALT_INV_contagem10[0]~3_combout\,
	combout => \contagem10[0]~4_combout\);

-- Location: FF_X65_Y2_N11
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

-- Location: LABCELL_X64_Y3_N51
\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ( contagem10(1) & ( !\switch~input_o\ $ (contagem10(0)) ) ) # ( !contagem10(1) & ( !\switch~input_o\ $ (!contagem10(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_switch~input_o\,
	datad => ALT_INV_contagem10(0),
	dataf => ALT_INV_contagem10(1),
	combout => \Add1~0_combout\);

-- Location: LABCELL_X63_Y2_N36
\contagem10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem10~5_combout\ = ( contagem01(2) & ( (contagem01(0) & (contagem01(1) & (!\switch~input_o\ & contagem01(3)))) ) ) # ( !contagem01(2) & ( (!contagem01(0) & (!contagem01(1) & (\switch~input_o\ & !contagem01(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem01(0),
	datab => ALT_INV_contagem01(1),
	datac => \ALT_INV_switch~input_o\,
	datad => ALT_INV_contagem01(3),
	dataf => ALT_INV_contagem01(2),
	combout => \contagem10~5_combout\);

-- Location: LABCELL_X65_Y2_N21
\contagem01~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem01~1_combout\ = ( contagem00(1) & ( (contagem00(2) & (!\switch~input_o\ & (contagem00(0) & contagem00(3)))) ) ) # ( !contagem00(1) & ( (!contagem00(2) & (\switch~input_o\ & (!contagem00(0) & !contagem00(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem00(2),
	datab => \ALT_INV_switch~input_o\,
	datac => ALT_INV_contagem00(0),
	datad => ALT_INV_contagem00(3),
	dataf => ALT_INV_contagem00(1),
	combout => \contagem01~1_combout\);

-- Location: LABCELL_X64_Y2_N21
\contagem10[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem10[3]~6_combout\ = ( \Equal0~4_combout\ & ( (\contagem10~5_combout\ & \contagem01~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_contagem10~5_combout\,
	datad => \ALT_INV_contagem01~1_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \contagem10[3]~6_combout\);

-- Location: FF_X64_Y2_N14
\contagem10[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Add1~0_combout\,
	sload => VCC,
	ena => \contagem10[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem10(1));

-- Location: LABCELL_X64_Y3_N57
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = ( contagem10(2) & ( contagem10(1) & ( (!contagem10(0)) # (\switch~input_o\) ) ) ) # ( !contagem10(2) & ( contagem10(1) & ( (!\switch~input_o\ & contagem10(0)) ) ) ) # ( contagem10(2) & ( !contagem10(1) & ( (!\switch~input_o\) # 
-- (contagem10(0)) ) ) ) # ( !contagem10(2) & ( !contagem10(1) & ( (\switch~input_o\ & !contagem10(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000111100001111111100000000111100001111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_switch~input_o\,
	datad => ALT_INV_contagem10(0),
	datae => ALT_INV_contagem10(2),
	dataf => ALT_INV_contagem10(1),
	combout => \Add1~1_combout\);

-- Location: FF_X64_Y3_N59
\contagem10[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add1~1_combout\,
	ena => \contagem10[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem10(2));

-- Location: LABCELL_X64_Y3_N36
\Add1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = ( contagem10(2) & ( !contagem10(3) $ (((!contagem10(0)) # ((!contagem10(1)) # (\switch~input_o\)))) ) ) # ( !contagem10(2) & ( !contagem10(3) $ ((((!\switch~input_o\) # (contagem10(1))) # (contagem10(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011011111001000001101111100000100111110110000010011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem10(0),
	datab => \ALT_INV_switch~input_o\,
	datac => ALT_INV_contagem10(1),
	datad => ALT_INV_contagem10(3),
	dataf => ALT_INV_contagem10(2),
	combout => \Add1~2_combout\);

-- Location: FF_X64_Y3_N38
\contagem10[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add1~2_combout\,
	ena => \contagem10[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem10(3));

-- Location: LABCELL_X64_Y3_N9
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( contagem10(2) & ( (!contagem10(1) & (!contagem10(0) & contagem10(3))) # (contagem10(1) & (contagem10(0) & !contagem10(3))) ) ) # ( !contagem10(2) & ( (!contagem10(1) & !contagem10(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000010001100010000001000110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem10(1),
	datab => ALT_INV_contagem10(0),
	datad => ALT_INV_contagem10(3),
	dataf => ALT_INV_contagem10(2),
	combout => \Mux20~0_combout\);

-- Location: FF_X64_Y3_N10
\LED10_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux20~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED10_out[6]~reg0_q\);

-- Location: LABCELL_X64_Y3_N27
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( contagem10(3) & ( contagem10(2) & ( (!contagem10(1) & contagem10(0)) ) ) ) # ( !contagem10(3) & ( contagem10(2) & ( !contagem10(1) $ (contagem10(0)) ) ) ) # ( contagem10(3) & ( !contagem10(2) & ( (contagem10(1) & !contagem10(0)) ) ) 
-- ) # ( !contagem10(3) & ( !contagem10(2) & ( (contagem10(0)) # (contagem10(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101010000000010101010010101010000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem10(1),
	datad => ALT_INV_contagem10(0),
	datae => ALT_INV_contagem10(3),
	dataf => ALT_INV_contagem10(2),
	combout => \Mux19~0_combout\);

-- Location: FF_X64_Y3_N28
\LED10_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux19~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED10_out[5]~reg0_q\);

-- Location: LABCELL_X64_Y3_N33
\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( contagem10(2) & ( (!contagem10(3) & ((!contagem10(1)) # (contagem10(0)))) ) ) # ( !contagem10(2) & ( (contagem10(0) & ((!contagem10(1)) # (!contagem10(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100110010001010111011000000001011101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem10(1),
	datab => ALT_INV_contagem10(0),
	datad => ALT_INV_contagem10(3),
	dataf => ALT_INV_contagem10(2),
	combout => \Mux18~0_combout\);

-- Location: FF_X64_Y3_N34
\LED10_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux18~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED10_out[4]~reg0_q\);

-- Location: LABCELL_X64_Y3_N18
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( contagem10(3) & ( contagem10(1) & ( (contagem10(0) & contagem10(2)) ) ) ) # ( !contagem10(3) & ( contagem10(1) & ( (contagem10(0) & contagem10(2)) ) ) ) # ( !contagem10(3) & ( !contagem10(1) & ( (contagem10(0) & !contagem10(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem10(0),
	datab => ALT_INV_contagem10(2),
	datae => ALT_INV_contagem10(3),
	dataf => ALT_INV_contagem10(1),
	combout => \Mux17~0_combout\);

-- Location: FF_X64_Y2_N10
\LED10_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mux17~0_combout\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED10_out[3]~reg0_q\);

-- Location: LABCELL_X64_Y3_N30
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( contagem10(3) & ( (contagem10(2) & ((!contagem10(0)) # (contagem10(1)))) ) ) # ( !contagem10(3) & ( (contagem10(1) & (!contagem10(0) & !contagem10(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem10(1),
	datac => ALT_INV_contagem10(0),
	datad => ALT_INV_contagem10(2),
	dataf => ALT_INV_contagem10(3),
	combout => \Mux16~0_combout\);

-- Location: FF_X64_Y3_N31
\LED10_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux16~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED10_out[2]~reg0_q\);

-- Location: LABCELL_X64_Y3_N6
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( contagem10(2) & ( (!contagem10(1) & (!contagem10(0) $ (!contagem10(3)))) # (contagem10(1) & ((!contagem10(0)) # (contagem10(3)))) ) ) # ( !contagem10(2) & ( (contagem10(1) & (contagem10(0) & contagem10(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101100110110111010110011011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem10(1),
	datab => ALT_INV_contagem10(0),
	datad => ALT_INV_contagem10(3),
	dataf => ALT_INV_contagem10(2),
	combout => \Mux15~0_combout\);

-- Location: FF_X64_Y3_N7
\LED10_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux15~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED10_out[1]~reg0_q\);

-- Location: LABCELL_X64_Y3_N39
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( contagem10(1) & ( (contagem10(0) & (!contagem10(2) & contagem10(3))) ) ) # ( !contagem10(1) & ( (!contagem10(0) & (contagem10(2) & !contagem10(3))) # (contagem10(0) & (!contagem10(2) $ (contagem10(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010110100000010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem10(0),
	datac => ALT_INV_contagem10(2),
	datad => ALT_INV_contagem10(3),
	dataf => ALT_INV_contagem10(1),
	combout => \Mux14~0_combout\);

-- Location: FF_X63_Y2_N59
\LED10_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mux14~0_combout\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED10_out[0]~reg0_q\);

-- Location: LABCELL_X65_Y2_N6
\contagem11[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem11[0]~1_combout\ = ( !contagem10(2) & ( (!contagem10(0) & (!contagem10(3) & !contagem10(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem10(0),
	datac => ALT_INV_contagem10(3),
	datad => ALT_INV_contagem10(1),
	dataf => ALT_INV_contagem10(2),
	combout => \contagem11[0]~1_combout\);

-- Location: LABCELL_X65_Y2_N33
\contagem11[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem11[0]~0_combout\ = ( contagem10(2) & ( (contagem10(3) & (contagem10(0) & contagem10(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem10(3),
	datac => ALT_INV_contagem10(0),
	datad => ALT_INV_contagem10(1),
	dataf => ALT_INV_contagem10(2),
	combout => \contagem11[0]~0_combout\);

-- Location: LABCELL_X65_Y2_N12
\contagem11[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem11[0]~2_combout\ = ( contagem11(0) & ( \contagem11[0]~0_combout\ & ( (!\Equal0~4_combout\) # ((!\contagem10[0]~3_combout\ & ((!\contagem11[0]~1_combout\) # (!\contagem10[0]~1_combout\)))) ) ) ) # ( !contagem11(0) & ( \contagem11[0]~0_combout\ & ( 
-- (\Equal0~4_combout\ & (((\contagem11[0]~1_combout\ & \contagem10[0]~1_combout\)) # (\contagem10[0]~3_combout\))) ) ) ) # ( contagem11(0) & ( !\contagem11[0]~0_combout\ & ( (!\Equal0~4_combout\) # ((!\contagem11[0]~1_combout\) # 
-- (!\contagem10[0]~1_combout\)) ) ) ) # ( !contagem11(0) & ( !\contagem11[0]~0_combout\ & ( (\Equal0~4_combout\ & (\contagem11[0]~1_combout\ & \contagem10[0]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001111111111110111000000101000101011111101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \ALT_INV_contagem11[0]~1_combout\,
	datac => \ALT_INV_contagem10[0]~3_combout\,
	datad => \ALT_INV_contagem10[0]~1_combout\,
	datae => ALT_INV_contagem11(0),
	dataf => \ALT_INV_contagem11[0]~0_combout\,
	combout => \contagem11[0]~2_combout\);

-- Location: FF_X65_Y2_N14
\contagem11[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \contagem11[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem11(0));

-- Location: LABCELL_X65_Y2_N18
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( contagem11(0) & ( !\switch~input_o\ $ (contagem11(1)) ) ) # ( !contagem11(0) & ( !\switch~input_o\ $ (!contagem11(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switch~input_o\,
	datad => ALT_INV_contagem11(1),
	dataf => ALT_INV_contagem11(0),
	combout => \Add0~0_combout\);

-- Location: LABCELL_X65_Y2_N54
\contagem11[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \contagem11[3]~3_combout\ = ( \contagem10~5_combout\ & ( \Equal0~4_combout\ & ( (\contagem01~1_combout\ & ((!\switch~input_o\ & ((\contagem11[0]~0_combout\))) # (\switch~input_o\ & (\contagem11[0]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_contagem01~1_combout\,
	datab => \ALT_INV_contagem11[0]~1_combout\,
	datac => \ALT_INV_contagem11[0]~0_combout\,
	datad => \ALT_INV_switch~input_o\,
	datae => \ALT_INV_contagem10~5_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \contagem11[3]~3_combout\);

-- Location: FF_X65_Y2_N20
\contagem11[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~0_combout\,
	ena => \contagem11[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem11(1));

-- Location: LABCELL_X65_Y2_N27
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = ( contagem11(1) & ( !contagem11(2) $ (((!contagem11(0)) # (\switch~input_o\))) ) ) # ( !contagem11(1) & ( !contagem11(2) $ (((!\switch~input_o\) # (contagem11(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010101111010100001010111100001010111101010000101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch~input_o\,
	datac => ALT_INV_contagem11(0),
	datad => ALT_INV_contagem11(2),
	dataf => ALT_INV_contagem11(1),
	combout => \Add0~1_combout\);

-- Location: FF_X65_Y2_N29
\contagem11[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~1_combout\,
	ena => \contagem11[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem11(2));

-- Location: LABCELL_X65_Y2_N24
\Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = ( contagem11(2) & ( !contagem11(3) $ ((((!contagem11(0)) # (!contagem11(1))) # (\switch~input_o\))) ) ) # ( !contagem11(2) & ( !contagem11(3) $ (((!\switch~input_o\) # ((contagem11(1)) # (contagem11(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010111111010000001011111100000010111111010000001011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch~input_o\,
	datab => ALT_INV_contagem11(0),
	datac => ALT_INV_contagem11(1),
	datad => ALT_INV_contagem11(3),
	dataf => ALT_INV_contagem11(2),
	combout => \Add0~2_combout\);

-- Location: FF_X65_Y2_N26
\contagem11[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~2_combout\,
	ena => \contagem11[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem11(3));

-- Location: LABCELL_X65_Y2_N48
\Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( contagem11(3) & ( (!contagem11(0) & (!contagem11(1) & contagem11(2))) ) ) # ( !contagem11(3) & ( (!contagem11(1) & ((!contagem11(2)))) # (contagem11(1) & (contagem11(0) & contagem11(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000011111100000000001100000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem11(0),
	datac => ALT_INV_contagem11(1),
	datad => ALT_INV_contagem11(2),
	dataf => ALT_INV_contagem11(3),
	combout => \Mux27~0_combout\);

-- Location: FF_X65_Y2_N49
\LED11_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux27~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED11_out[6]~reg0_q\);

-- Location: LABCELL_X65_Y2_N51
\Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( contagem11(3) & ( (!contagem11(1) & (contagem11(0) & contagem11(2))) # (contagem11(1) & (!contagem11(0) & !contagem11(2))) ) ) # ( !contagem11(3) & ( (!contagem11(1) & (!contagem11(0) $ (!contagem11(2)))) # (contagem11(1) & 
-- ((!contagem11(2)) # (contagem11(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011110011001011101111001100101000100001000100100010000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem11(1),
	datab => ALT_INV_contagem11(0),
	datad => ALT_INV_contagem11(2),
	dataf => ALT_INV_contagem11(3),
	combout => \Mux26~0_combout\);

-- Location: FF_X65_Y2_N52
\LED11_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux26~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED11_out[5]~reg0_q\);

-- Location: LABCELL_X65_Y2_N30
\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( contagem11(3) & ( (contagem11(0) & (!contagem11(1) & !contagem11(2))) ) ) # ( !contagem11(3) & ( ((!contagem11(1) & contagem11(2))) # (contagem11(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110011001100111111001100110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem11(0),
	datac => ALT_INV_contagem11(1),
	datad => ALT_INV_contagem11(2),
	dataf => ALT_INV_contagem11(3),
	combout => \Mux25~0_combout\);

-- Location: FF_X65_Y2_N58
\LED11_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Mux25~0_combout\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED11_out[4]~reg0_q\);

-- Location: LABCELL_X65_Y2_N3
\Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( contagem11(3) & ( (contagem11(1) & (contagem11(0) & contagem11(2))) ) ) # ( !contagem11(3) & ( (contagem11(0) & (!contagem11(1) $ (contagem11(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101000010100000010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem11(1),
	datac => ALT_INV_contagem11(0),
	datad => ALT_INV_contagem11(2),
	dataf => ALT_INV_contagem11(3),
	combout => \Mux24~0_combout\);

-- Location: FF_X65_Y2_N4
\LED11_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux24~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED11_out[3]~reg0_q\);

-- Location: LABCELL_X65_Y2_N0
\Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( contagem11(0) & ( (contagem11(1) & (contagem11(3) & contagem11(2))) ) ) # ( !contagem11(0) & ( (!contagem11(3) & (contagem11(1) & !contagem11(2))) # (contagem11(3) & ((contagem11(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001111010100000000111100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem11(1),
	datac => ALT_INV_contagem11(3),
	datad => ALT_INV_contagem11(2),
	dataf => ALT_INV_contagem11(0),
	combout => \Mux23~0_combout\);

-- Location: FF_X65_Y2_N1
\LED11_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux23~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED11_out[2]~reg0_q\);

-- Location: LABCELL_X65_Y2_N42
\Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( contagem11(3) & ( (!contagem11(0) & ((contagem11(2)))) # (contagem11(0) & (contagem11(1))) ) ) # ( !contagem11(3) & ( (contagem11(2) & (!contagem11(0) $ (!contagem11(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contagem11(0),
	datac => ALT_INV_contagem11(1),
	datad => ALT_INV_contagem11(2),
	dataf => ALT_INV_contagem11(3),
	combout => \Mux22~0_combout\);

-- Location: FF_X65_Y2_N44
\LED11_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux22~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED11_out[1]~reg0_q\);

-- Location: LABCELL_X65_Y2_N45
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( contagem11(1) & ( (contagem11(3) & (contagem11(0) & !contagem11(2))) ) ) # ( !contagem11(1) & ( (!contagem11(3) & (!contagem11(0) $ (!contagem11(2)))) # (contagem11(3) & (contagem11(0) & contagem11(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contagem11(3),
	datac => ALT_INV_contagem11(0),
	datad => ALT_INV_contagem11(2),
	dataf => ALT_INV_contagem11(1),
	combout => \Mux21~0_combout\);

-- Location: FF_X65_Y2_N46
\LED11_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Mux21~0_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED11_out[0]~reg0_q\);

-- Location: MLABCELL_X47_Y22_N0
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


