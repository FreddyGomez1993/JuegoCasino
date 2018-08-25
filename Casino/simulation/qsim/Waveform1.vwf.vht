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
-- Generated on "08/15/2018 06:38:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          controlador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY controlador_vhd_vec_tst IS
END controlador_vhd_vec_tst;
ARCHITECTURE controlador_arch OF controlador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Adivine : STD_LOGIC;
SIGNAL alcanzoN : STD_LOGIC;
SIGNAL Apuesta : STD_LOGIC;
SIGNAL ApuestaValida : STD_LOGIC;
SIGNAL Caliente : STD_LOGIC;
SIGNAL CantValida : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL Consultar_Mejores_Puntuaciones : STD_LOGIC;
SIGNAL Consultar_Saldo : STD_LOGIC;
SIGNAL Continuar : STD_LOGIC;
SIGNAL En2s : STD_LOGIC;
SIGNAL En5s : STD_LOGIC;
SIGNAL EnAp : STD_LOGIC;
SIGNAL EnCant : STD_LOGIC;
SIGNAL EnDown : STD_LOGIC;
SIGNAL EnInt : STD_LOGIC;
SIGNAL EnMem : STD_LOGIC;
SIGNAL EnMost : STD_LOGIC;
SIGNAL EnN : STD_LOGIC;
SIGNAL EnSumAp : STD_LOGIC;
SIGNAL EnTecla : STD_LOGIC;
SIGNAL EnVal : STD_LOGIC;
SIGNAL Error : STD_LOGIC;
SIGNAL esCaliente : STD_LOGIC;
SIGNAL est : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL esTibio : STD_LOGIC;
SIGNAL FinMem : STD_LOGIC;
SIGNAL Frio : STD_LOGIC;
SIGNAL Gano : STD_LOGIC;
SIGNAL GetAlea : STD_LOGIC;
SIGNAL HayTecla : STD_LOGIC;
SIGNAL Ingrese : STD_LOGIC;
SIGNAL Ld2s : STD_LOGIC;
SIGNAL Ld5s : STD_LOGIC;
SIGNAL LdDown : STD_LOGIC;
SIGNAL LdInt : STD_LOGIC;
SIGNAL LdMem : STD_LOGIC;
SIGNAL MayorMem : STD_LOGIC;
SIGNAL NumValido : STD_LOGIC;
SIGNAL Perdio : STD_LOGIC;
SIGNAL Resetn : STD_LOGIC;
SIGNAL Salir : STD_LOGIC;
SIGNAL Sel : STD_LOGIC;
SIGNAL SelAdd : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL SelCant : STD_LOGIC;
SIGNAL SelMem : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL SelMost : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL SelN : STD_LOGIC;
SIGNAL selNumber : STD_LOGIC;
SIGNAL SelSum : STD_LOGIC;
SIGNAL SelSumAP : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL T2s : STD_LOGIC;
SIGNAL t5s : STD_LOGIC;
SIGNAL TermIntentos : STD_LOGIC;
SIGNAL Tibio : STD_LOGIC;
SIGNAL wr : STD_LOGIC;
SIGNAL YaGano : STD_LOGIC;
COMPONENT controlador
	PORT (
	Adivine : BUFFER STD_LOGIC;
	alcanzoN : IN STD_LOGIC;
	Apuesta : BUFFER STD_LOGIC;
	ApuestaValida : IN STD_LOGIC;
	Caliente : BUFFER STD_LOGIC;
	CantValida : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	Consultar_Mejores_Puntuaciones : IN STD_LOGIC;
	Consultar_Saldo : IN STD_LOGIC;
	Continuar : IN STD_LOGIC;
	En2s : BUFFER STD_LOGIC;
	En5s : BUFFER STD_LOGIC;
	EnAp : BUFFER STD_LOGIC;
	EnCant : BUFFER STD_LOGIC;
	EnDown : BUFFER STD_LOGIC;
	EnInt : BUFFER STD_LOGIC;
	EnMem : BUFFER STD_LOGIC;
	EnMost : BUFFER STD_LOGIC;
	EnN : BUFFER STD_LOGIC;
	EnSumAp : BUFFER STD_LOGIC;
	EnTecla : BUFFER STD_LOGIC;
	EnVal : BUFFER STD_LOGIC;
	Error : BUFFER STD_LOGIC;
	esCaliente : IN STD_LOGIC;
	est : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	esTibio : IN STD_LOGIC;
	FinMem : IN STD_LOGIC;
	Frio : BUFFER STD_LOGIC;
	Gano : BUFFER STD_LOGIC;
	GetAlea : BUFFER STD_LOGIC;
	HayTecla : IN STD_LOGIC;
	Ingrese : BUFFER STD_LOGIC;
	Ld2s : BUFFER STD_LOGIC;
	Ld5s : BUFFER STD_LOGIC;
	LdDown : BUFFER STD_LOGIC;
	LdInt : BUFFER STD_LOGIC;
	LdMem : BUFFER STD_LOGIC;
	MayorMem : IN STD_LOGIC;
	NumValido : IN STD_LOGIC;
	Perdio : BUFFER STD_LOGIC;
	Resetn : IN STD_LOGIC;
	Salir : IN STD_LOGIC;
	Sel : BUFFER STD_LOGIC;
	SelAdd : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	SelCant : BUFFER STD_LOGIC;
	SelMem : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	SelMost : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	SelN : BUFFER STD_LOGIC;
	selNumber : BUFFER STD_LOGIC;
	SelSum : BUFFER STD_LOGIC;
	SelSumAP : BUFFER STD_LOGIC;
	start : IN STD_LOGIC;
	T2s : IN STD_LOGIC;
	t5s : IN STD_LOGIC;
	TermIntentos : IN STD_LOGIC;
	Tibio : BUFFER STD_LOGIC;
	wr : BUFFER STD_LOGIC;
	YaGano : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : controlador
	PORT MAP (
-- list connections between master ports and signals
	Adivine => Adivine,
	alcanzoN => alcanzoN,
	Apuesta => Apuesta,
	ApuestaValida => ApuestaValida,
	Caliente => Caliente,
	CantValida => CantValida,
	clock => clock,
	Consultar_Mejores_Puntuaciones => Consultar_Mejores_Puntuaciones,
	Consultar_Saldo => Consultar_Saldo,
	Continuar => Continuar,
	En2s => En2s,
	En5s => En5s,
	EnAp => EnAp,
	EnCant => EnCant,
	EnDown => EnDown,
	EnInt => EnInt,
	EnMem => EnMem,
	EnMost => EnMost,
	EnN => EnN,
	EnSumAp => EnSumAp,
	EnTecla => EnTecla,
	EnVal => EnVal,
	Error => Error,
	esCaliente => esCaliente,
	est => est,
	esTibio => esTibio,
	FinMem => FinMem,
	Frio => Frio,
	Gano => Gano,
	GetAlea => GetAlea,
	HayTecla => HayTecla,
	Ingrese => Ingrese,
	Ld2s => Ld2s,
	Ld5s => Ld5s,
	LdDown => LdDown,
	LdInt => LdInt,
	LdMem => LdMem,
	MayorMem => MayorMem,
	NumValido => NumValido,
	Perdio => Perdio,
	Resetn => Resetn,
	Salir => Salir,
	Sel => Sel,
	SelAdd => SelAdd,
	SelCant => SelCant,
	SelMem => SelMem,
	SelMost => SelMost,
	SelN => SelN,
	selNumber => selNumber,
	SelSum => SelSum,
	SelSumAP => SelSumAP,
	start => start,
	T2s => T2s,
	t5s => t5s,
	TermIntentos => TermIntentos,
	Tibio => Tibio,
	wr => wr,
	YaGano => YaGano
	);

-- Resetn
t_prcs_Resetn: PROCESS
BEGIN
	Resetn <= '1';
WAIT;
END PROCESS t_prcs_Resetn;

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '0';
	WAIT FOR 130000 ps;
	start <= '1';
	WAIT FOR 50000 ps;
	start <= '0';
WAIT;
END PROCESS t_prcs_start;

-- Salir
t_prcs_Salir: PROCESS
BEGIN
	Salir <= '0';
WAIT;
END PROCESS t_prcs_Salir;

-- FinMem
t_prcs_FinMem: PROCESS
BEGIN
	FinMem <= '0';
	WAIT FOR 60000 ps;
	FinMem <= '1';
	WAIT FOR 10000 ps;
	FinMem <= '0';
	WAIT FOR 280000 ps;
	FinMem <= '1';
	WAIT FOR 10000 ps;
	FinMem <= '0';
WAIT;
END PROCESS t_prcs_FinMem;

-- Consultar_Mejores_Puntuaciones
t_prcs_Consultar_Mejores_Puntuaciones: PROCESS
BEGIN
	Consultar_Mejores_Puntuaciones <= '0';
	WAIT FOR 310000 ps;
	Consultar_Mejores_Puntuaciones <= '1';
	WAIT FOR 10000 ps;
	Consultar_Mejores_Puntuaciones <= '0';
WAIT;
END PROCESS t_prcs_Consultar_Mejores_Puntuaciones;

-- Consultar_Saldo
t_prcs_Consultar_Saldo: PROCESS
BEGIN
	Consultar_Saldo <= '0';
	WAIT FOR 250000 ps;
	Consultar_Saldo <= '1';
	WAIT FOR 10000 ps;
	Consultar_Saldo <= '0';
WAIT;
END PROCESS t_prcs_Consultar_Saldo;

-- HayTecla
t_prcs_HayTecla: PROCESS
BEGIN
	HayTecla <= '0';
	WAIT FOR 380000 ps;
	HayTecla <= '1';
	WAIT FOR 50000 ps;
	HayTecla <= '0';
	WAIT FOR 60000 ps;
	HayTecla <= '1';
	WAIT FOR 50000 ps;
	HayTecla <= '0';
	WAIT FOR 50000 ps;
	HayTecla <= '1';
	WAIT FOR 60000 ps;
	HayTecla <= '0';
	WAIT FOR 90000 ps;
	HayTecla <= '1';
	WAIT FOR 40000 ps;
	HayTecla <= '0';
	WAIT FOR 30000 ps;
	HayTecla <= '1';
	WAIT FOR 40000 ps;
	HayTecla <= '0';
	WAIT FOR 30000 ps;
	HayTecla <= '1';
	WAIT FOR 30000 ps;
	HayTecla <= '0';
	WAIT FOR 130000 ps;
	HayTecla <= '1';
	WAIT FOR 50000 ps;
	HayTecla <= '0';
	WAIT FOR 40000 ps;
	HayTecla <= '1';
	WAIT FOR 40000 ps;
	HayTecla <= '0';
	WAIT FOR 100000 ps;
	HayTecla <= '1';
	WAIT FOR 20000 ps;
	HayTecla <= '0';
	WAIT FOR 30000 ps;
	HayTecla <= '1';
	WAIT FOR 40000 ps;
	HayTecla <= '0';
	WAIT FOR 270000 ps;
	HayTecla <= '1';
	WAIT FOR 30000 ps;
	HayTecla <= '0';
	WAIT FOR 20000 ps;
	HayTecla <= '1';
	WAIT FOR 30000 ps;
	HayTecla <= '0';
	WAIT FOR 50000 ps;
	HayTecla <= '1';
	WAIT FOR 20000 ps;
	HayTecla <= '0';
	WAIT FOR 10000 ps;
	HayTecla <= '1';
	WAIT FOR 20000 ps;
	HayTecla <= '0';
WAIT;
END PROCESS t_prcs_HayTecla;

-- CantValida
t_prcs_CantValida: PROCESS
BEGIN
	CantValida <= '0';
	WAIT FOR 900000 ps;
	CantValida <= '1';
	WAIT FOR 99000 ps;
	CantValida <= '0';
WAIT;
END PROCESS t_prcs_CantValida;

-- alcanzoN
t_prcs_alcanzoN: PROCESS
BEGIN
	alcanzoN <= '0';
	WAIT FOR 1950000 ps;
	alcanzoN <= '1';
	WAIT FOR 30000 ps;
	alcanzoN <= '0';
WAIT;
END PROCESS t_prcs_alcanzoN;

-- ApuestaValida
t_prcs_ApuestaValida: PROCESS
BEGIN
	ApuestaValida <= '0';
	WAIT FOR 1160000 ps;
	ApuestaValida <= '1';
	WAIT FOR 40000 ps;
	ApuestaValida <= '0';
	WAIT FOR 500000 ps;
	ApuestaValida <= '1';
	WAIT FOR 50000 ps;
	ApuestaValida <= '0';
WAIT;
END PROCESS t_prcs_ApuestaValida;

-- Continuar
t_prcs_Continuar: PROCESS
BEGIN
	Continuar <= '0';
	WAIT FOR 960000 ps;
	Continuar <= '1';
	WAIT FOR 10000 ps;
	Continuar <= '0';
	WAIT FOR 220000 ps;
	Continuar <= '1';
	WAIT FOR 10000 ps;
	Continuar <= '0';
	WAIT FOR 540000 ps;
	Continuar <= '1';
	WAIT FOR 20000 ps;
	Continuar <= '0';
WAIT;
END PROCESS t_prcs_Continuar;

-- esCaliente
t_prcs_esCaliente: PROCESS
BEGIN
	esCaliente <= '0';
	WAIT FOR 1360000 ps;
	esCaliente <= '1';
	WAIT FOR 70000 ps;
	esCaliente <= '0';
WAIT;
END PROCESS t_prcs_esCaliente;

-- esTibio
t_prcs_esTibio: PROCESS
BEGIN
	esTibio <= '0';
WAIT;
END PROCESS t_prcs_esTibio;

-- MayorMem
t_prcs_MayorMem: PROCESS
BEGIN
	MayorMem <= '0';
	WAIT FOR 1920000 ps;
	MayorMem <= '1';
	WAIT FOR 10000 ps;
	MayorMem <= '0';
WAIT;
END PROCESS t_prcs_MayorMem;

-- T2s
t_prcs_T2s: PROCESS
BEGIN
	T2s <= '0';
	WAIT FOR 700000 ps;
	T2s <= '1';
	WAIT FOR 10000 ps;
	T2s <= '0';
	WAIT FOR 760000 ps;
	T2s <= '1';
	WAIT FOR 10000 ps;
	T2s <= '0';
WAIT;
END PROCESS t_prcs_T2s;

-- t5s
t_prcs_t5s: PROCESS
BEGIN
	t5s <= '0';
	WAIT FOR 1590000 ps;
	t5s <= '1';
	WAIT FOR 10000 ps;
	t5s <= '0';
	WAIT FOR 290000 ps;
	t5s <= '1';
	WAIT FOR 10000 ps;
	t5s <= '0';
WAIT;
END PROCESS t_prcs_t5s;

-- TermIntentos
t_prcs_TermIntentos: PROCESS
BEGIN
	TermIntentos <= '0';
	WAIT FOR 1530000 ps;
	TermIntentos <= '1';
	WAIT FOR 10000 ps;
	TermIntentos <= '0';
WAIT;
END PROCESS t_prcs_TermIntentos;

-- NumValido
t_prcs_NumValido: PROCESS
BEGIN
	NumValido <= '0';
	WAIT FOR 1350000 ps;
	NumValido <= '1';
	WAIT FOR 60000 ps;
	NumValido <= '0';
	WAIT FOR 390000 ps;
	NumValido <= '1';
	WAIT FOR 60000 ps;
	NumValido <= '0';
WAIT;
END PROCESS t_prcs_NumValido;

-- YaGano
t_prcs_YaGano: PROCESS
BEGIN
	YaGano <= '0';
	WAIT FOR 1820000 ps;
	YaGano <= '1';
	WAIT FOR 70000 ps;
	YaGano <= '0';
WAIT;
END PROCESS t_prcs_YaGano;
END controlador_arch;
