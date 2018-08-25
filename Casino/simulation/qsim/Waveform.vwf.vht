-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/20/2018 12:13:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Casino
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Casino_vhd_vec_tst IS
END Casino_vhd_vec_tst;
ARCHITECTURE Casino_arch OF Casino_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Adivine : STD_LOGIC;
SIGNAL Apuesta : STD_LOGIC;
SIGNAL C7segmentos : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Caliente : STD_LOGIC;
SIGNAL Consultar_Mejores_Puntuaciones : STD_LOGIC;
SIGNAL Consultar_Saldo : STD_LOGIC;
SIGNAL ContA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Continuar : STD_LOGIC;
SIGNAL D7segmentos : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Error : STD_LOGIC;
SIGNAL estados : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL Frio : STD_LOGIC;
SIGNAL Gano : STD_LOGIC;
SIGNAL Ingrese : STD_LOGIC;
SIGNAL M7segmentos : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Perdio : STD_LOGIC;
SIGNAL Reloj : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
SIGNAL Salir : STD_LOGIC;
SIGNAL Start : STD_LOGIC;
SIGNAL Teclados : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL Tibio : STD_LOGIC;
SIGNAL U7segmentos : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT Casino
	PORT (
	Adivine : OUT STD_LOGIC;
	Apuesta : OUT STD_LOGIC;
	C7segmentos : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Caliente : OUT STD_LOGIC;
	Consultar_Mejores_Puntuaciones : IN STD_LOGIC;
	Consultar_Saldo : IN STD_LOGIC;
	ContA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Continuar : IN STD_LOGIC;
	D7segmentos : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Error : OUT STD_LOGIC;
	estados : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	Frio : OUT STD_LOGIC;
	Gano : OUT STD_LOGIC;
	Ingrese : OUT STD_LOGIC;
	M7segmentos : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Perdio : OUT STD_LOGIC;
	Reloj : IN STD_LOGIC;
	Reset : IN STD_LOGIC;
	Salir : IN STD_LOGIC;
	Start : IN STD_LOGIC;
	Teclados : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	Tibio : OUT STD_LOGIC;
	U7segmentos : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Casino
	PORT MAP (
-- list connections between master ports and signals
	Adivine => Adivine,
	Apuesta => Apuesta,
	C7segmentos => C7segmentos,
	Caliente => Caliente,
	Consultar_Mejores_Puntuaciones => Consultar_Mejores_Puntuaciones,
	Consultar_Saldo => Consultar_Saldo,
	ContA => ContA,
	Continuar => Continuar,
	D7segmentos => D7segmentos,
	Error => Error,
	estados => estados,
	Frio => Frio,
	Gano => Gano,
	Ingrese => Ingrese,
	M7segmentos => M7segmentos,
	Perdio => Perdio,
	Reloj => Reloj,
	Reset => Reset,
	Salir => Salir,
	Start => Start,
	Teclados => Teclados,
	Tibio => Tibio,
	U7segmentos => U7segmentos
	);

-- Start
t_prcs_Start: PROCESS
BEGIN
	Start <= '1';
	WAIT FOR 2100000 ps;
	Start <= '0';
	WAIT FOR 200000 ps;
	Start <= '1';
WAIT;
END PROCESS t_prcs_Start;
-- Teclados[9]
t_prcs_Teclados_9: PROCESS
BEGIN
	Teclados(9) <= '1';
	WAIT FOR 5700000 ps;
	Teclados(9) <= '0';
	WAIT FOR 300000 ps;
	Teclados(9) <= '1';
	WAIT FOR 1000000 ps;
	Teclados(9) <= '0';
	WAIT FOR 300000 ps;
	Teclados(9) <= '1';
WAIT;
END PROCESS t_prcs_Teclados_9;
-- Teclados[8]
t_prcs_Teclados_8: PROCESS
BEGIN
	Teclados(8) <= '1';
	WAIT FOR 2600000 ps;
	Teclados(8) <= '0';
	WAIT FOR 400000 ps;
	Teclados(8) <= '1';
	WAIT FOR 700000 ps;
	Teclados(8) <= '0';
	WAIT FOR 400000 ps;
	Teclados(8) <= '1';
WAIT;
END PROCESS t_prcs_Teclados_8;
-- Teclados[7]
t_prcs_Teclados_7: PROCESS
BEGIN
	Teclados(7) <= '1';
	WAIT FOR 3200000 ps;
	Teclados(7) <= '0';
	WAIT FOR 300000 ps;
	Teclados(7) <= '1';
WAIT;
END PROCESS t_prcs_Teclados_7;
-- Teclados[6]
t_prcs_Teclados_6: PROCESS
BEGIN
	Teclados(6) <= '1';
	WAIT FOR 5100000 ps;
	Teclados(6) <= '0';
	WAIT FOR 200000 ps;
	Teclados(6) <= '1';
WAIT;
END PROCESS t_prcs_Teclados_6;
-- Teclados[5]
t_prcs_Teclados_5: PROCESS
BEGIN
	Teclados(5) <= '1';
WAIT;
END PROCESS t_prcs_Teclados_5;
-- Teclados[4]
t_prcs_Teclados_4: PROCESS
BEGIN
	Teclados(4) <= '1';
WAIT;
END PROCESS t_prcs_Teclados_4;
-- Teclados[3]
t_prcs_Teclados_3: PROCESS
BEGIN
	Teclados(3) <= '1';
WAIT;
END PROCESS t_prcs_Teclados_3;
-- Teclados[2]
t_prcs_Teclados_2: PROCESS
BEGIN
	Teclados(2) <= '1';
WAIT;
END PROCESS t_prcs_Teclados_2;
-- Teclados[1]
t_prcs_Teclados_1: PROCESS
BEGIN
	Teclados(1) <= '1';
WAIT;
END PROCESS t_prcs_Teclados_1;
-- Teclados[0]
t_prcs_Teclados_0: PROCESS
BEGIN
	Teclados(0) <= '1';
	WAIT FOR 7600000 ps;
	Teclados(0) <= '0';
	WAIT FOR 300000 ps;
	Teclados(0) <= '1';
WAIT;
END PROCESS t_prcs_Teclados_0;

-- Salir
t_prcs_Salir: PROCESS
BEGIN
	Salir <= '1';
WAIT;
END PROCESS t_prcs_Salir;

-- Continuar
t_prcs_Continuar: PROCESS
BEGIN
	Continuar <= '1';
	WAIT FOR 4500000 ps;
	Continuar <= '0';
	WAIT FOR 200000 ps;
	Continuar <= '1';
	WAIT FOR 1800000 ps;
	Continuar <= '0';
	WAIT FOR 100000 ps;
	Continuar <= '1';
WAIT;
END PROCESS t_prcs_Continuar;

-- Consultar_Mejores_Puntuaciones
t_prcs_Consultar_Mejores_Puntuaciones: PROCESS
BEGIN
	Consultar_Mejores_Puntuaciones <= '1';
	WAIT FOR 9000000 ps;
	Consultar_Mejores_Puntuaciones <= '0';
	WAIT FOR 200000 ps;
	Consultar_Mejores_Puntuaciones <= '1';
WAIT;
END PROCESS t_prcs_Consultar_Mejores_Puntuaciones;

-- Consultar_Saldo
t_prcs_Consultar_Saldo: PROCESS
BEGIN
	Consultar_Saldo <= '1';
WAIT;
END PROCESS t_prcs_Consultar_Saldo;

-- Reset
t_prcs_Reset: PROCESS
BEGIN
	Reset <= '0';
WAIT;
END PROCESS t_prcs_Reset;

-- Reloj
t_prcs_Reloj: PROCESS
BEGIN
LOOP
	Reloj <= '0';
	WAIT FOR 5000 ps;
	Reloj <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Reloj;
END Casino_arch;
