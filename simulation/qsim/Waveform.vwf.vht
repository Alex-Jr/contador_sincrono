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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/13/2019 02:48:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          contador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY contador_vhd_vec_tst IS
END contador_vhd_vec_tst;
ARCHITECTURE contador_arch OF contador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL b_reset : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL LED00_out : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL LED01_out : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL LED10_out : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL LED11_out : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL LED_contagem : STD_LOGIC;
SIGNAL LED_stop : STD_LOGIC;
SIGNAL s_contagem : STD_LOGIC;
SIGNAL s_stop : STD_LOGIC;
COMPONENT contador
	PORT (
	b_reset : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	LED00_out : OUT STD_LOGIC_VECTOR(0 TO 6);
	LED01_out : OUT STD_LOGIC_VECTOR(0 TO 6);
	LED10_out : OUT STD_LOGIC_VECTOR(0 TO 6);
	LED11_out : OUT STD_LOGIC_VECTOR(0 TO 6);
	LED_contagem : OUT STD_LOGIC;
	LED_stop : OUT STD_LOGIC;
	s_contagem : IN STD_LOGIC;
	s_stop : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : contador
	PORT MAP (
-- list connections between master ports and signals
	b_reset => b_reset,
	clock => clock,
	LED00_out => LED00_out,
	LED01_out => LED01_out,
	LED10_out => LED10_out,
	LED11_out => LED11_out,
	LED_contagem => LED_contagem,
	LED_stop => LED_stop,
	s_contagem => s_contagem,
	s_stop => s_stop
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 1250 ps;
	clock <= '1';
	WAIT FOR 1250 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- s_contagem
t_prcs_s_contagem: PROCESS
BEGIN
	s_contagem <= '0';
	WAIT FOR 150000 ps;
	s_contagem <= '1';
	WAIT FOR 600000 ps;
	s_contagem <= '0';
	WAIT FOR 150000 ps;
	s_contagem <= '1';
WAIT;
END PROCESS t_prcs_s_contagem;

-- s_stop
t_prcs_s_stop: PROCESS
BEGIN
LOOP
	s_stop <= '0';
	WAIT FOR 85000 ps;
	s_stop <= '1';
	WAIT FOR 15000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s_stop;

-- b_reset
t_prcs_b_reset: PROCESS
BEGIN
	b_reset <= '0';
	WAIT FOR 80000 ps;
	b_reset <= '1';
	WAIT FOR 720000 ps;
	b_reset <= '0';
	WAIT FOR 80000 ps;
	b_reset <= '1';
WAIT;
END PROCESS t_prcs_b_reset;
END contador_arch;
