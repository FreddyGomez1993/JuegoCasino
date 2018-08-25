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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "08/23/2018 07:52:34"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Casino IS
    PORT (
	Ingrese : OUT std_logic;
	Reset : IN std_logic;
	Reloj : IN std_logic;
	Start : IN std_logic;
	Salir : IN std_logic;
	Consultar_Saldo : IN std_logic;
	Consultar_Mejores_Puntuaciones : IN std_logic;
	Teclados : IN std_logic_vector(9 DOWNTO 0);
	Continuar : IN std_logic;
	Apuesta : OUT std_logic;
	Adivine : OUT std_logic;
	Caliente : OUT std_logic;
	Frio : OUT std_logic;
	Tibio : OUT std_logic;
	Perdio : OUT std_logic;
	Gano : OUT std_logic;
	Error : OUT std_logic;
	C7segmentos : OUT std_logic_vector(6 DOWNTO 0);
	D7segmentos : OUT std_logic_vector(6 DOWNTO 0);
	estados : OUT std_logic_vector(5 DOWNTO 0);
	M7segmentos : OUT std_logic_vector(6 DOWNTO 0);
	U7segmentos : OUT std_logic_vector(6 DOWNTO 0)
	);
END Casino;

-- Design Ports Information
-- Ingrese	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Apuesta	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Adivine	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Caliente	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Frio	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tibio	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Perdio	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Gano	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Error	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C7segmentos[6]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C7segmentos[5]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C7segmentos[4]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C7segmentos[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C7segmentos[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C7segmentos[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C7segmentos[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7segmentos[6]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7segmentos[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7segmentos[4]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7segmentos[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7segmentos[2]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7segmentos[1]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7segmentos[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estados[5]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estados[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estados[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estados[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estados[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estados[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M7segmentos[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M7segmentos[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M7segmentos[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M7segmentos[3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M7segmentos[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M7segmentos[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M7segmentos[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U7segmentos[6]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U7segmentos[5]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U7segmentos[4]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U7segmentos[3]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U7segmentos[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U7segmentos[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U7segmentos[0]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reloj	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Consultar_Saldo	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teclados[8]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teclados[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teclados[6]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teclados[7]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teclados[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teclados[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teclados[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teclados[2]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teclados[5]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Teclados[9]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Consultar_Mejores_Puntuaciones	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salir	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Continuar	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Casino IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Ingrese : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Reloj : std_logic;
SIGNAL ww_Start : std_logic;
SIGNAL ww_Salir : std_logic;
SIGNAL ww_Consultar_Saldo : std_logic;
SIGNAL ww_Consultar_Mejores_Puntuaciones : std_logic;
SIGNAL ww_Teclados : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Continuar : std_logic;
SIGNAL ww_Apuesta : std_logic;
SIGNAL ww_Adivine : std_logic;
SIGNAL ww_Caliente : std_logic;
SIGNAL ww_Frio : std_logic;
SIGNAL ww_Tibio : std_logic;
SIGNAL ww_Perdio : std_logic;
SIGNAL ww_Gano : std_logic;
SIGNAL ww_Error : std_logic;
SIGNAL ww_C7segmentos : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_D7segmentos : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_estados : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_M7segmentos : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_U7segmentos : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst85|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst85|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst85|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst149|CLOCK_1Hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst149|CLOCK_100Hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst149|clock_100Khz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst149|clock_100hz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst149|clock_10hz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst136|PB_SIN_REBOTE~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst149|clock_1Khz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst149|clock_1Mhz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst149|clock_10Khz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst149|CLOCK_1MHz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Ingrese~output_o\ : std_logic;
SIGNAL \Apuesta~output_o\ : std_logic;
SIGNAL \Adivine~output_o\ : std_logic;
SIGNAL \Caliente~output_o\ : std_logic;
SIGNAL \Frio~output_o\ : std_logic;
SIGNAL \Tibio~output_o\ : std_logic;
SIGNAL \Perdio~output_o\ : std_logic;
SIGNAL \Gano~output_o\ : std_logic;
SIGNAL \Error~output_o\ : std_logic;
SIGNAL \C7segmentos[6]~output_o\ : std_logic;
SIGNAL \C7segmentos[5]~output_o\ : std_logic;
SIGNAL \C7segmentos[4]~output_o\ : std_logic;
SIGNAL \C7segmentos[3]~output_o\ : std_logic;
SIGNAL \C7segmentos[2]~output_o\ : std_logic;
SIGNAL \C7segmentos[1]~output_o\ : std_logic;
SIGNAL \C7segmentos[0]~output_o\ : std_logic;
SIGNAL \D7segmentos[6]~output_o\ : std_logic;
SIGNAL \D7segmentos[5]~output_o\ : std_logic;
SIGNAL \D7segmentos[4]~output_o\ : std_logic;
SIGNAL \D7segmentos[3]~output_o\ : std_logic;
SIGNAL \D7segmentos[2]~output_o\ : std_logic;
SIGNAL \D7segmentos[1]~output_o\ : std_logic;
SIGNAL \D7segmentos[0]~output_o\ : std_logic;
SIGNAL \estados[5]~output_o\ : std_logic;
SIGNAL \estados[4]~output_o\ : std_logic;
SIGNAL \estados[3]~output_o\ : std_logic;
SIGNAL \estados[2]~output_o\ : std_logic;
SIGNAL \estados[1]~output_o\ : std_logic;
SIGNAL \estados[0]~output_o\ : std_logic;
SIGNAL \M7segmentos[6]~output_o\ : std_logic;
SIGNAL \M7segmentos[5]~output_o\ : std_logic;
SIGNAL \M7segmentos[4]~output_o\ : std_logic;
SIGNAL \M7segmentos[3]~output_o\ : std_logic;
SIGNAL \M7segmentos[2]~output_o\ : std_logic;
SIGNAL \M7segmentos[1]~output_o\ : std_logic;
SIGNAL \M7segmentos[0]~output_o\ : std_logic;
SIGNAL \U7segmentos[6]~output_o\ : std_logic;
SIGNAL \U7segmentos[5]~output_o\ : std_logic;
SIGNAL \U7segmentos[4]~output_o\ : std_logic;
SIGNAL \U7segmentos[3]~output_o\ : std_logic;
SIGNAL \U7segmentos[2]~output_o\ : std_logic;
SIGNAL \U7segmentos[1]~output_o\ : std_logic;
SIGNAL \U7segmentos[0]~output_o\ : std_logic;
SIGNAL \Reloj~input_o\ : std_logic;
SIGNAL \Reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst149|count_1Mhz[0]~6_combout\ : std_logic;
SIGNAL \inst149|count_1Mhz[2]~11\ : std_logic;
SIGNAL \inst149|count_1Mhz[3]~12_combout\ : std_logic;
SIGNAL \inst149|count_1Mhz[3]~13\ : std_logic;
SIGNAL \inst149|count_1Mhz[4]~14_combout\ : std_logic;
SIGNAL \inst149|count_1Mhz[4]~15\ : std_logic;
SIGNAL \inst149|count_1Mhz[5]~16_combout\ : std_logic;
SIGNAL \inst149|LessThan0~0_combout\ : std_logic;
SIGNAL \inst149|LessThan0~1_combout\ : std_logic;
SIGNAL \inst149|count_1Mhz[0]~7\ : std_logic;
SIGNAL \inst149|count_1Mhz[1]~8_combout\ : std_logic;
SIGNAL \inst149|count_1Mhz[1]~9\ : std_logic;
SIGNAL \inst149|count_1Mhz[2]~10_combout\ : std_logic;
SIGNAL \inst149|LessThan1~0_combout\ : std_logic;
SIGNAL \inst149|clock_1Mhz_int~q\ : std_logic;
SIGNAL \inst149|clock_1Mhz_int~clkctrl_outclk\ : std_logic;
SIGNAL \inst149|count_100Khz~2_combout\ : std_logic;
SIGNAL \inst149|count_100Khz~0_combout\ : std_logic;
SIGNAL \inst149|count_100Khz[1]~1_combout\ : std_logic;
SIGNAL \inst149|clock_100Khz_int~0_combout\ : std_logic;
SIGNAL \inst149|clock_100Khz_int~q\ : std_logic;
SIGNAL \inst149|clock_100Khz_int~clkctrl_outclk\ : std_logic;
SIGNAL \inst149|count_10Khz~2_combout\ : std_logic;
SIGNAL \inst149|count_10Khz~0_combout\ : std_logic;
SIGNAL \inst149|count_10Khz[1]~1_combout\ : std_logic;
SIGNAL \inst149|clock_10Khz_int~0_combout\ : std_logic;
SIGNAL \inst149|clock_10Khz_int~feeder_combout\ : std_logic;
SIGNAL \inst149|clock_10Khz_int~q\ : std_logic;
SIGNAL \inst149|clock_10Khz_int~clkctrl_outclk\ : std_logic;
SIGNAL \inst149|count_1Khz~2_combout\ : std_logic;
SIGNAL \inst149|count_1Khz~0_combout\ : std_logic;
SIGNAL \inst149|count_1Khz[1]~1_combout\ : std_logic;
SIGNAL \inst149|clock_1Khz_int~0_combout\ : std_logic;
SIGNAL \inst149|clock_1Khz_int~q\ : std_logic;
SIGNAL \inst149|clock_1Khz_int~clkctrl_outclk\ : std_logic;
SIGNAL \inst149|count_100hz~0_combout\ : std_logic;
SIGNAL \inst149|count_100hz[1]~1_combout\ : std_logic;
SIGNAL \inst149|count_100hz~2_combout\ : std_logic;
SIGNAL \inst149|clock_100hz_int~0_combout\ : std_logic;
SIGNAL \inst149|clock_100hz_int~feeder_combout\ : std_logic;
SIGNAL \inst149|clock_100hz_int~q\ : std_logic;
SIGNAL \inst149|CLOCK_100Hz~q\ : std_logic;
SIGNAL \inst149|CLOCK_100Hz~clkctrl_outclk\ : std_logic;
SIGNAL \Teclados[3]~input_o\ : std_logic;
SIGNAL \inst127|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \inst127|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \inst127|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \inst127|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \inst127|Equal0~0_combout\ : std_logic;
SIGNAL \inst127|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \Teclados[0]~input_o\ : std_logic;
SIGNAL \inst133|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \inst133|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \inst133|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \inst133|Equal0~0_combout\ : std_logic;
SIGNAL \inst133|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \Teclados[1]~input_o\ : std_logic;
SIGNAL \inst131|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \inst131|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \inst131|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \inst131|Equal0~0_combout\ : std_logic;
SIGNAL \inst131|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \Teclados[2]~input_o\ : std_logic;
SIGNAL \inst130|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \inst130|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \inst130|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \inst130|Equal0~0_combout\ : std_logic;
SIGNAL \inst130|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \inst2|Equal3~0_combout\ : std_logic;
SIGNAL \Teclados[8]~input_o\ : std_logic;
SIGNAL \inst67|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \inst67|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \inst67|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \inst67|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \inst67|Equal0~0_combout\ : std_logic;
SIGNAL \inst67|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \Teclados[9]~input_o\ : std_logic;
SIGNAL \inst44|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \inst44|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \inst44|Equal0~0_combout\ : std_logic;
SIGNAL \inst44|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \Teclados[5]~input_o\ : std_logic;
SIGNAL \inst124|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \inst124|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \inst124|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \inst124|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \inst124|Equal0~0_combout\ : std_logic;
SIGNAL \inst124|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \Teclados[4]~input_o\ : std_logic;
SIGNAL \inst125|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \inst125|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \inst125|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \inst125|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \inst125|Equal0~0_combout\ : std_logic;
SIGNAL \inst125|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \Teclados[6]~input_o\ : std_logic;
SIGNAL \inst91|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \inst91|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \inst91|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \inst91|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \inst91|Equal0~0_combout\ : std_logic;
SIGNAL \inst91|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \Teclados[7]~input_o\ : std_logic;
SIGNAL \inst83|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \inst83|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \inst83|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \inst83|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \inst83|Equal0~0_combout\ : std_logic;
SIGNAL \inst83|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst256~combout\ : std_logic;
SIGNAL \Consultar_Mejores_Puntuaciones~input_o\ : std_logic;
SIGNAL \inst141|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \inst141|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \inst141|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \inst141|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \inst141|Equal0~0_combout\ : std_logic;
SIGNAL \inst141|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \Salir~input_o\ : std_logic;
SIGNAL \inst139|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \inst139|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \inst139|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \inst139|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \inst139|Equal0~0_combout\ : std_logic;
SIGNAL \inst139|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \Consultar_Saldo~input_o\ : std_logic;
SIGNAL \inst140|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \inst140|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \inst140|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \inst140|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \inst140|Equal0~0_combout\ : std_logic;
SIGNAL \inst140|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \inst|y~142_combout\ : std_logic;
SIGNAL \inst|y~143_combout\ : std_logic;
SIGNAL \inst2|WideOr1~7_combout\ : std_logic;
SIGNAL \inst2|WideOr1~3_combout\ : std_logic;
SIGNAL \inst2|WideOr1~combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \inst136|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \inst136|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \inst136|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \inst136|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \inst136|Equal0~0_combout\ : std_logic;
SIGNAL \inst136|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \inst136|PB_SIN_REBOTE~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Selector43~0_combout\ : std_logic;
SIGNAL \inst|y.T44~q\ : std_logic;
SIGNAL \inst|Selector40~0_combout\ : std_logic;
SIGNAL \inst|y~144_combout\ : std_logic;
SIGNAL \inst|Selector44~0_combout\ : std_logic;
SIGNAL \inst|y.T45~q\ : std_logic;
SIGNAL \inst149|clock_100hz_int~clkctrl_outclk\ : std_logic;
SIGNAL \inst149|count_10hz~0_combout\ : std_logic;
SIGNAL \inst149|count_10hz[1]~1_combout\ : std_logic;
SIGNAL \inst149|count_10hz~2_combout\ : std_logic;
SIGNAL \inst149|clock_10hz_int~0_combout\ : std_logic;
SIGNAL \inst149|clock_10hz_int~feeder_combout\ : std_logic;
SIGNAL \inst149|clock_10hz_int~q\ : std_logic;
SIGNAL \inst149|clock_10hz_int~clkctrl_outclk\ : std_logic;
SIGNAL \inst149|count_1hz~1_combout\ : std_logic;
SIGNAL \inst149|count_1hz[1]~0_combout\ : std_logic;
SIGNAL \inst149|count_1hz~2_combout\ : std_logic;
SIGNAL \inst149|clock_1hz_int~0_combout\ : std_logic;
SIGNAL \inst149|clock_1hz_int~feeder_combout\ : std_logic;
SIGNAL \inst149|clock_1hz_int~q\ : std_logic;
SIGNAL \inst149|CLOCK_1Hz~feeder_combout\ : std_logic;
SIGNAL \inst149|CLOCK_1Hz~q\ : std_logic;
SIGNAL \inst149|CLOCK_1Hz~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Selector47~0_combout\ : std_logic;
SIGNAL \inst|y.T48~q\ : std_logic;
SIGNAL \inst|Selector18~0_combout\ : std_logic;
SIGNAL \inst|y.T19~q\ : std_logic;
SIGNAL \inst|Selector20~0_combout\ : std_logic;
SIGNAL \Continuar~input_o\ : std_logic;
SIGNAL \inst142|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \inst142|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \inst142|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \inst142|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \inst142|Equal0~0_combout\ : std_logic;
SIGNAL \inst142|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \inst|y.T21~q\ : std_logic;
SIGNAL \inst|Selector21~0_combout\ : std_logic;
SIGNAL \inst|y.T22~q\ : std_logic;
SIGNAL \inst|Selector22~0_combout\ : std_logic;
SIGNAL \inst|y.T33~q\ : std_logic;
SIGNAL \inst2|Equal7~0_combout\ : std_logic;
SIGNAL \inst2|Equal3~1_combout\ : std_logic;
SIGNAL \inst2|WideOr0~7_combout\ : std_logic;
SIGNAL \inst2|WideOr0~3_combout\ : std_logic;
SIGNAL \inst2|WideOr0~combout\ : std_logic;
SIGNAL \inst2|WideOr2~8_combout\ : std_logic;
SIGNAL \inst2|WideOr2~7_combout\ : std_logic;
SIGNAL \inst2|WideOr2~6_combout\ : std_logic;
SIGNAL \inst2|WideOr2~3_combout\ : std_logic;
SIGNAL \inst2|WideOr2~15_combout\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \inst138|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \inst138|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \inst138|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \inst138|Equal0~0_combout\ : std_logic;
SIGNAL \inst138|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \inst|Selector34~0_combout\ : std_logic;
SIGNAL \inst|y.T35~q\ : std_logic;
SIGNAL \inst68|Q~4_combout\ : std_logic;
SIGNAL \inst149|CLOCK_1MHz~feeder_combout\ : std_logic;
SIGNAL \inst149|CLOCK_1MHz~q\ : std_logic;
SIGNAL \inst149|CLOCK_1MHz~clkctrl_outclk\ : std_logic;
SIGNAL \inst62|Q~0_combout\ : std_logic;
SIGNAL \inst62|Q~2_combout\ : std_logic;
SIGNAL \inst62|Q~3_combout\ : std_logic;
SIGNAL \inst62|Q[0]~feeder_combout\ : std_logic;
SIGNAL \inst62|Q~1_combout\ : std_logic;
SIGNAL \inst62|Q[1]~feeder_combout\ : std_logic;
SIGNAL \inst38|s[0]~1\ : std_logic;
SIGNAL \inst38|s[1]~2_combout\ : std_logic;
SIGNAL \inst46|LessThan1~0_combout\ : std_logic;
SIGNAL \inst46|LessThan1~1_combout\ : std_logic;
SIGNAL \inst46|LessThan1~2_combout\ : std_logic;
SIGNAL \inst36|Add0~2_combout\ : std_logic;
SIGNAL \inst36|s[0]~1\ : std_logic;
SIGNAL \inst36|s[1]~3\ : std_logic;
SIGNAL \inst36|s[2]~4_combout\ : std_logic;
SIGNAL \inst38|s[1]~3\ : std_logic;
SIGNAL \inst38|s[2]~4_combout\ : std_logic;
SIGNAL \inst11|LessThan0~0_combout\ : std_logic;
SIGNAL \inst7|Add2~3\ : std_logic;
SIGNAL \inst7|Add2~4_combout\ : std_logic;
SIGNAL \inst7|Add3~1_cout\ : std_logic;
SIGNAL \inst7|Add3~3\ : std_logic;
SIGNAL \inst7|Add3~5\ : std_logic;
SIGNAL \inst7|Add3~7\ : std_logic;
SIGNAL \inst7|Add3~8_combout\ : std_logic;
SIGNAL \inst7|Add3~2_combout\ : std_logic;
SIGNAL \inst7|Add4~1\ : std_logic;
SIGNAL \inst7|Add4~3\ : std_logic;
SIGNAL \inst7|Add4~5\ : std_logic;
SIGNAL \inst7|Add4~6_combout\ : std_logic;
SIGNAL \inst7|Add4~0_combout\ : std_logic;
SIGNAL \inst7|Add5~1_cout\ : std_logic;
SIGNAL \inst7|Add5~3\ : std_logic;
SIGNAL \inst7|Add5~5\ : std_logic;
SIGNAL \inst7|Add5~7\ : std_logic;
SIGNAL \inst7|Add5~8_combout\ : std_logic;
SIGNAL \inst7|Add5~2_combout\ : std_logic;
SIGNAL \inst7|Add6~1\ : std_logic;
SIGNAL \inst7|Add6~3\ : std_logic;
SIGNAL \inst7|Add6~5\ : std_logic;
SIGNAL \inst7|Add6~6_combout\ : std_logic;
SIGNAL \inst7|Add6~0_combout\ : std_logic;
SIGNAL \inst7|Add7~1_cout\ : std_logic;
SIGNAL \inst7|sal[1]~1\ : std_logic;
SIGNAL \inst7|sal[2]~3\ : std_logic;
SIGNAL \inst7|sal[3]~5\ : std_logic;
SIGNAL \inst7|sal[4]~6_combout\ : std_logic;
SIGNAL \inst7|Add7~5_combout\ : std_logic;
SIGNAL \inst7|sal[1]~0_combout\ : std_logic;
SIGNAL \inst7|Add7~8_combout\ : std_logic;
SIGNAL \inst5|Q[1]~11\ : std_logic;
SIGNAL \inst5|Q[2]~13\ : std_logic;
SIGNAL \inst5|Q[3]~15\ : std_logic;
SIGNAL \inst5|Q[4]~16_combout\ : std_logic;
SIGNAL \inst7|Add2~5\ : std_logic;
SIGNAL \inst7|Add2~7\ : std_logic;
SIGNAL \inst7|Add2~9\ : std_logic;
SIGNAL \inst7|Add2~11\ : std_logic;
SIGNAL \inst7|Add2~13\ : std_logic;
SIGNAL \inst7|Add2~14_combout\ : std_logic;
SIGNAL \inst7|Add2~12_combout\ : std_logic;
SIGNAL \inst7|Add2~10_combout\ : std_logic;
SIGNAL \inst7|Add2~8_combout\ : std_logic;
SIGNAL \inst7|Add3~9\ : std_logic;
SIGNAL \inst7|Add3~11\ : std_logic;
SIGNAL \inst7|Add3~13\ : std_logic;
SIGNAL \inst7|Add3~15\ : std_logic;
SIGNAL \inst7|Add3~17\ : std_logic;
SIGNAL \inst7|Add3~18_combout\ : std_logic;
SIGNAL \inst7|Add3~16_combout\ : std_logic;
SIGNAL \inst7|Add3~14_combout\ : std_logic;
SIGNAL \inst7|Add3~12_combout\ : std_logic;
SIGNAL \inst7|Add4~7\ : std_logic;
SIGNAL \inst7|Add4~9\ : std_logic;
SIGNAL \inst7|Add4~11\ : std_logic;
SIGNAL \inst7|Add4~13\ : std_logic;
SIGNAL \inst7|Add4~15\ : std_logic;
SIGNAL \inst7|Add4~16_combout\ : std_logic;
SIGNAL \inst7|Add4~14_combout\ : std_logic;
SIGNAL \inst7|Add4~12_combout\ : std_logic;
SIGNAL \inst7|Add4~10_combout\ : std_logic;
SIGNAL \inst7|Add5~9\ : std_logic;
SIGNAL \inst7|Add5~11\ : std_logic;
SIGNAL \inst7|Add5~13\ : std_logic;
SIGNAL \inst7|Add5~15\ : std_logic;
SIGNAL \inst7|Add5~17\ : std_logic;
SIGNAL \inst7|Add5~18_combout\ : std_logic;
SIGNAL \inst7|Add5~16_combout\ : std_logic;
SIGNAL \inst7|Add5~14_combout\ : std_logic;
SIGNAL \inst7|Add5~12_combout\ : std_logic;
SIGNAL \inst7|Add6~7\ : std_logic;
SIGNAL \inst7|Add6~9\ : std_logic;
SIGNAL \inst7|Add6~11\ : std_logic;
SIGNAL \inst7|Add6~13\ : std_logic;
SIGNAL \inst7|Add6~15\ : std_logic;
SIGNAL \inst7|Add6~17\ : std_logic;
SIGNAL \inst7|Add6~18_combout\ : std_logic;
SIGNAL \inst7|Add6~16_combout\ : std_logic;
SIGNAL \inst7|Add6~14_combout\ : std_logic;
SIGNAL \inst7|Add6~12_combout\ : std_logic;
SIGNAL \inst7|Add6~10_combout\ : std_logic;
SIGNAL \inst7|sal[4]~7\ : std_logic;
SIGNAL \inst7|sal[5]~9\ : std_logic;
SIGNAL \inst7|sal[6]~11\ : std_logic;
SIGNAL \inst7|sal[7]~13\ : std_logic;
SIGNAL \inst7|sal[8]~15\ : std_logic;
SIGNAL \inst7|sal[9]~17\ : std_logic;
SIGNAL \inst7|sal[10]~18_combout\ : std_logic;
SIGNAL \inst7|Add7~9_combout\ : std_logic;
SIGNAL \inst7|sal[9]~16_combout\ : std_logic;
SIGNAL \inst7|Add7~10_combout\ : std_logic;
SIGNAL \inst7|sal[8]~14_combout\ : std_logic;
SIGNAL \inst7|Add7~11_combout\ : std_logic;
SIGNAL \inst7|sal[7]~12_combout\ : std_logic;
SIGNAL \inst7|Add7~2_combout\ : std_logic;
SIGNAL \inst5|Q[4]~17\ : std_logic;
SIGNAL \inst5|Q[5]~19\ : std_logic;
SIGNAL \inst5|Q[6]~21\ : std_logic;
SIGNAL \inst5|Q[7]~23\ : std_logic;
SIGNAL \inst5|Q[8]~25\ : std_logic;
SIGNAL \inst5|Q[9]~27\ : std_logic;
SIGNAL \inst5|Q[10]~28_combout\ : std_logic;
SIGNAL \inst5|Q[9]~26_combout\ : std_logic;
SIGNAL \inst5|Q[8]~24_combout\ : std_logic;
SIGNAL \inst5|Q[7]~22_combout\ : std_logic;
SIGNAL \inst45~0_combout\ : std_logic;
SIGNAL \inst35~0_combout\ : std_logic;
SIGNAL \inst|y.T49~q\ : std_logic;
SIGNAL \inst|Selector49~0_combout\ : std_logic;
SIGNAL \inst|y.T50~q\ : std_logic;
SIGNAL \inst36|s[2]~5\ : std_logic;
SIGNAL \inst36|s[3]~6_combout\ : std_logic;
SIGNAL \inst38|s[2]~5\ : std_logic;
SIGNAL \inst38|s[3]~6_combout\ : std_logic;
SIGNAL \inst|Selector52~0_combout\ : std_logic;
SIGNAL \inst|Selector50~4_combout\ : std_logic;
SIGNAL \inst|Selector24~0_combout\ : std_logic;
SIGNAL \inst|y.T25~q\ : std_logic;
SIGNAL \inst|Selector26~0_combout\ : std_logic;
SIGNAL \inst|Selector65~0_combout\ : std_logic;
SIGNAL \inst|y.t66~q\ : std_logic;
SIGNAL \inst|Selector26~1_combout\ : std_logic;
SIGNAL \inst|y.T27~q\ : std_logic;
SIGNAL \inst|Selector64~0_combout\ : std_logic;
SIGNAL \inst|y.t65~q\ : std_logic;
SIGNAL \inst|Selector17~0_combout\ : std_logic;
SIGNAL \inst|y.T18~q\ : std_logic;
SIGNAL \inst|Selector19~0_combout\ : std_logic;
SIGNAL \inst|Selector19~1_combout\ : std_logic;
SIGNAL \inst|y.T20~q\ : std_logic;
SIGNAL \inst|Selector67~0_combout\ : std_logic;
SIGNAL \inst|y.t68~q\ : std_logic;
SIGNAL \inst|Selector36~1_combout\ : std_logic;
SIGNAL \inst|y.T37~q\ : std_logic;
SIGNAL \inst|Selector35~1_combout\ : std_logic;
SIGNAL \inst36|Add0~0_combout\ : std_logic;
SIGNAL \inst36|Add0~3_combout\ : std_logic;
SIGNAL \inst|Selector53~0_combout\ : std_logic;
SIGNAL \inst|Selector53~1_combout\ : std_logic;
SIGNAL \inst|y.T54~q\ : std_logic;
SIGNAL \inst|Selector62~0_combout\ : std_logic;
SIGNAL \inst|y.T63~q\ : std_logic;
SIGNAL \inst38|s[0]~0_combout\ : std_logic;
SIGNAL \inst36|s[0]~0_combout\ : std_logic;
SIGNAL \inst36|Add0~1_combout\ : std_logic;
SIGNAL \inst|Selector52~1_combout\ : std_logic;
SIGNAL \inst|Selector52~2_combout\ : std_logic;
SIGNAL \inst|y.T53~q\ : std_logic;
SIGNAL \inst|WideOr83~2_combout\ : std_logic;
SIGNAL \inst|Selector35~0_combout\ : std_logic;
SIGNAL \inst|Selector35~2_combout\ : std_logic;
SIGNAL \inst|y.T36~q\ : std_logic;
SIGNAL \inst|Selector36~0_combout\ : std_logic;
SIGNAL \inst|Selector37~0_combout\ : std_logic;
SIGNAL \inst|y.T38~q\ : std_logic;
SIGNAL \inst|Selector39~0_combout\ : std_logic;
SIGNAL \inst|Selector39~1_combout\ : std_logic;
SIGNAL \inst|y.T40~q\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|y.T7~q\ : std_logic;
SIGNAL \inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst|Selector8~1_combout\ : std_logic;
SIGNAL \inst|y.T9~q\ : std_logic;
SIGNAL \inst|Selector66~0_combout\ : std_logic;
SIGNAL \inst|y.t67~q\ : std_logic;
SIGNAL \inst|Selector29~0_combout\ : std_logic;
SIGNAL \inst|y.T30~q\ : std_logic;
SIGNAL \inst|Selector31~0_combout\ : std_logic;
SIGNAL \inst|Selector31~1_combout\ : std_logic;
SIGNAL \inst|y.T32~q\ : std_logic;
SIGNAL \inst|WideOr83~0_combout\ : std_logic;
SIGNAL \inst|WideOr83~1_combout\ : std_logic;
SIGNAL \inst72|Q[0]~5_combout\ : std_logic;
SIGNAL \inst|WideOr83~4_combout\ : std_logic;
SIGNAL \inst|WideOr83~combout\ : std_logic;
SIGNAL \inst72|Q[1]~0_combout\ : std_logic;
SIGNAL \inst72|Q[3]~1_combout\ : std_logic;
SIGNAL \inst|Selector51~0_combout\ : std_logic;
SIGNAL \inst|Selector51~1_combout\ : std_logic;
SIGNAL \inst|y.T52~q\ : std_logic;
SIGNAL \inst|Selector71~2_combout\ : std_logic;
SIGNAL \inst|Selector71~3_combout\ : std_logic;
SIGNAL \inst68|Q~3_combout\ : std_logic;
SIGNAL \inst|WideOr78~4_combout\ : std_logic;
SIGNAL \inst68|Q~2_combout\ : std_logic;
SIGNAL \inst68|Add0~0_combout\ : std_logic;
SIGNAL \inst68|Q~5_combout\ : std_logic;
SIGNAL \inst71~combout\ : std_logic;
SIGNAL \inst|Selector2~1_combout\ : std_logic;
SIGNAL \inst|Selector2~2_combout\ : std_logic;
SIGNAL \inst|y.T1~feeder_combout\ : std_logic;
SIGNAL \inst|y.T1~q\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|y.T2~q\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|Selector2~3_combout\ : std_logic;
SIGNAL \inst|y.T3~q\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|y.T4~q\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|y.T6~q\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|Selector4~1_combout\ : std_logic;
SIGNAL \inst|Selector4~2_combout\ : std_logic;
SIGNAL \inst|y.T5~q\ : std_logic;
SIGNAL \inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst|y.T8~q\ : std_logic;
SIGNAL \inst|Selector38~0_combout\ : std_logic;
SIGNAL \inst|Selector38~1_combout\ : std_logic;
SIGNAL \inst|y.T39~q\ : std_logic;
SIGNAL \inst|Selector72~0_combout\ : std_logic;
SIGNAL \inst|Selector72~1_combout\ : std_logic;
SIGNAL \inst5|Q[0]~30_combout\ : std_logic;
SIGNAL \inst7|Add2~0_combout\ : std_logic;
SIGNAL \inst7|Add3~4_combout\ : std_logic;
SIGNAL \inst7|Add4~2_combout\ : std_logic;
SIGNAL \inst7|Add5~4_combout\ : std_logic;
SIGNAL \inst7|Add6~2_combout\ : std_logic;
SIGNAL \inst7|sal[2]~2_combout\ : std_logic;
SIGNAL \inst7|Add7~7_combout\ : std_logic;
SIGNAL \inst5|Q[2]~12_combout\ : std_logic;
SIGNAL \inst5|Q[2]~feeder_combout\ : std_logic;
SIGNAL \inst7|Add2~1\ : std_logic;
SIGNAL \inst7|Add2~2_combout\ : std_logic;
SIGNAL \inst7|Add3~6_combout\ : std_logic;
SIGNAL \inst7|Add4~4_combout\ : std_logic;
SIGNAL \inst7|Add5~6_combout\ : std_logic;
SIGNAL \inst7|Add6~4_combout\ : std_logic;
SIGNAL \inst7|sal[3]~4_combout\ : std_logic;
SIGNAL \inst7|Add7~6_combout\ : std_logic;
SIGNAL \inst5|Q[3]~14_combout\ : std_logic;
SIGNAL \inst5|Q[3]~feeder_combout\ : std_logic;
SIGNAL \inst7|Add2~6_combout\ : std_logic;
SIGNAL \inst7|Add3~10_combout\ : std_logic;
SIGNAL \inst7|Add4~8_combout\ : std_logic;
SIGNAL \inst7|Add5~10_combout\ : std_logic;
SIGNAL \inst7|Add6~8_combout\ : std_logic;
SIGNAL \inst7|sal[5]~8_combout\ : std_logic;
SIGNAL \inst7|Add7~4_combout\ : std_logic;
SIGNAL \inst5|Q[5]~18_combout\ : std_logic;
SIGNAL \inst11|LessThan0~1_combout\ : std_logic;
SIGNAL \inst15|LessThan1~0_combout\ : std_logic;
SIGNAL \inst15|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|WideOr85~combout\ : std_logic;
SIGNAL \inst76|Q[0]~4_combout\ : std_logic;
SIGNAL \inst76|Q[1]~3_combout\ : std_logic;
SIGNAL \inst76|Q[2]~2_combout\ : std_logic;
SIGNAL \inst76|Q[3]~0_combout\ : std_logic;
SIGNAL \inst76|Q[3]~1_combout\ : std_logic;
SIGNAL \inst79~0_combout\ : std_logic;
SIGNAL \inst|Selector41~0_combout\ : std_logic;
SIGNAL \inst|y.T42~q\ : std_logic;
SIGNAL \inst|Selector42~0_combout\ : std_logic;
SIGNAL \inst|y.T43~q\ : std_logic;
SIGNAL \inst84|Add0~0_combout\ : std_logic;
SIGNAL \inst84|Add0~1_combout\ : std_logic;
SIGNAL \inst84|Add0~2_combout\ : std_logic;
SIGNAL \inst84|Add0~3_combout\ : std_logic;
SIGNAL \inst84|Add0~4_combout\ : std_logic;
SIGNAL \inst84|Add0~5_combout\ : std_logic;
SIGNAL \inst84|Add0~6_combout\ : std_logic;
SIGNAL \inst41|Q[0]~12_cout\ : std_logic;
SIGNAL \inst41|Q[0]~13_combout\ : std_logic;
SIGNAL \inst|WideOr96~0_combout\ : std_logic;
SIGNAL \inst|WideOr96~combout\ : std_logic;
SIGNAL \inst41|Q[0]~14\ : std_logic;
SIGNAL \inst41|Q[1]~15_combout\ : std_logic;
SIGNAL \inst41|Q[1]~16\ : std_logic;
SIGNAL \inst41|Q[2]~17_combout\ : std_logic;
SIGNAL \inst41|Q[2]~18\ : std_logic;
SIGNAL \inst41|Q[3]~19_combout\ : std_logic;
SIGNAL \inst41|Q[3]~20\ : std_logic;
SIGNAL \inst41|Q[4]~21_combout\ : std_logic;
SIGNAL \inst41|Q[4]~22\ : std_logic;
SIGNAL \inst41|Q[5]~23_combout\ : std_logic;
SIGNAL \inst41|Q[5]~24\ : std_logic;
SIGNAL \inst41|Q[6]~25_combout\ : std_logic;
SIGNAL \inst43|LessThan1~1_cout\ : std_logic;
SIGNAL \inst43|LessThan1~3_cout\ : std_logic;
SIGNAL \inst43|LessThan1~5_cout\ : std_logic;
SIGNAL \inst43|LessThan1~7_cout\ : std_logic;
SIGNAL \inst43|LessThan1~9_cout\ : std_logic;
SIGNAL \inst43|LessThan1~11_cout\ : std_logic;
SIGNAL \inst43|LessThan1~12_combout\ : std_logic;
SIGNAL \inst41|Q[6]~26\ : std_logic;
SIGNAL \inst41|Q[7]~27_combout\ : std_logic;
SIGNAL \inst41|Q[7]~28\ : std_logic;
SIGNAL \inst41|Q[8]~29_combout\ : std_logic;
SIGNAL \inst41|Q[8]~30\ : std_logic;
SIGNAL \inst41|Q[9]~31_combout\ : std_logic;
SIGNAL \inst41|Q[9]~32\ : std_logic;
SIGNAL \inst41|Q[10]~33_combout\ : std_logic;
SIGNAL \inst43|LessThan1~14_combout\ : std_logic;
SIGNAL \inst45~1_combout\ : std_logic;
SIGNAL \inst45~2_combout\ : std_logic;
SIGNAL \inst|Selector33~0_combout\ : std_logic;
SIGNAL \inst|y.T34~q\ : std_logic;
SIGNAL \inst|WideOr80~combout\ : std_logic;
SIGNAL \inst|Selector69~3_combout\ : std_logic;
SIGNAL \inst|Selector11~0_combout\ : std_logic;
SIGNAL \inst|y.T12~q\ : std_logic;
SIGNAL \inst|WideOr71~1_combout\ : std_logic;
SIGNAL \inst|WideOr71~0_combout\ : std_logic;
SIGNAL \inst|WideOr71~2_combout\ : std_logic;
SIGNAL \inst|Selector69~1_combout\ : std_logic;
SIGNAL \inst|Selector69~2_combout\ : std_logic;
SIGNAL \inst|Selector69~4_combout\ : std_logic;
SIGNAL \inst95|Q[0]~2_combout\ : std_logic;
SIGNAL \inst97|Q~0_combout\ : std_logic;
SIGNAL \inst|EnDown~0_combout\ : std_logic;
SIGNAL \inst94|Mux3~0_combout\ : std_logic;
SIGNAL \inst97|Q~1_combout\ : std_logic;
SIGNAL \inst94|Mux2~0_combout\ : std_logic;
SIGNAL \inst94|Mux2~1_combout\ : std_logic;
SIGNAL \inst94|Mux1~0_combout\ : std_logic;
SIGNAL \inst95|Add0~0_combout\ : std_logic;
SIGNAL \inst95|Q[2]~1_combout\ : std_logic;
SIGNAL \inst97|Q~2_combout\ : std_logic;
SIGNAL \inst94|Mux1~1_combout\ : std_logic;
SIGNAL \inst97|Add0~0_combout\ : std_logic;
SIGNAL \inst97|Q~3_combout\ : std_logic;
SIGNAL \inst103|Add1~0_combout\ : std_logic;
SIGNAL \inst95|Add0~1_combout\ : std_logic;
SIGNAL \inst95|Q[3]~3_combout\ : std_logic;
SIGNAL \inst94|Mux0~0_combout\ : std_logic;
SIGNAL \inst94|Mux0~1_combout\ : std_logic;
SIGNAL \inst87|Q[0]~11_combout\ : std_logic;
SIGNAL \inst|EnSumAp~combout\ : std_logic;
SIGNAL \inst87|Q[0]~12\ : std_logic;
SIGNAL \inst87|Q[1]~13_combout\ : std_logic;
SIGNAL \inst87|Q[1]~14\ : std_logic;
SIGNAL \inst87|Q[2]~15_combout\ : std_logic;
SIGNAL \inst87|Q[2]~16\ : std_logic;
SIGNAL \inst87|Q[3]~17_combout\ : std_logic;
SIGNAL \inst87|Q[3]~18\ : std_logic;
SIGNAL \inst87|Q[4]~19_combout\ : std_logic;
SIGNAL \inst87|Q[4]~20\ : std_logic;
SIGNAL \inst87|Q[5]~21_combout\ : std_logic;
SIGNAL \inst87|Q[5]~22\ : std_logic;
SIGNAL \inst87|Q[6]~23_combout\ : std_logic;
SIGNAL \inst87|Q[6]~24\ : std_logic;
SIGNAL \inst87|Q[7]~25_combout\ : std_logic;
SIGNAL \inst87|Q[7]~26\ : std_logic;
SIGNAL \inst87|Q[8]~27_combout\ : std_logic;
SIGNAL \inst87|Q[8]~28\ : std_logic;
SIGNAL \inst87|Q[9]~29_combout\ : std_logic;
SIGNAL \inst87|Q[9]~30\ : std_logic;
SIGNAL \inst87|Q[10]~31_combout\ : std_logic;
SIGNAL \inst92|Mux0~0_combout\ : std_logic;
SIGNAL \inst92|Mux1~0_combout\ : std_logic;
SIGNAL \inst92|Mux2~0_combout\ : std_logic;
SIGNAL \inst92|Mux3~0_combout\ : std_logic;
SIGNAL \inst92|Mux4~0_combout\ : std_logic;
SIGNAL \inst92|Mux5~0_combout\ : std_logic;
SIGNAL \inst92|Mux6~0_combout\ : std_logic;
SIGNAL \inst92|Mux7~0_combout\ : std_logic;
SIGNAL \inst92|Mux8~0_combout\ : std_logic;
SIGNAL \inst92|Mux9~0_combout\ : std_logic;
SIGNAL \inst92|Mux10~0_combout\ : std_logic;
SIGNAL \inst109|LessThan1~24_cout\ : std_logic;
SIGNAL \inst109|LessThan1~26_cout\ : std_logic;
SIGNAL \inst109|LessThan1~28_cout\ : std_logic;
SIGNAL \inst109|LessThan1~30_cout\ : std_logic;
SIGNAL \inst109|LessThan1~32_cout\ : std_logic;
SIGNAL \inst109|LessThan1~34_cout\ : std_logic;
SIGNAL \inst109|LessThan1~36_cout\ : std_logic;
SIGNAL \inst109|LessThan1~38_cout\ : std_logic;
SIGNAL \inst109|LessThan1~40_cout\ : std_logic;
SIGNAL \inst109|LessThan1~42_cout\ : std_logic;
SIGNAL \inst109|LessThan1~43_combout\ : std_logic;
SIGNAL \inst|Selector56~0_combout\ : std_logic;
SIGNAL \inst|y.T57~q\ : std_logic;
SIGNAL \inst|Selector60~0_combout\ : std_logic;
SIGNAL \inst|Selector60~1_combout\ : std_logic;
SIGNAL \inst|Selector57~0_combout\ : std_logic;
SIGNAL \inst|y.T58~q\ : std_logic;
SIGNAL \inst|y.T59~q\ : std_logic;
SIGNAL \inst|y.T60~q\ : std_logic;
SIGNAL \inst|Selector60~2_combout\ : std_logic;
SIGNAL \inst|y.T61~q\ : std_logic;
SIGNAL \inst|Selector23~0_combout\ : std_logic;
SIGNAL \inst|y.T24~q\ : std_logic;
SIGNAL \inst|Selector22~1_combout\ : std_logic;
SIGNAL \inst|Selector22~2_combout\ : std_logic;
SIGNAL \inst|Selector22~3_combout\ : std_logic;
SIGNAL \inst|Selector22~4_combout\ : std_logic;
SIGNAL \inst|y.T23~q\ : std_logic;
SIGNAL \inst|Selector25~0_combout\ : std_logic;
SIGNAL \inst|y.T26~q\ : std_logic;
SIGNAL \inst|Selector27~1_combout\ : std_logic;
SIGNAL \inst|Selector28~0_combout\ : std_logic;
SIGNAL \inst|y.T29~q\ : std_logic;
SIGNAL \inst|Selector27~0_combout\ : std_logic;
SIGNAL \inst|Selector27~2_combout\ : std_logic;
SIGNAL \inst|y.T28~q\ : std_logic;
SIGNAL \inst|Selector30~0_combout\ : std_logic;
SIGNAL \inst|y.T31~q\ : std_logic;
SIGNAL \inst|Selector32~0_combout\ : std_logic;
SIGNAL \inst|Selector73~0_combout\ : std_logic;
SIGNAL \inst7|sal[6]~10_combout\ : std_logic;
SIGNAL \inst7|Add7~3_combout\ : std_logic;
SIGNAL \inst5|Q[6]~20_combout\ : std_logic;
SIGNAL \inst31~0_combout\ : std_logic;
SIGNAL \inst31~1_combout\ : std_logic;
SIGNAL \inst31~2_combout\ : std_logic;
SIGNAL \inst|Selector61~0_combout\ : std_logic;
SIGNAL \inst|y.T62~q\ : std_logic;
SIGNAL \inst|WideOr83~3_combout\ : std_logic;
SIGNAL \inst72|Q[1]~3_combout\ : std_logic;
SIGNAL \inst72|Q[1]~4_combout\ : std_logic;
SIGNAL \inst72|Q[2]~2_combout\ : std_logic;
SIGNAL \inst75~0_combout\ : std_logic;
SIGNAL \inst|Selector46~0_combout\ : std_logic;
SIGNAL \inst|Selector46~1_combout\ : std_logic;
SIGNAL \inst|y.T47~q\ : std_logic;
SIGNAL \inst|Selector68~0_combout\ : std_logic;
SIGNAL \inst|y.t69~q\ : std_logic;
SIGNAL \inst|Selector40~1_combout\ : std_logic;
SIGNAL \inst|Selector40~2_combout\ : std_logic;
SIGNAL \inst|y.T41~q\ : std_logic;
SIGNAL \inst|Selector45~0_combout\ : std_logic;
SIGNAL \inst|y.T46~q\ : std_logic;
SIGNAL \inst|Selector70~1_combout\ : std_logic;
SIGNAL \inst|Selector70~0_combout\ : std_logic;
SIGNAL \inst|Selector70~2_combout\ : std_logic;
SIGNAL \inst5|Q[1]~10_combout\ : std_logic;
SIGNAL \inst5|Q[1]~feeder_combout\ : std_logic;
SIGNAL \inst36|s[1]~2_combout\ : std_logic;
SIGNAL \inst|Selector50~2_combout\ : std_logic;
SIGNAL \inst|Selector50~3_combout\ : std_logic;
SIGNAL \inst|y.T51~q\ : std_logic;
SIGNAL \inst|Selector54~0_combout\ : std_logic;
SIGNAL \inst|y.T55~q\ : std_logic;
SIGNAL \inst109|LessThan1~2_cout\ : std_logic;
SIGNAL \inst109|LessThan1~4_cout\ : std_logic;
SIGNAL \inst109|LessThan1~6_cout\ : std_logic;
SIGNAL \inst109|LessThan1~8_cout\ : std_logic;
SIGNAL \inst109|LessThan1~10_cout\ : std_logic;
SIGNAL \inst109|LessThan1~12_cout\ : std_logic;
SIGNAL \inst109|LessThan1~14_cout\ : std_logic;
SIGNAL \inst109|LessThan1~16_cout\ : std_logic;
SIGNAL \inst109|LessThan1~18_cout\ : std_logic;
SIGNAL \inst109|LessThan1~20_cout\ : std_logic;
SIGNAL \inst109|LessThan1~21_combout\ : std_logic;
SIGNAL \inst|Selector55~0_combout\ : std_logic;
SIGNAL \inst|y.T56~q\ : std_logic;
SIGNAL \inst|Selector69~0_combout\ : std_logic;
SIGNAL \inst95|Q[0]~0_combout\ : std_logic;
SIGNAL \inst95|Q[1]~4_combout\ : std_logic;
SIGNAL \inst107|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Selector13~0_combout\ : std_logic;
SIGNAL \inst|Selector13~1_combout\ : std_logic;
SIGNAL \inst|y.T14~q\ : std_logic;
SIGNAL \inst|Selector63~0_combout\ : std_logic;
SIGNAL \inst|y.T64~q\ : std_logic;
SIGNAL \inst|Selector10~0_combout\ : std_logic;
SIGNAL \inst|y.T11~q\ : std_logic;
SIGNAL \inst|Selector9~0_combout\ : std_logic;
SIGNAL \inst|Selector9~1_combout\ : std_logic;
SIGNAL \inst|Selector9~2_combout\ : std_logic;
SIGNAL \inst|y.T10~q\ : std_logic;
SIGNAL \inst|Selector12~0_combout\ : std_logic;
SIGNAL \inst|y.T13~q\ : std_logic;
SIGNAL \inst|Selector14~0_combout\ : std_logic;
SIGNAL \inst|y.T15~q\ : std_logic;
SIGNAL \inst|Selector16~0_combout\ : std_logic;
SIGNAL \inst|y.T17~q\ : std_logic;
SIGNAL \inst|Selector15~0_combout\ : std_logic;
SIGNAL \inst|Selector15~1_combout\ : std_logic;
SIGNAL \inst|y.T16~q\ : std_logic;
SIGNAL \inst|WideOr90~0_combout\ : std_logic;
SIGNAL \inst|Apuesta~0_combout\ : std_logic;
SIGNAL \inst|Adivine~0_combout\ : std_logic;
SIGNAL \inst|WideOr0~0_combout\ : std_logic;
SIGNAL \inst|WideOr93~0_combout\ : std_logic;
SIGNAL \inst|WideOr93~1_combout\ : std_logic;
SIGNAL \inst|WideOr94~0_combout\ : std_logic;
SIGNAL \inst|WideOr75~7_combout\ : std_logic;
SIGNAL \inst|WideOr74~0_combout\ : std_logic;
SIGNAL \inst|WideOr74~1_combout\ : std_logic;
SIGNAL \inst|WideOr93~combout\ : std_logic;
SIGNAL \inst|WideOr92~combout\ : std_logic;
SIGNAL \inst110|LessThan0~0_combout\ : std_logic;
SIGNAL \inst110|z~51_combout\ : std_logic;
SIGNAL \inst110|z~16_combout\ : std_logic;
SIGNAL \inst110|z~18_combout\ : std_logic;
SIGNAL \inst110|z~17_combout\ : std_logic;
SIGNAL \inst110|z~52_combout\ : std_logic;
SIGNAL \inst110|LessThan11~15_combout\ : std_logic;
SIGNAL \inst110|z~21_combout\ : std_logic;
SIGNAL \inst110|z~19_combout\ : std_logic;
SIGNAL \inst110|z~20_combout\ : std_logic;
SIGNAL \inst110|z~26_combout\ : std_logic;
SIGNAL \inst110|z~44_combout\ : std_logic;
SIGNAL \inst110|z~29_combout\ : std_logic;
SIGNAL \inst110|z~58_combout\ : std_logic;
SIGNAL \inst110|z~59_combout\ : std_logic;
SIGNAL \inst110|z~56_combout\ : std_logic;
SIGNAL \inst110|z~57_combout\ : std_logic;
SIGNAL \inst110|z~28_combout\ : std_logic;
SIGNAL \inst110|z~24_combout\ : std_logic;
SIGNAL \inst110|z~22_combout\ : std_logic;
SIGNAL \inst110|z~23_combout\ : std_logic;
SIGNAL \inst110|z~25_combout\ : std_logic;
SIGNAL \inst110|z~27_combout\ : std_logic;
SIGNAL \inst110|z~45_combout\ : std_logic;
SIGNAL \inst110|z~47_combout\ : std_logic;
SIGNAL \inst110|z~36_combout\ : std_logic;
SIGNAL \inst110|z~30_combout\ : std_logic;
SIGNAL \inst110|z~35_combout\ : std_logic;
SIGNAL \inst110|z~33_combout\ : std_logic;
SIGNAL \inst110|z~32_combout\ : std_logic;
SIGNAL \inst110|z~31_combout\ : std_logic;
SIGNAL \inst110|z~34_combout\ : std_logic;
SIGNAL \inst110|z~48_combout\ : std_logic;
SIGNAL \inst110|z~46_combout\ : std_logic;
SIGNAL \inst110|z~54_combout\ : std_logic;
SIGNAL \inst110|z~55_combout\ : std_logic;
SIGNAL \inst110|z~53_combout\ : std_logic;
SIGNAL \inst110|C[1]~0_combout\ : std_logic;
SIGNAL \inst|WideOr91~0_combout\ : std_logic;
SIGNAL \inst|WideOr91~1_combout\ : std_logic;
SIGNAL \inst|WideOr94~combout\ : std_logic;
SIGNAL \inst122|z~2_combout\ : std_logic;
SIGNAL \inst122|z~1_combout\ : std_logic;
SIGNAL \inst122|z~0_combout\ : std_logic;
SIGNAL \inst122|z~4_combout\ : std_logic;
SIGNAL \inst122|z~5_combout\ : std_logic;
SIGNAL \inst122|z~3_combout\ : std_logic;
SIGNAL \inst122|z~16_combout\ : std_logic;
SIGNAL \inst122|z~19_combout\ : std_logic;
SIGNAL \inst122|z~18_combout\ : std_logic;
SIGNAL \inst122|z~17_combout\ : std_logic;
SIGNAL \inst122|z~24_combout\ : std_logic;
SIGNAL \inst122|z~8_combout\ : std_logic;
SIGNAL \inst122|z~7_combout\ : std_logic;
SIGNAL \inst122|z~6_combout\ : std_logic;
SIGNAL \inst122|z~20_combout\ : std_logic;
SIGNAL \inst122|LessThan6~0_combout\ : std_logic;
SIGNAL \inst122|LessThan8~0_combout\ : std_logic;
SIGNAL \inst122|z~21_combout\ : std_logic;
SIGNAL \inst122|z~22_combout\ : std_logic;
SIGNAL \inst122|z~23_combout\ : std_logic;
SIGNAL \inst122|LessThan8~1_combout\ : std_logic;
SIGNAL \inst122|z~26_combout\ : std_logic;
SIGNAL \inst122|z~10_combout\ : std_logic;
SIGNAL \inst122|z~9_combout\ : std_logic;
SIGNAL \inst122|z~11_combout\ : std_logic;
SIGNAL \inst122|z~28_combout\ : std_logic;
SIGNAL \inst122|LessThan10~0_combout\ : std_logic;
SIGNAL \inst122|z~27_combout\ : std_logic;
SIGNAL \inst122|z~31_combout\ : std_logic;
SIGNAL \inst112|Mux2~3_combout\ : std_logic;
SIGNAL \inst112|Mux2~11_combout\ : std_logic;
SIGNAL \inst122|z~36_combout\ : std_logic;
SIGNAL \inst122|z~34_combout\ : std_logic;
SIGNAL \inst122|z~35_combout\ : std_logic;
SIGNAL \inst122|z~32_combout\ : std_logic;
SIGNAL \inst122|z~33_combout\ : std_logic;
SIGNAL \inst122|LessThan14~0_combout\ : std_logic;
SIGNAL \inst116|Mux2~0_combout\ : std_logic;
SIGNAL \inst113|z~58_combout\ : std_logic;
SIGNAL \inst113|z~59_combout\ : std_logic;
SIGNAL \inst113|z~56_combout\ : std_logic;
SIGNAL \inst113|z~57_combout\ : std_logic;
SIGNAL \inst113|z~18_combout\ : std_logic;
SIGNAL \inst113|z~17_combout\ : std_logic;
SIGNAL \inst113|z~16_combout\ : std_logic;
SIGNAL \inst113|z~19_combout\ : std_logic;
SIGNAL \inst113|z~21_combout\ : std_logic;
SIGNAL \inst113|z~20_combout\ : std_logic;
SIGNAL \inst113|z~26_combout\ : std_logic;
SIGNAL \inst113|z~30_combout\ : std_logic;
SIGNAL \inst113|LessThan0~0_combout\ : std_logic;
SIGNAL \inst113|z~28_combout\ : std_logic;
SIGNAL \inst113|z~27_combout\ : std_logic;
SIGNAL \inst113|z~29_combout\ : std_logic;
SIGNAL \inst113|z~23_combout\ : std_logic;
SIGNAL \inst113|z~24_combout\ : std_logic;
SIGNAL \inst113|z~22_combout\ : std_logic;
SIGNAL \inst113|z~25_combout\ : std_logic;
SIGNAL \inst113|z~31_combout\ : std_logic;
SIGNAL \inst113|z~38_combout\ : std_logic;
SIGNAL \inst113|z~32_combout\ : std_logic;
SIGNAL \inst113|z~35_combout\ : std_logic;
SIGNAL \inst113|z~34_combout\ : std_logic;
SIGNAL \inst113|z~33_combout\ : std_logic;
SIGNAL \inst113|z~36_combout\ : std_logic;
SIGNAL \inst113|z~37_combout\ : std_logic;
SIGNAL \inst113|z~46_combout\ : std_logic;
SIGNAL \inst113|z~54_combout\ : std_logic;
SIGNAL \inst113|z~55_combout\ : std_logic;
SIGNAL \inst113|z~53_combout\ : std_logic;
SIGNAL \inst113|z~47_combout\ : std_logic;
SIGNAL \inst113|LessThan11~0_combout\ : std_logic;
SIGNAL \inst113|z~48_combout\ : std_logic;
SIGNAL \inst113|z~49_combout\ : std_logic;
SIGNAL \inst113|z~50_combout\ : std_logic;
SIGNAL \inst113|LessThan14~0_combout\ : std_logic;
SIGNAL \inst116|Mux2~1_combout\ : std_logic;
SIGNAL \inst116|Mux2~2_combout\ : std_logic;
SIGNAL \inst113|z~39_combout\ : std_logic;
SIGNAL \inst113|z~45_combout\ : std_logic;
SIGNAL \inst113|z~42_combout\ : std_logic;
SIGNAL \inst113|z~41_combout\ : std_logic;
SIGNAL \inst113|z~40_combout\ : std_logic;
SIGNAL \inst113|z~43_combout\ : std_logic;
SIGNAL \inst113|z~44_combout\ : std_logic;
SIGNAL \inst117|Mux0~2_combout\ : std_logic;
SIGNAL \inst110|z~42_combout\ : std_logic;
SIGNAL \inst110|z~37_combout\ : std_logic;
SIGNAL \inst110|z~43_combout\ : std_logic;
SIGNAL \inst110|z~40_combout\ : std_logic;
SIGNAL \inst110|z~38_combout\ : std_logic;
SIGNAL \inst110|z~39_combout\ : std_logic;
SIGNAL \inst110|z~41_combout\ : std_logic;
SIGNAL \inst110|LessThan13~0_combout\ : std_logic;
SIGNAL \inst117|Mux0~3_combout\ : std_logic;
SIGNAL \inst122|LessThan13~0_combout\ : std_logic;
SIGNAL \inst122|z~25_combout\ : std_logic;
SIGNAL \inst122|z~30_combout\ : std_logic;
SIGNAL \inst122|z~13_combout\ : std_logic;
SIGNAL \inst122|z~12_combout\ : std_logic;
SIGNAL \inst122|z~14_combout\ : std_logic;
SIGNAL \inst122|z~15_combout\ : std_logic;
SIGNAL \inst122|z~29_combout\ : std_logic;
SIGNAL \inst122|LessThan13~1_combout\ : std_logic;
SIGNAL \inst112|Mux3~4_combout\ : std_logic;
SIGNAL \inst117|Mux0~4_combout\ : std_logic;
SIGNAL \inst117|Mux0~6_combout\ : std_logic;
SIGNAL \inst117|Mux0~5_combout\ : std_logic;
SIGNAL \inst112|Mux3~5_combout\ : std_logic;
SIGNAL \inst110|Add13~8_combout\ : std_logic;
SIGNAL \inst110|Add13~9_combout\ : std_logic;
SIGNAL \inst110|Add13~10_combout\ : std_logic;
SIGNAL \inst110|Add13~11_combout\ : std_logic;
SIGNAL \inst110|Add13~16_combout\ : std_logic;
SIGNAL \inst110|Add13~12_combout\ : std_logic;
SIGNAL \inst110|Add13~6_combout\ : std_logic;
SIGNAL \inst110|Add13~7_combout\ : std_logic;
SIGNAL \inst110|Add13~4_combout\ : std_logic;
SIGNAL \inst110|Add13~5_combout\ : std_logic;
SIGNAL \inst110|Add13~13_combout\ : std_logic;
SIGNAL \inst116|Mux3~0_combout\ : std_logic;
SIGNAL \inst116|Mux3~1_combout\ : std_logic;
SIGNAL \inst117|Mux0~8_combout\ : std_logic;
SIGNAL \inst116|Mux3~combout\ : std_logic;
SIGNAL \inst110|LessThan14~0_combout\ : std_logic;
SIGNAL \inst112|Mux3~6_combout\ : std_logic;
SIGNAL \inst112|Mux3~7_combout\ : std_logic;
SIGNAL \inst110|Add14~2_combout\ : std_logic;
SIGNAL \inst112|Mux3~14_combout\ : std_logic;
SIGNAL \inst112|Mux3~9_combout\ : std_logic;
SIGNAL \inst110|Add14~5_combout\ : std_logic;
SIGNAL \inst110|Add14~6_combout\ : std_logic;
SIGNAL \inst110|Add14~4_combout\ : std_logic;
SIGNAL \inst110|Add14~3_combout\ : std_logic;
SIGNAL \inst110|Add14~7_combout\ : std_logic;
SIGNAL \inst112|Mux3~8_combout\ : std_logic;
SIGNAL \inst116|Mux1~0_combout\ : std_logic;
SIGNAL \inst116|Mux1~combout\ : std_logic;
SIGNAL \inst110|Add14~8_combout\ : std_logic;
SIGNAL \inst110|Add14~9_combout\ : std_logic;
SIGNAL \inst110|Add14~10_combout\ : std_logic;
SIGNAL \inst116|Mux0~0_combout\ : std_logic;
SIGNAL \inst116|Mux0~1_combout\ : std_logic;
SIGNAL \inst116|Mux0~combout\ : std_logic;
SIGNAL \inst147|Mux0~0_combout\ : std_logic;
SIGNAL \inst147|sal[6]~0_combout\ : std_logic;
SIGNAL \inst147|Mux1~0_combout\ : std_logic;
SIGNAL \inst147|sal[5]~1_combout\ : std_logic;
SIGNAL \inst147|Mux2~0_combout\ : std_logic;
SIGNAL \inst147|sal[4]~2_combout\ : std_logic;
SIGNAL \inst147|Mux3~0_combout\ : std_logic;
SIGNAL \inst147|sal[3]~3_combout\ : std_logic;
SIGNAL \inst147|sal[2]~4_combout\ : std_logic;
SIGNAL \inst147|sal[2]~5_combout\ : std_logic;
SIGNAL \inst147|Mux5~0_combout\ : std_logic;
SIGNAL \inst147|sal[1]~6_combout\ : std_logic;
SIGNAL \inst147|Mux6~0_combout\ : std_logic;
SIGNAL \inst147|sal[0]~7_combout\ : std_logic;
SIGNAL \inst110|Add13~14_combout\ : std_logic;
SIGNAL \inst117|Mux1~0_combout\ : std_logic;
SIGNAL \inst117|Mux1~combout\ : std_logic;
SIGNAL \inst117|Mux2~0_combout\ : std_logic;
SIGNAL \inst113|D[1]~0_combout\ : std_logic;
SIGNAL \inst117|Mux2~1_combout\ : std_logic;
SIGNAL \inst112|Mux3~10_combout\ : std_logic;
SIGNAL \inst117|Mux2~2_combout\ : std_logic;
SIGNAL \inst110|Add13~17_combout\ : std_logic;
SIGNAL \inst110|Add13~15_combout\ : std_logic;
SIGNAL \inst117|Mux0~7_combout\ : std_logic;
SIGNAL \inst117|Mux0~combout\ : std_logic;
SIGNAL \inst66|LessThan12~0_combout\ : std_logic;
SIGNAL \inst117|Mux3~1_combout\ : std_logic;
SIGNAL \inst122|LessThan12~0_combout\ : std_logic;
SIGNAL \inst110|z~49_combout\ : std_logic;
SIGNAL \inst110|z~50_combout\ : std_logic;
SIGNAL \inst110|LessThan12~0_combout\ : std_logic;
SIGNAL \inst110|LessThan12~1_combout\ : std_logic;
SIGNAL \inst113|z~51_combout\ : std_logic;
SIGNAL \inst113|z~52_combout\ : std_logic;
SIGNAL \inst113|LessThan12~0_combout\ : std_logic;
SIGNAL \inst113|LessThan12~1_combout\ : std_logic;
SIGNAL \inst117|Mux3~2_combout\ : std_logic;
SIGNAL \inst117|Mux3~3_combout\ : std_logic;
SIGNAL \inst117|Mux3~4_combout\ : std_logic;
SIGNAL \inst122|z~37_combout\ : std_logic;
SIGNAL \inst110|Add12~9_combout\ : std_logic;
SIGNAL \inst110|Add12~10_combout\ : std_logic;
SIGNAL \inst110|Add12~11_combout\ : std_logic;
SIGNAL \inst110|Add12~12_combout\ : std_logic;
SIGNAL \inst110|Add12~3_combout\ : std_logic;
SIGNAL \inst110|Add12~4_combout\ : std_logic;
SIGNAL \inst110|Add12~5_combout\ : std_logic;
SIGNAL \inst110|Add12~6_combout\ : std_logic;
SIGNAL \inst110|Add12~0_combout\ : std_logic;
SIGNAL \inst110|Add12~1_combout\ : std_logic;
SIGNAL \inst110|Add12~2_combout\ : std_logic;
SIGNAL \inst110|Add12~7_combout\ : std_logic;
SIGNAL \inst110|Add12~8_combout\ : std_logic;
SIGNAL \inst110|Add12~13_combout\ : std_logic;
SIGNAL \inst122|LessThan12~1_combout\ : std_logic;
SIGNAL \inst114|LessThan12~0_combout\ : std_logic;
SIGNAL \inst117|Mux3~0_combout\ : std_logic;
SIGNAL \inst117|Mux3~5_combout\ : std_logic;
SIGNAL \inst146|Mux0~0_combout\ : std_logic;
SIGNAL \inst146|sal[6]~0_combout\ : std_logic;
SIGNAL \inst146|Mux1~0_combout\ : std_logic;
SIGNAL \inst146|sal[5]~1_combout\ : std_logic;
SIGNAL \inst146|Mux2~0_combout\ : std_logic;
SIGNAL \inst146|sal[4]~2_combout\ : std_logic;
SIGNAL \inst146|Mux3~0_combout\ : std_logic;
SIGNAL \inst146|sal[3]~3_combout\ : std_logic;
SIGNAL \inst146|sal[2]~4_combout\ : std_logic;
SIGNAL \inst146|sal[2]~5_combout\ : std_logic;
SIGNAL \inst146|Mux5~0_combout\ : std_logic;
SIGNAL \inst146|sal[1]~6_combout\ : std_logic;
SIGNAL \inst146|Mux6~0_combout\ : std_logic;
SIGNAL \inst146|sal[0]~7_combout\ : std_logic;
SIGNAL \inst|WideOr74~3_combout\ : std_logic;
SIGNAL \inst|WideOr74~6_combout\ : std_logic;
SIGNAL \inst|WideOr74~5_combout\ : std_logic;
SIGNAL \inst|WideOr74~4_combout\ : std_logic;
SIGNAL \inst|WideOr74~7_combout\ : std_logic;
SIGNAL \inst|WideOr74~2_combout\ : std_logic;
SIGNAL \inst|WideOr74~combout\ : std_logic;
SIGNAL \inst|WideOr75~4_combout\ : std_logic;
SIGNAL \inst|WideOr75~5_combout\ : std_logic;
SIGNAL \inst|WideOr75~6_combout\ : std_logic;
SIGNAL \inst|WideOr78~0_combout\ : std_logic;
SIGNAL \inst|WideOr77~1_combout\ : std_logic;
SIGNAL \inst|WideOr78~1_combout\ : std_logic;
SIGNAL \inst|WideOr77~0_combout\ : std_logic;
SIGNAL \inst|WideOr78~2_combout\ : std_logic;
SIGNAL \inst|WideOr76~2_combout\ : std_logic;
SIGNAL \inst|WideOr77~2_combout\ : std_logic;
SIGNAL \inst|WideOr79~0_combout\ : std_logic;
SIGNAL \inst|WideOr76~0_combout\ : std_logic;
SIGNAL \inst|WideOr76~1_combout\ : std_logic;
SIGNAL \inst|WideOr76~combout\ : std_logic;
SIGNAL \inst|WideOr77~3_combout\ : std_logic;
SIGNAL \inst|WideOr77~4_combout\ : std_logic;
SIGNAL \inst|WideOr77~8_combout\ : std_logic;
SIGNAL \inst|WideOr77~5_combout\ : std_logic;
SIGNAL \inst|WideOr77~6_combout\ : std_logic;
SIGNAL \inst|WideOr77~7_combout\ : std_logic;
SIGNAL \inst|WideOr77~combout\ : std_logic;
SIGNAL \inst|WideOr78~3_combout\ : std_logic;
SIGNAL \inst|WideOr78~5_combout\ : std_logic;
SIGNAL \inst|WideOr78~combout\ : std_logic;
SIGNAL \inst|WideOr79~1_combout\ : std_logic;
SIGNAL \inst|WideOr79~2_combout\ : std_logic;
SIGNAL \inst|WideOr79~combout\ : std_logic;
SIGNAL \inst113|LessThan11~1_combout\ : std_logic;
SIGNAL \inst110|LessThan11~3_combout\ : std_logic;
SIGNAL \inst110|LessThan11~16_combout\ : std_logic;
SIGNAL \inst112|Mux2~9_combout\ : std_logic;
SIGNAL \inst112|Mux2~10_combout\ : std_logic;
SIGNAL \inst148|sal[6]~0_combout\ : std_logic;
SIGNAL \inst110|Add14~11_combout\ : std_logic;
SIGNAL \inst110|Add14~12_combout\ : std_logic;
SIGNAL \inst110|Add14~13_combout\ : std_logic;
SIGNAL \inst110|Add14~14_combout\ : std_logic;
SIGNAL \inst110|Add14~15_combout\ : std_logic;
SIGNAL \inst112|Mux3~11_combout\ : std_logic;
SIGNAL \inst112|Mux3~15_combout\ : std_logic;
SIGNAL \inst112|Mux3~12_combout\ : std_logic;
SIGNAL \inst112|Mux3~13_combout\ : std_logic;
SIGNAL \inst148|sal[5]~1_combout\ : std_logic;
SIGNAL \inst148|sal[5]~2_combout\ : std_logic;
SIGNAL \inst148|sal[3]~3_combout\ : std_logic;
SIGNAL \inst148|sal[2]~4_combout\ : std_logic;
SIGNAL \inst122|LessThan12~2_combout\ : std_logic;
SIGNAL \inst114|U[1]~0_combout\ : std_logic;
SIGNAL \inst115|s[1]~0_combout\ : std_logic;
SIGNAL \inst113|U[1]~0_combout\ : std_logic;
SIGNAL \inst118|Mux2~0_combout\ : std_logic;
SIGNAL \inst110|U[1]~0_combout\ : std_logic;
SIGNAL \inst66|U[1]~0_combout\ : std_logic;
SIGNAL \inst118|Mux2~1_combout\ : std_logic;
SIGNAL \inst118|Mux0~0_combout\ : std_logic;
SIGNAL \inst118|Mux0~1_combout\ : std_logic;
SIGNAL \inst118|Mux1~0_combout\ : std_logic;
SIGNAL \inst118|Mux0~2_combout\ : std_logic;
SIGNAL \inst118|Mux3~0_combout\ : std_logic;
SIGNAL \inst118|Mux3~1_combout\ : std_logic;
SIGNAL \inst118|Mux3~2_combout\ : std_logic;
SIGNAL \inst145|Mux0~0_combout\ : std_logic;
SIGNAL \inst145|sal[6]~0_combout\ : std_logic;
SIGNAL \inst145|Mux1~0_combout\ : std_logic;
SIGNAL \inst145|sal[5]~1_combout\ : std_logic;
SIGNAL \inst145|Mux2~0_combout\ : std_logic;
SIGNAL \inst145|sal[4]~2_combout\ : std_logic;
SIGNAL \inst145|Mux3~0_combout\ : std_logic;
SIGNAL \inst145|sal[3]~3_combout\ : std_logic;
SIGNAL \inst145|sal[2]~4_combout\ : std_logic;
SIGNAL \inst145|sal[2]~5_combout\ : std_logic;
SIGNAL \inst145|Mux5~0_combout\ : std_logic;
SIGNAL \inst145|sal[1]~6_combout\ : std_logic;
SIGNAL \inst145|Mux6~0_combout\ : std_logic;
SIGNAL \inst145|sal[0]~7_combout\ : std_logic;
SIGNAL \inst41|Q\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst67|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst149|count_1Mhz\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst142|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|Q\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst138|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst85|altsyncram_component|auto_generated|q_a\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst149|count_1Khz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst140|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst87|Q\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst65|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst149|count_100Khz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst68|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst95|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst72|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst40|Q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst131|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst76|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst111|Q\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst97|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst130|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst62|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst125|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst91|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst83|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst133|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst127|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst124|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst44|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst141|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst139|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst136|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|BCD\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst149|count_100hz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst149|count_1hz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst149|count_10hz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst149|count_10Khz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|ALT_INV_Adivine~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Apuesta~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr90~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr85~combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr83~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Ingrese <= ww_Ingrese;
ww_Reset <= Reset;
ww_Reloj <= Reloj;
ww_Start <= Start;
ww_Salir <= Salir;
ww_Consultar_Saldo <= Consultar_Saldo;
ww_Consultar_Mejores_Puntuaciones <= Consultar_Mejores_Puntuaciones;
ww_Teclados <= Teclados;
ww_Continuar <= Continuar;
Apuesta <= ww_Apuesta;
Adivine <= ww_Adivine;
Caliente <= ww_Caliente;
Frio <= ww_Frio;
Tibio <= ww_Tibio;
Perdio <= ww_Perdio;
Gano <= ww_Gano;
Error <= ww_Error;
C7segmentos <= ww_C7segmentos;
D7segmentos <= ww_D7segmentos;
estados <= ww_estados;
M7segmentos <= ww_M7segmentos;
U7segmentos <= ww_U7segmentos;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst85|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst92|Mux0~0_combout\ & \inst92|Mux1~0_combout\ & \inst92|Mux2~0_combout\ & \inst92|Mux3~0_combout\ & \inst92|Mux4~0_combout\ & 
\inst92|Mux5~0_combout\ & \inst92|Mux6~0_combout\ & \inst92|Mux7~0_combout\ & \inst92|Mux8~0_combout\ & \inst92|Mux9~0_combout\ & \inst92|Mux10~0_combout\);

\inst85|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst94|Mux0~1_combout\ & \inst94|Mux1~1_combout\ & \inst94|Mux2~1_combout\ & \inst94|Mux3~0_combout\);

\inst85|altsyncram_component|auto_generated|q_a\(0) <= \inst85|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst85|altsyncram_component|auto_generated|q_a\(1) <= \inst85|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst85|altsyncram_component|auto_generated|q_a\(2) <= \inst85|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst85|altsyncram_component|auto_generated|q_a\(3) <= \inst85|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst85|altsyncram_component|auto_generated|q_a\(4) <= \inst85|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst85|altsyncram_component|auto_generated|q_a\(5) <= \inst85|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst85|altsyncram_component|auto_generated|q_a\(6) <= \inst85|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst85|altsyncram_component|auto_generated|q_a\(7) <= \inst85|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst85|altsyncram_component|auto_generated|q_a\(8) <= \inst85|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst85|altsyncram_component|auto_generated|q_a\(9) <= \inst85|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst85|altsyncram_component|auto_generated|q_a\(10) <= \inst85|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);

\inst149|CLOCK_1Hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst149|CLOCK_1Hz~q\);

\inst149|CLOCK_100Hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst149|CLOCK_100Hz~q\);

\inst149|clock_100Khz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst149|clock_100Khz_int~q\);

\inst149|clock_100hz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst149|clock_100hz_int~q\);

\inst149|clock_10hz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst149|clock_10hz_int~q\);

\inst136|PB_SIN_REBOTE~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst136|PB_SIN_REBOTE~q\);

\inst149|clock_1Khz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst149|clock_1Khz_int~q\);

\inst149|clock_1Mhz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst149|clock_1Mhz_int~q\);

\inst149|clock_10Khz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst149|clock_10Khz_int~q\);

\inst149|CLOCK_1MHz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst149|CLOCK_1MHz~q\);

\Reloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reloj~input_o\);
\inst|ALT_INV_Adivine~0_combout\ <= NOT \inst|Adivine~0_combout\;
\inst|ALT_INV_Apuesta~0_combout\ <= NOT \inst|Apuesta~0_combout\;
\inst|ALT_INV_WideOr90~0_combout\ <= NOT \inst|WideOr90~0_combout\;
\inst|ALT_INV_WideOr85~combout\ <= NOT \inst|WideOr85~combout\;
\inst|ALT_INV_WideOr83~combout\ <= NOT \inst|WideOr83~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X51_Y34_N23
\Ingrese~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr90~0_combout\,
	devoe => ww_devoe,
	o => \Ingrese~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\Apuesta~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Apuesta~0_combout\,
	devoe => ww_devoe,
	o => \Apuesta~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\Adivine~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Adivine~0_combout\,
	devoe => ww_devoe,
	o => \Adivine~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\Caliente~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|y.T52~q\,
	devoe => ww_devoe,
	o => \Caliente~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\Frio~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|y.T54~q\,
	devoe => ww_devoe,
	o => \Frio~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\Tibio~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|y.T53~q\,
	devoe => ww_devoe,
	o => \Tibio~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\Perdio~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|y.T42~q\,
	devoe => ww_devoe,
	o => \Perdio~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\Gano~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|y.T51~q\,
	devoe => ww_devoe,
	o => \Gano~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\Error~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \Error~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\C7segmentos[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst147|sal[6]~0_combout\,
	devoe => ww_devoe,
	o => \C7segmentos[6]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\C7segmentos[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst147|sal[5]~1_combout\,
	devoe => ww_devoe,
	o => \C7segmentos[5]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\C7segmentos[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst147|sal[4]~2_combout\,
	devoe => ww_devoe,
	o => \C7segmentos[4]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\C7segmentos[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst147|sal[3]~3_combout\,
	devoe => ww_devoe,
	o => \C7segmentos[3]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\C7segmentos[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst147|sal[2]~5_combout\,
	devoe => ww_devoe,
	o => \C7segmentos[2]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\C7segmentos[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst147|sal[1]~6_combout\,
	devoe => ww_devoe,
	o => \C7segmentos[1]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\C7segmentos[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst147|sal[0]~7_combout\,
	devoe => ww_devoe,
	o => \C7segmentos[0]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\D7segmentos[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst146|sal[6]~0_combout\,
	devoe => ww_devoe,
	o => \D7segmentos[6]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\D7segmentos[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst146|sal[5]~1_combout\,
	devoe => ww_devoe,
	o => \D7segmentos[5]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\D7segmentos[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst146|sal[4]~2_combout\,
	devoe => ww_devoe,
	o => \D7segmentos[4]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\D7segmentos[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst146|sal[3]~3_combout\,
	devoe => ww_devoe,
	o => \D7segmentos[3]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\D7segmentos[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst146|sal[2]~5_combout\,
	devoe => ww_devoe,
	o => \D7segmentos[2]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\D7segmentos[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst146|sal[1]~6_combout\,
	devoe => ww_devoe,
	o => \D7segmentos[1]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\D7segmentos[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst146|sal[0]~7_combout\,
	devoe => ww_devoe,
	o => \D7segmentos[0]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\estados[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr74~combout\,
	devoe => ww_devoe,
	o => \estados[5]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\estados[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr75~6_combout\,
	devoe => ww_devoe,
	o => \estados[4]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\estados[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr76~combout\,
	devoe => ww_devoe,
	o => \estados[3]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\estados[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr77~combout\,
	devoe => ww_devoe,
	o => \estados[2]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\estados[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr78~combout\,
	devoe => ww_devoe,
	o => \estados[1]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\estados[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr79~combout\,
	devoe => ww_devoe,
	o => \estados[0]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\M7segmentos[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst148|sal[6]~0_combout\,
	devoe => ww_devoe,
	o => \M7segmentos[6]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\M7segmentos[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst148|sal[5]~1_combout\,
	devoe => ww_devoe,
	o => \M7segmentos[5]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\M7segmentos[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst148|sal[5]~2_combout\,
	devoe => ww_devoe,
	o => \M7segmentos[4]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\M7segmentos[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst148|sal[3]~3_combout\,
	devoe => ww_devoe,
	o => \M7segmentos[3]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\M7segmentos[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst148|sal[2]~4_combout\,
	devoe => ww_devoe,
	o => \M7segmentos[2]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\M7segmentos[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr93~combout\,
	devoe => ww_devoe,
	o => \M7segmentos[1]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\M7segmentos[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst148|sal[3]~3_combout\,
	devoe => ww_devoe,
	o => \M7segmentos[0]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\U7segmentos[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst145|sal[6]~0_combout\,
	devoe => ww_devoe,
	o => \U7segmentos[6]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\U7segmentos[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst145|sal[5]~1_combout\,
	devoe => ww_devoe,
	o => \U7segmentos[5]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\U7segmentos[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst145|sal[4]~2_combout\,
	devoe => ww_devoe,
	o => \U7segmentos[4]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\U7segmentos[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst145|sal[3]~3_combout\,
	devoe => ww_devoe,
	o => \U7segmentos[3]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\U7segmentos[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst145|sal[2]~5_combout\,
	devoe => ww_devoe,
	o => \U7segmentos[2]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\U7segmentos[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst145|sal[1]~6_combout\,
	devoe => ww_devoe,
	o => \U7segmentos[1]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\U7segmentos[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst145|sal[0]~7_combout\,
	devoe => ww_devoe,
	o => \U7segmentos[0]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\Reloj~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reloj,
	o => \Reloj~input_o\);

-- Location: CLKCTRL_G18
\Reloj~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reloj~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reloj~inputclkctrl_outclk\);

-- Location: LCCOMB_X26_Y1_N8
\inst149|count_1Mhz[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_1Mhz[0]~6_combout\ = \inst149|count_1Mhz\(0) $ (VCC)
-- \inst149|count_1Mhz[0]~7\ = CARRY(\inst149|count_1Mhz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst149|count_1Mhz\(0),
	datad => VCC,
	combout => \inst149|count_1Mhz[0]~6_combout\,
	cout => \inst149|count_1Mhz[0]~7\);

-- Location: LCCOMB_X26_Y1_N12
\inst149|count_1Mhz[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_1Mhz[2]~10_combout\ = (\inst149|count_1Mhz\(2) & (\inst149|count_1Mhz[1]~9\ $ (GND))) # (!\inst149|count_1Mhz\(2) & (!\inst149|count_1Mhz[1]~9\ & VCC))
-- \inst149|count_1Mhz[2]~11\ = CARRY((\inst149|count_1Mhz\(2) & !\inst149|count_1Mhz[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst149|count_1Mhz\(2),
	datad => VCC,
	cin => \inst149|count_1Mhz[1]~9\,
	combout => \inst149|count_1Mhz[2]~10_combout\,
	cout => \inst149|count_1Mhz[2]~11\);

-- Location: LCCOMB_X26_Y1_N14
\inst149|count_1Mhz[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_1Mhz[3]~12_combout\ = (\inst149|count_1Mhz\(3) & (!\inst149|count_1Mhz[2]~11\)) # (!\inst149|count_1Mhz\(3) & ((\inst149|count_1Mhz[2]~11\) # (GND)))
-- \inst149|count_1Mhz[3]~13\ = CARRY((!\inst149|count_1Mhz[2]~11\) # (!\inst149|count_1Mhz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst149|count_1Mhz\(3),
	datad => VCC,
	cin => \inst149|count_1Mhz[2]~11\,
	combout => \inst149|count_1Mhz[3]~12_combout\,
	cout => \inst149|count_1Mhz[3]~13\);

-- Location: FF_X26_Y1_N15
\inst149|count_1Mhz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst149|count_1Mhz[3]~12_combout\,
	sclr => \inst149|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_1Mhz\(3));

-- Location: LCCOMB_X26_Y1_N16
\inst149|count_1Mhz[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_1Mhz[4]~14_combout\ = (\inst149|count_1Mhz\(4) & (\inst149|count_1Mhz[3]~13\ $ (GND))) # (!\inst149|count_1Mhz\(4) & (!\inst149|count_1Mhz[3]~13\ & VCC))
-- \inst149|count_1Mhz[4]~15\ = CARRY((\inst149|count_1Mhz\(4) & !\inst149|count_1Mhz[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst149|count_1Mhz\(4),
	datad => VCC,
	cin => \inst149|count_1Mhz[3]~13\,
	combout => \inst149|count_1Mhz[4]~14_combout\,
	cout => \inst149|count_1Mhz[4]~15\);

-- Location: FF_X26_Y1_N17
\inst149|count_1Mhz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst149|count_1Mhz[4]~14_combout\,
	sclr => \inst149|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_1Mhz\(4));

-- Location: LCCOMB_X26_Y1_N18
\inst149|count_1Mhz[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_1Mhz[5]~16_combout\ = \inst149|count_1Mhz[4]~15\ $ (\inst149|count_1Mhz\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst149|count_1Mhz\(5),
	cin => \inst149|count_1Mhz[4]~15\,
	combout => \inst149|count_1Mhz[5]~16_combout\);

-- Location: FF_X26_Y1_N19
\inst149|count_1Mhz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst149|count_1Mhz[5]~16_combout\,
	sclr => \inst149|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_1Mhz\(5));

-- Location: LCCOMB_X26_Y1_N24
\inst149|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|LessThan0~0_combout\ = (!\inst149|count_1Mhz\(2) & (!\inst149|count_1Mhz\(3) & (!\inst149|count_1Mhz\(0) & !\inst149|count_1Mhz\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst149|count_1Mhz\(2),
	datab => \inst149|count_1Mhz\(3),
	datac => \inst149|count_1Mhz\(0),
	datad => \inst149|count_1Mhz\(1),
	combout => \inst149|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y1_N4
\inst149|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|LessThan0~1_combout\ = (\inst149|count_1Mhz\(5) & (\inst149|count_1Mhz\(4) & !\inst149|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst149|count_1Mhz\(5),
	datac => \inst149|count_1Mhz\(4),
	datad => \inst149|LessThan0~0_combout\,
	combout => \inst149|LessThan0~1_combout\);

-- Location: FF_X26_Y1_N9
\inst149|count_1Mhz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst149|count_1Mhz[0]~6_combout\,
	sclr => \inst149|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_1Mhz\(0));

-- Location: LCCOMB_X26_Y1_N10
\inst149|count_1Mhz[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_1Mhz[1]~8_combout\ = (\inst149|count_1Mhz\(1) & (!\inst149|count_1Mhz[0]~7\)) # (!\inst149|count_1Mhz\(1) & ((\inst149|count_1Mhz[0]~7\) # (GND)))
-- \inst149|count_1Mhz[1]~9\ = CARRY((!\inst149|count_1Mhz[0]~7\) # (!\inst149|count_1Mhz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst149|count_1Mhz\(1),
	datad => VCC,
	cin => \inst149|count_1Mhz[0]~7\,
	combout => \inst149|count_1Mhz[1]~8_combout\,
	cout => \inst149|count_1Mhz[1]~9\);

-- Location: FF_X26_Y1_N11
\inst149|count_1Mhz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst149|count_1Mhz[1]~8_combout\,
	sclr => \inst149|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_1Mhz\(1));

-- Location: FF_X26_Y1_N13
\inst149|count_1Mhz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst149|count_1Mhz[2]~10_combout\,
	sclr => \inst149|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_1Mhz\(2));

-- Location: LCCOMB_X26_Y1_N28
\inst149|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|LessThan1~0_combout\ = (\inst149|count_1Mhz\(2)) # ((\inst149|count_1Mhz\(5)) # ((\inst149|count_1Mhz\(3)) # (\inst149|count_1Mhz\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst149|count_1Mhz\(2),
	datab => \inst149|count_1Mhz\(5),
	datac => \inst149|count_1Mhz\(3),
	datad => \inst149|count_1Mhz\(4),
	combout => \inst149|LessThan1~0_combout\);

-- Location: FF_X26_Y1_N29
\inst149|clock_1Mhz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst149|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|clock_1Mhz_int~q\);

-- Location: CLKCTRL_G17
\inst149|clock_1Mhz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst149|clock_1Mhz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst149|clock_1Mhz_int~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y32_N30
\inst149|count_100Khz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_100Khz~2_combout\ = (\inst149|count_100Khz\(0) & (\inst149|count_100Khz\(1) $ (\inst149|count_100Khz\(2)))) # (!\inst149|count_100Khz\(0) & (\inst149|count_100Khz\(1) & \inst149|count_100Khz\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst149|count_100Khz\(0),
	datab => \inst149|count_100Khz\(1),
	datac => \inst149|count_100Khz\(2),
	combout => \inst149|count_100Khz~2_combout\);

-- Location: FF_X25_Y32_N31
\inst149|count_100Khz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_1Mhz_int~clkctrl_outclk\,
	d => \inst149|count_100Khz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_100Khz\(2));

-- Location: LCCOMB_X25_Y32_N24
\inst149|count_100Khz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_100Khz~0_combout\ = (!\inst149|count_100Khz\(0) & ((\inst149|count_100Khz\(1)) # (!\inst149|count_100Khz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst149|count_100Khz\(2),
	datac => \inst149|count_100Khz\(0),
	datad => \inst149|count_100Khz\(1),
	combout => \inst149|count_100Khz~0_combout\);

-- Location: FF_X25_Y32_N25
\inst149|count_100Khz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_1Mhz_int~clkctrl_outclk\,
	d => \inst149|count_100Khz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_100Khz\(0));

-- Location: LCCOMB_X25_Y32_N18
\inst149|count_100Khz[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_100Khz[1]~1_combout\ = \inst149|count_100Khz\(0) $ (\inst149|count_100Khz\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst149|count_100Khz\(0),
	datac => \inst149|count_100Khz\(1),
	combout => \inst149|count_100Khz[1]~1_combout\);

-- Location: FF_X25_Y32_N19
\inst149|count_100Khz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_1Mhz_int~clkctrl_outclk\,
	d => \inst149|count_100Khz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_100Khz\(1));

-- Location: LCCOMB_X25_Y32_N28
\inst149|clock_100Khz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|clock_100Khz_int~0_combout\ = \inst149|clock_100Khz_int~q\ $ (((!\inst149|count_100Khz\(1) & (\inst149|count_100Khz\(2) & !\inst149|count_100Khz\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst149|clock_100Khz_int~q\,
	datab => \inst149|count_100Khz\(1),
	datac => \inst149|count_100Khz\(2),
	datad => \inst149|count_100Khz\(0),
	combout => \inst149|clock_100Khz_int~0_combout\);

-- Location: FF_X25_Y32_N13
\inst149|clock_100Khz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_1Mhz_int~clkctrl_outclk\,
	asdata => \inst149|clock_100Khz_int~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|clock_100Khz_int~q\);

-- Location: CLKCTRL_G10
\inst149|clock_100Khz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst149|clock_100Khz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst149|clock_100Khz_int~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y16_N30
\inst149|count_10Khz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_10Khz~2_combout\ = (\inst149|count_10Khz\(1) & (\inst149|count_10Khz\(2) $ (\inst149|count_10Khz\(0)))) # (!\inst149|count_10Khz\(1) & (\inst149|count_10Khz\(2) & \inst149|count_10Khz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst149|count_10Khz\(1),
	datac => \inst149|count_10Khz\(2),
	datad => \inst149|count_10Khz\(0),
	combout => \inst149|count_10Khz~2_combout\);

-- Location: FF_X2_Y16_N31
\inst149|count_10Khz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_100Khz_int~clkctrl_outclk\,
	d => \inst149|count_10Khz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_10Khz\(2));

-- Location: LCCOMB_X2_Y16_N12
\inst149|count_10Khz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_10Khz~0_combout\ = (!\inst149|count_10Khz\(0) & ((\inst149|count_10Khz\(1)) # (!\inst149|count_10Khz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst149|count_10Khz\(1),
	datac => \inst149|count_10Khz\(0),
	datad => \inst149|count_10Khz\(2),
	combout => \inst149|count_10Khz~0_combout\);

-- Location: FF_X2_Y16_N13
\inst149|count_10Khz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_100Khz_int~clkctrl_outclk\,
	d => \inst149|count_10Khz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_10Khz\(0));

-- Location: LCCOMB_X2_Y16_N10
\inst149|count_10Khz[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_10Khz[1]~1_combout\ = \inst149|count_10Khz\(1) $ (\inst149|count_10Khz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst149|count_10Khz\(1),
	datad => \inst149|count_10Khz\(0),
	combout => \inst149|count_10Khz[1]~1_combout\);

-- Location: FF_X2_Y16_N11
\inst149|count_10Khz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_100Khz_int~clkctrl_outclk\,
	d => \inst149|count_10Khz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_10Khz\(1));

-- Location: LCCOMB_X2_Y16_N20
\inst149|clock_10Khz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|clock_10Khz_int~0_combout\ = \inst149|clock_10Khz_int~q\ $ (((!\inst149|count_10Khz\(1) & (\inst149|count_10Khz\(2) & !\inst149|count_10Khz\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst149|count_10Khz\(1),
	datab => \inst149|clock_10Khz_int~q\,
	datac => \inst149|count_10Khz\(2),
	datad => \inst149|count_10Khz\(0),
	combout => \inst149|clock_10Khz_int~0_combout\);

-- Location: LCCOMB_X2_Y16_N24
\inst149|clock_10Khz_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|clock_10Khz_int~feeder_combout\ = \inst149|clock_10Khz_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst149|clock_10Khz_int~0_combout\,
	combout => \inst149|clock_10Khz_int~feeder_combout\);

-- Location: FF_X2_Y16_N25
\inst149|clock_10Khz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_100Khz_int~clkctrl_outclk\,
	d => \inst149|clock_10Khz_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|clock_10Khz_int~q\);

-- Location: CLKCTRL_G3
\inst149|clock_10Khz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst149|clock_10Khz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst149|clock_10Khz_int~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y15_N26
\inst149|count_1Khz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_1Khz~2_combout\ = (\inst149|count_1Khz\(1) & (\inst149|count_1Khz\(2) $ (\inst149|count_1Khz\(0)))) # (!\inst149|count_1Khz\(1) & (\inst149|count_1Khz\(2) & \inst149|count_1Khz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst149|count_1Khz\(1),
	datac => \inst149|count_1Khz\(2),
	datad => \inst149|count_1Khz\(0),
	combout => \inst149|count_1Khz~2_combout\);

-- Location: FF_X1_Y15_N27
\inst149|count_1Khz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_10Khz_int~clkctrl_outclk\,
	d => \inst149|count_1Khz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_1Khz\(2));

-- Location: LCCOMB_X1_Y15_N28
\inst149|count_1Khz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_1Khz~0_combout\ = (!\inst149|count_1Khz\(0) & ((\inst149|count_1Khz\(1)) # (!\inst149|count_1Khz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst149|count_1Khz\(1),
	datac => \inst149|count_1Khz\(0),
	datad => \inst149|count_1Khz\(2),
	combout => \inst149|count_1Khz~0_combout\);

-- Location: FF_X1_Y15_N29
\inst149|count_1Khz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_10Khz_int~clkctrl_outclk\,
	d => \inst149|count_1Khz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_1Khz\(0));

-- Location: LCCOMB_X1_Y15_N24
\inst149|count_1Khz[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_1Khz[1]~1_combout\ = \inst149|count_1Khz\(1) $ (\inst149|count_1Khz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst149|count_1Khz\(1),
	datad => \inst149|count_1Khz\(0),
	combout => \inst149|count_1Khz[1]~1_combout\);

-- Location: FF_X1_Y15_N25
\inst149|count_1Khz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_10Khz_int~clkctrl_outclk\,
	d => \inst149|count_1Khz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_1Khz\(1));

-- Location: LCCOMB_X1_Y15_N30
\inst149|clock_1Khz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|clock_1Khz_int~0_combout\ = \inst149|clock_1Khz_int~q\ $ (((!\inst149|count_1Khz\(1) & (\inst149|count_1Khz\(2) & !\inst149|count_1Khz\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst149|clock_1Khz_int~q\,
	datab => \inst149|count_1Khz\(1),
	datac => \inst149|count_1Khz\(2),
	datad => \inst149|count_1Khz\(0),
	combout => \inst149|clock_1Khz_int~0_combout\);

-- Location: FF_X1_Y15_N5
\inst149|clock_1Khz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_10Khz_int~clkctrl_outclk\,
	asdata => \inst149|clock_1Khz_int~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|clock_1Khz_int~q\);

-- Location: CLKCTRL_G1
\inst149|clock_1Khz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst149|clock_1Khz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst149|clock_1Khz_int~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y16_N26
\inst149|count_100hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_100hz~0_combout\ = (!\inst149|count_100hz\(0) & ((\inst149|count_100hz\(1)) # (!\inst149|count_100hz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst149|count_100hz\(1),
	datab => \inst149|count_100hz\(2),
	datac => \inst149|count_100hz\(0),
	combout => \inst149|count_100hz~0_combout\);

-- Location: FF_X1_Y16_N27
\inst149|count_100hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_1Khz_int~clkctrl_outclk\,
	d => \inst149|count_100hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_100hz\(0));

-- Location: LCCOMB_X1_Y16_N28
\inst149|count_100hz[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_100hz[1]~1_combout\ = \inst149|count_100hz\(1) $ (\inst149|count_100hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst149|count_100hz\(1),
	datad => \inst149|count_100hz\(0),
	combout => \inst149|count_100hz[1]~1_combout\);

-- Location: FF_X1_Y16_N29
\inst149|count_100hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_1Khz_int~clkctrl_outclk\,
	d => \inst149|count_100hz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_100hz\(1));

-- Location: LCCOMB_X1_Y16_N24
\inst149|count_100hz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_100hz~2_combout\ = (\inst149|count_100hz\(1) & (\inst149|count_100hz\(2) $ (\inst149|count_100hz\(0)))) # (!\inst149|count_100hz\(1) & (\inst149|count_100hz\(2) & \inst149|count_100hz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst149|count_100hz\(1),
	datac => \inst149|count_100hz\(2),
	datad => \inst149|count_100hz\(0),
	combout => \inst149|count_100hz~2_combout\);

-- Location: FF_X1_Y16_N25
\inst149|count_100hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_1Khz_int~clkctrl_outclk\,
	d => \inst149|count_100hz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_100hz\(2));

-- Location: LCCOMB_X1_Y16_N30
\inst149|clock_100hz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|clock_100hz_int~0_combout\ = \inst149|clock_100hz_int~q\ $ (((\inst149|count_100hz\(2) & (!\inst149|count_100hz\(0) & !\inst149|count_100hz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst149|clock_100hz_int~q\,
	datab => \inst149|count_100hz\(2),
	datac => \inst149|count_100hz\(0),
	datad => \inst149|count_100hz\(1),
	combout => \inst149|clock_100hz_int~0_combout\);

-- Location: LCCOMB_X1_Y16_N18
\inst149|clock_100hz_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|clock_100hz_int~feeder_combout\ = \inst149|clock_100hz_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst149|clock_100hz_int~0_combout\,
	combout => \inst149|clock_100hz_int~feeder_combout\);

-- Location: FF_X1_Y16_N19
\inst149|clock_100hz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_1Khz_int~clkctrl_outclk\,
	d => \inst149|clock_100hz_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|clock_100hz_int~q\);

-- Location: FF_X1_Y16_N21
\inst149|CLOCK_100Hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst149|clock_100hz_int~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|CLOCK_100Hz~q\);

-- Location: CLKCTRL_G0
\inst149|CLOCK_100Hz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst149|CLOCK_100Hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst149|CLOCK_100Hz~clkctrl_outclk\);

-- Location: IOIBUF_X36_Y0_N15
\Teclados[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Teclados(3),
	o => \Teclados[3]~input_o\);

-- Location: LCCOMB_X36_Y1_N18
\inst127|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst127|SHIFT_PB[3]~0_combout\ = !\Teclados[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Teclados[3]~input_o\,
	combout => \inst127|SHIFT_PB[3]~0_combout\);

-- Location: FF_X36_Y1_N19
\inst127|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst127|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst127|SHIFT_PB\(3));

-- Location: LCCOMB_X36_Y1_N12
\inst127|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst127|SHIFT_PB[2]~feeder_combout\ = \inst127|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst127|SHIFT_PB\(3),
	combout => \inst127|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X36_Y1_N13
\inst127|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst127|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst127|SHIFT_PB\(2));

-- Location: LCCOMB_X36_Y1_N10
\inst127|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst127|SHIFT_PB[1]~feeder_combout\ = \inst127|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst127|SHIFT_PB\(2),
	combout => \inst127|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X36_Y1_N11
\inst127|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst127|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst127|SHIFT_PB\(1));

-- Location: LCCOMB_X36_Y1_N8
\inst127|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst127|SHIFT_PB[0]~feeder_combout\ = \inst127|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst127|SHIFT_PB\(1),
	combout => \inst127|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X36_Y1_N9
\inst127|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst127|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst127|SHIFT_PB\(0));

-- Location: LCCOMB_X36_Y1_N4
\inst127|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst127|Equal0~0_combout\ = (\inst127|SHIFT_PB\(2)) # ((\inst127|SHIFT_PB\(3)) # ((\inst127|SHIFT_PB\(0)) # (\inst127|SHIFT_PB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst127|SHIFT_PB\(2),
	datab => \inst127|SHIFT_PB\(3),
	datac => \inst127|SHIFT_PB\(0),
	datad => \inst127|SHIFT_PB\(1),
	combout => \inst127|Equal0~0_combout\);

-- Location: FF_X36_Y1_N5
\inst127|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst127|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst127|PB_SIN_REBOTE~q\);

-- Location: IOIBUF_X34_Y0_N1
\Teclados[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Teclados(0),
	o => \Teclados[0]~input_o\);

-- Location: LCCOMB_X35_Y1_N4
\inst133|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst133|SHIFT_PB[3]~0_combout\ = !\Teclados[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Teclados[0]~input_o\,
	combout => \inst133|SHIFT_PB[3]~0_combout\);

-- Location: FF_X35_Y1_N5
\inst133|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst133|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst133|SHIFT_PB\(3));

-- Location: FF_X35_Y1_N19
\inst133|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst133|SHIFT_PB\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst133|SHIFT_PB\(2));

-- Location: LCCOMB_X35_Y1_N28
\inst133|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst133|SHIFT_PB[1]~feeder_combout\ = \inst133|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst133|SHIFT_PB\(2),
	combout => \inst133|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X35_Y1_N29
\inst133|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst133|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst133|SHIFT_PB\(1));

-- Location: LCCOMB_X35_Y1_N22
\inst133|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst133|SHIFT_PB[0]~feeder_combout\ = \inst133|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst133|SHIFT_PB\(1),
	combout => \inst133|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X35_Y1_N23
\inst133|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst133|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst133|SHIFT_PB\(0));

-- Location: LCCOMB_X35_Y1_N12
\inst133|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst133|Equal0~0_combout\ = (\inst133|SHIFT_PB\(0)) # ((\inst133|SHIFT_PB\(1)) # ((\inst133|SHIFT_PB\(3)) # (\inst133|SHIFT_PB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst133|SHIFT_PB\(0),
	datab => \inst133|SHIFT_PB\(1),
	datac => \inst133|SHIFT_PB\(3),
	datad => \inst133|SHIFT_PB\(2),
	combout => \inst133|Equal0~0_combout\);

-- Location: FF_X35_Y1_N13
\inst133|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst133|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst133|PB_SIN_REBOTE~q\);

-- Location: IOIBUF_X34_Y0_N15
\Teclados[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Teclados(1),
	o => \Teclados[1]~input_o\);

-- Location: LCCOMB_X35_Y4_N18
\inst131|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst131|SHIFT_PB[3]~0_combout\ = !\Teclados[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Teclados[1]~input_o\,
	combout => \inst131|SHIFT_PB[3]~0_combout\);

-- Location: FF_X35_Y4_N19
\inst131|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst131|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst131|SHIFT_PB\(3));

-- Location: FF_X35_Y4_N23
\inst131|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst131|SHIFT_PB\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst131|SHIFT_PB\(2));

-- Location: LCCOMB_X35_Y4_N10
\inst131|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst131|SHIFT_PB[1]~feeder_combout\ = \inst131|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst131|SHIFT_PB\(2),
	combout => \inst131|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X35_Y4_N11
\inst131|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst131|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst131|SHIFT_PB\(1));

-- Location: LCCOMB_X35_Y4_N2
\inst131|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst131|SHIFT_PB[0]~feeder_combout\ = \inst131|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst131|SHIFT_PB\(1),
	combout => \inst131|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X35_Y4_N3
\inst131|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst131|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst131|SHIFT_PB\(0));

-- Location: LCCOMB_X35_Y4_N6
\inst131|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst131|Equal0~0_combout\ = (\inst131|SHIFT_PB\(3)) # ((\inst131|SHIFT_PB\(2)) # ((\inst131|SHIFT_PB\(0)) # (\inst131|SHIFT_PB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst131|SHIFT_PB\(3),
	datab => \inst131|SHIFT_PB\(2),
	datac => \inst131|SHIFT_PB\(0),
	datad => \inst131|SHIFT_PB\(1),
	combout => \inst131|Equal0~0_combout\);

-- Location: FF_X35_Y4_N7
\inst131|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst131|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst131|PB_SIN_REBOTE~q\);

-- Location: IOIBUF_X36_Y0_N22
\Teclados[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Teclados(2),
	o => \Teclados[2]~input_o\);

-- Location: LCCOMB_X35_Y4_N28
\inst130|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst130|SHIFT_PB[3]~0_combout\ = !\Teclados[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Teclados[2]~input_o\,
	combout => \inst130|SHIFT_PB[3]~0_combout\);

-- Location: FF_X35_Y4_N29
\inst130|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst130|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst130|SHIFT_PB\(3));

-- Location: LCCOMB_X35_Y4_N8
\inst130|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst130|SHIFT_PB[2]~feeder_combout\ = \inst130|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst130|SHIFT_PB\(3),
	combout => \inst130|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X35_Y4_N9
\inst130|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst130|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst130|SHIFT_PB\(2));

-- Location: FF_X35_Y4_N17
\inst130|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst130|SHIFT_PB\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst130|SHIFT_PB\(1));

-- Location: LCCOMB_X35_Y4_N30
\inst130|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst130|SHIFT_PB[0]~feeder_combout\ = \inst130|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst130|SHIFT_PB\(1),
	combout => \inst130|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X35_Y4_N31
\inst130|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst130|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst130|SHIFT_PB\(0));

-- Location: LCCOMB_X35_Y4_N14
\inst130|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst130|Equal0~0_combout\ = (\inst130|SHIFT_PB\(0)) # ((\inst130|SHIFT_PB\(1)) # ((\inst130|SHIFT_PB\(2)) # (\inst130|SHIFT_PB\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst130|SHIFT_PB\(0),
	datab => \inst130|SHIFT_PB\(1),
	datac => \inst130|SHIFT_PB\(2),
	datad => \inst130|SHIFT_PB\(3),
	combout => \inst130|Equal0~0_combout\);

-- Location: FF_X35_Y4_N15
\inst130|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst130|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst130|PB_SIN_REBOTE~q\);

-- Location: LCCOMB_X36_Y4_N22
\inst2|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal3~0_combout\ = (!\inst127|PB_SIN_REBOTE~q\ & (!\inst133|PB_SIN_REBOTE~q\ & (!\inst131|PB_SIN_REBOTE~q\ & !\inst130|PB_SIN_REBOTE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst127|PB_SIN_REBOTE~q\,
	datab => \inst133|PB_SIN_REBOTE~q\,
	datac => \inst131|PB_SIN_REBOTE~q\,
	datad => \inst130|PB_SIN_REBOTE~q\,
	combout => \inst2|Equal3~0_combout\);

-- Location: IOIBUF_X45_Y0_N15
\Teclados[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Teclados(8),
	o => \Teclados[8]~input_o\);

-- Location: LCCOMB_X37_Y4_N28
\inst67|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|SHIFT_PB[3]~0_combout\ = !\Teclados[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Teclados[8]~input_o\,
	combout => \inst67|SHIFT_PB[3]~0_combout\);

-- Location: FF_X37_Y4_N29
\inst67|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst67|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|SHIFT_PB\(3));

-- Location: LCCOMB_X37_Y4_N10
\inst67|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|SHIFT_PB[2]~feeder_combout\ = \inst67|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst67|SHIFT_PB\(3),
	combout => \inst67|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X37_Y4_N11
\inst67|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst67|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|SHIFT_PB\(2));

-- Location: LCCOMB_X37_Y4_N12
\inst67|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|SHIFT_PB[1]~feeder_combout\ = \inst67|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst67|SHIFT_PB\(2),
	combout => \inst67|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X37_Y4_N13
\inst67|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst67|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|SHIFT_PB\(1));

-- Location: LCCOMB_X37_Y4_N30
\inst67|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|SHIFT_PB[0]~feeder_combout\ = \inst67|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst67|SHIFT_PB\(1),
	combout => \inst67|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X37_Y4_N31
\inst67|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst67|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|SHIFT_PB\(0));

-- Location: LCCOMB_X37_Y4_N0
\inst67|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|Equal0~0_combout\ = (\inst67|SHIFT_PB\(1)) # ((\inst67|SHIFT_PB\(3)) # ((\inst67|SHIFT_PB\(0)) # (\inst67|SHIFT_PB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|SHIFT_PB\(1),
	datab => \inst67|SHIFT_PB\(3),
	datac => \inst67|SHIFT_PB\(0),
	datad => \inst67|SHIFT_PB\(2),
	combout => \inst67|Equal0~0_combout\);

-- Location: FF_X37_Y4_N1
\inst67|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst67|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|PB_SIN_REBOTE~q\);

-- Location: IOIBUF_X27_Y0_N8
\Teclados[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Teclados(9),
	o => \Teclados[9]~input_o\);

-- Location: LCCOMB_X35_Y4_N0
\inst44|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|SHIFT_PB[3]~0_combout\ = !\Teclados[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Teclados[9]~input_o\,
	combout => \inst44|SHIFT_PB[3]~0_combout\);

-- Location: FF_X35_Y4_N1
\inst44|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst44|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|SHIFT_PB\(3));

-- Location: FF_X35_Y4_N25
\inst44|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst44|SHIFT_PB\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|SHIFT_PB\(2));

-- Location: LCCOMB_X35_Y4_N12
\inst44|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|SHIFT_PB[1]~feeder_combout\ = \inst44|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst44|SHIFT_PB\(2),
	combout => \inst44|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X35_Y4_N13
\inst44|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst44|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|SHIFT_PB\(1));

-- Location: FF_X35_Y4_N5
\inst44|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst44|SHIFT_PB\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|SHIFT_PB\(0));

-- Location: LCCOMB_X35_Y4_N26
\inst44|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|Equal0~0_combout\ = (\inst44|SHIFT_PB\(3)) # ((\inst44|SHIFT_PB\(2)) # ((\inst44|SHIFT_PB\(0)) # (\inst44|SHIFT_PB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|SHIFT_PB\(3),
	datab => \inst44|SHIFT_PB\(2),
	datac => \inst44|SHIFT_PB\(0),
	datad => \inst44|SHIFT_PB\(1),
	combout => \inst44|Equal0~0_combout\);

-- Location: FF_X35_Y4_N27
\inst44|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst44|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|PB_SIN_REBOTE~q\);

-- Location: IOIBUF_X40_Y0_N22
\Teclados[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Teclados(5),
	o => \Teclados[5]~input_o\);

-- Location: LCCOMB_X40_Y3_N2
\inst124|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst124|SHIFT_PB[3]~0_combout\ = !\Teclados[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Teclados[5]~input_o\,
	combout => \inst124|SHIFT_PB[3]~0_combout\);

-- Location: FF_X40_Y3_N3
\inst124|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst124|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst124|SHIFT_PB\(3));

-- Location: LCCOMB_X40_Y3_N12
\inst124|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst124|SHIFT_PB[2]~feeder_combout\ = \inst124|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst124|SHIFT_PB\(3),
	combout => \inst124|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X40_Y3_N13
\inst124|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst124|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst124|SHIFT_PB\(2));

-- Location: LCCOMB_X40_Y3_N6
\inst124|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst124|SHIFT_PB[1]~feeder_combout\ = \inst124|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst124|SHIFT_PB\(2),
	combout => \inst124|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X40_Y3_N7
\inst124|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst124|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst124|SHIFT_PB\(1));

-- Location: LCCOMB_X40_Y3_N8
\inst124|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst124|SHIFT_PB[0]~feeder_combout\ = \inst124|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst124|SHIFT_PB\(1),
	combout => \inst124|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X40_Y3_N9
\inst124|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst124|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst124|SHIFT_PB\(0));

-- Location: LCCOMB_X40_Y3_N22
\inst124|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst124|Equal0~0_combout\ = (\inst124|SHIFT_PB\(2)) # ((\inst124|SHIFT_PB\(3)) # ((\inst124|SHIFT_PB\(0)) # (\inst124|SHIFT_PB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst124|SHIFT_PB\(2),
	datab => \inst124|SHIFT_PB\(3),
	datac => \inst124|SHIFT_PB\(0),
	datad => \inst124|SHIFT_PB\(1),
	combout => \inst124|Equal0~0_combout\);

-- Location: FF_X40_Y3_N23
\inst124|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst124|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst124|PB_SIN_REBOTE~q\);

-- Location: LCCOMB_X36_Y4_N8
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (!\inst44|PB_SIN_REBOTE~q\ & !\inst124|PB_SIN_REBOTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst44|PB_SIN_REBOTE~q\,
	datad => \inst124|PB_SIN_REBOTE~q\,
	combout => \inst2|Equal0~1_combout\);

-- Location: IOIBUF_X36_Y0_N8
\Teclados[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Teclados(4),
	o => \Teclados[4]~input_o\);

-- Location: LCCOMB_X36_Y1_N14
\inst125|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst125|SHIFT_PB[3]~0_combout\ = !\Teclados[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Teclados[4]~input_o\,
	combout => \inst125|SHIFT_PB[3]~0_combout\);

-- Location: FF_X36_Y1_N15
\inst125|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst125|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst125|SHIFT_PB\(3));

-- Location: LCCOMB_X37_Y1_N10
\inst125|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst125|SHIFT_PB[2]~feeder_combout\ = \inst125|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst125|SHIFT_PB\(3),
	combout => \inst125|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X37_Y1_N11
\inst125|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst125|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst125|SHIFT_PB\(2));

-- Location: LCCOMB_X37_Y1_N12
\inst125|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst125|SHIFT_PB[1]~feeder_combout\ = \inst125|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst125|SHIFT_PB\(2),
	combout => \inst125|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X37_Y1_N13
\inst125|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst125|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst125|SHIFT_PB\(1));

-- Location: LCCOMB_X37_Y1_N18
\inst125|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst125|SHIFT_PB[0]~feeder_combout\ = \inst125|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst125|SHIFT_PB\(1),
	combout => \inst125|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X37_Y1_N19
\inst125|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst125|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst125|SHIFT_PB\(0));

-- Location: LCCOMB_X37_Y1_N28
\inst125|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst125|Equal0~0_combout\ = (\inst125|SHIFT_PB\(1)) # ((\inst125|SHIFT_PB\(0)) # ((\inst125|SHIFT_PB\(3)) # (\inst125|SHIFT_PB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst125|SHIFT_PB\(1),
	datab => \inst125|SHIFT_PB\(0),
	datac => \inst125|SHIFT_PB\(3),
	datad => \inst125|SHIFT_PB\(2),
	combout => \inst125|Equal0~0_combout\);

-- Location: FF_X37_Y1_N29
\inst125|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst125|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst125|PB_SIN_REBOTE~q\);

-- Location: IOIBUF_X40_Y0_N15
\Teclados[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Teclados(6),
	o => \Teclados[6]~input_o\);

-- Location: LCCOMB_X40_Y3_N24
\inst91|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst91|SHIFT_PB[3]~0_combout\ = !\Teclados[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Teclados[6]~input_o\,
	combout => \inst91|SHIFT_PB[3]~0_combout\);

-- Location: FF_X40_Y3_N25
\inst91|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst91|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst91|SHIFT_PB\(3));

-- Location: LCCOMB_X39_Y3_N10
\inst91|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst91|SHIFT_PB[2]~feeder_combout\ = \inst91|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst91|SHIFT_PB\(3),
	combout => \inst91|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X39_Y3_N11
\inst91|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst91|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst91|SHIFT_PB\(2));

-- Location: LCCOMB_X39_Y3_N12
\inst91|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst91|SHIFT_PB[1]~feeder_combout\ = \inst91|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst91|SHIFT_PB\(2),
	combout => \inst91|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X39_Y3_N13
\inst91|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst91|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst91|SHIFT_PB\(1));

-- Location: LCCOMB_X39_Y3_N30
\inst91|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst91|SHIFT_PB[0]~feeder_combout\ = \inst91|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst91|SHIFT_PB\(1),
	combout => \inst91|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X39_Y3_N31
\inst91|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst91|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst91|SHIFT_PB\(0));

-- Location: LCCOMB_X39_Y3_N0
\inst91|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst91|Equal0~0_combout\ = (\inst91|SHIFT_PB\(1)) # ((\inst91|SHIFT_PB\(3)) # ((\inst91|SHIFT_PB\(0)) # (\inst91|SHIFT_PB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst91|SHIFT_PB\(1),
	datab => \inst91|SHIFT_PB\(3),
	datac => \inst91|SHIFT_PB\(0),
	datad => \inst91|SHIFT_PB\(2),
	combout => \inst91|Equal0~0_combout\);

-- Location: FF_X39_Y3_N1
\inst91|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst91|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst91|PB_SIN_REBOTE~q\);

-- Location: IOIBUF_X45_Y0_N22
\Teclados[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Teclados(7),
	o => \Teclados[7]~input_o\);

-- Location: LCCOMB_X41_Y3_N24
\inst83|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|SHIFT_PB[3]~0_combout\ = !\Teclados[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Teclados[7]~input_o\,
	combout => \inst83|SHIFT_PB[3]~0_combout\);

-- Location: FF_X41_Y3_N25
\inst83|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst83|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|SHIFT_PB\(3));

-- Location: LCCOMB_X40_Y3_N10
\inst83|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|SHIFT_PB[2]~feeder_combout\ = \inst83|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst83|SHIFT_PB\(3),
	combout => \inst83|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X40_Y3_N11
\inst83|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst83|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|SHIFT_PB\(2));

-- Location: LCCOMB_X40_Y3_N20
\inst83|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|SHIFT_PB[1]~feeder_combout\ = \inst83|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst83|SHIFT_PB\(2),
	combout => \inst83|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X40_Y3_N21
\inst83|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst83|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|SHIFT_PB\(1));

-- Location: LCCOMB_X40_Y3_N30
\inst83|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|SHIFT_PB[0]~feeder_combout\ = \inst83|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst83|SHIFT_PB\(1),
	combout => \inst83|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X40_Y3_N31
\inst83|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst83|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|SHIFT_PB\(0));

-- Location: LCCOMB_X40_Y3_N0
\inst83|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|Equal0~0_combout\ = (\inst83|SHIFT_PB\(2)) # ((\inst83|SHIFT_PB\(1)) # ((\inst83|SHIFT_PB\(0)) # (\inst83|SHIFT_PB\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst83|SHIFT_PB\(2),
	datab => \inst83|SHIFT_PB\(1),
	datac => \inst83|SHIFT_PB\(0),
	datad => \inst83|SHIFT_PB\(3),
	combout => \inst83|Equal0~0_combout\);

-- Location: FF_X40_Y3_N1
\inst83|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst83|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|PB_SIN_REBOTE~q\);

-- Location: LCCOMB_X36_Y4_N20
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst125|PB_SIN_REBOTE~q\ & (!\inst91|PB_SIN_REBOTE~q\ & !\inst83|PB_SIN_REBOTE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst125|PB_SIN_REBOTE~q\,
	datac => \inst91|PB_SIN_REBOTE~q\,
	datad => \inst83|PB_SIN_REBOTE~q\,
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y4_N14
inst256 : cycloneive_lcell_comb
-- Equation(s):
-- \inst256~combout\ = ((\inst67|PB_SIN_REBOTE~q\) # ((!\inst2|Equal0~0_combout\) # (!\inst2|Equal0~1_combout\))) # (!\inst2|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal3~0_combout\,
	datab => \inst67|PB_SIN_REBOTE~q\,
	datac => \inst2|Equal0~1_combout\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst256~combout\);

-- Location: IOIBUF_X47_Y0_N22
\Consultar_Mejores_Puntuaciones~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Consultar_Mejores_Puntuaciones,
	o => \Consultar_Mejores_Puntuaciones~input_o\);

-- Location: LCCOMB_X44_Y23_N16
\inst141|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst141|SHIFT_PB[3]~0_combout\ = !\Consultar_Mejores_Puntuaciones~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Consultar_Mejores_Puntuaciones~input_o\,
	combout => \inst141|SHIFT_PB[3]~0_combout\);

-- Location: FF_X44_Y23_N17
\inst141|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst141|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst141|SHIFT_PB\(3));

-- Location: LCCOMB_X44_Y23_N18
\inst141|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst141|SHIFT_PB[2]~feeder_combout\ = \inst141|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst141|SHIFT_PB\(3),
	combout => \inst141|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X44_Y23_N19
\inst141|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst141|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst141|SHIFT_PB\(2));

-- Location: LCCOMB_X44_Y23_N28
\inst141|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst141|SHIFT_PB[1]~feeder_combout\ = \inst141|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst141|SHIFT_PB\(2),
	combout => \inst141|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X44_Y23_N29
\inst141|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst141|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst141|SHIFT_PB\(1));

-- Location: LCCOMB_X44_Y23_N30
\inst141|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst141|SHIFT_PB[0]~feeder_combout\ = \inst141|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst141|SHIFT_PB\(1),
	combout => \inst141|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X44_Y23_N31
\inst141|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst141|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst141|SHIFT_PB\(0));

-- Location: LCCOMB_X44_Y23_N0
\inst141|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst141|Equal0~0_combout\ = (\inst141|SHIFT_PB\(3)) # ((\inst141|SHIFT_PB\(2)) # ((\inst141|SHIFT_PB\(0)) # (\inst141|SHIFT_PB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst141|SHIFT_PB\(3),
	datab => \inst141|SHIFT_PB\(2),
	datac => \inst141|SHIFT_PB\(0),
	datad => \inst141|SHIFT_PB\(1),
	combout => \inst141|Equal0~0_combout\);

-- Location: FF_X44_Y23_N1
\inst141|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst141|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst141|PB_SIN_REBOTE~q\);

-- Location: IOIBUF_X34_Y0_N22
\Salir~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Salir,
	o => \Salir~input_o\);

-- Location: LCCOMB_X31_Y24_N0
\inst139|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst139|SHIFT_PB[3]~0_combout\ = !\Salir~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Salir~input_o\,
	combout => \inst139|SHIFT_PB[3]~0_combout\);

-- Location: FF_X31_Y24_N1
\inst139|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst139|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst139|SHIFT_PB\(3));

-- Location: LCCOMB_X31_Y24_N10
\inst139|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst139|SHIFT_PB[2]~feeder_combout\ = \inst139|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst139|SHIFT_PB\(3),
	combout => \inst139|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X31_Y24_N11
\inst139|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst139|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst139|SHIFT_PB\(2));

-- Location: LCCOMB_X31_Y24_N16
\inst139|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst139|SHIFT_PB[1]~feeder_combout\ = \inst139|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst139|SHIFT_PB\(2),
	combout => \inst139|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X31_Y24_N17
\inst139|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst139|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst139|SHIFT_PB\(1));

-- Location: LCCOMB_X31_Y24_N30
\inst139|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst139|SHIFT_PB[0]~feeder_combout\ = \inst139|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst139|SHIFT_PB\(1),
	combout => \inst139|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X31_Y24_N31
\inst139|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst139|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst139|SHIFT_PB\(0));

-- Location: LCCOMB_X31_Y24_N12
\inst139|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst139|Equal0~0_combout\ = (\inst139|SHIFT_PB\(2)) # ((\inst139|SHIFT_PB\(1)) # ((\inst139|SHIFT_PB\(0)) # (\inst139|SHIFT_PB\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst139|SHIFT_PB\(2),
	datab => \inst139|SHIFT_PB\(1),
	datac => \inst139|SHIFT_PB\(0),
	datad => \inst139|SHIFT_PB\(3),
	combout => \inst139|Equal0~0_combout\);

-- Location: FF_X31_Y24_N13
\inst139|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst139|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst139|PB_SIN_REBOTE~q\);

-- Location: IOIBUF_X38_Y0_N8
\Consultar_Saldo~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Consultar_Saldo,
	o => \Consultar_Saldo~input_o\);

-- Location: LCCOMB_X44_Y24_N16
\inst140|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst140|SHIFT_PB[3]~0_combout\ = !\Consultar_Saldo~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Consultar_Saldo~input_o\,
	combout => \inst140|SHIFT_PB[3]~0_combout\);

-- Location: FF_X44_Y24_N17
\inst140|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst140|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst140|SHIFT_PB\(3));

-- Location: LCCOMB_X44_Y24_N18
\inst140|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst140|SHIFT_PB[2]~feeder_combout\ = \inst140|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst140|SHIFT_PB\(3),
	combout => \inst140|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X44_Y24_N19
\inst140|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst140|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst140|SHIFT_PB\(2));

-- Location: LCCOMB_X44_Y24_N28
\inst140|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst140|SHIFT_PB[1]~feeder_combout\ = \inst140|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst140|SHIFT_PB\(2),
	combout => \inst140|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X44_Y24_N29
\inst140|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst140|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst140|SHIFT_PB\(1));

-- Location: LCCOMB_X44_Y24_N30
\inst140|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst140|SHIFT_PB[0]~feeder_combout\ = \inst140|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst140|SHIFT_PB\(1),
	combout => \inst140|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X44_Y24_N31
\inst140|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst140|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst140|SHIFT_PB\(0));

-- Location: LCCOMB_X44_Y24_N10
\inst140|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst140|Equal0~0_combout\ = (\inst140|SHIFT_PB\(2)) # ((\inst140|SHIFT_PB\(3)) # ((\inst140|SHIFT_PB\(0)) # (\inst140|SHIFT_PB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst140|SHIFT_PB\(2),
	datab => \inst140|SHIFT_PB\(3),
	datac => \inst140|SHIFT_PB\(0),
	datad => \inst140|SHIFT_PB\(1),
	combout => \inst140|Equal0~0_combout\);

-- Location: FF_X44_Y24_N11
\inst140|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst140|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst140|PB_SIN_REBOTE~q\);

-- Location: LCCOMB_X40_Y26_N0
\inst|y~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~142_combout\ = (\inst256~combout\) # ((\inst141|PB_SIN_REBOTE~q\) # ((\inst139|PB_SIN_REBOTE~q\) # (\inst140|PB_SIN_REBOTE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst256~combout\,
	datab => \inst141|PB_SIN_REBOTE~q\,
	datac => \inst139|PB_SIN_REBOTE~q\,
	datad => \inst140|PB_SIN_REBOTE~q\,
	combout => \inst|y~142_combout\);

-- Location: LCCOMB_X40_Y26_N20
\inst|y~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~143_combout\ = (\inst256~combout\ & (!\inst141|PB_SIN_REBOTE~q\ & (!\inst139|PB_SIN_REBOTE~q\ & !\inst140|PB_SIN_REBOTE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst256~combout\,
	datab => \inst141|PB_SIN_REBOTE~q\,
	datac => \inst139|PB_SIN_REBOTE~q\,
	datad => \inst140|PB_SIN_REBOTE~q\,
	combout => \inst|y~143_combout\);

-- Location: LCCOMB_X36_Y4_N24
\inst2|WideOr1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr1~7_combout\ = (\inst127|PB_SIN_REBOTE~q\ & (!\inst83|PB_SIN_REBOTE~q\ & (!\inst91|PB_SIN_REBOTE~q\ & !\inst130|PB_SIN_REBOTE~q\))) # (!\inst127|PB_SIN_REBOTE~q\ & ((\inst83|PB_SIN_REBOTE~q\ & (!\inst91|PB_SIN_REBOTE~q\ & 
-- !\inst130|PB_SIN_REBOTE~q\)) # (!\inst83|PB_SIN_REBOTE~q\ & (\inst91|PB_SIN_REBOTE~q\ $ (\inst130|PB_SIN_REBOTE~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst127|PB_SIN_REBOTE~q\,
	datab => \inst83|PB_SIN_REBOTE~q\,
	datac => \inst91|PB_SIN_REBOTE~q\,
	datad => \inst130|PB_SIN_REBOTE~q\,
	combout => \inst2|WideOr1~7_combout\);

-- Location: LCCOMB_X36_Y4_N10
\inst2|WideOr1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr1~3_combout\ = (!\inst124|PB_SIN_REBOTE~q\ & (!\inst125|PB_SIN_REBOTE~q\ & (!\inst44|PB_SIN_REBOTE~q\ & \inst2|WideOr1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst124|PB_SIN_REBOTE~q\,
	datab => \inst125|PB_SIN_REBOTE~q\,
	datac => \inst44|PB_SIN_REBOTE~q\,
	datad => \inst2|WideOr1~7_combout\,
	combout => \inst2|WideOr1~3_combout\);

-- Location: LCCOMB_X36_Y4_N0
\inst2|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr1~combout\ = (!\inst67|PB_SIN_REBOTE~q\ & (!\inst133|PB_SIN_REBOTE~q\ & (!\inst131|PB_SIN_REBOTE~q\ & \inst2|WideOr1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|PB_SIN_REBOTE~q\,
	datab => \inst133|PB_SIN_REBOTE~q\,
	datac => \inst131|PB_SIN_REBOTE~q\,
	datad => \inst2|WideOr1~3_combout\,
	combout => \inst2|WideOr1~combout\);

-- Location: IOIBUF_X53_Y21_N22
\Reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: LCCOMB_X52_Y17_N28
\inst136|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst136|SHIFT_PB[3]~0_combout\ = !\Reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reset~input_o\,
	combout => \inst136|SHIFT_PB[3]~0_combout\);

-- Location: FF_X52_Y17_N29
\inst136|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst136|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst136|SHIFT_PB\(3));

-- Location: LCCOMB_X52_Y17_N10
\inst136|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst136|SHIFT_PB[2]~feeder_combout\ = \inst136|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst136|SHIFT_PB\(3),
	combout => \inst136|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X52_Y17_N11
\inst136|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst136|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst136|SHIFT_PB\(2));

-- Location: LCCOMB_X52_Y17_N12
\inst136|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst136|SHIFT_PB[1]~feeder_combout\ = \inst136|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst136|SHIFT_PB\(2),
	combout => \inst136|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X52_Y17_N13
\inst136|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst136|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst136|SHIFT_PB\(1));

-- Location: LCCOMB_X52_Y17_N30
\inst136|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst136|SHIFT_PB[0]~feeder_combout\ = \inst136|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst136|SHIFT_PB\(1),
	combout => \inst136|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X52_Y17_N31
\inst136|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst136|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst136|SHIFT_PB\(0));

-- Location: LCCOMB_X52_Y17_N16
\inst136|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst136|Equal0~0_combout\ = (\inst136|SHIFT_PB\(1)) # ((\inst136|SHIFT_PB\(2)) # ((\inst136|SHIFT_PB\(0)) # (\inst136|SHIFT_PB\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst136|SHIFT_PB\(1),
	datab => \inst136|SHIFT_PB\(2),
	datac => \inst136|SHIFT_PB\(0),
	datad => \inst136|SHIFT_PB\(3),
	combout => \inst136|Equal0~0_combout\);

-- Location: FF_X52_Y17_N17
\inst136|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst136|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst136|PB_SIN_REBOTE~q\);

-- Location: CLKCTRL_G5
\inst136|PB_SIN_REBOTE~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst136|PB_SIN_REBOTE~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst136|PB_SIN_REBOTE~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y25_N4
\inst|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector43~0_combout\ = (\inst140|PB_SIN_REBOTE~q\ & ((\inst|y.T44~q\) # ((\inst|y.T41~q\ & !\inst139|PB_SIN_REBOTE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T41~q\,
	datab => \inst139|PB_SIN_REBOTE~q\,
	datac => \inst|y.T44~q\,
	datad => \inst140|PB_SIN_REBOTE~q\,
	combout => \inst|Selector43~0_combout\);

-- Location: FF_X38_Y25_N5
\inst|y.T44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector43~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T44~q\);

-- Location: LCCOMB_X38_Y25_N14
\inst|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector40~0_combout\ = (\inst|y.T44~q\ & !\inst140|PB_SIN_REBOTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.T44~q\,
	datad => \inst140|PB_SIN_REBOTE~q\,
	combout => \inst|Selector40~0_combout\);

-- Location: LCCOMB_X40_Y26_N26
\inst|y~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~144_combout\ = (\inst141|PB_SIN_REBOTE~q\ & (!\inst139|PB_SIN_REBOTE~q\ & !\inst140|PB_SIN_REBOTE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst141|PB_SIN_REBOTE~q\,
	datac => \inst139|PB_SIN_REBOTE~q\,
	datad => \inst140|PB_SIN_REBOTE~q\,
	combout => \inst|y~144_combout\);

-- Location: LCCOMB_X38_Y24_N2
\inst|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector44~0_combout\ = (\inst|y.T41~q\ & ((\inst|y~144_combout\) # ((\inst141|PB_SIN_REBOTE~q\ & \inst|y.T45~q\)))) # (!\inst|y.T41~q\ & (\inst141|PB_SIN_REBOTE~q\ & (\inst|y.T45~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T41~q\,
	datab => \inst141|PB_SIN_REBOTE~q\,
	datac => \inst|y.T45~q\,
	datad => \inst|y~144_combout\,
	combout => \inst|Selector44~0_combout\);

-- Location: FF_X38_Y24_N3
\inst|y.T45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector44~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T45~q\);

-- Location: CLKCTRL_G4
\inst149|clock_100hz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst149|clock_100hz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst149|clock_100hz_int~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y33_N26
\inst149|count_10hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_10hz~0_combout\ = (!\inst149|count_10hz\(0) & ((\inst149|count_10hz\(1)) # (!\inst149|count_10hz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst149|count_10hz\(1),
	datac => \inst149|count_10hz\(0),
	datad => \inst149|count_10hz\(2),
	combout => \inst149|count_10hz~0_combout\);

-- Location: FF_X24_Y33_N27
\inst149|count_10hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_100hz_int~clkctrl_outclk\,
	d => \inst149|count_10hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_10hz\(0));

-- Location: LCCOMB_X24_Y33_N18
\inst149|count_10hz[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_10hz[1]~1_combout\ = \inst149|count_10hz\(1) $ (\inst149|count_10hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst149|count_10hz\(1),
	datad => \inst149|count_10hz\(0),
	combout => \inst149|count_10hz[1]~1_combout\);

-- Location: FF_X24_Y33_N19
\inst149|count_10hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_100hz_int~clkctrl_outclk\,
	d => \inst149|count_10hz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_10hz\(1));

-- Location: LCCOMB_X24_Y33_N30
\inst149|count_10hz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_10hz~2_combout\ = (\inst149|count_10hz\(1) & (\inst149|count_10hz\(2) $ (\inst149|count_10hz\(0)))) # (!\inst149|count_10hz\(1) & (\inst149|count_10hz\(2) & \inst149|count_10hz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst149|count_10hz\(1),
	datac => \inst149|count_10hz\(2),
	datad => \inst149|count_10hz\(0),
	combout => \inst149|count_10hz~2_combout\);

-- Location: FF_X24_Y33_N31
\inst149|count_10hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_100hz_int~clkctrl_outclk\,
	d => \inst149|count_10hz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_10hz\(2));

-- Location: LCCOMB_X24_Y33_N20
\inst149|clock_10hz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|clock_10hz_int~0_combout\ = \inst149|clock_10hz_int~q\ $ (((\inst149|count_10hz\(2) & (!\inst149|count_10hz\(0) & !\inst149|count_10hz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst149|count_10hz\(2),
	datab => \inst149|clock_10hz_int~q\,
	datac => \inst149|count_10hz\(0),
	datad => \inst149|count_10hz\(1),
	combout => \inst149|clock_10hz_int~0_combout\);

-- Location: LCCOMB_X24_Y33_N24
\inst149|clock_10hz_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|clock_10hz_int~feeder_combout\ = \inst149|clock_10hz_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst149|clock_10hz_int~0_combout\,
	combout => \inst149|clock_10hz_int~feeder_combout\);

-- Location: FF_X24_Y33_N25
\inst149|clock_10hz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_100hz_int~clkctrl_outclk\,
	d => \inst149|clock_10hz_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|clock_10hz_int~q\);

-- Location: CLKCTRL_G13
\inst149|clock_10hz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst149|clock_10hz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst149|clock_10hz_int~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y33_N24
\inst149|count_1hz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_1hz~1_combout\ = (!\inst149|count_1hz\(0) & ((\inst149|count_1hz\(1)) # (!\inst149|count_1hz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst149|count_1hz\(2),
	datac => \inst149|count_1hz\(0),
	datad => \inst149|count_1hz\(1),
	combout => \inst149|count_1hz~1_combout\);

-- Location: FF_X25_Y33_N25
\inst149|count_1hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_10hz_int~clkctrl_outclk\,
	d => \inst149|count_1hz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_1hz\(0));

-- Location: LCCOMB_X25_Y33_N20
\inst149|count_1hz[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_1hz[1]~0_combout\ = \inst149|count_1hz\(1) $ (\inst149|count_1hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst149|count_1hz\(1),
	datad => \inst149|count_1hz\(0),
	combout => \inst149|count_1hz[1]~0_combout\);

-- Location: FF_X25_Y33_N21
\inst149|count_1hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_10hz_int~clkctrl_outclk\,
	d => \inst149|count_1hz[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_1hz\(1));

-- Location: LCCOMB_X25_Y33_N26
\inst149|count_1hz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|count_1hz~2_combout\ = (\inst149|count_1hz\(1) & (\inst149|count_1hz\(2) $ (\inst149|count_1hz\(0)))) # (!\inst149|count_1hz\(1) & (\inst149|count_1hz\(2) & \inst149|count_1hz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst149|count_1hz\(1),
	datac => \inst149|count_1hz\(2),
	datad => \inst149|count_1hz\(0),
	combout => \inst149|count_1hz~2_combout\);

-- Location: FF_X25_Y33_N27
\inst149|count_1hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_10hz_int~clkctrl_outclk\,
	d => \inst149|count_1hz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|count_1hz\(2));

-- Location: LCCOMB_X25_Y33_N18
\inst149|clock_1hz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|clock_1hz_int~0_combout\ = \inst149|clock_1hz_int~q\ $ (((\inst149|count_1hz\(2) & (!\inst149|count_1hz\(0) & !\inst149|count_1hz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst149|count_1hz\(2),
	datab => \inst149|count_1hz\(0),
	datac => \inst149|clock_1hz_int~q\,
	datad => \inst149|count_1hz\(1),
	combout => \inst149|clock_1hz_int~0_combout\);

-- Location: LCCOMB_X25_Y33_N28
\inst149|clock_1hz_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|clock_1hz_int~feeder_combout\ = \inst149|clock_1hz_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst149|clock_1hz_int~0_combout\,
	combout => \inst149|clock_1hz_int~feeder_combout\);

-- Location: FF_X25_Y33_N29
\inst149|clock_1hz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|clock_10hz_int~clkctrl_outclk\,
	d => \inst149|clock_1hz_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|clock_1hz_int~q\);

-- Location: LCCOMB_X25_Y33_N12
\inst149|CLOCK_1Hz~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|CLOCK_1Hz~feeder_combout\ = \inst149|clock_1hz_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst149|clock_1hz_int~q\,
	combout => \inst149|CLOCK_1Hz~feeder_combout\);

-- Location: FF_X25_Y33_N13
\inst149|CLOCK_1Hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst149|CLOCK_1Hz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|CLOCK_1Hz~q\);

-- Location: CLKCTRL_G14
\inst149|CLOCK_1Hz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst149|CLOCK_1Hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst149|CLOCK_1Hz~clkctrl_outclk\);

-- Location: LCCOMB_X39_Y25_N20
\inst|Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector47~0_combout\ = (!\inst256~combout\ & \inst|y.T46~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst256~combout\,
	datad => \inst|y.T46~q\,
	combout => \inst|Selector47~0_combout\);

-- Location: FF_X39_Y25_N21
\inst|y.T48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector47~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T48~q\);

-- Location: LCCOMB_X39_Y25_N8
\inst|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector18~0_combout\ = (\inst|y~143_combout\ & ((\inst|y.T16~q\) # ((\inst|y.T19~q\ & \inst256~combout\)))) # (!\inst|y~143_combout\ & (((\inst|y.T19~q\ & \inst256~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y~143_combout\,
	datab => \inst|y.T16~q\,
	datac => \inst|y.T19~q\,
	datad => \inst256~combout\,
	combout => \inst|Selector18~0_combout\);

-- Location: FF_X39_Y25_N9
\inst|y.T19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector18~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T19~q\);

-- Location: LCCOMB_X39_Y25_N22
\inst|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector20~0_combout\ = (\inst|y.T19~q\ & !\inst256~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.T19~q\,
	datad => \inst256~combout\,
	combout => \inst|Selector20~0_combout\);

-- Location: IOIBUF_X29_Y0_N1
\Continuar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Continuar,
	o => \Continuar~input_o\);

-- Location: LCCOMB_X41_Y25_N0
\inst142|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst142|SHIFT_PB[3]~0_combout\ = !\Continuar~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Continuar~input_o\,
	combout => \inst142|SHIFT_PB[3]~0_combout\);

-- Location: FF_X41_Y25_N1
\inst142|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst142|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst142|SHIFT_PB\(3));

-- Location: LCCOMB_X41_Y25_N10
\inst142|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst142|SHIFT_PB[2]~feeder_combout\ = \inst142|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst142|SHIFT_PB\(3),
	combout => \inst142|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X41_Y25_N11
\inst142|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst142|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst142|SHIFT_PB\(2));

-- Location: LCCOMB_X41_Y25_N24
\inst142|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst142|SHIFT_PB[1]~feeder_combout\ = \inst142|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst142|SHIFT_PB\(2),
	combout => \inst142|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X41_Y25_N25
\inst142|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst142|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst142|SHIFT_PB\(1));

-- Location: LCCOMB_X41_Y25_N22
\inst142|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst142|SHIFT_PB[0]~feeder_combout\ = \inst142|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst142|SHIFT_PB\(1),
	combout => \inst142|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X41_Y25_N23
\inst142|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst142|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst142|SHIFT_PB\(0));

-- Location: LCCOMB_X41_Y25_N2
\inst142|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst142|Equal0~0_combout\ = (\inst142|SHIFT_PB\(2)) # ((\inst142|SHIFT_PB\(3)) # ((\inst142|SHIFT_PB\(0)) # (\inst142|SHIFT_PB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst142|SHIFT_PB\(2),
	datab => \inst142|SHIFT_PB\(3),
	datac => \inst142|SHIFT_PB\(0),
	datad => \inst142|SHIFT_PB\(1),
	combout => \inst142|Equal0~0_combout\);

-- Location: FF_X41_Y25_N3
\inst142|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst142|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst142|PB_SIN_REBOTE~q\);

-- Location: FF_X39_Y25_N23
\inst|y.T21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector20~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T21~q\);

-- Location: LCCOMB_X41_Y25_N18
\inst|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector21~0_combout\ = (\inst|y.T21~q\) # ((!\inst31~2_combout\ & (!\inst142|PB_SIN_REBOTE~q\ & \inst|y.T22~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31~2_combout\,
	datab => \inst142|PB_SIN_REBOTE~q\,
	datac => \inst|y.T22~q\,
	datad => \inst|y.T21~q\,
	combout => \inst|Selector21~0_combout\);

-- Location: FF_X41_Y25_N19
\inst|y.T22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector21~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T22~q\);

-- Location: LCCOMB_X41_Y25_N16
\inst|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector22~0_combout\ = (\inst142|PB_SIN_REBOTE~q\ & (!\inst31~2_combout\ & \inst|y.T22~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst142|PB_SIN_REBOTE~q\,
	datac => \inst31~2_combout\,
	datad => \inst|y.T22~q\,
	combout => \inst|Selector22~0_combout\);

-- Location: FF_X39_Y25_N19
\inst|y.T33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector32~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T33~q\);

-- Location: LCCOMB_X36_Y4_N30
\inst2|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal7~0_combout\ = (!\inst44|PB_SIN_REBOTE~q\ & (\inst2|Equal0~0_combout\ & (!\inst67|PB_SIN_REBOTE~q\ & !\inst124|PB_SIN_REBOTE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|PB_SIN_REBOTE~q\,
	datab => \inst2|Equal0~0_combout\,
	datac => \inst67|PB_SIN_REBOTE~q\,
	datad => \inst124|PB_SIN_REBOTE~q\,
	combout => \inst2|Equal7~0_combout\);

-- Location: LCCOMB_X36_Y4_N16
\inst2|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal3~1_combout\ = (!\inst130|PB_SIN_REBOTE~q\ & !\inst127|PB_SIN_REBOTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst130|PB_SIN_REBOTE~q\,
	datad => \inst127|PB_SIN_REBOTE~q\,
	combout => \inst2|Equal3~1_combout\);

-- Location: LCCOMB_X36_Y4_N28
\inst2|BCD[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|BCD\(3) = (\inst2|Equal7~0_combout\ & (\inst2|Equal3~1_combout\ & (\inst131|PB_SIN_REBOTE~q\ $ (\inst133|PB_SIN_REBOTE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal7~0_combout\,
	datab => \inst131|PB_SIN_REBOTE~q\,
	datac => \inst133|PB_SIN_REBOTE~q\,
	datad => \inst2|Equal3~1_combout\,
	combout => \inst2|BCD\(3));

-- Location: FF_X36_Y4_N29
\inst3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst2|BCD\(3),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|Selector70~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Q\(3));

-- Location: LCCOMB_X36_Y4_N12
\inst2|WideOr0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr0~7_combout\ = (\inst124|PB_SIN_REBOTE~q\ & (!\inst125|PB_SIN_REBOTE~q\ & (!\inst130|PB_SIN_REBOTE~q\ & !\inst127|PB_SIN_REBOTE~q\))) # (!\inst124|PB_SIN_REBOTE~q\ & ((\inst125|PB_SIN_REBOTE~q\ & (!\inst130|PB_SIN_REBOTE~q\ & 
-- !\inst127|PB_SIN_REBOTE~q\)) # (!\inst125|PB_SIN_REBOTE~q\ & (\inst130|PB_SIN_REBOTE~q\ $ (\inst127|PB_SIN_REBOTE~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst124|PB_SIN_REBOTE~q\,
	datab => \inst125|PB_SIN_REBOTE~q\,
	datac => \inst130|PB_SIN_REBOTE~q\,
	datad => \inst127|PB_SIN_REBOTE~q\,
	combout => \inst2|WideOr0~7_combout\);

-- Location: LCCOMB_X36_Y4_N18
\inst2|WideOr0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr0~3_combout\ = (!\inst44|PB_SIN_REBOTE~q\ & (!\inst83|PB_SIN_REBOTE~q\ & (!\inst67|PB_SIN_REBOTE~q\ & \inst2|WideOr0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|PB_SIN_REBOTE~q\,
	datab => \inst83|PB_SIN_REBOTE~q\,
	datac => \inst67|PB_SIN_REBOTE~q\,
	datad => \inst2|WideOr0~7_combout\,
	combout => \inst2|WideOr0~3_combout\);

-- Location: LCCOMB_X36_Y4_N26
\inst2|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr0~combout\ = (!\inst91|PB_SIN_REBOTE~q\ & (!\inst133|PB_SIN_REBOTE~q\ & (!\inst131|PB_SIN_REBOTE~q\ & \inst2|WideOr0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst91|PB_SIN_REBOTE~q\,
	datab => \inst133|PB_SIN_REBOTE~q\,
	datac => \inst131|PB_SIN_REBOTE~q\,
	datad => \inst2|WideOr0~3_combout\,
	combout => \inst2|WideOr0~combout\);

-- Location: FF_X36_Y4_N27
\inst3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst2|WideOr0~combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|Selector70~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Q\(2));

-- Location: LCCOMB_X36_Y4_N6
\inst2|WideOr2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr2~8_combout\ = (!\inst91|PB_SIN_REBOTE~q\ & (!\inst125|PB_SIN_REBOTE~q\ & (!\inst133|PB_SIN_REBOTE~q\ & !\inst130|PB_SIN_REBOTE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst91|PB_SIN_REBOTE~q\,
	datab => \inst125|PB_SIN_REBOTE~q\,
	datac => \inst133|PB_SIN_REBOTE~q\,
	datad => \inst130|PB_SIN_REBOTE~q\,
	combout => \inst2|WideOr2~8_combout\);

-- Location: LCCOMB_X36_Y4_N4
\inst2|WideOr2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr2~7_combout\ = (\inst91|PB_SIN_REBOTE~q\ & (!\inst125|PB_SIN_REBOTE~q\ & (!\inst133|PB_SIN_REBOTE~q\ & !\inst130|PB_SIN_REBOTE~q\))) # (!\inst91|PB_SIN_REBOTE~q\ & ((\inst125|PB_SIN_REBOTE~q\ & (!\inst133|PB_SIN_REBOTE~q\ & 
-- !\inst130|PB_SIN_REBOTE~q\)) # (!\inst125|PB_SIN_REBOTE~q\ & (\inst133|PB_SIN_REBOTE~q\ $ (\inst130|PB_SIN_REBOTE~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst91|PB_SIN_REBOTE~q\,
	datab => \inst125|PB_SIN_REBOTE~q\,
	datac => \inst133|PB_SIN_REBOTE~q\,
	datad => \inst130|PB_SIN_REBOTE~q\,
	combout => \inst2|WideOr2~7_combout\);

-- Location: LCCOMB_X35_Y4_N20
\inst2|WideOr2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr2~6_combout\ = (\inst67|PB_SIN_REBOTE~q\ & (\inst2|WideOr2~8_combout\)) # (!\inst67|PB_SIN_REBOTE~q\ & ((\inst2|WideOr2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideOr2~8_combout\,
	datac => \inst67|PB_SIN_REBOTE~q\,
	datad => \inst2|WideOr2~7_combout\,
	combout => \inst2|WideOr2~6_combout\);

-- Location: LCCOMB_X35_Y4_N16
\inst2|WideOr2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr2~3_combout\ = (\inst2|WideOr2~6_combout\ & (!\inst44|PB_SIN_REBOTE~q\ & !\inst131|PB_SIN_REBOTE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideOr2~6_combout\,
	datab => \inst44|PB_SIN_REBOTE~q\,
	datad => \inst131|PB_SIN_REBOTE~q\,
	combout => \inst2|WideOr2~3_combout\);

-- Location: LCCOMB_X36_Y4_N2
\inst2|WideOr2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr2~15_combout\ = (!\inst124|PB_SIN_REBOTE~q\ & (!\inst83|PB_SIN_REBOTE~q\ & (\inst2|WideOr2~3_combout\ & !\inst127|PB_SIN_REBOTE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst124|PB_SIN_REBOTE~q\,
	datab => \inst83|PB_SIN_REBOTE~q\,
	datac => \inst2|WideOr2~3_combout\,
	datad => \inst127|PB_SIN_REBOTE~q\,
	combout => \inst2|WideOr2~15_combout\);

-- Location: FF_X36_Y4_N3
\inst3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst2|WideOr2~15_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|Selector70~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Q\(0));

-- Location: IOIBUF_X27_Y0_N1
\Start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

-- Location: LCCOMB_X31_Y21_N16
\inst138|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst138|SHIFT_PB[3]~0_combout\ = !\Start~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Start~input_o\,
	combout => \inst138|SHIFT_PB[3]~0_combout\);

-- Location: FF_X31_Y21_N17
\inst138|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst138|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst138|SHIFT_PB\(3));

-- Location: FF_X32_Y21_N29
\inst138|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst138|SHIFT_PB\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst138|SHIFT_PB\(2));

-- Location: LCCOMB_X32_Y21_N18
\inst138|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst138|SHIFT_PB[1]~feeder_combout\ = \inst138|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst138|SHIFT_PB\(2),
	combout => \inst138|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X32_Y21_N19
\inst138|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst138|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst138|SHIFT_PB\(1));

-- Location: LCCOMB_X32_Y21_N12
\inst138|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst138|SHIFT_PB[0]~feeder_combout\ = \inst138|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst138|SHIFT_PB\(1),
	combout => \inst138|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X32_Y21_N13
\inst138|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst138|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst138|SHIFT_PB\(0));

-- Location: LCCOMB_X32_Y21_N0
\inst138|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst138|Equal0~0_combout\ = (\inst138|SHIFT_PB\(0)) # ((\inst138|SHIFT_PB\(1)) # ((\inst138|SHIFT_PB\(3)) # (\inst138|SHIFT_PB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst138|SHIFT_PB\(0),
	datab => \inst138|SHIFT_PB\(1),
	datac => \inst138|SHIFT_PB\(3),
	datad => \inst138|SHIFT_PB\(2),
	combout => \inst138|Equal0~0_combout\);

-- Location: FF_X32_Y21_N1
\inst138|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst138|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst138|PB_SIN_REBOTE~q\);

-- Location: LCCOMB_X41_Y25_N30
\inst|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector34~0_combout\ = (\inst|y.T34~q\ & (\inst45~2_combout\ & \inst142|PB_SIN_REBOTE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.T34~q\,
	datac => \inst45~2_combout\,
	datad => \inst142|PB_SIN_REBOTE~q\,
	combout => \inst|Selector34~0_combout\);

-- Location: FF_X41_Y25_N31
\inst|y.T35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector34~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T35~q\);

-- Location: LCCOMB_X39_Y24_N22
\inst68|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst68|Q~4_combout\ = (\inst|y.T3~q\) # ((\inst|y.T35~q\) # (!\inst68|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T3~q\,
	datac => \inst68|Q\(0),
	datad => \inst|y.T35~q\,
	combout => \inst68|Q~4_combout\);

-- Location: LCCOMB_X26_Y1_N26
\inst149|CLOCK_1MHz~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst149|CLOCK_1MHz~feeder_combout\ = \inst149|clock_1Mhz_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst149|clock_1Mhz_int~q\,
	combout => \inst149|CLOCK_1MHz~feeder_combout\);

-- Location: FF_X26_Y1_N27
\inst149|CLOCK_1MHz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst149|CLOCK_1MHz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst149|CLOCK_1MHz~q\);

-- Location: CLKCTRL_G16
\inst149|CLOCK_1MHz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst149|CLOCK_1MHz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst149|CLOCK_1MHz~clkctrl_outclk\);

-- Location: LCCOMB_X40_Y22_N12
\inst62|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst62|Q~0_combout\ = \inst62|Q\(2) $ (((\inst62|Q\(0) & \inst62|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst62|Q\(0),
	datac => \inst62|Q\(1),
	datad => \inst62|Q\(2),
	combout => \inst62|Q~0_combout\);

-- Location: FF_X40_Y22_N23
\inst62|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_1MHz~clkctrl_outclk\,
	asdata => \inst62|Q~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst62|Q\(2));

-- Location: LCCOMB_X40_Y22_N20
\inst62|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst62|Q~2_combout\ = \inst62|Q\(3) $ (((\inst62|Q\(1) & (\inst62|Q\(0) & \inst62|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst62|Q\(3),
	datab => \inst62|Q\(1),
	datac => \inst62|Q\(0),
	datad => \inst62|Q\(2),
	combout => \inst62|Q~2_combout\);

-- Location: FF_X40_Y22_N31
\inst62|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_1MHz~clkctrl_outclk\,
	asdata => \inst62|Q~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst62|Q\(3));

-- Location: LCCOMB_X40_Y22_N16
\inst62|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst62|Q~3_combout\ = ((\inst62|Q\(2) & (\inst62|Q\(1) & \inst62|Q\(3)))) # (!\inst62|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst62|Q\(2),
	datab => \inst62|Q\(1),
	datac => \inst62|Q\(3),
	datad => \inst62|Q\(0),
	combout => \inst62|Q~3_combout\);

-- Location: LCCOMB_X40_Y22_N26
\inst62|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst62|Q[0]~feeder_combout\ = \inst62|Q~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst62|Q~3_combout\,
	combout => \inst62|Q[0]~feeder_combout\);

-- Location: FF_X40_Y22_N27
\inst62|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_1MHz~clkctrl_outclk\,
	d => \inst62|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst62|Q\(0));

-- Location: LCCOMB_X40_Y22_N2
\inst62|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst62|Q~1_combout\ = \inst62|Q\(0) $ (\inst62|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst62|Q\(0),
	datad => \inst62|Q\(1),
	combout => \inst62|Q~1_combout\);

-- Location: LCCOMB_X40_Y22_N14
\inst62|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst62|Q[1]~feeder_combout\ = \inst62|Q~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst62|Q~1_combout\,
	combout => \inst62|Q[1]~feeder_combout\);

-- Location: FF_X40_Y22_N15
\inst62|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_1MHz~clkctrl_outclk\,
	d => \inst62|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst62|Q\(1));

-- Location: FF_X40_Y22_N7
\inst65|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst62|Q\(1),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T35~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|Q\(1));

-- Location: FF_X40_Y22_N21
\inst65|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst62|Q\(0),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T35~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|Q\(0));

-- Location: LCCOMB_X39_Y22_N0
\inst38|s[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|s[0]~0_combout\ = (\inst65|Q\(0) & (\inst5|Q\(0) $ (VCC))) # (!\inst65|Q\(0) & ((\inst5|Q\(0)) # (GND)))
-- \inst38|s[0]~1\ = CARRY((\inst5|Q\(0)) # (!\inst65|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|Q\(0),
	datab => \inst5|Q\(0),
	datad => VCC,
	combout => \inst38|s[0]~0_combout\,
	cout => \inst38|s[0]~1\);

-- Location: LCCOMB_X39_Y22_N2
\inst38|s[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|s[1]~2_combout\ = (\inst65|Q\(1) & ((\inst5|Q\(1) & (!\inst38|s[0]~1\)) # (!\inst5|Q\(1) & ((\inst38|s[0]~1\) # (GND))))) # (!\inst65|Q\(1) & ((\inst5|Q\(1) & (\inst38|s[0]~1\ & VCC)) # (!\inst5|Q\(1) & (!\inst38|s[0]~1\))))
-- \inst38|s[1]~3\ = CARRY((\inst65|Q\(1) & ((!\inst38|s[0]~1\) # (!\inst5|Q\(1)))) # (!\inst65|Q\(1) & (!\inst5|Q\(1) & !\inst38|s[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|Q\(1),
	datab => \inst5|Q\(1),
	datad => VCC,
	cin => \inst38|s[0]~1\,
	combout => \inst38|s[1]~2_combout\,
	cout => \inst38|s[1]~3\);

-- Location: FF_X40_Y22_N17
\inst65|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst62|Q\(3),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T35~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|Q\(3));

-- Location: FF_X40_Y22_N5
\inst65|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst62|Q\(2),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T35~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|Q\(2));

-- Location: LCCOMB_X40_Y22_N18
\inst46|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|LessThan1~0_combout\ = (\inst5|Q\(1) & (((!\inst65|Q\(0) & \inst5|Q\(0))) # (!\inst65|Q\(1)))) # (!\inst5|Q\(1) & (!\inst65|Q\(0) & (!\inst65|Q\(1) & \inst5|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|Q\(0),
	datab => \inst5|Q\(1),
	datac => \inst65|Q\(1),
	datad => \inst5|Q\(0),
	combout => \inst46|LessThan1~0_combout\);

-- Location: LCCOMB_X40_Y22_N0
\inst46|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|LessThan1~1_combout\ = (\inst5|Q\(2) & ((\inst46|LessThan1~0_combout\) # (!\inst65|Q\(2)))) # (!\inst5|Q\(2) & (!\inst65|Q\(2) & \inst46|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(2),
	datac => \inst65|Q\(2),
	datad => \inst46|LessThan1~0_combout\,
	combout => \inst46|LessThan1~1_combout\);

-- Location: LCCOMB_X40_Y22_N24
\inst46|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|LessThan1~2_combout\ = (\inst65|Q\(3) & (\inst5|Q\(3) & \inst46|LessThan1~1_combout\)) # (!\inst65|Q\(3) & ((\inst5|Q\(3)) # (\inst46|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|Q\(3),
	datac => \inst5|Q\(3),
	datad => \inst46|LessThan1~1_combout\,
	combout => \inst46|LessThan1~2_combout\);

-- Location: LCCOMB_X40_Y22_N22
\inst36|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst36|Add0~2_combout\ = (\inst46|LessThan1~2_combout\ & (\inst38|s[1]~2_combout\)) # (!\inst46|LessThan1~2_combout\ & ((\inst36|s[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|s[1]~2_combout\,
	datab => \inst46|LessThan1~2_combout\,
	datad => \inst36|s[1]~2_combout\,
	combout => \inst36|Add0~2_combout\);

-- Location: LCCOMB_X40_Y22_N4
\inst36|s[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst36|s[0]~0_combout\ = (\inst65|Q\(0) & ((GND) # (!\inst5|Q\(0)))) # (!\inst65|Q\(0) & (\inst5|Q\(0) $ (GND)))
-- \inst36|s[0]~1\ = CARRY((\inst65|Q\(0)) # (!\inst5|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|Q\(0),
	datab => \inst5|Q\(0),
	datad => VCC,
	combout => \inst36|s[0]~0_combout\,
	cout => \inst36|s[0]~1\);

-- Location: LCCOMB_X40_Y22_N6
\inst36|s[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst36|s[1]~2_combout\ = (\inst5|Q\(1) & ((\inst65|Q\(1) & (!\inst36|s[0]~1\)) # (!\inst65|Q\(1) & ((\inst36|s[0]~1\) # (GND))))) # (!\inst5|Q\(1) & ((\inst65|Q\(1) & (\inst36|s[0]~1\ & VCC)) # (!\inst65|Q\(1) & (!\inst36|s[0]~1\))))
-- \inst36|s[1]~3\ = CARRY((\inst5|Q\(1) & ((!\inst36|s[0]~1\) # (!\inst65|Q\(1)))) # (!\inst5|Q\(1) & (!\inst65|Q\(1) & !\inst36|s[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(1),
	datab => \inst65|Q\(1),
	datad => VCC,
	cin => \inst36|s[0]~1\,
	combout => \inst36|s[1]~2_combout\,
	cout => \inst36|s[1]~3\);

-- Location: LCCOMB_X40_Y22_N8
\inst36|s[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst36|s[2]~4_combout\ = ((\inst5|Q\(2) $ (\inst65|Q\(2) $ (\inst36|s[1]~3\)))) # (GND)
-- \inst36|s[2]~5\ = CARRY((\inst5|Q\(2) & (\inst65|Q\(2) & !\inst36|s[1]~3\)) # (!\inst5|Q\(2) & ((\inst65|Q\(2)) # (!\inst36|s[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(2),
	datab => \inst65|Q\(2),
	datad => VCC,
	cin => \inst36|s[1]~3\,
	combout => \inst36|s[2]~4_combout\,
	cout => \inst36|s[2]~5\);

-- Location: LCCOMB_X39_Y22_N4
\inst38|s[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|s[2]~4_combout\ = ((\inst65|Q\(2) $ (\inst5|Q\(2) $ (\inst38|s[1]~3\)))) # (GND)
-- \inst38|s[2]~5\ = CARRY((\inst65|Q\(2) & (\inst5|Q\(2) & !\inst38|s[1]~3\)) # (!\inst65|Q\(2) & ((\inst5|Q\(2)) # (!\inst38|s[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|Q\(2),
	datab => \inst5|Q\(2),
	datad => VCC,
	cin => \inst38|s[1]~3\,
	combout => \inst38|s[2]~4_combout\,
	cout => \inst38|s[2]~5\);

-- Location: LCCOMB_X37_Y22_N24
\inst11|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~0_combout\ = (!\inst5|Q\(0) & (!\inst5|Q\(1) & (!\inst5|Q\(2) & !\inst5|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(0),
	datab => \inst5|Q\(1),
	datac => \inst5|Q\(2),
	datad => \inst5|Q\(3),
	combout => \inst11|LessThan0~0_combout\);

-- Location: LCCOMB_X40_Y21_N10
\inst7|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add2~2_combout\ = (\inst5|Q\(1) & ((\inst5|Q\(3) & (\inst7|Add2~1\ & VCC)) # (!\inst5|Q\(3) & (!\inst7|Add2~1\)))) # (!\inst5|Q\(1) & ((\inst5|Q\(3) & (!\inst7|Add2~1\)) # (!\inst5|Q\(3) & ((\inst7|Add2~1\) # (GND)))))
-- \inst7|Add2~3\ = CARRY((\inst5|Q\(1) & (!\inst5|Q\(3) & !\inst7|Add2~1\)) # (!\inst5|Q\(1) & ((!\inst7|Add2~1\) # (!\inst5|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(1),
	datab => \inst5|Q\(3),
	datad => VCC,
	cin => \inst7|Add2~1\,
	combout => \inst7|Add2~2_combout\,
	cout => \inst7|Add2~3\);

-- Location: LCCOMB_X40_Y21_N12
\inst7|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add2~4_combout\ = ((\inst5|Q\(4) $ (\inst5|Q\(2) $ (!\inst7|Add2~3\)))) # (GND)
-- \inst7|Add2~5\ = CARRY((\inst5|Q\(4) & ((\inst5|Q\(2)) # (!\inst7|Add2~3\))) # (!\inst5|Q\(4) & (\inst5|Q\(2) & !\inst7|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(4),
	datab => \inst5|Q\(2),
	datad => VCC,
	cin => \inst7|Add2~3\,
	combout => \inst7|Add2~4_combout\,
	cout => \inst7|Add2~5\);

-- Location: LCCOMB_X41_Y21_N8
\inst7|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add3~1_cout\ = CARRY(\inst5|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(0),
	datad => VCC,
	cout => \inst7|Add3~1_cout\);

-- Location: LCCOMB_X41_Y21_N10
\inst7|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add3~2_combout\ = (((\inst7|Add3~1_cout\))) # (GND)
-- \inst7|Add3~3\ = CARRY(\inst5|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Q\(1),
	datad => VCC,
	cin => \inst7|Add3~1_cout\,
	combout => \inst7|Add3~2_combout\,
	cout => \inst7|Add3~3\);

-- Location: LCCOMB_X41_Y21_N12
\inst7|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add3~4_combout\ = (\inst7|Add2~0_combout\ & ((\inst5|Q\(2) & (\inst7|Add3~3\ & VCC)) # (!\inst5|Q\(2) & (!\inst7|Add3~3\)))) # (!\inst7|Add2~0_combout\ & ((\inst5|Q\(2) & (!\inst7|Add3~3\)) # (!\inst5|Q\(2) & ((\inst7|Add3~3\) # (GND)))))
-- \inst7|Add3~5\ = CARRY((\inst7|Add2~0_combout\ & (!\inst5|Q\(2) & !\inst7|Add3~3\)) # (!\inst7|Add2~0_combout\ & ((!\inst7|Add3~3\) # (!\inst5|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add2~0_combout\,
	datab => \inst5|Q\(2),
	datad => VCC,
	cin => \inst7|Add3~3\,
	combout => \inst7|Add3~4_combout\,
	cout => \inst7|Add3~5\);

-- Location: LCCOMB_X41_Y21_N14
\inst7|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add3~6_combout\ = ((\inst7|Add2~2_combout\ $ (\inst5|Q\(3) $ (!\inst7|Add3~5\)))) # (GND)
-- \inst7|Add3~7\ = CARRY((\inst7|Add2~2_combout\ & ((\inst5|Q\(3)) # (!\inst7|Add3~5\))) # (!\inst7|Add2~2_combout\ & (\inst5|Q\(3) & !\inst7|Add3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add2~2_combout\,
	datab => \inst5|Q\(3),
	datad => VCC,
	cin => \inst7|Add3~5\,
	combout => \inst7|Add3~6_combout\,
	cout => \inst7|Add3~7\);

-- Location: LCCOMB_X41_Y21_N16
\inst7|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add3~8_combout\ = (\inst7|Add2~4_combout\ & ((\inst5|Q\(4) & (\inst7|Add3~7\ & VCC)) # (!\inst5|Q\(4) & (!\inst7|Add3~7\)))) # (!\inst7|Add2~4_combout\ & ((\inst5|Q\(4) & (!\inst7|Add3~7\)) # (!\inst5|Q\(4) & ((\inst7|Add3~7\) # (GND)))))
-- \inst7|Add3~9\ = CARRY((\inst7|Add2~4_combout\ & (!\inst5|Q\(4) & !\inst7|Add3~7\)) # (!\inst7|Add2~4_combout\ & ((!\inst7|Add3~7\) # (!\inst5|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add2~4_combout\,
	datab => \inst5|Q\(4),
	datad => VCC,
	cin => \inst7|Add3~7\,
	combout => \inst7|Add3~8_combout\,
	cout => \inst7|Add3~9\);

-- Location: LCCOMB_X45_Y21_N2
\inst7|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add4~0_combout\ = (\inst7|Add3~2_combout\ & (\inst5|Q\(1) $ (VCC))) # (!\inst7|Add3~2_combout\ & (\inst5|Q\(1) & VCC))
-- \inst7|Add4~1\ = CARRY((\inst7|Add3~2_combout\ & \inst5|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add3~2_combout\,
	datab => \inst5|Q\(1),
	datad => VCC,
	combout => \inst7|Add4~0_combout\,
	cout => \inst7|Add4~1\);

-- Location: LCCOMB_X45_Y21_N4
\inst7|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add4~2_combout\ = (\inst5|Q\(2) & ((\inst7|Add3~4_combout\ & (\inst7|Add4~1\ & VCC)) # (!\inst7|Add3~4_combout\ & (!\inst7|Add4~1\)))) # (!\inst5|Q\(2) & ((\inst7|Add3~4_combout\ & (!\inst7|Add4~1\)) # (!\inst7|Add3~4_combout\ & ((\inst7|Add4~1\) # 
-- (GND)))))
-- \inst7|Add4~3\ = CARRY((\inst5|Q\(2) & (!\inst7|Add3~4_combout\ & !\inst7|Add4~1\)) # (!\inst5|Q\(2) & ((!\inst7|Add4~1\) # (!\inst7|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(2),
	datab => \inst7|Add3~4_combout\,
	datad => VCC,
	cin => \inst7|Add4~1\,
	combout => \inst7|Add4~2_combout\,
	cout => \inst7|Add4~3\);

-- Location: LCCOMB_X45_Y21_N6
\inst7|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add4~4_combout\ = ((\inst5|Q\(3) $ (\inst7|Add3~6_combout\ $ (!\inst7|Add4~3\)))) # (GND)
-- \inst7|Add4~5\ = CARRY((\inst5|Q\(3) & ((\inst7|Add3~6_combout\) # (!\inst7|Add4~3\))) # (!\inst5|Q\(3) & (\inst7|Add3~6_combout\ & !\inst7|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(3),
	datab => \inst7|Add3~6_combout\,
	datad => VCC,
	cin => \inst7|Add4~3\,
	combout => \inst7|Add4~4_combout\,
	cout => \inst7|Add4~5\);

-- Location: LCCOMB_X45_Y21_N8
\inst7|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add4~6_combout\ = (\inst7|Add3~8_combout\ & ((\inst5|Q\(4) & (\inst7|Add4~5\ & VCC)) # (!\inst5|Q\(4) & (!\inst7|Add4~5\)))) # (!\inst7|Add3~8_combout\ & ((\inst5|Q\(4) & (!\inst7|Add4~5\)) # (!\inst5|Q\(4) & ((\inst7|Add4~5\) # (GND)))))
-- \inst7|Add4~7\ = CARRY((\inst7|Add3~8_combout\ & (!\inst5|Q\(4) & !\inst7|Add4~5\)) # (!\inst7|Add3~8_combout\ & ((!\inst7|Add4~5\) # (!\inst5|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add3~8_combout\,
	datab => \inst5|Q\(4),
	datad => VCC,
	cin => \inst7|Add4~5\,
	combout => \inst7|Add4~6_combout\,
	cout => \inst7|Add4~7\);

-- Location: LCCOMB_X44_Y21_N8
\inst7|Add5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add5~1_cout\ = CARRY(\inst5|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Q\(0),
	datad => VCC,
	cout => \inst7|Add5~1_cout\);

-- Location: LCCOMB_X44_Y21_N10
\inst7|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add5~2_combout\ = (\inst7|Add4~0_combout\ & ((\inst5|Q\(1) & (\inst7|Add5~1_cout\ & VCC)) # (!\inst5|Q\(1) & (!\inst7|Add5~1_cout\)))) # (!\inst7|Add4~0_combout\ & ((\inst5|Q\(1) & (!\inst7|Add5~1_cout\)) # (!\inst5|Q\(1) & ((\inst7|Add5~1_cout\) # 
-- (GND)))))
-- \inst7|Add5~3\ = CARRY((\inst7|Add4~0_combout\ & (!\inst5|Q\(1) & !\inst7|Add5~1_cout\)) # (!\inst7|Add4~0_combout\ & ((!\inst7|Add5~1_cout\) # (!\inst5|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add4~0_combout\,
	datab => \inst5|Q\(1),
	datad => VCC,
	cin => \inst7|Add5~1_cout\,
	combout => \inst7|Add5~2_combout\,
	cout => \inst7|Add5~3\);

-- Location: LCCOMB_X44_Y21_N12
\inst7|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add5~4_combout\ = ((\inst7|Add4~2_combout\ $ (\inst5|Q\(2) $ (!\inst7|Add5~3\)))) # (GND)
-- \inst7|Add5~5\ = CARRY((\inst7|Add4~2_combout\ & ((\inst5|Q\(2)) # (!\inst7|Add5~3\))) # (!\inst7|Add4~2_combout\ & (\inst5|Q\(2) & !\inst7|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add4~2_combout\,
	datab => \inst5|Q\(2),
	datad => VCC,
	cin => \inst7|Add5~3\,
	combout => \inst7|Add5~4_combout\,
	cout => \inst7|Add5~5\);

-- Location: LCCOMB_X44_Y21_N14
\inst7|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add5~6_combout\ = (\inst7|Add4~4_combout\ & ((\inst5|Q\(3) & (\inst7|Add5~5\ & VCC)) # (!\inst5|Q\(3) & (!\inst7|Add5~5\)))) # (!\inst7|Add4~4_combout\ & ((\inst5|Q\(3) & (!\inst7|Add5~5\)) # (!\inst5|Q\(3) & ((\inst7|Add5~5\) # (GND)))))
-- \inst7|Add5~7\ = CARRY((\inst7|Add4~4_combout\ & (!\inst5|Q\(3) & !\inst7|Add5~5\)) # (!\inst7|Add4~4_combout\ & ((!\inst7|Add5~5\) # (!\inst5|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add4~4_combout\,
	datab => \inst5|Q\(3),
	datad => VCC,
	cin => \inst7|Add5~5\,
	combout => \inst7|Add5~6_combout\,
	cout => \inst7|Add5~7\);

-- Location: LCCOMB_X44_Y21_N16
\inst7|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add5~8_combout\ = ((\inst5|Q\(4) $ (\inst7|Add4~6_combout\ $ (!\inst7|Add5~7\)))) # (GND)
-- \inst7|Add5~9\ = CARRY((\inst5|Q\(4) & ((\inst7|Add4~6_combout\) # (!\inst7|Add5~7\))) # (!\inst5|Q\(4) & (\inst7|Add4~6_combout\ & !\inst7|Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(4),
	datab => \inst7|Add4~6_combout\,
	datad => VCC,
	cin => \inst7|Add5~7\,
	combout => \inst7|Add5~8_combout\,
	cout => \inst7|Add5~9\);

-- Location: LCCOMB_X43_Y21_N6
\inst7|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add6~0_combout\ = (\inst5|Q\(1) & (\inst7|Add5~2_combout\ $ (VCC))) # (!\inst5|Q\(1) & (\inst7|Add5~2_combout\ & VCC))
-- \inst7|Add6~1\ = CARRY((\inst5|Q\(1) & \inst7|Add5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(1),
	datab => \inst7|Add5~2_combout\,
	datad => VCC,
	combout => \inst7|Add6~0_combout\,
	cout => \inst7|Add6~1\);

-- Location: LCCOMB_X43_Y21_N8
\inst7|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add6~2_combout\ = (\inst5|Q\(2) & ((\inst7|Add5~4_combout\ & (\inst7|Add6~1\ & VCC)) # (!\inst7|Add5~4_combout\ & (!\inst7|Add6~1\)))) # (!\inst5|Q\(2) & ((\inst7|Add5~4_combout\ & (!\inst7|Add6~1\)) # (!\inst7|Add5~4_combout\ & ((\inst7|Add6~1\) # 
-- (GND)))))
-- \inst7|Add6~3\ = CARRY((\inst5|Q\(2) & (!\inst7|Add5~4_combout\ & !\inst7|Add6~1\)) # (!\inst5|Q\(2) & ((!\inst7|Add6~1\) # (!\inst7|Add5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(2),
	datab => \inst7|Add5~4_combout\,
	datad => VCC,
	cin => \inst7|Add6~1\,
	combout => \inst7|Add6~2_combout\,
	cout => \inst7|Add6~3\);

-- Location: LCCOMB_X43_Y21_N10
\inst7|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add6~4_combout\ = ((\inst5|Q\(3) $ (\inst7|Add5~6_combout\ $ (!\inst7|Add6~3\)))) # (GND)
-- \inst7|Add6~5\ = CARRY((\inst5|Q\(3) & ((\inst7|Add5~6_combout\) # (!\inst7|Add6~3\))) # (!\inst5|Q\(3) & (\inst7|Add5~6_combout\ & !\inst7|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(3),
	datab => \inst7|Add5~6_combout\,
	datad => VCC,
	cin => \inst7|Add6~3\,
	combout => \inst7|Add6~4_combout\,
	cout => \inst7|Add6~5\);

-- Location: LCCOMB_X43_Y21_N12
\inst7|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add6~6_combout\ = (\inst5|Q\(4) & ((\inst7|Add5~8_combout\ & (\inst7|Add6~5\ & VCC)) # (!\inst7|Add5~8_combout\ & (!\inst7|Add6~5\)))) # (!\inst5|Q\(4) & ((\inst7|Add5~8_combout\ & (!\inst7|Add6~5\)) # (!\inst7|Add5~8_combout\ & ((\inst7|Add6~5\) # 
-- (GND)))))
-- \inst7|Add6~7\ = CARRY((\inst5|Q\(4) & (!\inst7|Add5~8_combout\ & !\inst7|Add6~5\)) # (!\inst5|Q\(4) & ((!\inst7|Add6~5\) # (!\inst7|Add5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(4),
	datab => \inst7|Add5~8_combout\,
	datad => VCC,
	cin => \inst7|Add6~5\,
	combout => \inst7|Add6~6_combout\,
	cout => \inst7|Add6~7\);

-- Location: LCCOMB_X38_Y21_N0
\inst7|Add7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add7~1_cout\ = CARRY(\inst5|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Q\(0),
	datad => VCC,
	cout => \inst7|Add7~1_cout\);

-- Location: LCCOMB_X38_Y21_N2
\inst7|sal[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|sal[1]~0_combout\ = (\inst7|Add6~0_combout\ & ((\inst5|Q\(1) & (\inst7|Add7~1_cout\ & VCC)) # (!\inst5|Q\(1) & (!\inst7|Add7~1_cout\)))) # (!\inst7|Add6~0_combout\ & ((\inst5|Q\(1) & (!\inst7|Add7~1_cout\)) # (!\inst5|Q\(1) & ((\inst7|Add7~1_cout\) 
-- # (GND)))))
-- \inst7|sal[1]~1\ = CARRY((\inst7|Add6~0_combout\ & (!\inst5|Q\(1) & !\inst7|Add7~1_cout\)) # (!\inst7|Add6~0_combout\ & ((!\inst7|Add7~1_cout\) # (!\inst5|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add6~0_combout\,
	datab => \inst5|Q\(1),
	datad => VCC,
	cin => \inst7|Add7~1_cout\,
	combout => \inst7|sal[1]~0_combout\,
	cout => \inst7|sal[1]~1\);

-- Location: LCCOMB_X38_Y21_N4
\inst7|sal[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|sal[2]~2_combout\ = ((\inst7|Add6~2_combout\ $ (\inst5|Q\(2) $ (!\inst7|sal[1]~1\)))) # (GND)
-- \inst7|sal[2]~3\ = CARRY((\inst7|Add6~2_combout\ & ((\inst5|Q\(2)) # (!\inst7|sal[1]~1\))) # (!\inst7|Add6~2_combout\ & (\inst5|Q\(2) & !\inst7|sal[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add6~2_combout\,
	datab => \inst5|Q\(2),
	datad => VCC,
	cin => \inst7|sal[1]~1\,
	combout => \inst7|sal[2]~2_combout\,
	cout => \inst7|sal[2]~3\);

-- Location: LCCOMB_X38_Y21_N6
\inst7|sal[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|sal[3]~4_combout\ = (\inst5|Q\(3) & ((\inst7|Add6~4_combout\ & (\inst7|sal[2]~3\ & VCC)) # (!\inst7|Add6~4_combout\ & (!\inst7|sal[2]~3\)))) # (!\inst5|Q\(3) & ((\inst7|Add6~4_combout\ & (!\inst7|sal[2]~3\)) # (!\inst7|Add6~4_combout\ & 
-- ((\inst7|sal[2]~3\) # (GND)))))
-- \inst7|sal[3]~5\ = CARRY((\inst5|Q\(3) & (!\inst7|Add6~4_combout\ & !\inst7|sal[2]~3\)) # (!\inst5|Q\(3) & ((!\inst7|sal[2]~3\) # (!\inst7|Add6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(3),
	datab => \inst7|Add6~4_combout\,
	datad => VCC,
	cin => \inst7|sal[2]~3\,
	combout => \inst7|sal[3]~4_combout\,
	cout => \inst7|sal[3]~5\);

-- Location: LCCOMB_X38_Y21_N8
\inst7|sal[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|sal[4]~6_combout\ = ((\inst7|Add6~6_combout\ $ (\inst5|Q\(4) $ (!\inst7|sal[3]~5\)))) # (GND)
-- \inst7|sal[4]~7\ = CARRY((\inst7|Add6~6_combout\ & ((\inst5|Q\(4)) # (!\inst7|sal[3]~5\))) # (!\inst7|Add6~6_combout\ & (\inst5|Q\(4) & !\inst7|sal[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add6~6_combout\,
	datab => \inst5|Q\(4),
	datad => VCC,
	cin => \inst7|sal[3]~5\,
	combout => \inst7|sal[4]~6_combout\,
	cout => \inst7|sal[4]~7\);

-- Location: LCCOMB_X39_Y21_N28
\inst7|Add7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add7~5_combout\ = (!\inst|Selector73~0_combout\ & \inst7|sal[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector73~0_combout\,
	datad => \inst7|sal[4]~6_combout\,
	combout => \inst7|Add7~5_combout\);

-- Location: LCCOMB_X38_Y21_N28
\inst7|Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add7~8_combout\ = (!\inst|Selector73~0_combout\ & \inst7|sal[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector73~0_combout\,
	datad => \inst7|sal[1]~0_combout\,
	combout => \inst7|Add7~8_combout\);

-- Location: LCCOMB_X39_Y21_N2
\inst5|Q[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Q[1]~10_combout\ = (\inst3|Q\(1) & (\inst7|Add7~8_combout\ $ (VCC))) # (!\inst3|Q\(1) & (\inst7|Add7~8_combout\ & VCC))
-- \inst5|Q[1]~11\ = CARRY((\inst3|Q\(1) & \inst7|Add7~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(1),
	datab => \inst7|Add7~8_combout\,
	datad => VCC,
	combout => \inst5|Q[1]~10_combout\,
	cout => \inst5|Q[1]~11\);

-- Location: LCCOMB_X39_Y21_N4
\inst5|Q[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Q[2]~12_combout\ = (\inst3|Q\(2) & ((\inst7|Add7~7_combout\ & (\inst5|Q[1]~11\ & VCC)) # (!\inst7|Add7~7_combout\ & (!\inst5|Q[1]~11\)))) # (!\inst3|Q\(2) & ((\inst7|Add7~7_combout\ & (!\inst5|Q[1]~11\)) # (!\inst7|Add7~7_combout\ & 
-- ((\inst5|Q[1]~11\) # (GND)))))
-- \inst5|Q[2]~13\ = CARRY((\inst3|Q\(2) & (!\inst7|Add7~7_combout\ & !\inst5|Q[1]~11\)) # (!\inst3|Q\(2) & ((!\inst5|Q[1]~11\) # (!\inst7|Add7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(2),
	datab => \inst7|Add7~7_combout\,
	datad => VCC,
	cin => \inst5|Q[1]~11\,
	combout => \inst5|Q[2]~12_combout\,
	cout => \inst5|Q[2]~13\);

-- Location: LCCOMB_X39_Y21_N6
\inst5|Q[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Q[3]~14_combout\ = ((\inst3|Q\(3) $ (\inst7|Add7~6_combout\ $ (!\inst5|Q[2]~13\)))) # (GND)
-- \inst5|Q[3]~15\ = CARRY((\inst3|Q\(3) & ((\inst7|Add7~6_combout\) # (!\inst5|Q[2]~13\))) # (!\inst3|Q\(3) & (\inst7|Add7~6_combout\ & !\inst5|Q[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(3),
	datab => \inst7|Add7~6_combout\,
	datad => VCC,
	cin => \inst5|Q[2]~13\,
	combout => \inst5|Q[3]~14_combout\,
	cout => \inst5|Q[3]~15\);

-- Location: LCCOMB_X39_Y21_N8
\inst5|Q[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Q[4]~16_combout\ = (\inst7|Add7~5_combout\ & (!\inst5|Q[3]~15\)) # (!\inst7|Add7~5_combout\ & ((\inst5|Q[3]~15\) # (GND)))
-- \inst5|Q[4]~17\ = CARRY((!\inst5|Q[3]~15\) # (!\inst7|Add7~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add7~5_combout\,
	datad => VCC,
	cin => \inst5|Q[3]~15\,
	combout => \inst5|Q[4]~16_combout\,
	cout => \inst5|Q[4]~17\);

-- Location: FF_X39_Y21_N9
\inst5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst5|Q[4]~16_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|Selector72~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Q\(4));

-- Location: LCCOMB_X40_Y21_N14
\inst7|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add2~6_combout\ = (\inst5|Q\(5) & ((\inst5|Q\(3) & (\inst7|Add2~5\ & VCC)) # (!\inst5|Q\(3) & (!\inst7|Add2~5\)))) # (!\inst5|Q\(5) & ((\inst5|Q\(3) & (!\inst7|Add2~5\)) # (!\inst5|Q\(3) & ((\inst7|Add2~5\) # (GND)))))
-- \inst7|Add2~7\ = CARRY((\inst5|Q\(5) & (!\inst5|Q\(3) & !\inst7|Add2~5\)) # (!\inst5|Q\(5) & ((!\inst7|Add2~5\) # (!\inst5|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(5),
	datab => \inst5|Q\(3),
	datad => VCC,
	cin => \inst7|Add2~5\,
	combout => \inst7|Add2~6_combout\,
	cout => \inst7|Add2~7\);

-- Location: LCCOMB_X40_Y21_N16
\inst7|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add2~8_combout\ = ((\inst5|Q\(4) $ (\inst5|Q\(6) $ (!\inst7|Add2~7\)))) # (GND)
-- \inst7|Add2~9\ = CARRY((\inst5|Q\(4) & ((\inst5|Q\(6)) # (!\inst7|Add2~7\))) # (!\inst5|Q\(4) & (\inst5|Q\(6) & !\inst7|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(4),
	datab => \inst5|Q\(6),
	datad => VCC,
	cin => \inst7|Add2~7\,
	combout => \inst7|Add2~8_combout\,
	cout => \inst7|Add2~9\);

-- Location: LCCOMB_X40_Y21_N18
\inst7|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add2~10_combout\ = (\inst5|Q\(5) & (!\inst7|Add2~9\)) # (!\inst5|Q\(5) & ((\inst7|Add2~9\) # (GND)))
-- \inst7|Add2~11\ = CARRY((!\inst7|Add2~9\) # (!\inst5|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(5),
	datad => VCC,
	cin => \inst7|Add2~9\,
	combout => \inst7|Add2~10_combout\,
	cout => \inst7|Add2~11\);

-- Location: LCCOMB_X40_Y21_N20
\inst7|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add2~12_combout\ = (\inst5|Q\(6) & (\inst7|Add2~11\ $ (GND))) # (!\inst5|Q\(6) & (!\inst7|Add2~11\ & VCC))
-- \inst7|Add2~13\ = CARRY((\inst5|Q\(6) & !\inst7|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(6),
	datad => VCC,
	cin => \inst7|Add2~11\,
	combout => \inst7|Add2~12_combout\,
	cout => \inst7|Add2~13\);

-- Location: LCCOMB_X40_Y21_N22
\inst7|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add2~14_combout\ = \inst7|Add2~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Add2~13\,
	combout => \inst7|Add2~14_combout\);

-- Location: LCCOMB_X41_Y21_N18
\inst7|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add3~10_combout\ = ((\inst7|Add2~6_combout\ $ (\inst5|Q\(5) $ (!\inst7|Add3~9\)))) # (GND)
-- \inst7|Add3~11\ = CARRY((\inst7|Add2~6_combout\ & ((\inst5|Q\(5)) # (!\inst7|Add3~9\))) # (!\inst7|Add2~6_combout\ & (\inst5|Q\(5) & !\inst7|Add3~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add2~6_combout\,
	datab => \inst5|Q\(5),
	datad => VCC,
	cin => \inst7|Add3~9\,
	combout => \inst7|Add3~10_combout\,
	cout => \inst7|Add3~11\);

-- Location: LCCOMB_X41_Y21_N20
\inst7|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add3~12_combout\ = (\inst7|Add2~8_combout\ & ((\inst5|Q\(6) & (\inst7|Add3~11\ & VCC)) # (!\inst5|Q\(6) & (!\inst7|Add3~11\)))) # (!\inst7|Add2~8_combout\ & ((\inst5|Q\(6) & (!\inst7|Add3~11\)) # (!\inst5|Q\(6) & ((\inst7|Add3~11\) # (GND)))))
-- \inst7|Add3~13\ = CARRY((\inst7|Add2~8_combout\ & (!\inst5|Q\(6) & !\inst7|Add3~11\)) # (!\inst7|Add2~8_combout\ & ((!\inst7|Add3~11\) # (!\inst5|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add2~8_combout\,
	datab => \inst5|Q\(6),
	datad => VCC,
	cin => \inst7|Add3~11\,
	combout => \inst7|Add3~12_combout\,
	cout => \inst7|Add3~13\);

-- Location: LCCOMB_X41_Y21_N22
\inst7|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add3~14_combout\ = (\inst7|Add2~10_combout\ & (\inst7|Add3~13\ $ (GND))) # (!\inst7|Add2~10_combout\ & (!\inst7|Add3~13\ & VCC))
-- \inst7|Add3~15\ = CARRY((\inst7|Add2~10_combout\ & !\inst7|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add2~10_combout\,
	datad => VCC,
	cin => \inst7|Add3~13\,
	combout => \inst7|Add3~14_combout\,
	cout => \inst7|Add3~15\);

-- Location: LCCOMB_X41_Y21_N24
\inst7|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add3~16_combout\ = (\inst7|Add2~12_combout\ & (!\inst7|Add3~15\)) # (!\inst7|Add2~12_combout\ & ((\inst7|Add3~15\) # (GND)))
-- \inst7|Add3~17\ = CARRY((!\inst7|Add3~15\) # (!\inst7|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add2~12_combout\,
	datad => VCC,
	cin => \inst7|Add3~15\,
	combout => \inst7|Add3~16_combout\,
	cout => \inst7|Add3~17\);

-- Location: LCCOMB_X41_Y21_N26
\inst7|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add3~18_combout\ = \inst7|Add3~17\ $ (!\inst7|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Add2~14_combout\,
	cin => \inst7|Add3~17\,
	combout => \inst7|Add3~18_combout\);

-- Location: LCCOMB_X45_Y21_N10
\inst7|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add4~8_combout\ = ((\inst7|Add3~10_combout\ $ (\inst5|Q\(5) $ (!\inst7|Add4~7\)))) # (GND)
-- \inst7|Add4~9\ = CARRY((\inst7|Add3~10_combout\ & ((\inst5|Q\(5)) # (!\inst7|Add4~7\))) # (!\inst7|Add3~10_combout\ & (\inst5|Q\(5) & !\inst7|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add3~10_combout\,
	datab => \inst5|Q\(5),
	datad => VCC,
	cin => \inst7|Add4~7\,
	combout => \inst7|Add4~8_combout\,
	cout => \inst7|Add4~9\);

-- Location: LCCOMB_X45_Y21_N12
\inst7|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add4~10_combout\ = (\inst7|Add3~12_combout\ & ((\inst5|Q\(6) & (\inst7|Add4~9\ & VCC)) # (!\inst5|Q\(6) & (!\inst7|Add4~9\)))) # (!\inst7|Add3~12_combout\ & ((\inst5|Q\(6) & (!\inst7|Add4~9\)) # (!\inst5|Q\(6) & ((\inst7|Add4~9\) # (GND)))))
-- \inst7|Add4~11\ = CARRY((\inst7|Add3~12_combout\ & (!\inst5|Q\(6) & !\inst7|Add4~9\)) # (!\inst7|Add3~12_combout\ & ((!\inst7|Add4~9\) # (!\inst5|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add3~12_combout\,
	datab => \inst5|Q\(6),
	datad => VCC,
	cin => \inst7|Add4~9\,
	combout => \inst7|Add4~10_combout\,
	cout => \inst7|Add4~11\);

-- Location: LCCOMB_X45_Y21_N14
\inst7|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add4~12_combout\ = (\inst7|Add3~14_combout\ & (\inst7|Add4~11\ $ (GND))) # (!\inst7|Add3~14_combout\ & (!\inst7|Add4~11\ & VCC))
-- \inst7|Add4~13\ = CARRY((\inst7|Add3~14_combout\ & !\inst7|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add3~14_combout\,
	datad => VCC,
	cin => \inst7|Add4~11\,
	combout => \inst7|Add4~12_combout\,
	cout => \inst7|Add4~13\);

-- Location: LCCOMB_X45_Y21_N16
\inst7|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add4~14_combout\ = (\inst7|Add3~16_combout\ & (!\inst7|Add4~13\)) # (!\inst7|Add3~16_combout\ & ((\inst7|Add4~13\) # (GND)))
-- \inst7|Add4~15\ = CARRY((!\inst7|Add4~13\) # (!\inst7|Add3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add3~16_combout\,
	datad => VCC,
	cin => \inst7|Add4~13\,
	combout => \inst7|Add4~14_combout\,
	cout => \inst7|Add4~15\);

-- Location: LCCOMB_X45_Y21_N18
\inst7|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add4~16_combout\ = \inst7|Add4~15\ $ (!\inst7|Add3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Add3~18_combout\,
	cin => \inst7|Add4~15\,
	combout => \inst7|Add4~16_combout\);

-- Location: LCCOMB_X44_Y21_N18
\inst7|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add5~10_combout\ = (\inst5|Q\(5) & ((\inst7|Add4~8_combout\ & (\inst7|Add5~9\ & VCC)) # (!\inst7|Add4~8_combout\ & (!\inst7|Add5~9\)))) # (!\inst5|Q\(5) & ((\inst7|Add4~8_combout\ & (!\inst7|Add5~9\)) # (!\inst7|Add4~8_combout\ & ((\inst7|Add5~9\) 
-- # (GND)))))
-- \inst7|Add5~11\ = CARRY((\inst5|Q\(5) & (!\inst7|Add4~8_combout\ & !\inst7|Add5~9\)) # (!\inst5|Q\(5) & ((!\inst7|Add5~9\) # (!\inst7|Add4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(5),
	datab => \inst7|Add4~8_combout\,
	datad => VCC,
	cin => \inst7|Add5~9\,
	combout => \inst7|Add5~10_combout\,
	cout => \inst7|Add5~11\);

-- Location: LCCOMB_X44_Y21_N20
\inst7|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add5~12_combout\ = ((\inst5|Q\(6) $ (\inst7|Add4~10_combout\ $ (!\inst7|Add5~11\)))) # (GND)
-- \inst7|Add5~13\ = CARRY((\inst5|Q\(6) & ((\inst7|Add4~10_combout\) # (!\inst7|Add5~11\))) # (!\inst5|Q\(6) & (\inst7|Add4~10_combout\ & !\inst7|Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(6),
	datab => \inst7|Add4~10_combout\,
	datad => VCC,
	cin => \inst7|Add5~11\,
	combout => \inst7|Add5~12_combout\,
	cout => \inst7|Add5~13\);

-- Location: LCCOMB_X44_Y21_N22
\inst7|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add5~14_combout\ = (\inst7|Add4~12_combout\ & (!\inst7|Add5~13\)) # (!\inst7|Add4~12_combout\ & ((\inst7|Add5~13\) # (GND)))
-- \inst7|Add5~15\ = CARRY((!\inst7|Add5~13\) # (!\inst7|Add4~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add4~12_combout\,
	datad => VCC,
	cin => \inst7|Add5~13\,
	combout => \inst7|Add5~14_combout\,
	cout => \inst7|Add5~15\);

-- Location: LCCOMB_X44_Y21_N24
\inst7|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add5~16_combout\ = (\inst7|Add4~14_combout\ & (\inst7|Add5~15\ $ (GND))) # (!\inst7|Add4~14_combout\ & (!\inst7|Add5~15\ & VCC))
-- \inst7|Add5~17\ = CARRY((\inst7|Add4~14_combout\ & !\inst7|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add4~14_combout\,
	datad => VCC,
	cin => \inst7|Add5~15\,
	combout => \inst7|Add5~16_combout\,
	cout => \inst7|Add5~17\);

-- Location: LCCOMB_X44_Y21_N26
\inst7|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add5~18_combout\ = \inst7|Add5~17\ $ (\inst7|Add4~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Add4~16_combout\,
	cin => \inst7|Add5~17\,
	combout => \inst7|Add5~18_combout\);

-- Location: LCCOMB_X43_Y21_N14
\inst7|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add6~8_combout\ = ((\inst5|Q\(5) $ (\inst7|Add5~10_combout\ $ (!\inst7|Add6~7\)))) # (GND)
-- \inst7|Add6~9\ = CARRY((\inst5|Q\(5) & ((\inst7|Add5~10_combout\) # (!\inst7|Add6~7\))) # (!\inst5|Q\(5) & (\inst7|Add5~10_combout\ & !\inst7|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(5),
	datab => \inst7|Add5~10_combout\,
	datad => VCC,
	cin => \inst7|Add6~7\,
	combout => \inst7|Add6~8_combout\,
	cout => \inst7|Add6~9\);

-- Location: LCCOMB_X43_Y21_N16
\inst7|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add6~10_combout\ = (\inst7|Add5~12_combout\ & ((\inst5|Q\(6) & (\inst7|Add6~9\ & VCC)) # (!\inst5|Q\(6) & (!\inst7|Add6~9\)))) # (!\inst7|Add5~12_combout\ & ((\inst5|Q\(6) & (!\inst7|Add6~9\)) # (!\inst5|Q\(6) & ((\inst7|Add6~9\) # (GND)))))
-- \inst7|Add6~11\ = CARRY((\inst7|Add5~12_combout\ & (!\inst5|Q\(6) & !\inst7|Add6~9\)) # (!\inst7|Add5~12_combout\ & ((!\inst7|Add6~9\) # (!\inst5|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add5~12_combout\,
	datab => \inst5|Q\(6),
	datad => VCC,
	cin => \inst7|Add6~9\,
	combout => \inst7|Add6~10_combout\,
	cout => \inst7|Add6~11\);

-- Location: LCCOMB_X43_Y21_N18
\inst7|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add6~12_combout\ = (\inst7|Add5~14_combout\ & (\inst7|Add6~11\ $ (GND))) # (!\inst7|Add5~14_combout\ & (!\inst7|Add6~11\ & VCC))
-- \inst7|Add6~13\ = CARRY((\inst7|Add5~14_combout\ & !\inst7|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add5~14_combout\,
	datad => VCC,
	cin => \inst7|Add6~11\,
	combout => \inst7|Add6~12_combout\,
	cout => \inst7|Add6~13\);

-- Location: LCCOMB_X43_Y21_N20
\inst7|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add6~14_combout\ = (\inst7|Add5~16_combout\ & (!\inst7|Add6~13\)) # (!\inst7|Add5~16_combout\ & ((\inst7|Add6~13\) # (GND)))
-- \inst7|Add6~15\ = CARRY((!\inst7|Add6~13\) # (!\inst7|Add5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add5~16_combout\,
	datad => VCC,
	cin => \inst7|Add6~13\,
	combout => \inst7|Add6~14_combout\,
	cout => \inst7|Add6~15\);

-- Location: LCCOMB_X43_Y21_N22
\inst7|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add6~16_combout\ = (\inst7|Add5~18_combout\ & (\inst7|Add6~15\ $ (GND))) # (!\inst7|Add5~18_combout\ & (!\inst7|Add6~15\ & VCC))
-- \inst7|Add6~17\ = CARRY((\inst7|Add5~18_combout\ & !\inst7|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add5~18_combout\,
	datad => VCC,
	cin => \inst7|Add6~15\,
	combout => \inst7|Add6~16_combout\,
	cout => \inst7|Add6~17\);

-- Location: LCCOMB_X43_Y21_N24
\inst7|Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add6~18_combout\ = \inst7|Add6~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Add6~17\,
	combout => \inst7|Add6~18_combout\);

-- Location: LCCOMB_X38_Y21_N10
\inst7|sal[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|sal[5]~8_combout\ = (\inst5|Q\(5) & ((\inst7|Add6~8_combout\ & (\inst7|sal[4]~7\ & VCC)) # (!\inst7|Add6~8_combout\ & (!\inst7|sal[4]~7\)))) # (!\inst5|Q\(5) & ((\inst7|Add6~8_combout\ & (!\inst7|sal[4]~7\)) # (!\inst7|Add6~8_combout\ & 
-- ((\inst7|sal[4]~7\) # (GND)))))
-- \inst7|sal[5]~9\ = CARRY((\inst5|Q\(5) & (!\inst7|Add6~8_combout\ & !\inst7|sal[4]~7\)) # (!\inst5|Q\(5) & ((!\inst7|sal[4]~7\) # (!\inst7|Add6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(5),
	datab => \inst7|Add6~8_combout\,
	datad => VCC,
	cin => \inst7|sal[4]~7\,
	combout => \inst7|sal[5]~8_combout\,
	cout => \inst7|sal[5]~9\);

-- Location: LCCOMB_X38_Y21_N12
\inst7|sal[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|sal[6]~10_combout\ = ((\inst5|Q\(6) $ (\inst7|Add6~10_combout\ $ (!\inst7|sal[5]~9\)))) # (GND)
-- \inst7|sal[6]~11\ = CARRY((\inst5|Q\(6) & ((\inst7|Add6~10_combout\) # (!\inst7|sal[5]~9\))) # (!\inst5|Q\(6) & (\inst7|Add6~10_combout\ & !\inst7|sal[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(6),
	datab => \inst7|Add6~10_combout\,
	datad => VCC,
	cin => \inst7|sal[5]~9\,
	combout => \inst7|sal[6]~10_combout\,
	cout => \inst7|sal[6]~11\);

-- Location: LCCOMB_X38_Y21_N14
\inst7|sal[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|sal[7]~12_combout\ = (\inst7|Add6~12_combout\ & (!\inst7|sal[6]~11\)) # (!\inst7|Add6~12_combout\ & ((\inst7|sal[6]~11\) # (GND)))
-- \inst7|sal[7]~13\ = CARRY((!\inst7|sal[6]~11\) # (!\inst7|Add6~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add6~12_combout\,
	datad => VCC,
	cin => \inst7|sal[6]~11\,
	combout => \inst7|sal[7]~12_combout\,
	cout => \inst7|sal[7]~13\);

-- Location: LCCOMB_X38_Y21_N16
\inst7|sal[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|sal[8]~14_combout\ = (\inst7|Add6~14_combout\ & (\inst7|sal[7]~13\ $ (GND))) # (!\inst7|Add6~14_combout\ & (!\inst7|sal[7]~13\ & VCC))
-- \inst7|sal[8]~15\ = CARRY((\inst7|Add6~14_combout\ & !\inst7|sal[7]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add6~14_combout\,
	datad => VCC,
	cin => \inst7|sal[7]~13\,
	combout => \inst7|sal[8]~14_combout\,
	cout => \inst7|sal[8]~15\);

-- Location: LCCOMB_X38_Y21_N18
\inst7|sal[9]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|sal[9]~16_combout\ = (\inst7|Add6~16_combout\ & (!\inst7|sal[8]~15\)) # (!\inst7|Add6~16_combout\ & ((\inst7|sal[8]~15\) # (GND)))
-- \inst7|sal[9]~17\ = CARRY((!\inst7|sal[8]~15\) # (!\inst7|Add6~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add6~16_combout\,
	datad => VCC,
	cin => \inst7|sal[8]~15\,
	combout => \inst7|sal[9]~16_combout\,
	cout => \inst7|sal[9]~17\);

-- Location: LCCOMB_X38_Y21_N20
\inst7|sal[10]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|sal[10]~18_combout\ = \inst7|sal[9]~17\ $ (!\inst7|Add6~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Add6~18_combout\,
	cin => \inst7|sal[9]~17\,
	combout => \inst7|sal[10]~18_combout\);

-- Location: LCCOMB_X39_Y21_N26
\inst7|Add7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add7~9_combout\ = (!\inst|Selector73~0_combout\ & \inst7|sal[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector73~0_combout\,
	datad => \inst7|sal[10]~18_combout\,
	combout => \inst7|Add7~9_combout\);

-- Location: LCCOMB_X39_Y21_N0
\inst7|Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add7~10_combout\ = (!\inst|Selector73~0_combout\ & \inst7|sal[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector73~0_combout\,
	datad => \inst7|sal[9]~16_combout\,
	combout => \inst7|Add7~10_combout\);

-- Location: LCCOMB_X39_Y21_N22
\inst7|Add7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add7~11_combout\ = (!\inst|Selector73~0_combout\ & \inst7|sal[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector73~0_combout\,
	datac => \inst7|sal[8]~14_combout\,
	combout => \inst7|Add7~11_combout\);

-- Location: LCCOMB_X38_Y21_N26
\inst7|Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add7~2_combout\ = (!\inst|Selector73~0_combout\ & \inst7|sal[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector73~0_combout\,
	datac => \inst7|sal[7]~12_combout\,
	combout => \inst7|Add7~2_combout\);

-- Location: LCCOMB_X39_Y21_N10
\inst5|Q[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Q[5]~18_combout\ = (\inst7|Add7~4_combout\ & (\inst5|Q[4]~17\ $ (GND))) # (!\inst7|Add7~4_combout\ & (!\inst5|Q[4]~17\ & VCC))
-- \inst5|Q[5]~19\ = CARRY((\inst7|Add7~4_combout\ & !\inst5|Q[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add7~4_combout\,
	datad => VCC,
	cin => \inst5|Q[4]~17\,
	combout => \inst5|Q[5]~18_combout\,
	cout => \inst5|Q[5]~19\);

-- Location: LCCOMB_X39_Y21_N12
\inst5|Q[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Q[6]~20_combout\ = (\inst7|Add7~3_combout\ & (!\inst5|Q[5]~19\)) # (!\inst7|Add7~3_combout\ & ((\inst5|Q[5]~19\) # (GND)))
-- \inst5|Q[6]~21\ = CARRY((!\inst5|Q[5]~19\) # (!\inst7|Add7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add7~3_combout\,
	datad => VCC,
	cin => \inst5|Q[5]~19\,
	combout => \inst5|Q[6]~20_combout\,
	cout => \inst5|Q[6]~21\);

-- Location: LCCOMB_X39_Y21_N14
\inst5|Q[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Q[7]~22_combout\ = (\inst7|Add7~2_combout\ & (\inst5|Q[6]~21\ $ (GND))) # (!\inst7|Add7~2_combout\ & (!\inst5|Q[6]~21\ & VCC))
-- \inst5|Q[7]~23\ = CARRY((\inst7|Add7~2_combout\ & !\inst5|Q[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add7~2_combout\,
	datad => VCC,
	cin => \inst5|Q[6]~21\,
	combout => \inst5|Q[7]~22_combout\,
	cout => \inst5|Q[7]~23\);

-- Location: LCCOMB_X39_Y21_N16
\inst5|Q[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Q[8]~24_combout\ = (\inst7|Add7~11_combout\ & (!\inst5|Q[7]~23\)) # (!\inst7|Add7~11_combout\ & ((\inst5|Q[7]~23\) # (GND)))
-- \inst5|Q[8]~25\ = CARRY((!\inst5|Q[7]~23\) # (!\inst7|Add7~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add7~11_combout\,
	datad => VCC,
	cin => \inst5|Q[7]~23\,
	combout => \inst5|Q[8]~24_combout\,
	cout => \inst5|Q[8]~25\);

-- Location: LCCOMB_X39_Y21_N18
\inst5|Q[9]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Q[9]~26_combout\ = (\inst7|Add7~10_combout\ & (\inst5|Q[8]~25\ $ (GND))) # (!\inst7|Add7~10_combout\ & (!\inst5|Q[8]~25\ & VCC))
-- \inst5|Q[9]~27\ = CARRY((\inst7|Add7~10_combout\ & !\inst5|Q[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add7~10_combout\,
	datad => VCC,
	cin => \inst5|Q[8]~25\,
	combout => \inst5|Q[9]~26_combout\,
	cout => \inst5|Q[9]~27\);

-- Location: LCCOMB_X39_Y21_N20
\inst5|Q[10]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Q[10]~28_combout\ = \inst5|Q[9]~27\ $ (\inst7|Add7~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Add7~9_combout\,
	cin => \inst5|Q[9]~27\,
	combout => \inst5|Q[10]~28_combout\);

-- Location: FF_X39_Y21_N21
\inst5|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst5|Q[10]~28_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|Selector72~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Q\(10));

-- Location: FF_X39_Y21_N19
\inst5|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst5|Q[9]~26_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|Selector72~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Q\(9));

-- Location: FF_X39_Y21_N17
\inst5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst5|Q[8]~24_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|Selector72~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Q\(8));

-- Location: FF_X39_Y21_N15
\inst5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst5|Q[7]~22_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|Selector72~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Q\(7));

-- Location: LCCOMB_X38_Y22_N26
\inst45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45~0_combout\ = (!\inst5|Q\(9) & (!\inst5|Q\(8) & !\inst5|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Q\(9),
	datac => \inst5|Q\(8),
	datad => \inst5|Q\(7),
	combout => \inst45~0_combout\);

-- Location: LCCOMB_X37_Y22_N2
\inst35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35~0_combout\ = ((\inst11|LessThan0~0_combout\) # ((\inst5|Q\(10)) # (!\inst45~0_combout\))) # (!\inst11|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan0~1_combout\,
	datab => \inst11|LessThan0~0_combout\,
	datac => \inst5|Q\(10),
	datad => \inst45~0_combout\,
	combout => \inst35~0_combout\);

-- Location: FF_X40_Y25_N9
\inst|y.T49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst|y.T48~q\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T49~q\);

-- Location: LCCOMB_X41_Y23_N4
\inst|Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector49~0_combout\ = (!\inst35~0_combout\ & \inst|y.T49~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst35~0_combout\,
	datad => \inst|y.T49~q\,
	combout => \inst|Selector49~0_combout\);

-- Location: FF_X41_Y24_N19
\inst|y.T50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst|Selector49~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T50~q\);

-- Location: LCCOMB_X40_Y22_N10
\inst36|s[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst36|s[3]~6_combout\ = \inst65|Q\(3) $ (\inst36|s[2]~5\ $ (!\inst5|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|Q\(3),
	datad => \inst5|Q\(3),
	cin => \inst36|s[2]~5\,
	combout => \inst36|s[3]~6_combout\);

-- Location: LCCOMB_X39_Y22_N6
\inst38|s[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|s[3]~6_combout\ = \inst5|Q\(3) $ (\inst38|s[2]~5\ $ (!\inst65|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(3),
	datad => \inst65|Q\(3),
	cin => \inst38|s[2]~5\,
	combout => \inst38|s[3]~6_combout\);

-- Location: LCCOMB_X41_Y24_N14
\inst|Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector52~0_combout\ = (\inst|y.T50~q\ & ((\inst46|LessThan1~2_combout\ & ((!\inst38|s[3]~6_combout\))) # (!\inst46|LessThan1~2_combout\ & (!\inst36|s[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T50~q\,
	datab => \inst46|LessThan1~2_combout\,
	datac => \inst36|s[3]~6_combout\,
	datad => \inst38|s[3]~6_combout\,
	combout => \inst|Selector52~0_combout\);

-- Location: LCCOMB_X43_Y24_N30
\inst|Selector50~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector50~4_combout\ = (\inst|Selector52~0_combout\ & ((\inst46|LessThan1~2_combout\ & ((!\inst38|s[2]~4_combout\))) # (!\inst46|LessThan1~2_combout\ & (!\inst36|s[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|LessThan1~2_combout\,
	datab => \inst36|s[2]~4_combout\,
	datac => \inst38|s[2]~4_combout\,
	datad => \inst|Selector52~0_combout\,
	combout => \inst|Selector50~4_combout\);

-- Location: LCCOMB_X38_Y24_N30
\inst|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector24~0_combout\ = (\inst|y.T23~q\ & ((\inst|y~144_combout\) # ((\inst141|PB_SIN_REBOTE~q\ & \inst|y.T25~q\)))) # (!\inst|y.T23~q\ & (\inst141|PB_SIN_REBOTE~q\ & (\inst|y.T25~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T23~q\,
	datab => \inst141|PB_SIN_REBOTE~q\,
	datac => \inst|y.T25~q\,
	datad => \inst|y~144_combout\,
	combout => \inst|Selector24~0_combout\);

-- Location: FF_X38_Y24_N31
\inst|y.T25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector24~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T25~q\);

-- Location: LCCOMB_X40_Y24_N30
\inst|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector26~0_combout\ = (\inst|y.T25~q\ & (((\inst|y.T27~q\ & !\inst75~0_combout\)) # (!\inst141|PB_SIN_REBOTE~q\))) # (!\inst|y.T25~q\ & (((\inst|y.T27~q\ & !\inst75~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T25~q\,
	datab => \inst141|PB_SIN_REBOTE~q\,
	datac => \inst|y.T27~q\,
	datad => \inst75~0_combout\,
	combout => \inst|Selector26~0_combout\);

-- Location: LCCOMB_X41_Y24_N20
\inst|Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector65~0_combout\ = (\inst|y.T27~q\ & ((\inst72|Q\(1)) # ((\inst72|Q\(3)) # (\inst72|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|Q\(1),
	datab => \inst72|Q\(3),
	datac => \inst|y.T27~q\,
	datad => \inst72|Q\(2),
	combout => \inst|Selector65~0_combout\);

-- Location: FF_X41_Y24_N21
\inst|y.t66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector65~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t66~q\);

-- Location: LCCOMB_X40_Y24_N24
\inst|Selector26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector26~1_combout\ = (\inst|Selector26~0_combout\) # ((\inst107|Equal0~0_combout\ & \inst|y.t66~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|Equal0~0_combout\,
	datab => \inst|Selector26~0_combout\,
	datad => \inst|y.t66~q\,
	combout => \inst|Selector26~1_combout\);

-- Location: FF_X40_Y24_N25
\inst|y.T27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector26~1_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T27~q\);

-- Location: LCCOMB_X43_Y24_N2
\inst|Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector64~0_combout\ = (\inst|y.T20~q\ & ((\inst72|Q\(3)) # ((\inst72|Q\(1)) # (\inst72|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|Q\(3),
	datab => \inst72|Q\(1),
	datac => \inst|y.T20~q\,
	datad => \inst72|Q\(2),
	combout => \inst|Selector64~0_combout\);

-- Location: FF_X43_Y24_N3
\inst|y.t65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector64~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t65~q\);

-- Location: LCCOMB_X40_Y25_N28
\inst|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector17~0_combout\ = (\inst|y~144_combout\ & ((\inst|y.T16~q\) # ((\inst|y.T18~q\ & \inst141|PB_SIN_REBOTE~q\)))) # (!\inst|y~144_combout\ & (((\inst|y.T18~q\ & \inst141|PB_SIN_REBOTE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y~144_combout\,
	datab => \inst|y.T16~q\,
	datac => \inst|y.T18~q\,
	datad => \inst141|PB_SIN_REBOTE~q\,
	combout => \inst|Selector17~0_combout\);

-- Location: FF_X40_Y25_N29
\inst|y.T18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector17~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T18~q\);

-- Location: LCCOMB_X44_Y24_N0
\inst|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector19~0_combout\ = (\inst|y.T20~q\ & (((!\inst141|PB_SIN_REBOTE~q\ & \inst|y.T18~q\)) # (!\inst75~0_combout\))) # (!\inst|y.T20~q\ & (!\inst141|PB_SIN_REBOTE~q\ & (\inst|y.T18~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T20~q\,
	datab => \inst141|PB_SIN_REBOTE~q\,
	datac => \inst|y.T18~q\,
	datad => \inst75~0_combout\,
	combout => \inst|Selector19~0_combout\);

-- Location: LCCOMB_X44_Y24_N12
\inst|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector19~1_combout\ = (\inst|Selector19~0_combout\) # ((\inst|y.t65~q\ & \inst107|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t65~q\,
	datac => \inst107|Equal0~0_combout\,
	datad => \inst|Selector19~0_combout\,
	combout => \inst|Selector19~1_combout\);

-- Location: FF_X44_Y24_N13
\inst|y.T20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector19~1_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T20~q\);

-- Location: LCCOMB_X43_Y24_N16
\inst|Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector67~0_combout\ = (\inst|y.T40~q\ & ((\inst72|Q\(2)) # ((\inst72|Q\(3)) # (\inst72|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T40~q\,
	datab => \inst72|Q\(2),
	datac => \inst72|Q\(3),
	datad => \inst72|Q\(1),
	combout => \inst|Selector67~0_combout\);

-- Location: FF_X43_Y24_N17
\inst|y.t68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector67~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t68~q\);

-- Location: LCCOMB_X43_Y24_N24
\inst|Selector36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector36~1_combout\ = (\inst140|PB_SIN_REBOTE~q\ & ((\inst|Selector36~0_combout\) # (\inst|y.T37~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector36~0_combout\,
	datac => \inst|y.T37~q\,
	datad => \inst140|PB_SIN_REBOTE~q\,
	combout => \inst|Selector36~1_combout\);

-- Location: FF_X43_Y24_N25
\inst|y.T37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector36~1_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T37~q\);

-- Location: LCCOMB_X43_Y24_N26
\inst|Selector35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector35~1_combout\ = (\inst|y.T37~q\) # ((!\inst141|PB_SIN_REBOTE~q\ & (!\inst256~combout\ & \inst|Selector36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst141|PB_SIN_REBOTE~q\,
	datab => \inst|y.T37~q\,
	datac => \inst256~combout\,
	datad => \inst|Selector36~0_combout\,
	combout => \inst|Selector35~1_combout\);

-- Location: LCCOMB_X43_Y24_N18
\inst36|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst36|Add0~0_combout\ = (\inst46|LessThan1~2_combout\ & (\inst38|s[2]~4_combout\)) # (!\inst46|LessThan1~2_combout\ & ((\inst36|s[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|LessThan1~2_combout\,
	datac => \inst38|s[2]~4_combout\,
	datad => \inst36|s[2]~4_combout\,
	combout => \inst36|Add0~0_combout\);

-- Location: LCCOMB_X41_Y24_N0
\inst36|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst36|Add0~3_combout\ = (\inst46|LessThan1~2_combout\ & ((\inst38|s[3]~6_combout\))) # (!\inst46|LessThan1~2_combout\ & (\inst36|s[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|LessThan1~2_combout\,
	datac => \inst36|s[3]~6_combout\,
	datad => \inst38|s[3]~6_combout\,
	combout => \inst36|Add0~3_combout\);

-- Location: LCCOMB_X41_Y24_N18
\inst|Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector53~0_combout\ = (\inst|y.T50~q\ & ((\inst36|Add0~3_combout\) # ((\inst36|Add0~0_combout\ & !\inst|Selector50~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst36|Add0~0_combout\,
	datab => \inst36|Add0~3_combout\,
	datac => \inst|y.T50~q\,
	datad => \inst|Selector50~2_combout\,
	combout => \inst|Selector53~0_combout\);

-- Location: LCCOMB_X41_Y24_N6
\inst|Selector53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector53~1_combout\ = (\inst|Selector53~0_combout\) # ((!\inst75~0_combout\ & \inst|y.T54~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst75~0_combout\,
	datac => \inst|y.T54~q\,
	datad => \inst|Selector53~0_combout\,
	combout => \inst|Selector53~1_combout\);

-- Location: FF_X41_Y24_N7
\inst|y.T54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector53~1_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T54~q\);

-- Location: LCCOMB_X41_Y24_N30
\inst|Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector62~0_combout\ = (\inst|y.T49~q\ & (((\inst35~0_combout\)))) # (!\inst|y.T49~q\ & (!\inst75~0_combout\ & (\inst|y.T63~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T49~q\,
	datab => \inst75~0_combout\,
	datac => \inst|y.T63~q\,
	datad => \inst35~0_combout\,
	combout => \inst|Selector62~0_combout\);

-- Location: FF_X41_Y24_N31
\inst|y.T63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector62~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T63~q\);

-- Location: LCCOMB_X40_Y22_N30
\inst36|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst36|Add0~1_combout\ = (\inst46|LessThan1~2_combout\ & (\inst38|s[0]~0_combout\)) # (!\inst46|LessThan1~2_combout\ & ((\inst36|s[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|s[0]~0_combout\,
	datab => \inst36|s[0]~0_combout\,
	datad => \inst46|LessThan1~2_combout\,
	combout => \inst36|Add0~1_combout\);

-- Location: LCCOMB_X41_Y24_N10
\inst|Selector52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector52~1_combout\ = (\inst|Selector52~0_combout\ & ((\inst36|Add0~2_combout\ & (!\inst36|Add0~0_combout\ & \inst36|Add0~1_combout\)) # (!\inst36|Add0~2_combout\ & (\inst36|Add0~0_combout\ & !\inst36|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst36|Add0~2_combout\,
	datab => \inst|Selector52~0_combout\,
	datac => \inst36|Add0~0_combout\,
	datad => \inst36|Add0~1_combout\,
	combout => \inst|Selector52~1_combout\);

-- Location: LCCOMB_X41_Y24_N12
\inst|Selector52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector52~2_combout\ = (\inst|Selector52~1_combout\) # ((!\inst75~0_combout\ & \inst|y.T53~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst75~0_combout\,
	datac => \inst|y.T53~q\,
	datad => \inst|Selector52~1_combout\,
	combout => \inst|Selector52~2_combout\);

-- Location: FF_X41_Y24_N13
\inst|y.T53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector52~2_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T53~q\);

-- Location: LCCOMB_X41_Y24_N4
\inst|WideOr83~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr83~2_combout\ = (!\inst|y.T54~q\ & (!\inst|y.T52~q\ & (!\inst|y.T63~q\ & !\inst|y.T53~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T54~q\,
	datab => \inst|y.T52~q\,
	datac => \inst|y.T63~q\,
	datad => \inst|y.T53~q\,
	combout => \inst|WideOr83~2_combout\);

-- Location: LCCOMB_X43_Y24_N10
\inst|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector35~0_combout\ = (\inst107|Equal0~0_combout\ & (((\inst75~0_combout\ & !\inst|WideOr83~2_combout\)))) # (!\inst107|Equal0~0_combout\ & ((\inst|y.t68~q\) # ((\inst75~0_combout\ & !\inst|WideOr83~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|Equal0~0_combout\,
	datab => \inst|y.t68~q\,
	datac => \inst75~0_combout\,
	datad => \inst|WideOr83~2_combout\,
	combout => \inst|Selector35~0_combout\);

-- Location: LCCOMB_X43_Y24_N12
\inst|Selector35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector35~2_combout\ = (\inst|y.T35~q\) # ((\inst|Selector35~0_combout\) # ((!\inst140|PB_SIN_REBOTE~q\ & \inst|Selector35~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst140|PB_SIN_REBOTE~q\,
	datab => \inst|y.T35~q\,
	datac => \inst|Selector35~1_combout\,
	datad => \inst|Selector35~0_combout\,
	combout => \inst|Selector35~2_combout\);

-- Location: FF_X43_Y24_N13
\inst|y.T36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector35~2_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T36~q\);

-- Location: LCCOMB_X43_Y24_N28
\inst|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector36~0_combout\ = (\inst|y.T36~q\ & (!\inst139|PB_SIN_REBOTE~q\ & \inst71~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T36~q\,
	datac => \inst139|PB_SIN_REBOTE~q\,
	datad => \inst71~combout\,
	combout => \inst|Selector36~0_combout\);

-- Location: LCCOMB_X43_Y24_N20
\inst|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector37~0_combout\ = (\inst141|PB_SIN_REBOTE~q\ & ((\inst|y.T38~q\) # ((\inst|Selector36~0_combout\ & !\inst140|PB_SIN_REBOTE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst141|PB_SIN_REBOTE~q\,
	datab => \inst|Selector36~0_combout\,
	datac => \inst|y.T38~q\,
	datad => \inst140|PB_SIN_REBOTE~q\,
	combout => \inst|Selector37~0_combout\);

-- Location: FF_X43_Y24_N21
\inst|y.T38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector37~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T38~q\);

-- Location: LCCOMB_X43_Y24_N0
\inst|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector39~0_combout\ = (\inst141|PB_SIN_REBOTE~q\ & (((!\inst75~0_combout\ & \inst|y.T40~q\)))) # (!\inst141|PB_SIN_REBOTE~q\ & ((\inst|y.T38~q\) # ((!\inst75~0_combout\ & \inst|y.T40~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst141|PB_SIN_REBOTE~q\,
	datab => \inst|y.T38~q\,
	datac => \inst75~0_combout\,
	datad => \inst|y.T40~q\,
	combout => \inst|Selector39~0_combout\);

-- Location: LCCOMB_X43_Y24_N6
\inst|Selector39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector39~1_combout\ = (\inst|Selector39~0_combout\) # ((\inst|y.t68~q\ & \inst107|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t68~q\,
	datac => \inst107|Equal0~0_combout\,
	datad => \inst|Selector39~0_combout\,
	combout => \inst|Selector39~1_combout\);

-- Location: FF_X43_Y24_N7
\inst|y.T40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector39~1_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T40~q\);

-- Location: LCCOMB_X40_Y26_N12
\inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (\inst|y~144_combout\ & ((\inst|y.T5~q\) # ((\inst141|PB_SIN_REBOTE~q\ & \inst|y.T7~q\)))) # (!\inst|y~144_combout\ & (\inst141|PB_SIN_REBOTE~q\ & (\inst|y.T7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y~144_combout\,
	datab => \inst141|PB_SIN_REBOTE~q\,
	datac => \inst|y.T7~q\,
	datad => \inst|y.T5~q\,
	combout => \inst|Selector6~0_combout\);

-- Location: FF_X40_Y26_N13
\inst|y.T7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector6~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T7~q\);

-- Location: LCCOMB_X38_Y24_N14
\inst|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector8~0_combout\ = (!\inst141|PB_SIN_REBOTE~q\ & \inst|y.T7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst141|PB_SIN_REBOTE~q\,
	datac => \inst|y.T7~q\,
	combout => \inst|Selector8~0_combout\);

-- Location: LCCOMB_X39_Y24_N16
\inst|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector8~1_combout\ = (\inst|Selector8~0_combout\) # ((\inst|y.T9~q\ & ((\inst107|Equal0~0_combout\) # (!\inst75~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector8~0_combout\,
	datab => \inst107|Equal0~0_combout\,
	datac => \inst|y.T9~q\,
	datad => \inst75~0_combout\,
	combout => \inst|Selector8~1_combout\);

-- Location: FF_X39_Y24_N17
\inst|y.T9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector8~1_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T9~q\);

-- Location: LCCOMB_X41_Y24_N2
\inst|Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector66~0_combout\ = (\inst|y.T32~q\ & ((\inst72|Q\(2)) # ((\inst72|Q\(1)) # (\inst72|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T32~q\,
	datab => \inst72|Q\(2),
	datac => \inst72|Q\(1),
	datad => \inst72|Q\(3),
	combout => \inst|Selector66~0_combout\);

-- Location: FF_X41_Y24_N3
\inst|y.t67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector66~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t67~q\);

-- Location: LCCOMB_X40_Y26_N4
\inst|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector29~0_combout\ = (\inst|y~144_combout\ & ((\inst|y.T28~q\) # ((\inst141|PB_SIN_REBOTE~q\ & \inst|y.T30~q\)))) # (!\inst|y~144_combout\ & (\inst141|PB_SIN_REBOTE~q\ & (\inst|y.T30~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y~144_combout\,
	datab => \inst141|PB_SIN_REBOTE~q\,
	datac => \inst|y.T30~q\,
	datad => \inst|y.T28~q\,
	combout => \inst|Selector29~0_combout\);

-- Location: FF_X40_Y26_N5
\inst|y.T30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector29~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T30~q\);

-- Location: LCCOMB_X40_Y26_N2
\inst|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector31~0_combout\ = (\inst|y.T32~q\ & (((!\inst141|PB_SIN_REBOTE~q\ & \inst|y.T30~q\)) # (!\inst75~0_combout\))) # (!\inst|y.T32~q\ & (!\inst141|PB_SIN_REBOTE~q\ & (\inst|y.T30~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T32~q\,
	datab => \inst141|PB_SIN_REBOTE~q\,
	datac => \inst|y.T30~q\,
	datad => \inst75~0_combout\,
	combout => \inst|Selector31~0_combout\);

-- Location: LCCOMB_X40_Y26_N6
\inst|Selector31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector31~1_combout\ = (\inst|Selector31~0_combout\) # ((\inst|y.t67~q\ & \inst107|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.t67~q\,
	datac => \inst107|Equal0~0_combout\,
	datad => \inst|Selector31~0_combout\,
	combout => \inst|Selector31~1_combout\);

-- Location: FF_X40_Y26_N7
\inst|y.T32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector31~1_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T32~q\);

-- Location: LCCOMB_X40_Y24_N2
\inst|WideOr83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr83~0_combout\ = (!\inst|y.T40~q\ & (!\inst|y.T47~q\ & (!\inst|y.T9~q\ & !\inst|y.T32~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T40~q\,
	datab => \inst|y.T47~q\,
	datac => \inst|y.T9~q\,
	datad => \inst|y.T32~q\,
	combout => \inst|WideOr83~0_combout\);

-- Location: LCCOMB_X40_Y24_N10
\inst|WideOr83~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr83~1_combout\ = (!\inst|y.T27~q\ & (!\inst|y.T20~q\ & (!\inst|y.T14~q\ & \inst|WideOr83~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T27~q\,
	datab => \inst|y.T20~q\,
	datac => \inst|y.T14~q\,
	datad => \inst|WideOr83~0_combout\,
	combout => \inst|WideOr83~1_combout\);

-- Location: LCCOMB_X40_Y24_N0
\inst72|Q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst72|Q[0]~5_combout\ = \inst72|Q\(0) $ (((\inst|y.T3~q\) # ((!\inst|WideOr83~1_combout\) # (!\inst|WideOr83~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T3~q\,
	datab => \inst|WideOr83~3_combout\,
	datac => \inst72|Q\(0),
	datad => \inst|WideOr83~1_combout\,
	combout => \inst72|Q[0]~5_combout\);

-- Location: LCCOMB_X40_Y24_N4
\inst|WideOr83~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr83~4_combout\ = (\inst|y.T27~q\) # ((\inst|y.T62~q\) # ((\inst|y.T3~q\) # (\inst|y.T14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T27~q\,
	datab => \inst|y.T62~q\,
	datac => \inst|y.T3~q\,
	datad => \inst|y.T14~q\,
	combout => \inst|WideOr83~4_combout\);

-- Location: LCCOMB_X40_Y24_N14
\inst|WideOr83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr83~combout\ = (\inst|WideOr83~2_combout\ & (!\inst|y.T20~q\ & (!\inst|WideOr83~4_combout\ & \inst|WideOr83~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr83~2_combout\,
	datab => \inst|y.T20~q\,
	datac => \inst|WideOr83~4_combout\,
	datad => \inst|WideOr83~0_combout\,
	combout => \inst|WideOr83~combout\);

-- Location: FF_X40_Y24_N1
\inst72|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_1Hz~clkctrl_outclk\,
	d => \inst72|Q[0]~5_combout\,
	clrn => \inst|ALT_INV_WideOr83~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst72|Q\(0));

-- Location: LCCOMB_X40_Y24_N6
\inst72|Q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst72|Q[1]~0_combout\ = (\inst72|Q\(0) & (((\inst|y.T3~q\) # (!\inst|WideOr83~3_combout\)) # (!\inst|WideOr83~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr83~1_combout\,
	datab => \inst|y.T3~q\,
	datac => \inst|WideOr83~3_combout\,
	datad => \inst72|Q\(0),
	combout => \inst72|Q[1]~0_combout\);

-- Location: LCCOMB_X40_Y24_N28
\inst72|Q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst72|Q[3]~1_combout\ = \inst72|Q\(3) $ (((\inst72|Q\(2) & (\inst72|Q\(1) & \inst72|Q[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|Q\(2),
	datab => \inst72|Q\(1),
	datac => \inst72|Q\(3),
	datad => \inst72|Q[1]~0_combout\,
	combout => \inst72|Q[3]~1_combout\);

-- Location: FF_X40_Y24_N29
\inst72|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_1Hz~clkctrl_outclk\,
	d => \inst72|Q[3]~1_combout\,
	clrn => \inst|ALT_INV_WideOr83~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst72|Q\(3));

-- Location: LCCOMB_X41_Y24_N8
\inst|Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector51~0_combout\ = (\inst|y.T52~q\ & (!\inst72|Q\(3) & (!\inst72|Q\(1) & !\inst72|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T52~q\,
	datab => \inst72|Q\(3),
	datac => \inst72|Q\(1),
	datad => \inst72|Q\(2),
	combout => \inst|Selector51~0_combout\);

-- Location: LCCOMB_X41_Y24_N28
\inst|Selector51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector51~1_combout\ = (\inst|Selector51~0_combout\) # ((\inst|Selector50~4_combout\ & (\inst36|Add0~2_combout\ $ (\inst36|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst36|Add0~2_combout\,
	datab => \inst|Selector50~4_combout\,
	datac => \inst|Selector51~0_combout\,
	datad => \inst36|Add0~1_combout\,
	combout => \inst|Selector51~1_combout\);

-- Location: FF_X41_Y24_N29
\inst|y.T52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector51~1_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T52~q\);

-- Location: LCCOMB_X41_Y24_N26
\inst|Selector71~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector71~2_combout\ = (!\inst|y.T52~q\ & (!\inst|y.T53~q\ & !\inst|y.T54~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T52~q\,
	datac => \inst|y.T53~q\,
	datad => \inst|y.T54~q\,
	combout => \inst|Selector71~2_combout\);

-- Location: LCCOMB_X39_Y24_N14
\inst|Selector71~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector71~3_combout\ = (\inst|y.T35~q\) # ((\inst|y.T3~q\) # ((!\inst|Selector71~2_combout\ & \inst75~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T35~q\,
	datab => \inst|Selector71~2_combout\,
	datac => \inst|y.T3~q\,
	datad => \inst75~0_combout\,
	combout => \inst|Selector71~3_combout\);

-- Location: FF_X39_Y24_N23
\inst68|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst68|Q~4_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|Selector71~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst68|Q\(0));

-- Location: LCCOMB_X39_Y24_N20
\inst68|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst68|Q~3_combout\ = (\inst|y.T3~q\) # ((\inst|y.T35~q\) # (\inst68|Q\(0) $ (!\inst68|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst68|Q\(0),
	datab => \inst|y.T3~q\,
	datac => \inst68|Q\(1),
	datad => \inst|y.T35~q\,
	combout => \inst68|Q~3_combout\);

-- Location: FF_X39_Y24_N21
\inst68|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst68|Q~3_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|Selector71~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst68|Q\(1));

-- Location: LCCOMB_X39_Y24_N4
\inst|WideOr78~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr78~4_combout\ = (!\inst|y.T35~q\ & !\inst|y.T3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T35~q\,
	datac => \inst|y.T3~q\,
	combout => \inst|WideOr78~4_combout\);

-- Location: LCCOMB_X39_Y24_N18
\inst68|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst68|Q~2_combout\ = (\inst|WideOr78~4_combout\ & (\inst68|Q\(2) $ (((!\inst68|Q\(0) & !\inst68|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst68|Q\(0),
	datab => \inst|WideOr78~4_combout\,
	datac => \inst68|Q\(2),
	datad => \inst68|Q\(1),
	combout => \inst68|Q~2_combout\);

-- Location: FF_X39_Y24_N19
\inst68|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst68|Q~2_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|Selector71~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst68|Q\(2));

-- Location: LCCOMB_X39_Y24_N12
\inst68|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst68|Add0~0_combout\ = \inst68|Q\(3) $ (((\inst68|Q\(1)) # ((\inst68|Q\(0)) # (\inst68|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst68|Q\(3),
	datab => \inst68|Q\(1),
	datac => \inst68|Q\(0),
	datad => \inst68|Q\(2),
	combout => \inst68|Add0~0_combout\);

-- Location: LCCOMB_X39_Y24_N6
\inst68|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst68|Q~5_combout\ = (!\inst68|Add0~0_combout\ & (!\inst|y.T3~q\ & !\inst|y.T35~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst68|Add0~0_combout\,
	datac => \inst|y.T3~q\,
	datad => \inst|y.T35~q\,
	combout => \inst68|Q~5_combout\);

-- Location: FF_X39_Y24_N7
\inst68|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst68|Q~5_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|Selector71~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst68|Q\(3));

-- Location: LCCOMB_X39_Y24_N30
inst71 : cycloneive_lcell_comb
-- Equation(s):
-- \inst71~combout\ = (\inst68|Q\(3)) # ((\inst68|Q\(1)) # ((\inst68|Q\(0)) # (\inst68|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst68|Q\(3),
	datab => \inst68|Q\(1),
	datac => \inst68|Q\(0),
	datad => \inst68|Q\(2),
	combout => \inst71~combout\);

-- Location: LCCOMB_X41_Y25_N20
\inst|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~1_combout\ = (\inst71~combout\ & \inst|y.T36~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst71~combout\,
	datac => \inst|y.T36~q\,
	combout => \inst|Selector2~1_combout\);

-- Location: LCCOMB_X40_Y25_N26
\inst|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~2_combout\ = (\inst|y.T23~q\) # ((\inst|y.T41~q\) # ((\inst|y.T28~q\) # (!\inst|WideOr90~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T23~q\,
	datab => \inst|y.T41~q\,
	datac => \inst|y.T28~q\,
	datad => \inst|WideOr90~0_combout\,
	combout => \inst|Selector2~2_combout\);

-- Location: LCCOMB_X38_Y24_N12
\inst|y.T1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y.T1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|y.T1~feeder_combout\);

-- Location: FF_X38_Y24_N13
\inst|y.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|y.T1~feeder_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T1~q\);

-- Location: LCCOMB_X38_Y24_N22
\inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = ((\inst107|Equal0~0_combout\ & \inst|y.T2~q\)) # (!\inst|y.T1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst107|Equal0~0_combout\,
	datac => \inst|y.T2~q\,
	datad => \inst|y.T1~q\,
	combout => \inst|Selector1~0_combout\);

-- Location: FF_X38_Y24_N23
\inst|y.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector1~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T2~q\);

-- Location: LCCOMB_X39_Y24_N26
\inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\inst|y.T3~q\ & (((!\inst107|Equal0~0_combout\ & \inst|y.T2~q\)) # (!\inst138|PB_SIN_REBOTE~q\))) # (!\inst|y.T3~q\ & (!\inst107|Equal0~0_combout\ & ((\inst|y.T2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T3~q\,
	datab => \inst107|Equal0~0_combout\,
	datac => \inst138|PB_SIN_REBOTE~q\,
	datad => \inst|y.T2~q\,
	combout => \inst|Selector2~0_combout\);

-- Location: LCCOMB_X40_Y25_N20
\inst|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~3_combout\ = (\inst|Selector2~0_combout\) # ((\inst139|PB_SIN_REBOTE~q\ & ((\inst|Selector2~1_combout\) # (\inst|Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector2~1_combout\,
	datab => \inst139|PB_SIN_REBOTE~q\,
	datac => \inst|Selector2~2_combout\,
	datad => \inst|Selector2~0_combout\,
	combout => \inst|Selector2~3_combout\);

-- Location: FF_X40_Y24_N19
\inst|y.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst|Selector2~3_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T3~q\);

-- Location: LCCOMB_X40_Y26_N10
\inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (\inst138|PB_SIN_REBOTE~q\ & ((\inst|y.T3~q\) # (\inst|y.T4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst138|PB_SIN_REBOTE~q\,
	datab => \inst|y.T3~q\,
	datac => \inst|y.T4~q\,
	combout => \inst|Selector3~0_combout\);

-- Location: FF_X40_Y26_N11
\inst|y.T4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector3~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T4~q\);

-- Location: LCCOMB_X40_Y26_N24
\inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (\inst140|PB_SIN_REBOTE~q\ & ((\inst|y.T6~q\) # ((!\inst139|PB_SIN_REBOTE~q\ & \inst|y.T5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst139|PB_SIN_REBOTE~q\,
	datab => \inst|y.T5~q\,
	datac => \inst|y.T6~q\,
	datad => \inst140|PB_SIN_REBOTE~q\,
	combout => \inst|Selector5~0_combout\);

-- Location: FF_X40_Y26_N25
\inst|y.T6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector5~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T6~q\);

-- Location: LCCOMB_X40_Y26_N8
\inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\inst|y.T4~q\ & (((\inst|y.T6~q\ & !\inst140|PB_SIN_REBOTE~q\)) # (!\inst138|PB_SIN_REBOTE~q\))) # (!\inst|y.T4~q\ & (\inst|y.T6~q\ & ((!\inst140|PB_SIN_REBOTE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T4~q\,
	datab => \inst|y.T6~q\,
	datac => \inst138|PB_SIN_REBOTE~q\,
	datad => \inst140|PB_SIN_REBOTE~q\,
	combout => \inst|Selector4~0_combout\);

-- Location: LCCOMB_X40_Y26_N18
\inst|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~1_combout\ = (\inst75~0_combout\ & ((\inst|y.T62~q\) # ((\inst|y.T9~q\ & !\inst107|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T9~q\,
	datab => \inst|y.T62~q\,
	datac => \inst107|Equal0~0_combout\,
	datad => \inst75~0_combout\,
	combout => \inst|Selector4~1_combout\);

-- Location: LCCOMB_X40_Y26_N28
\inst|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~2_combout\ = (\inst|Selector4~0_combout\) # ((\inst|Selector4~1_combout\) # ((!\inst|y~142_combout\ & \inst|y.T5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y~142_combout\,
	datab => \inst|Selector4~0_combout\,
	datac => \inst|y.T5~q\,
	datad => \inst|Selector4~1_combout\,
	combout => \inst|Selector4~2_combout\);

-- Location: FF_X40_Y26_N29
\inst|y.T5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector4~2_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T5~q\);

-- Location: LCCOMB_X39_Y26_N18
\inst|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector7~0_combout\ = (\inst|y~143_combout\ & ((\inst|y.T5~q\) # ((\inst|y.T8~q\ & \inst256~combout\)))) # (!\inst|y~143_combout\ & (((\inst|y.T8~q\ & \inst256~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y~143_combout\,
	datab => \inst|y.T5~q\,
	datac => \inst|y.T8~q\,
	datad => \inst256~combout\,
	combout => \inst|Selector7~0_combout\);

-- Location: FF_X39_Y26_N19
\inst|y.T8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector7~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T8~q\);

-- Location: LCCOMB_X43_Y24_N14
\inst|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector38~0_combout\ = (\inst|y.T36~q\ & (\inst71~combout\ & (!\inst139|PB_SIN_REBOTE~q\ & !\inst140|PB_SIN_REBOTE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T36~q\,
	datab => \inst71~combout\,
	datac => \inst139|PB_SIN_REBOTE~q\,
	datad => \inst140|PB_SIN_REBOTE~q\,
	combout => \inst|Selector38~0_combout\);

-- Location: LCCOMB_X43_Y24_N22
\inst|Selector38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector38~1_combout\ = (\inst256~combout\ & ((\inst|y.T39~q\) # ((\inst|Selector38~0_combout\ & !\inst141|PB_SIN_REBOTE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst256~combout\,
	datab => \inst|Selector38~0_combout\,
	datac => \inst|y.T39~q\,
	datad => \inst141|PB_SIN_REBOTE~q\,
	combout => \inst|Selector38~1_combout\);

-- Location: FF_X43_Y24_N23
\inst|y.T39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector38~1_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T39~q\);

-- Location: LCCOMB_X39_Y25_N16
\inst|Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector72~0_combout\ = (!\inst|y.T26~q\ & (!\inst|y.T8~q\ & !\inst|y.T39~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T26~q\,
	datab => \inst|y.T8~q\,
	datad => \inst|y.T39~q\,
	combout => \inst|Selector72~0_combout\);

-- Location: LCCOMB_X39_Y25_N14
\inst|Selector72~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector72~1_combout\ = ((\inst|y.T3~q\) # ((!\inst|Selector72~0_combout\ & \inst256~combout\))) # (!\inst|Selector73~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector73~0_combout\,
	datab => \inst|Selector72~0_combout\,
	datac => \inst|y.T3~q\,
	datad => \inst256~combout\,
	combout => \inst|Selector72~1_combout\);

-- Location: LCCOMB_X40_Y21_N2
\inst5|Q[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Q[0]~30_combout\ = (\inst|Selector72~1_combout\ & (\inst3|Q\(0))) # (!\inst|Selector72~1_combout\ & ((\inst5|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(0),
	datac => \inst5|Q\(0),
	datad => \inst|Selector72~1_combout\,
	combout => \inst5|Q[0]~30_combout\);

-- Location: FF_X40_Y21_N3
\inst5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst5|Q[0]~30_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Q\(0));

-- Location: LCCOMB_X40_Y21_N8
\inst7|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add2~0_combout\ = (\inst5|Q\(2) & (\inst5|Q\(0) $ (VCC))) # (!\inst5|Q\(2) & (\inst5|Q\(0) & VCC))
-- \inst7|Add2~1\ = CARRY((\inst5|Q\(2) & \inst5|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(2),
	datab => \inst5|Q\(0),
	datad => VCC,
	combout => \inst7|Add2~0_combout\,
	cout => \inst7|Add2~1\);

-- Location: LCCOMB_X38_Y21_N30
\inst7|Add7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add7~7_combout\ = (!\inst|Selector73~0_combout\ & \inst7|sal[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector73~0_combout\,
	datac => \inst7|sal[2]~2_combout\,
	combout => \inst7|Add7~7_combout\);

-- Location: LCCOMB_X40_Y21_N30
\inst5|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Q[2]~feeder_combout\ = \inst5|Q[2]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Q[2]~12_combout\,
	combout => \inst5|Q[2]~feeder_combout\);

-- Location: FF_X40_Y21_N31
\inst5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst5|Q[2]~feeder_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|Selector72~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Q\(2));

-- Location: LCCOMB_X38_Y21_N24
\inst7|Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add7~6_combout\ = (!\inst|Selector73~0_combout\ & \inst7|sal[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector73~0_combout\,
	datad => \inst7|sal[3]~4_combout\,
	combout => \inst7|Add7~6_combout\);

-- Location: LCCOMB_X40_Y21_N24
\inst5|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Q[3]~feeder_combout\ = \inst5|Q[3]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Q[3]~14_combout\,
	combout => \inst5|Q[3]~feeder_combout\);

-- Location: FF_X40_Y21_N25
\inst5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst5|Q[3]~feeder_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|Selector72~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Q\(3));

-- Location: LCCOMB_X39_Y21_N30
\inst7|Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add7~4_combout\ = (!\inst|Selector73~0_combout\ & \inst7|sal[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector73~0_combout\,
	datad => \inst7|sal[5]~8_combout\,
	combout => \inst7|Add7~4_combout\);

-- Location: FF_X39_Y21_N11
\inst5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst5|Q[5]~18_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|Selector72~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Q\(5));

-- Location: LCCOMB_X37_Y22_N6
\inst11|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~1_combout\ = (!\inst5|Q\(5) & (!\inst5|Q\(4) & !\inst5|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(5),
	datac => \inst5|Q\(4),
	datad => \inst5|Q\(6),
	combout => \inst11|LessThan0~1_combout\);

-- Location: LCCOMB_X37_Y22_N0
\inst15|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|LessThan1~0_combout\ = (!\inst5|Q\(4) & !\inst5|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Q\(4),
	datad => \inst5|Q\(3),
	combout => \inst15|LessThan1~0_combout\);

-- Location: LCCOMB_X37_Y22_N4
\inst15|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|LessThan1~1_combout\ = (\inst5|Q\(5) & (\inst5|Q\(6) & ((\inst5|Q\(2)) # (!\inst15|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(5),
	datab => \inst15|LessThan1~0_combout\,
	datac => \inst5|Q\(2),
	datad => \inst5|Q\(6),
	combout => \inst15|LessThan1~1_combout\);

-- Location: FF_X37_Y22_N23
\inst40|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst5|Q\(6),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T33~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst40|Q\(6));

-- Location: LCCOMB_X39_Y23_N22
\inst|WideOr85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr85~combout\ = (!\inst|y.T51~q\ & (!\inst|y.T42~q\ & !\inst|y.T3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T51~q\,
	datab => \inst|y.T42~q\,
	datad => \inst|y.T3~q\,
	combout => \inst|WideOr85~combout\);

-- Location: LCCOMB_X39_Y23_N12
\inst76|Q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst76|Q[0]~4_combout\ = \inst76|Q\(0) $ (((\inst|y.T51~q\) # ((\inst|y.T42~q\) # (\inst|y.T3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T51~q\,
	datab => \inst|y.T42~q\,
	datac => \inst76|Q\(0),
	datad => \inst|y.T3~q\,
	combout => \inst76|Q[0]~4_combout\);

-- Location: FF_X39_Y23_N13
\inst76|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_1Hz~clkctrl_outclk\,
	d => \inst76|Q[0]~4_combout\,
	clrn => \inst|ALT_INV_WideOr85~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst76|Q\(0));

-- Location: LCCOMB_X39_Y23_N18
\inst76|Q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst76|Q[1]~3_combout\ = \inst76|Q\(1) $ (((!\inst|WideOr85~combout\ & \inst76|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr85~combout\,
	datac => \inst76|Q\(1),
	datad => \inst76|Q\(0),
	combout => \inst76|Q[1]~3_combout\);

-- Location: FF_X39_Y23_N19
\inst76|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_1Hz~clkctrl_outclk\,
	d => \inst76|Q[1]~3_combout\,
	clrn => \inst|ALT_INV_WideOr85~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst76|Q\(1));

-- Location: LCCOMB_X39_Y23_N28
\inst76|Q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst76|Q[2]~2_combout\ = \inst76|Q\(2) $ (((!\inst|WideOr85~combout\ & (\inst76|Q\(0) & \inst76|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr85~combout\,
	datab => \inst76|Q\(0),
	datac => \inst76|Q\(2),
	datad => \inst76|Q\(1),
	combout => \inst76|Q[2]~2_combout\);

-- Location: FF_X39_Y23_N29
\inst76|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_1Hz~clkctrl_outclk\,
	d => \inst76|Q[2]~2_combout\,
	clrn => \inst|ALT_INV_WideOr85~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst76|Q\(2));

-- Location: LCCOMB_X39_Y23_N24
\inst76|Q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst76|Q[3]~0_combout\ = ((!\inst|y.T51~q\ & (!\inst|y.T42~q\ & !\inst|y.T3~q\))) # (!\inst76|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T51~q\,
	datab => \inst|y.T42~q\,
	datac => \inst|y.T3~q\,
	datad => \inst76|Q\(2),
	combout => \inst76|Q[3]~0_combout\);

-- Location: LCCOMB_X39_Y23_N14
\inst76|Q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst76|Q[3]~1_combout\ = \inst76|Q\(3) $ (((\inst76|Q\(0) & (\inst76|Q\(1) & !\inst76|Q[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst76|Q\(0),
	datab => \inst76|Q\(1),
	datac => \inst76|Q\(3),
	datad => \inst76|Q[3]~0_combout\,
	combout => \inst76|Q[3]~1_combout\);

-- Location: FF_X39_Y23_N15
\inst76|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_1Hz~clkctrl_outclk\,
	d => \inst76|Q[3]~1_combout\,
	clrn => \inst|ALT_INV_WideOr85~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst76|Q\(3));

-- Location: LCCOMB_X39_Y23_N10
\inst79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst79~0_combout\ = (\inst76|Q\(3)) # ((\inst76|Q\(2) & ((\inst76|Q\(1)) # (\inst76|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst76|Q\(1),
	datab => \inst76|Q\(2),
	datac => \inst76|Q\(3),
	datad => \inst76|Q\(0),
	combout => \inst79~0_combout\);

-- Location: LCCOMB_X39_Y23_N4
\inst|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector41~0_combout\ = (\inst71~combout\ & (((\inst|y.T42~q\ & !\inst79~0_combout\)))) # (!\inst71~combout\ & ((\inst|y.T36~q\) # ((\inst|y.T42~q\ & !\inst79~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst71~combout\,
	datab => \inst|y.T36~q\,
	datac => \inst|y.T42~q\,
	datad => \inst79~0_combout\,
	combout => \inst|Selector41~0_combout\);

-- Location: FF_X39_Y23_N5
\inst|y.T42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector41~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T42~q\);

-- Location: LCCOMB_X39_Y23_N26
\inst|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector42~0_combout\ = (\inst|y.T42~q\ & \inst79~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.T42~q\,
	datad => \inst79~0_combout\,
	combout => \inst|Selector42~0_combout\);

-- Location: FF_X39_Y23_N27
\inst|y.T43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector42~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T43~q\);

-- Location: LCCOMB_X36_Y21_N4
\inst84|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst84|Add0~0_combout\ = \inst40|Q\(6) $ (\inst|y.T43~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|Q\(6),
	datad => \inst|y.T43~q\,
	combout => \inst84|Add0~0_combout\);

-- Location: FF_X37_Y22_N21
\inst40|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst5|Q\(5),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T33~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst40|Q\(5));

-- Location: LCCOMB_X36_Y21_N2
\inst84|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst84|Add0~1_combout\ = \inst40|Q\(5) $ (\inst|y.T43~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst40|Q\(5),
	datad => \inst|y.T43~q\,
	combout => \inst84|Add0~1_combout\);

-- Location: FF_X37_Y22_N19
\inst40|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst5|Q\(4),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T33~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst40|Q\(4));

-- Location: LCCOMB_X36_Y21_N28
\inst84|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst84|Add0~2_combout\ = \inst40|Q\(4) $ (\inst|y.T43~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst40|Q\(4),
	datad => \inst|y.T43~q\,
	combout => \inst84|Add0~2_combout\);

-- Location: FF_X37_Y22_N17
\inst40|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst5|Q\(3),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T33~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst40|Q\(3));

-- Location: LCCOMB_X36_Y21_N0
\inst84|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst84|Add0~3_combout\ = \inst40|Q\(3) $ (\inst|y.T43~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|Q\(3),
	datad => \inst|y.T43~q\,
	combout => \inst84|Add0~3_combout\);

-- Location: FF_X37_Y22_N15
\inst40|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst5|Q\(2),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T33~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst40|Q\(2));

-- Location: LCCOMB_X36_Y21_N30
\inst84|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst84|Add0~4_combout\ = \inst40|Q\(2) $ (\inst|y.T43~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst40|Q\(2),
	datad => \inst|y.T43~q\,
	combout => \inst84|Add0~4_combout\);

-- Location: FF_X37_Y22_N13
\inst40|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst5|Q\(1),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T33~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst40|Q\(1));

-- Location: LCCOMB_X37_Y21_N26
\inst84|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst84|Add0~5_combout\ = \inst40|Q\(1) $ (\inst|y.T43~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst40|Q\(1),
	datad => \inst|y.T43~q\,
	combout => \inst84|Add0~5_combout\);

-- Location: FF_X37_Y22_N11
\inst40|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst5|Q\(0),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T33~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst40|Q\(0));

-- Location: LCCOMB_X37_Y21_N24
\inst84|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst84|Add0~6_combout\ = \inst40|Q\(0) $ (\inst|y.T43~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst40|Q\(0),
	datad => \inst|y.T43~q\,
	combout => \inst84|Add0~6_combout\);

-- Location: LCCOMB_X37_Y21_N0
\inst41|Q[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|Q[0]~12_cout\ = CARRY(\inst|y.T43~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.T43~q\,
	datad => VCC,
	cout => \inst41|Q[0]~12_cout\);

-- Location: LCCOMB_X37_Y21_N2
\inst41|Q[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|Q[0]~13_combout\ = (\inst41|Q\(0) & ((\inst84|Add0~6_combout\ & (\inst41|Q[0]~12_cout\ & VCC)) # (!\inst84|Add0~6_combout\ & (!\inst41|Q[0]~12_cout\)))) # (!\inst41|Q\(0) & ((\inst84|Add0~6_combout\ & (!\inst41|Q[0]~12_cout\)) # 
-- (!\inst84|Add0~6_combout\ & ((\inst41|Q[0]~12_cout\) # (GND)))))
-- \inst41|Q[0]~14\ = CARRY((\inst41|Q\(0) & (!\inst84|Add0~6_combout\ & !\inst41|Q[0]~12_cout\)) # (!\inst41|Q\(0) & ((!\inst41|Q[0]~12_cout\) # (!\inst84|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(0),
	datab => \inst84|Add0~6_combout\,
	datad => VCC,
	cin => \inst41|Q[0]~12_cout\,
	combout => \inst41|Q[0]~13_combout\,
	cout => \inst41|Q[0]~14\);

-- Location: LCCOMB_X37_Y25_N10
\inst|WideOr96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr96~0_combout\ = (!\inst|y.T55~q\ & !\inst|y.T43~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.T55~q\,
	datad => \inst|y.T43~q\,
	combout => \inst|WideOr96~0_combout\);

-- Location: LCCOMB_X37_Y25_N4
\inst|WideOr96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr96~combout\ = (\inst|y.T43~q\) # ((\inst|y.T55~q\) # (\inst|y.T21~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T43~q\,
	datac => \inst|y.T55~q\,
	datad => \inst|y.T21~q\,
	combout => \inst|WideOr96~combout\);

-- Location: FF_X37_Y21_N3
\inst41|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst41|Q[0]~13_combout\,
	asdata => \inst5|Q\(0),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => \inst|WideOr96~0_combout\,
	ena => \inst|WideOr96~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst41|Q\(0));

-- Location: LCCOMB_X37_Y21_N4
\inst41|Q[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|Q[1]~15_combout\ = ((\inst84|Add0~5_combout\ $ (\inst41|Q\(1) $ (!\inst41|Q[0]~14\)))) # (GND)
-- \inst41|Q[1]~16\ = CARRY((\inst84|Add0~5_combout\ & ((\inst41|Q\(1)) # (!\inst41|Q[0]~14\))) # (!\inst84|Add0~5_combout\ & (\inst41|Q\(1) & !\inst41|Q[0]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst84|Add0~5_combout\,
	datab => \inst41|Q\(1),
	datad => VCC,
	cin => \inst41|Q[0]~14\,
	combout => \inst41|Q[1]~15_combout\,
	cout => \inst41|Q[1]~16\);

-- Location: FF_X37_Y21_N5
\inst41|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst41|Q[1]~15_combout\,
	asdata => \inst5|Q\(1),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => \inst|WideOr96~0_combout\,
	ena => \inst|WideOr96~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst41|Q\(1));

-- Location: LCCOMB_X37_Y21_N6
\inst41|Q[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|Q[2]~17_combout\ = (\inst41|Q\(2) & ((\inst84|Add0~4_combout\ & (\inst41|Q[1]~16\ & VCC)) # (!\inst84|Add0~4_combout\ & (!\inst41|Q[1]~16\)))) # (!\inst41|Q\(2) & ((\inst84|Add0~4_combout\ & (!\inst41|Q[1]~16\)) # (!\inst84|Add0~4_combout\ & 
-- ((\inst41|Q[1]~16\) # (GND)))))
-- \inst41|Q[2]~18\ = CARRY((\inst41|Q\(2) & (!\inst84|Add0~4_combout\ & !\inst41|Q[1]~16\)) # (!\inst41|Q\(2) & ((!\inst41|Q[1]~16\) # (!\inst84|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(2),
	datab => \inst84|Add0~4_combout\,
	datad => VCC,
	cin => \inst41|Q[1]~16\,
	combout => \inst41|Q[2]~17_combout\,
	cout => \inst41|Q[2]~18\);

-- Location: FF_X37_Y21_N7
\inst41|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst41|Q[2]~17_combout\,
	asdata => \inst5|Q\(2),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => \inst|WideOr96~0_combout\,
	ena => \inst|WideOr96~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst41|Q\(2));

-- Location: LCCOMB_X37_Y21_N8
\inst41|Q[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|Q[3]~19_combout\ = ((\inst84|Add0~3_combout\ $ (\inst41|Q\(3) $ (!\inst41|Q[2]~18\)))) # (GND)
-- \inst41|Q[3]~20\ = CARRY((\inst84|Add0~3_combout\ & ((\inst41|Q\(3)) # (!\inst41|Q[2]~18\))) # (!\inst84|Add0~3_combout\ & (\inst41|Q\(3) & !\inst41|Q[2]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst84|Add0~3_combout\,
	datab => \inst41|Q\(3),
	datad => VCC,
	cin => \inst41|Q[2]~18\,
	combout => \inst41|Q[3]~19_combout\,
	cout => \inst41|Q[3]~20\);

-- Location: FF_X37_Y21_N9
\inst41|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst41|Q[3]~19_combout\,
	asdata => \inst5|Q\(3),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => \inst|WideOr96~0_combout\,
	ena => \inst|WideOr96~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst41|Q\(3));

-- Location: LCCOMB_X37_Y21_N10
\inst41|Q[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|Q[4]~21_combout\ = (\inst41|Q\(4) & ((\inst84|Add0~2_combout\ & (\inst41|Q[3]~20\ & VCC)) # (!\inst84|Add0~2_combout\ & (!\inst41|Q[3]~20\)))) # (!\inst41|Q\(4) & ((\inst84|Add0~2_combout\ & (!\inst41|Q[3]~20\)) # (!\inst84|Add0~2_combout\ & 
-- ((\inst41|Q[3]~20\) # (GND)))))
-- \inst41|Q[4]~22\ = CARRY((\inst41|Q\(4) & (!\inst84|Add0~2_combout\ & !\inst41|Q[3]~20\)) # (!\inst41|Q\(4) & ((!\inst41|Q[3]~20\) # (!\inst84|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(4),
	datab => \inst84|Add0~2_combout\,
	datad => VCC,
	cin => \inst41|Q[3]~20\,
	combout => \inst41|Q[4]~21_combout\,
	cout => \inst41|Q[4]~22\);

-- Location: FF_X37_Y21_N11
\inst41|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst41|Q[4]~21_combout\,
	asdata => \inst5|Q\(4),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => \inst|WideOr96~0_combout\,
	ena => \inst|WideOr96~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst41|Q\(4));

-- Location: LCCOMB_X37_Y21_N12
\inst41|Q[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|Q[5]~23_combout\ = ((\inst84|Add0~1_combout\ $ (\inst41|Q\(5) $ (!\inst41|Q[4]~22\)))) # (GND)
-- \inst41|Q[5]~24\ = CARRY((\inst84|Add0~1_combout\ & ((\inst41|Q\(5)) # (!\inst41|Q[4]~22\))) # (!\inst84|Add0~1_combout\ & (\inst41|Q\(5) & !\inst41|Q[4]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst84|Add0~1_combout\,
	datab => \inst41|Q\(5),
	datad => VCC,
	cin => \inst41|Q[4]~22\,
	combout => \inst41|Q[5]~23_combout\,
	cout => \inst41|Q[5]~24\);

-- Location: FF_X37_Y21_N13
\inst41|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst41|Q[5]~23_combout\,
	asdata => \inst5|Q\(5),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => \inst|WideOr96~0_combout\,
	ena => \inst|WideOr96~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst41|Q\(5));

-- Location: LCCOMB_X37_Y21_N14
\inst41|Q[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|Q[6]~25_combout\ = (\inst84|Add0~0_combout\ & ((\inst41|Q\(6) & (\inst41|Q[5]~24\ & VCC)) # (!\inst41|Q\(6) & (!\inst41|Q[5]~24\)))) # (!\inst84|Add0~0_combout\ & ((\inst41|Q\(6) & (!\inst41|Q[5]~24\)) # (!\inst41|Q\(6) & ((\inst41|Q[5]~24\) # 
-- (GND)))))
-- \inst41|Q[6]~26\ = CARRY((\inst84|Add0~0_combout\ & (!\inst41|Q\(6) & !\inst41|Q[5]~24\)) # (!\inst84|Add0~0_combout\ & ((!\inst41|Q[5]~24\) # (!\inst41|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst84|Add0~0_combout\,
	datab => \inst41|Q\(6),
	datad => VCC,
	cin => \inst41|Q[5]~24\,
	combout => \inst41|Q[6]~25_combout\,
	cout => \inst41|Q[6]~26\);

-- Location: FF_X37_Y21_N15
\inst41|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst41|Q[6]~25_combout\,
	asdata => \inst5|Q\(6),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => \inst|WideOr96~0_combout\,
	ena => \inst|WideOr96~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst41|Q\(6));

-- Location: LCCOMB_X37_Y22_N10
\inst43|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|LessThan1~1_cout\ = CARRY((!\inst40|Q\(0) & \inst41|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|Q\(0),
	datab => \inst41|Q\(0),
	datad => VCC,
	cout => \inst43|LessThan1~1_cout\);

-- Location: LCCOMB_X37_Y22_N12
\inst43|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|LessThan1~3_cout\ = CARRY((\inst40|Q\(1) & ((!\inst43|LessThan1~1_cout\) # (!\inst41|Q\(1)))) # (!\inst40|Q\(1) & (!\inst41|Q\(1) & !\inst43|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|Q\(1),
	datab => \inst41|Q\(1),
	datad => VCC,
	cin => \inst43|LessThan1~1_cout\,
	cout => \inst43|LessThan1~3_cout\);

-- Location: LCCOMB_X37_Y22_N14
\inst43|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|LessThan1~5_cout\ = CARRY((\inst41|Q\(2) & ((!\inst43|LessThan1~3_cout\) # (!\inst40|Q\(2)))) # (!\inst41|Q\(2) & (!\inst40|Q\(2) & !\inst43|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(2),
	datab => \inst40|Q\(2),
	datad => VCC,
	cin => \inst43|LessThan1~3_cout\,
	cout => \inst43|LessThan1~5_cout\);

-- Location: LCCOMB_X37_Y22_N16
\inst43|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|LessThan1~7_cout\ = CARRY((\inst41|Q\(3) & (\inst40|Q\(3) & !\inst43|LessThan1~5_cout\)) # (!\inst41|Q\(3) & ((\inst40|Q\(3)) # (!\inst43|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(3),
	datab => \inst40|Q\(3),
	datad => VCC,
	cin => \inst43|LessThan1~5_cout\,
	cout => \inst43|LessThan1~7_cout\);

-- Location: LCCOMB_X37_Y22_N18
\inst43|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|LessThan1~9_cout\ = CARRY((\inst41|Q\(4) & ((!\inst43|LessThan1~7_cout\) # (!\inst40|Q\(4)))) # (!\inst41|Q\(4) & (!\inst40|Q\(4) & !\inst43|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(4),
	datab => \inst40|Q\(4),
	datad => VCC,
	cin => \inst43|LessThan1~7_cout\,
	cout => \inst43|LessThan1~9_cout\);

-- Location: LCCOMB_X37_Y22_N20
\inst43|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|LessThan1~11_cout\ = CARRY((\inst41|Q\(5) & (\inst40|Q\(5) & !\inst43|LessThan1~9_cout\)) # (!\inst41|Q\(5) & ((\inst40|Q\(5)) # (!\inst43|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(5),
	datab => \inst40|Q\(5),
	datad => VCC,
	cin => \inst43|LessThan1~9_cout\,
	cout => \inst43|LessThan1~11_cout\);

-- Location: LCCOMB_X37_Y22_N22
\inst43|LessThan1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|LessThan1~12_combout\ = (\inst40|Q\(6) & (!\inst43|LessThan1~11_cout\ & \inst41|Q\(6))) # (!\inst40|Q\(6) & ((\inst41|Q\(6)) # (!\inst43|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst40|Q\(6),
	datad => \inst41|Q\(6),
	cin => \inst43|LessThan1~11_cout\,
	combout => \inst43|LessThan1~12_combout\);

-- Location: LCCOMB_X37_Y21_N16
\inst41|Q[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|Q[7]~27_combout\ = ((\inst|y.T43~q\ $ (\inst41|Q\(7) $ (!\inst41|Q[6]~26\)))) # (GND)
-- \inst41|Q[7]~28\ = CARRY((\inst|y.T43~q\ & ((\inst41|Q\(7)) # (!\inst41|Q[6]~26\))) # (!\inst|y.T43~q\ & (\inst41|Q\(7) & !\inst41|Q[6]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T43~q\,
	datab => \inst41|Q\(7),
	datad => VCC,
	cin => \inst41|Q[6]~26\,
	combout => \inst41|Q[7]~27_combout\,
	cout => \inst41|Q[7]~28\);

-- Location: FF_X37_Y21_N17
\inst41|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst41|Q[7]~27_combout\,
	asdata => \inst5|Q\(7),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => \inst|WideOr96~0_combout\,
	ena => \inst|WideOr96~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst41|Q\(7));

-- Location: LCCOMB_X37_Y21_N18
\inst41|Q[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|Q[8]~29_combout\ = (\inst|y.T43~q\ & ((\inst41|Q\(8) & (\inst41|Q[7]~28\ & VCC)) # (!\inst41|Q\(8) & (!\inst41|Q[7]~28\)))) # (!\inst|y.T43~q\ & ((\inst41|Q\(8) & (!\inst41|Q[7]~28\)) # (!\inst41|Q\(8) & ((\inst41|Q[7]~28\) # (GND)))))
-- \inst41|Q[8]~30\ = CARRY((\inst|y.T43~q\ & (!\inst41|Q\(8) & !\inst41|Q[7]~28\)) # (!\inst|y.T43~q\ & ((!\inst41|Q[7]~28\) # (!\inst41|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T43~q\,
	datab => \inst41|Q\(8),
	datad => VCC,
	cin => \inst41|Q[7]~28\,
	combout => \inst41|Q[8]~29_combout\,
	cout => \inst41|Q[8]~30\);

-- Location: FF_X37_Y21_N19
\inst41|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst41|Q[8]~29_combout\,
	asdata => \inst5|Q\(8),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => \inst|WideOr96~0_combout\,
	ena => \inst|WideOr96~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst41|Q\(8));

-- Location: LCCOMB_X37_Y21_N20
\inst41|Q[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|Q[9]~31_combout\ = ((\inst|y.T43~q\ $ (\inst41|Q\(9) $ (!\inst41|Q[8]~30\)))) # (GND)
-- \inst41|Q[9]~32\ = CARRY((\inst|y.T43~q\ & ((\inst41|Q\(9)) # (!\inst41|Q[8]~30\))) # (!\inst|y.T43~q\ & (\inst41|Q\(9) & !\inst41|Q[8]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T43~q\,
	datab => \inst41|Q\(9),
	datad => VCC,
	cin => \inst41|Q[8]~30\,
	combout => \inst41|Q[9]~31_combout\,
	cout => \inst41|Q[9]~32\);

-- Location: FF_X37_Y21_N21
\inst41|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst41|Q[9]~31_combout\,
	asdata => \inst5|Q\(9),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => \inst|WideOr96~0_combout\,
	ena => \inst|WideOr96~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst41|Q\(9));

-- Location: LCCOMB_X37_Y21_N22
\inst41|Q[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|Q[10]~33_combout\ = \inst41|Q\(10) $ (\inst41|Q[9]~32\ $ (\inst|y.T43~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(10),
	datad => \inst|y.T43~q\,
	cin => \inst41|Q[9]~32\,
	combout => \inst41|Q[10]~33_combout\);

-- Location: FF_X37_Y21_N23
\inst41|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst41|Q[10]~33_combout\,
	asdata => \inst5|Q\(10),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => \inst|WideOr96~0_combout\,
	ena => \inst|WideOr96~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst41|Q\(10));

-- Location: LCCOMB_X37_Y21_N28
\inst43|LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|LessThan1~14_combout\ = (\inst41|Q\(9)) # ((\inst41|Q\(7)) # ((\inst41|Q\(10)) # (\inst41|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(9),
	datab => \inst41|Q\(7),
	datac => \inst41|Q\(10),
	datad => \inst41|Q\(8),
	combout => \inst43|LessThan1~14_combout\);

-- Location: LCCOMB_X37_Y22_N28
\inst45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45~1_combout\ = (!\inst5|Q\(10) & (\inst45~0_combout\ & ((\inst43|LessThan1~12_combout\) # (\inst43|LessThan1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|LessThan1~12_combout\,
	datab => \inst43|LessThan1~14_combout\,
	datac => \inst5|Q\(10),
	datad => \inst45~0_combout\,
	combout => \inst45~1_combout\);

-- Location: LCCOMB_X37_Y22_N8
\inst45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45~2_combout\ = (!\inst15|LessThan1~1_combout\ & (\inst45~1_combout\ & ((!\inst11|LessThan0~0_combout\) # (!\inst11|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan0~1_combout\,
	datab => \inst11|LessThan0~0_combout\,
	datac => \inst15|LessThan1~1_combout\,
	datad => \inst45~1_combout\,
	combout => \inst45~2_combout\);

-- Location: LCCOMB_X41_Y25_N8
\inst|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector33~0_combout\ = (\inst|y.T33~q\) # ((\inst45~2_combout\ & (\inst|y.T34~q\ & !\inst142|PB_SIN_REBOTE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T33~q\,
	datab => \inst45~2_combout\,
	datac => \inst|y.T34~q\,
	datad => \inst142|PB_SIN_REBOTE~q\,
	combout => \inst|Selector33~0_combout\);

-- Location: FF_X41_Y25_N9
\inst|y.T34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector33~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T34~q\);

-- Location: LCCOMB_X36_Y24_N20
\inst|WideOr80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr80~combout\ = (\inst|y.T60~q\) # ((\inst|y.T61~q\) # (\inst|y.T2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T60~q\,
	datac => \inst|y.T61~q\,
	datad => \inst|y.T2~q\,
	combout => \inst|WideOr80~combout\);

-- Location: LCCOMB_X43_Y24_N4
\inst|Selector69~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector69~3_combout\ = (\inst|y.t69~q\) # ((\inst|y.t68~q\) # ((\inst|y.t67~q\) # (\inst|y.t65~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.t69~q\,
	datab => \inst|y.t68~q\,
	datac => \inst|y.t67~q\,
	datad => \inst|y.t65~q\,
	combout => \inst|Selector69~3_combout\);

-- Location: LCCOMB_X38_Y24_N28
\inst|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector11~0_combout\ = (\inst|y.T10~q\ & ((\inst|y~144_combout\) # ((\inst141|PB_SIN_REBOTE~q\ & \inst|y.T12~q\)))) # (!\inst|y.T10~q\ & (\inst141|PB_SIN_REBOTE~q\ & (\inst|y.T12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T10~q\,
	datab => \inst141|PB_SIN_REBOTE~q\,
	datac => \inst|y.T12~q\,
	datad => \inst|y~144_combout\,
	combout => \inst|Selector11~0_combout\);

-- Location: FF_X38_Y24_N29
\inst|y.T12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector11~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T12~q\);

-- Location: LCCOMB_X38_Y24_N26
\inst|WideOr71~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr71~1_combout\ = (!\inst|y.T55~q\ & (!\inst|y.T45~q\ & (!\inst|y.T7~q\ & !\inst|y.T38~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T55~q\,
	datab => \inst|y.T45~q\,
	datac => \inst|y.T7~q\,
	datad => \inst|y.T38~q\,
	combout => \inst|WideOr71~1_combout\);

-- Location: LCCOMB_X39_Y24_N2
\inst|WideOr71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr71~0_combout\ = (!\inst|y.T18~q\ & (!\inst|y.T25~q\ & !\inst|y.T30~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T18~q\,
	datab => \inst|y.T25~q\,
	datad => \inst|y.T30~q\,
	combout => \inst|WideOr71~0_combout\);

-- Location: LCCOMB_X38_Y24_N8
\inst|WideOr71~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr71~2_combout\ = (\inst|y.T1~q\ & (!\inst|y.T12~q\ & (\inst|WideOr71~1_combout\ & \inst|WideOr71~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T1~q\,
	datab => \inst|y.T12~q\,
	datac => \inst|WideOr71~1_combout\,
	datad => \inst|WideOr71~0_combout\,
	combout => \inst|WideOr71~2_combout\);

-- Location: LCCOMB_X39_Y24_N0
\inst|Selector69~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector69~1_combout\ = (\inst107|Equal0~0_combout\ & \inst|y.T9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst107|Equal0~0_combout\,
	datad => \inst|y.T9~q\,
	combout => \inst|Selector69~1_combout\);

-- Location: LCCOMB_X40_Y24_N26
\inst|Selector69~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector69~2_combout\ = (\inst|Selector69~1_combout\ & ((\inst72|Q\(1)) # ((\inst72|Q\(2)) # (\inst72|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector69~1_combout\,
	datab => \inst72|Q\(1),
	datac => \inst72|Q\(2),
	datad => \inst72|Q\(3),
	combout => \inst|Selector69~2_combout\);

-- Location: LCCOMB_X37_Y24_N2
\inst|Selector69~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector69~4_combout\ = (\inst|Selector69~0_combout\) # ((\inst|Selector69~3_combout\) # ((\inst|Selector69~2_combout\) # (!\inst|WideOr71~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector69~0_combout\,
	datab => \inst|Selector69~3_combout\,
	datac => \inst|WideOr71~2_combout\,
	datad => \inst|Selector69~2_combout\,
	combout => \inst|Selector69~4_combout\);

-- Location: LCCOMB_X37_Y24_N22
\inst95|Q[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst95|Q[0]~2_combout\ = (\inst95|Q\(0) & ((!\inst|Selector69~4_combout\))) # (!\inst95|Q\(0) & (\inst95|Q[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst95|Q[0]~0_combout\,
	datac => \inst95|Q\(0),
	datad => \inst|Selector69~4_combout\,
	combout => \inst95|Q[0]~2_combout\);

-- Location: FF_X37_Y24_N23
\inst95|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst95|Q[0]~2_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst95|Q\(0));

-- Location: LCCOMB_X36_Y24_N18
\inst97|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst97|Q~0_combout\ = (!\inst97|Q\(0) & !\inst|y.T57~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst97|Q\(0),
	datad => \inst|y.T57~q\,
	combout => \inst97|Q~0_combout\);

-- Location: LCCOMB_X36_Y24_N22
\inst|EnDown~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EnDown~0_combout\ = (\inst|y.T58~q\) # (\inst|y.T57~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.T58~q\,
	datad => \inst|y.T57~q\,
	combout => \inst|EnDown~0_combout\);

-- Location: FF_X36_Y24_N19
\inst97|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst97|Q~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|EnDown~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst97|Q\(0));

-- Location: LCCOMB_X37_Y24_N18
\inst94|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst94|Mux3~0_combout\ = (\inst|y.T60~q\ & (((\inst97|Q\(0))))) # (!\inst|y.T60~q\ & ((\inst|y.T59~q\ & ((!\inst97|Q\(0)))) # (!\inst|y.T59~q\ & (\inst95|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T60~q\,
	datab => \inst|y.T59~q\,
	datac => \inst95|Q\(0),
	datad => \inst97|Q\(0),
	combout => \inst94|Mux3~0_combout\);

-- Location: LCCOMB_X36_Y24_N12
\inst97|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst97|Q~1_combout\ = (\inst|y.T57~q\) # (\inst97|Q\(0) $ (!\inst97|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst97|Q\(0),
	datac => \inst97|Q\(1),
	datad => \inst|y.T57~q\,
	combout => \inst97|Q~1_combout\);

-- Location: FF_X36_Y24_N13
\inst97|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst97|Q~1_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|EnDown~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst97|Q\(1));

-- Location: LCCOMB_X37_Y24_N28
\inst94|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst94|Mux2~0_combout\ = (\inst|y.T59~q\ & (\inst97|Q\(1) $ (((\inst97|Q\(0)))))) # (!\inst|y.T59~q\ & (((\inst95|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst97|Q\(1),
	datab => \inst|y.T59~q\,
	datac => \inst95|Q\(1),
	datad => \inst97|Q\(0),
	combout => \inst94|Mux2~0_combout\);

-- Location: LCCOMB_X37_Y24_N26
\inst94|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst94|Mux2~1_combout\ = (\inst|y.T60~q\ & (\inst97|Q\(1))) # (!\inst|y.T60~q\ & ((\inst94|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst97|Q\(1),
	datac => \inst|y.T60~q\,
	datad => \inst94|Mux2~0_combout\,
	combout => \inst94|Mux2~1_combout\);

-- Location: LCCOMB_X36_Y24_N26
\inst94|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst94|Mux1~0_combout\ = (\inst|y.T59~q\ & (\inst97|Q\(1) & (!\inst|y.T60~q\ & \inst97|Q\(0)))) # (!\inst|y.T59~q\ & (((\inst|y.T60~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst97|Q\(1),
	datab => \inst|y.T59~q\,
	datac => \inst|y.T60~q\,
	datad => \inst97|Q\(0),
	combout => \inst94|Mux1~0_combout\);

-- Location: LCCOMB_X37_Y24_N16
\inst95|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst95|Add0~0_combout\ = \inst95|Q\(2) $ (((\inst95|Q\(1) & \inst95|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst95|Q\(1),
	datac => \inst95|Q\(0),
	datad => \inst95|Q\(2),
	combout => \inst95|Add0~0_combout\);

-- Location: LCCOMB_X37_Y24_N0
\inst95|Q[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst95|Q[2]~1_combout\ = (\inst95|Q[0]~0_combout\ & ((\inst95|Add0~0_combout\) # ((\inst95|Q\(2) & !\inst|Selector69~4_combout\)))) # (!\inst95|Q[0]~0_combout\ & (((\inst95|Q\(2) & !\inst|Selector69~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst95|Q[0]~0_combout\,
	datab => \inst95|Add0~0_combout\,
	datac => \inst95|Q\(2),
	datad => \inst|Selector69~4_combout\,
	combout => \inst95|Q[2]~1_combout\);

-- Location: FF_X37_Y24_N1
\inst95|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst95|Q[2]~1_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst95|Q\(2));

-- Location: LCCOMB_X36_Y24_N16
\inst97|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst97|Q~2_combout\ = (!\inst|y.T57~q\ & (\inst97|Q\(2) $ (((!\inst97|Q\(1) & !\inst97|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst97|Q\(1),
	datab => \inst97|Q\(0),
	datac => \inst97|Q\(2),
	datad => \inst|y.T57~q\,
	combout => \inst97|Q~2_combout\);

-- Location: FF_X36_Y24_N17
\inst97|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst97|Q~2_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|EnDown~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst97|Q\(2));

-- Location: LCCOMB_X36_Y24_N28
\inst94|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst94|Mux1~1_combout\ = (\inst94|Mux1~0_combout\ & ((\inst|y.T59~q\ $ (\inst97|Q\(2))))) # (!\inst94|Mux1~0_combout\ & ((\inst|y.T59~q\ & ((\inst97|Q\(2)))) # (!\inst|y.T59~q\ & (\inst95|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst94|Mux1~0_combout\,
	datab => \inst95|Q\(2),
	datac => \inst|y.T59~q\,
	datad => \inst97|Q\(2),
	combout => \inst94|Mux1~1_combout\);

-- Location: LCCOMB_X36_Y24_N0
\inst97|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst97|Add0~0_combout\ = \inst97|Q\(3) $ (((\inst97|Q\(1)) # ((\inst97|Q\(2)) # (\inst97|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst97|Q\(1),
	datab => \inst97|Q\(3),
	datac => \inst97|Q\(2),
	datad => \inst97|Q\(0),
	combout => \inst97|Add0~0_combout\);

-- Location: LCCOMB_X36_Y24_N24
\inst97|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst97|Q~3_combout\ = (\inst|y.T57~q\) # (!\inst97|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.T57~q\,
	datad => \inst97|Add0~0_combout\,
	combout => \inst97|Q~3_combout\);

-- Location: FF_X36_Y24_N25
\inst97|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst97|Q~3_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|EnDown~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst97|Q\(3));

-- Location: LCCOMB_X36_Y24_N14
\inst103|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst103|Add1~0_combout\ = \inst97|Q\(3) $ (((\inst97|Q\(1) & (\inst97|Q\(2) & \inst97|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst97|Q\(1),
	datab => \inst97|Q\(3),
	datac => \inst97|Q\(2),
	datad => \inst97|Q\(0),
	combout => \inst103|Add1~0_combout\);

-- Location: LCCOMB_X37_Y24_N20
\inst95|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst95|Add0~1_combout\ = \inst95|Q\(3) $ (((\inst95|Q\(1) & (\inst95|Q\(2) & \inst95|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst95|Q\(1),
	datab => \inst95|Q\(2),
	datac => \inst95|Q\(0),
	datad => \inst95|Q\(3),
	combout => \inst95|Add0~1_combout\);

-- Location: LCCOMB_X37_Y24_N24
\inst95|Q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst95|Q[3]~3_combout\ = (\inst95|Q[0]~0_combout\ & ((\inst95|Add0~1_combout\) # ((\inst95|Q\(3) & !\inst|Selector69~4_combout\)))) # (!\inst95|Q[0]~0_combout\ & (((\inst95|Q\(3) & !\inst|Selector69~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst95|Q[0]~0_combout\,
	datab => \inst95|Add0~1_combout\,
	datac => \inst95|Q\(3),
	datad => \inst|Selector69~4_combout\,
	combout => \inst95|Q[3]~3_combout\);

-- Location: FF_X37_Y24_N25
\inst95|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst95|Q[3]~3_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst95|Q\(3));

-- Location: LCCOMB_X36_Y24_N4
\inst94|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst94|Mux0~0_combout\ = (!\inst|y.T60~q\ & ((\inst|y.T59~q\ & (\inst103|Add1~0_combout\)) # (!\inst|y.T59~q\ & ((\inst95|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T60~q\,
	datab => \inst103|Add1~0_combout\,
	datac => \inst|y.T59~q\,
	datad => \inst95|Q\(3),
	combout => \inst94|Mux0~0_combout\);

-- Location: LCCOMB_X36_Y24_N10
\inst94|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst94|Mux0~1_combout\ = (\inst94|Mux0~0_combout\) # ((\inst|y.T60~q\ & \inst97|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T60~q\,
	datab => \inst97|Q\(3),
	datac => \inst94|Mux0~0_combout\,
	combout => \inst94|Mux0~1_combout\);

-- Location: LCCOMB_X36_Y21_N6
\inst87|Q[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst87|Q[0]~11_combout\ = (\inst87|Q\(0) & (\inst40|Q\(0) $ (VCC))) # (!\inst87|Q\(0) & (\inst40|Q\(0) & VCC))
-- \inst87|Q[0]~12\ = CARRY((\inst87|Q\(0) & \inst40|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst87|Q\(0),
	datab => \inst40|Q\(0),
	datad => VCC,
	combout => \inst87|Q[0]~11_combout\,
	cout => \inst87|Q[0]~12\);

-- Location: LCCOMB_X37_Y21_N30
\inst|EnSumAp\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EnSumAp~combout\ = (\inst|y.T3~q\) # (\inst|y.T55~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.T3~q\,
	datad => \inst|y.T55~q\,
	combout => \inst|EnSumAp~combout\);

-- Location: FF_X36_Y21_N7
\inst87|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst87|Q[0]~11_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sclr => \inst|y.T3~q\,
	ena => \inst|EnSumAp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst87|Q\(0));

-- Location: LCCOMB_X36_Y21_N8
\inst87|Q[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst87|Q[1]~13_combout\ = (\inst40|Q\(1) & ((\inst87|Q\(1) & (\inst87|Q[0]~12\ & VCC)) # (!\inst87|Q\(1) & (!\inst87|Q[0]~12\)))) # (!\inst40|Q\(1) & ((\inst87|Q\(1) & (!\inst87|Q[0]~12\)) # (!\inst87|Q\(1) & ((\inst87|Q[0]~12\) # (GND)))))
-- \inst87|Q[1]~14\ = CARRY((\inst40|Q\(1) & (!\inst87|Q\(1) & !\inst87|Q[0]~12\)) # (!\inst40|Q\(1) & ((!\inst87|Q[0]~12\) # (!\inst87|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|Q\(1),
	datab => \inst87|Q\(1),
	datad => VCC,
	cin => \inst87|Q[0]~12\,
	combout => \inst87|Q[1]~13_combout\,
	cout => \inst87|Q[1]~14\);

-- Location: FF_X36_Y21_N9
\inst87|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst87|Q[1]~13_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sclr => \inst|y.T3~q\,
	ena => \inst|EnSumAp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst87|Q\(1));

-- Location: LCCOMB_X36_Y21_N10
\inst87|Q[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst87|Q[2]~15_combout\ = ((\inst87|Q\(2) $ (\inst40|Q\(2) $ (!\inst87|Q[1]~14\)))) # (GND)
-- \inst87|Q[2]~16\ = CARRY((\inst87|Q\(2) & ((\inst40|Q\(2)) # (!\inst87|Q[1]~14\))) # (!\inst87|Q\(2) & (\inst40|Q\(2) & !\inst87|Q[1]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst87|Q\(2),
	datab => \inst40|Q\(2),
	datad => VCC,
	cin => \inst87|Q[1]~14\,
	combout => \inst87|Q[2]~15_combout\,
	cout => \inst87|Q[2]~16\);

-- Location: FF_X36_Y21_N11
\inst87|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst87|Q[2]~15_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sclr => \inst|y.T3~q\,
	ena => \inst|EnSumAp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst87|Q\(2));

-- Location: LCCOMB_X36_Y21_N12
\inst87|Q[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst87|Q[3]~17_combout\ = (\inst40|Q\(3) & ((\inst87|Q\(3) & (\inst87|Q[2]~16\ & VCC)) # (!\inst87|Q\(3) & (!\inst87|Q[2]~16\)))) # (!\inst40|Q\(3) & ((\inst87|Q\(3) & (!\inst87|Q[2]~16\)) # (!\inst87|Q\(3) & ((\inst87|Q[2]~16\) # (GND)))))
-- \inst87|Q[3]~18\ = CARRY((\inst40|Q\(3) & (!\inst87|Q\(3) & !\inst87|Q[2]~16\)) # (!\inst40|Q\(3) & ((!\inst87|Q[2]~16\) # (!\inst87|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|Q\(3),
	datab => \inst87|Q\(3),
	datad => VCC,
	cin => \inst87|Q[2]~16\,
	combout => \inst87|Q[3]~17_combout\,
	cout => \inst87|Q[3]~18\);

-- Location: FF_X36_Y21_N13
\inst87|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst87|Q[3]~17_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sclr => \inst|y.T3~q\,
	ena => \inst|EnSumAp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst87|Q\(3));

-- Location: LCCOMB_X36_Y21_N14
\inst87|Q[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst87|Q[4]~19_combout\ = ((\inst87|Q\(4) $ (\inst40|Q\(4) $ (!\inst87|Q[3]~18\)))) # (GND)
-- \inst87|Q[4]~20\ = CARRY((\inst87|Q\(4) & ((\inst40|Q\(4)) # (!\inst87|Q[3]~18\))) # (!\inst87|Q\(4) & (\inst40|Q\(4) & !\inst87|Q[3]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst87|Q\(4),
	datab => \inst40|Q\(4),
	datad => VCC,
	cin => \inst87|Q[3]~18\,
	combout => \inst87|Q[4]~19_combout\,
	cout => \inst87|Q[4]~20\);

-- Location: FF_X36_Y21_N15
\inst87|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst87|Q[4]~19_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sclr => \inst|y.T3~q\,
	ena => \inst|EnSumAp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst87|Q\(4));

-- Location: LCCOMB_X36_Y21_N16
\inst87|Q[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst87|Q[5]~21_combout\ = (\inst87|Q\(5) & ((\inst40|Q\(5) & (\inst87|Q[4]~20\ & VCC)) # (!\inst40|Q\(5) & (!\inst87|Q[4]~20\)))) # (!\inst87|Q\(5) & ((\inst40|Q\(5) & (!\inst87|Q[4]~20\)) # (!\inst40|Q\(5) & ((\inst87|Q[4]~20\) # (GND)))))
-- \inst87|Q[5]~22\ = CARRY((\inst87|Q\(5) & (!\inst40|Q\(5) & !\inst87|Q[4]~20\)) # (!\inst87|Q\(5) & ((!\inst87|Q[4]~20\) # (!\inst40|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst87|Q\(5),
	datab => \inst40|Q\(5),
	datad => VCC,
	cin => \inst87|Q[4]~20\,
	combout => \inst87|Q[5]~21_combout\,
	cout => \inst87|Q[5]~22\);

-- Location: FF_X36_Y21_N17
\inst87|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst87|Q[5]~21_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sclr => \inst|y.T3~q\,
	ena => \inst|EnSumAp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst87|Q\(5));

-- Location: LCCOMB_X36_Y21_N18
\inst87|Q[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst87|Q[6]~23_combout\ = ((\inst40|Q\(6) $ (\inst87|Q\(6) $ (!\inst87|Q[5]~22\)))) # (GND)
-- \inst87|Q[6]~24\ = CARRY((\inst40|Q\(6) & ((\inst87|Q\(6)) # (!\inst87|Q[5]~22\))) # (!\inst40|Q\(6) & (\inst87|Q\(6) & !\inst87|Q[5]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|Q\(6),
	datab => \inst87|Q\(6),
	datad => VCC,
	cin => \inst87|Q[5]~22\,
	combout => \inst87|Q[6]~23_combout\,
	cout => \inst87|Q[6]~24\);

-- Location: FF_X36_Y21_N19
\inst87|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst87|Q[6]~23_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sclr => \inst|y.T3~q\,
	ena => \inst|EnSumAp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst87|Q\(6));

-- Location: LCCOMB_X36_Y21_N20
\inst87|Q[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst87|Q[7]~25_combout\ = (\inst87|Q\(7) & (!\inst87|Q[6]~24\)) # (!\inst87|Q\(7) & ((\inst87|Q[6]~24\) # (GND)))
-- \inst87|Q[7]~26\ = CARRY((!\inst87|Q[6]~24\) # (!\inst87|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst87|Q\(7),
	datad => VCC,
	cin => \inst87|Q[6]~24\,
	combout => \inst87|Q[7]~25_combout\,
	cout => \inst87|Q[7]~26\);

-- Location: FF_X36_Y21_N21
\inst87|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst87|Q[7]~25_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sclr => \inst|y.T3~q\,
	ena => \inst|EnSumAp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst87|Q\(7));

-- Location: LCCOMB_X36_Y21_N22
\inst87|Q[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst87|Q[8]~27_combout\ = (\inst87|Q\(8) & (\inst87|Q[7]~26\ $ (GND))) # (!\inst87|Q\(8) & (!\inst87|Q[7]~26\ & VCC))
-- \inst87|Q[8]~28\ = CARRY((\inst87|Q\(8) & !\inst87|Q[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst87|Q\(8),
	datad => VCC,
	cin => \inst87|Q[7]~26\,
	combout => \inst87|Q[8]~27_combout\,
	cout => \inst87|Q[8]~28\);

-- Location: FF_X36_Y21_N23
\inst87|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst87|Q[8]~27_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sclr => \inst|y.T3~q\,
	ena => \inst|EnSumAp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst87|Q\(8));

-- Location: LCCOMB_X36_Y21_N24
\inst87|Q[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst87|Q[9]~29_combout\ = (\inst87|Q\(9) & (!\inst87|Q[8]~28\)) # (!\inst87|Q\(9) & ((\inst87|Q[8]~28\) # (GND)))
-- \inst87|Q[9]~30\ = CARRY((!\inst87|Q[8]~28\) # (!\inst87|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst87|Q\(9),
	datad => VCC,
	cin => \inst87|Q[8]~28\,
	combout => \inst87|Q[9]~29_combout\,
	cout => \inst87|Q[9]~30\);

-- Location: FF_X36_Y21_N25
\inst87|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst87|Q[9]~29_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sclr => \inst|y.T3~q\,
	ena => \inst|EnSumAp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst87|Q\(9));

-- Location: FF_X34_Y21_N5
\inst111|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst85|altsyncram_component|auto_generated|q_a\(10),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T59~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst111|Q\(10));

-- Location: LCCOMB_X36_Y21_N26
\inst87|Q[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst87|Q[10]~31_combout\ = \inst87|Q\(10) $ (!\inst87|Q[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst87|Q\(10),
	cin => \inst87|Q[9]~30\,
	combout => \inst87|Q[10]~31_combout\);

-- Location: FF_X36_Y21_N27
\inst87|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst87|Q[10]~31_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sclr => \inst|y.T3~q\,
	ena => \inst|EnSumAp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst87|Q\(10));

-- Location: LCCOMB_X34_Y21_N4
\inst92|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst92|Mux0~0_combout\ = (!\inst|y.T2~q\ & ((\inst|y.T60~q\ & (\inst111|Q\(10))) # (!\inst|y.T60~q\ & ((\inst87|Q\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T2~q\,
	datab => \inst|y.T60~q\,
	datac => \inst111|Q\(10),
	datad => \inst87|Q\(10),
	combout => \inst92|Mux0~0_combout\);

-- Location: M9K_X33_Y21_N0
\inst85|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memRam:inst85|altsyncram:altsyncram_component|altsyncram_kno3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 10,
	port_a_logical_ram_width => 11,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst|WideOr80~combout\,
	portare => VCC,
	clk0 => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	portadatain => \inst85|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst85|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst85|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X35_Y21_N5
\inst111|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst85|altsyncram_component|auto_generated|q_a\(9),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T59~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst111|Q\(9));

-- Location: LCCOMB_X35_Y21_N4
\inst92|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst92|Mux1~0_combout\ = (!\inst|y.T2~q\ & ((\inst|y.T60~q\ & ((\inst111|Q\(9)))) # (!\inst|y.T60~q\ & (\inst87|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T2~q\,
	datab => \inst87|Q\(9),
	datac => \inst111|Q\(9),
	datad => \inst|y.T60~q\,
	combout => \inst92|Mux1~0_combout\);

-- Location: FF_X35_Y21_N3
\inst111|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst85|altsyncram_component|auto_generated|q_a\(8),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T59~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst111|Q\(8));

-- Location: LCCOMB_X35_Y21_N2
\inst92|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst92|Mux2~0_combout\ = (!\inst|y.T2~q\ & ((\inst|y.T60~q\ & ((\inst111|Q\(8)))) # (!\inst|y.T60~q\ & (\inst87|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T2~q\,
	datab => \inst87|Q\(8),
	datac => \inst111|Q\(8),
	datad => \inst|y.T60~q\,
	combout => \inst92|Mux2~0_combout\);

-- Location: FF_X35_Y21_N1
\inst111|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst85|altsyncram_component|auto_generated|q_a\(7),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T59~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst111|Q\(7));

-- Location: LCCOMB_X35_Y21_N0
\inst92|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst92|Mux3~0_combout\ = (!\inst|y.T2~q\ & ((\inst|y.T60~q\ & (\inst111|Q\(7))) # (!\inst|y.T60~q\ & ((\inst87|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T2~q\,
	datab => \inst|y.T60~q\,
	datac => \inst111|Q\(7),
	datad => \inst87|Q\(7),
	combout => \inst92|Mux3~0_combout\);

-- Location: FF_X35_Y21_N7
\inst111|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst85|altsyncram_component|auto_generated|q_a\(6),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T59~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst111|Q\(6));

-- Location: LCCOMB_X35_Y21_N6
\inst92|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst92|Mux4~0_combout\ = (!\inst|y.T2~q\ & ((\inst|y.T60~q\ & ((\inst111|Q\(6)))) # (!\inst|y.T60~q\ & (\inst87|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T2~q\,
	datab => \inst87|Q\(6),
	datac => \inst111|Q\(6),
	datad => \inst|y.T60~q\,
	combout => \inst92|Mux4~0_combout\);

-- Location: FF_X35_Y21_N31
\inst111|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst85|altsyncram_component|auto_generated|q_a\(5),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T59~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst111|Q\(5));

-- Location: LCCOMB_X35_Y21_N30
\inst92|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst92|Mux5~0_combout\ = (!\inst|y.T2~q\ & ((\inst|y.T60~q\ & ((\inst111|Q\(5)))) # (!\inst|y.T60~q\ & (\inst87|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T2~q\,
	datab => \inst87|Q\(5),
	datac => \inst111|Q\(5),
	datad => \inst|y.T60~q\,
	combout => \inst92|Mux5~0_combout\);

-- Location: FF_X34_Y21_N31
\inst111|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst85|altsyncram_component|auto_generated|q_a\(4),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T59~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst111|Q\(4));

-- Location: LCCOMB_X34_Y21_N30
\inst92|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst92|Mux6~0_combout\ = (!\inst|y.T2~q\ & ((\inst|y.T60~q\ & ((\inst111|Q\(4)))) # (!\inst|y.T60~q\ & (\inst87|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T2~q\,
	datab => \inst87|Q\(4),
	datac => \inst111|Q\(4),
	datad => \inst|y.T60~q\,
	combout => \inst92|Mux6~0_combout\);

-- Location: FF_X32_Y21_N3
\inst111|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst85|altsyncram_component|auto_generated|q_a\(3),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T59~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst111|Q\(3));

-- Location: LCCOMB_X32_Y21_N2
\inst92|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst92|Mux7~0_combout\ = (!\inst|y.T2~q\ & ((\inst|y.T60~q\ & ((\inst111|Q\(3)))) # (!\inst|y.T60~q\ & (\inst87|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T60~q\,
	datab => \inst87|Q\(3),
	datac => \inst111|Q\(3),
	datad => \inst|y.T2~q\,
	combout => \inst92|Mux7~0_combout\);

-- Location: FF_X34_Y21_N1
\inst111|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst85|altsyncram_component|auto_generated|q_a\(2),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T59~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst111|Q\(2));

-- Location: LCCOMB_X34_Y21_N0
\inst92|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst92|Mux8~0_combout\ = (!\inst|y.T2~q\ & ((\inst|y.T60~q\ & (\inst111|Q\(2))) # (!\inst|y.T60~q\ & ((\inst87|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T2~q\,
	datab => \inst|y.T60~q\,
	datac => \inst111|Q\(2),
	datad => \inst87|Q\(2),
	combout => \inst92|Mux8~0_combout\);

-- Location: FF_X34_Y21_N29
\inst111|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst85|altsyncram_component|auto_generated|q_a\(1),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T59~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst111|Q\(1));

-- Location: LCCOMB_X34_Y21_N28
\inst92|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst92|Mux9~0_combout\ = (!\inst|y.T2~q\ & ((\inst|y.T60~q\ & (\inst111|Q\(1))) # (!\inst|y.T60~q\ & ((\inst87|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T2~q\,
	datab => \inst|y.T60~q\,
	datac => \inst111|Q\(1),
	datad => \inst87|Q\(1),
	combout => \inst92|Mux9~0_combout\);

-- Location: FF_X34_Y21_N3
\inst111|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst85|altsyncram_component|auto_generated|q_a\(0),
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	ena => \inst|y.T59~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst111|Q\(0));

-- Location: LCCOMB_X34_Y21_N2
\inst92|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst92|Mux10~0_combout\ = (!\inst|y.T2~q\ & ((\inst|y.T60~q\ & (\inst111|Q\(0))) # (!\inst|y.T60~q\ & ((\inst87|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T2~q\,
	datab => \inst|y.T60~q\,
	datac => \inst111|Q\(0),
	datad => \inst87|Q\(0),
	combout => \inst92|Mux10~0_combout\);

-- Location: LCCOMB_X35_Y21_N8
\inst109|LessThan1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~24_cout\ = CARRY((\inst87|Q\(0) & !\inst85|altsyncram_component|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst87|Q\(0),
	datab => \inst85|altsyncram_component|auto_generated|q_a\(0),
	datad => VCC,
	cout => \inst109|LessThan1~24_cout\);

-- Location: LCCOMB_X35_Y21_N10
\inst109|LessThan1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~26_cout\ = CARRY((\inst87|Q\(1) & (\inst85|altsyncram_component|auto_generated|q_a\(1) & !\inst109|LessThan1~24_cout\)) # (!\inst87|Q\(1) & ((\inst85|altsyncram_component|auto_generated|q_a\(1)) # (!\inst109|LessThan1~24_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst87|Q\(1),
	datab => \inst85|altsyncram_component|auto_generated|q_a\(1),
	datad => VCC,
	cin => \inst109|LessThan1~24_cout\,
	cout => \inst109|LessThan1~26_cout\);

-- Location: LCCOMB_X35_Y21_N12
\inst109|LessThan1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~28_cout\ = CARRY((\inst85|altsyncram_component|auto_generated|q_a\(2) & (\inst87|Q\(2) & !\inst109|LessThan1~26_cout\)) # (!\inst85|altsyncram_component|auto_generated|q_a\(2) & ((\inst87|Q\(2)) # (!\inst109|LessThan1~26_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst87|Q\(2),
	datad => VCC,
	cin => \inst109|LessThan1~26_cout\,
	cout => \inst109|LessThan1~28_cout\);

-- Location: LCCOMB_X35_Y21_N14
\inst109|LessThan1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~30_cout\ = CARRY((\inst85|altsyncram_component|auto_generated|q_a\(3) & ((!\inst109|LessThan1~28_cout\) # (!\inst87|Q\(3)))) # (!\inst85|altsyncram_component|auto_generated|q_a\(3) & (!\inst87|Q\(3) & !\inst109|LessThan1~28_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst87|Q\(3),
	datad => VCC,
	cin => \inst109|LessThan1~28_cout\,
	cout => \inst109|LessThan1~30_cout\);

-- Location: LCCOMB_X35_Y21_N16
\inst109|LessThan1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~32_cout\ = CARRY((\inst87|Q\(4) & ((!\inst109|LessThan1~30_cout\) # (!\inst85|altsyncram_component|auto_generated|q_a\(4)))) # (!\inst87|Q\(4) & (!\inst85|altsyncram_component|auto_generated|q_a\(4) & !\inst109|LessThan1~30_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst87|Q\(4),
	datab => \inst85|altsyncram_component|auto_generated|q_a\(4),
	datad => VCC,
	cin => \inst109|LessThan1~30_cout\,
	cout => \inst109|LessThan1~32_cout\);

-- Location: LCCOMB_X35_Y21_N18
\inst109|LessThan1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~34_cout\ = CARRY((\inst87|Q\(5) & (\inst85|altsyncram_component|auto_generated|q_a\(5) & !\inst109|LessThan1~32_cout\)) # (!\inst87|Q\(5) & ((\inst85|altsyncram_component|auto_generated|q_a\(5)) # (!\inst109|LessThan1~32_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst87|Q\(5),
	datab => \inst85|altsyncram_component|auto_generated|q_a\(5),
	datad => VCC,
	cin => \inst109|LessThan1~32_cout\,
	cout => \inst109|LessThan1~34_cout\);

-- Location: LCCOMB_X35_Y21_N20
\inst109|LessThan1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~36_cout\ = CARRY((\inst85|altsyncram_component|auto_generated|q_a\(6) & (\inst87|Q\(6) & !\inst109|LessThan1~34_cout\)) # (!\inst85|altsyncram_component|auto_generated|q_a\(6) & ((\inst87|Q\(6)) # (!\inst109|LessThan1~34_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(6),
	datab => \inst87|Q\(6),
	datad => VCC,
	cin => \inst109|LessThan1~34_cout\,
	cout => \inst109|LessThan1~36_cout\);

-- Location: LCCOMB_X35_Y21_N22
\inst109|LessThan1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~38_cout\ = CARRY((\inst85|altsyncram_component|auto_generated|q_a\(7) & ((!\inst109|LessThan1~36_cout\) # (!\inst87|Q\(7)))) # (!\inst85|altsyncram_component|auto_generated|q_a\(7) & (!\inst87|Q\(7) & !\inst109|LessThan1~36_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst87|Q\(7),
	datad => VCC,
	cin => \inst109|LessThan1~36_cout\,
	cout => \inst109|LessThan1~38_cout\);

-- Location: LCCOMB_X35_Y21_N24
\inst109|LessThan1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~40_cout\ = CARRY((\inst85|altsyncram_component|auto_generated|q_a\(8) & (\inst87|Q\(8) & !\inst109|LessThan1~38_cout\)) # (!\inst85|altsyncram_component|auto_generated|q_a\(8) & ((\inst87|Q\(8)) # (!\inst109|LessThan1~38_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(8),
	datab => \inst87|Q\(8),
	datad => VCC,
	cin => \inst109|LessThan1~38_cout\,
	cout => \inst109|LessThan1~40_cout\);

-- Location: LCCOMB_X35_Y21_N26
\inst109|LessThan1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~42_cout\ = CARRY((\inst85|altsyncram_component|auto_generated|q_a\(9) & ((!\inst109|LessThan1~40_cout\) # (!\inst87|Q\(9)))) # (!\inst85|altsyncram_component|auto_generated|q_a\(9) & (!\inst87|Q\(9) & !\inst109|LessThan1~40_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(9),
	datab => \inst87|Q\(9),
	datad => VCC,
	cin => \inst109|LessThan1~40_cout\,
	cout => \inst109|LessThan1~42_cout\);

-- Location: LCCOMB_X35_Y21_N28
\inst109|LessThan1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~43_combout\ = (\inst85|altsyncram_component|auto_generated|q_a\(10) & (!\inst109|LessThan1~42_cout\ & \inst87|Q\(10))) # (!\inst85|altsyncram_component|auto_generated|q_a\(10) & ((\inst87|Q\(10)) # (!\inst109|LessThan1~42_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst85|altsyncram_component|auto_generated|q_a\(10),
	datad => \inst87|Q\(10),
	cin => \inst109|LessThan1~42_cout\,
	combout => \inst109|LessThan1~43_combout\);

-- Location: LCCOMB_X38_Y24_N20
\inst|Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector56~0_combout\ = (\inst107|Equal0~0_combout\ & (\inst109|LessThan1~43_combout\ & \inst|y.T56~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst107|Equal0~0_combout\,
	datac => \inst109|LessThan1~43_combout\,
	datad => \inst|y.T56~q\,
	combout => \inst|Selector56~0_combout\);

-- Location: FF_X38_Y24_N21
\inst|y.T57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector56~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T57~q\);

-- Location: LCCOMB_X37_Y24_N12
\inst|Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector60~0_combout\ = (\inst95|Q\(0) & (\inst97|Q\(0) & (\inst97|Q\(1) $ (!\inst95|Q\(1))))) # (!\inst95|Q\(0) & (!\inst97|Q\(0) & (\inst97|Q\(1) $ (!\inst95|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst95|Q\(0),
	datab => \inst97|Q\(1),
	datac => \inst95|Q\(1),
	datad => \inst97|Q\(0),
	combout => \inst|Selector60~0_combout\);

-- Location: LCCOMB_X36_Y24_N30
\inst|Selector60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector60~1_combout\ = (\inst97|Q\(2) & (\inst95|Q\(2) & (\inst95|Q\(3) $ (!\inst97|Q\(3))))) # (!\inst97|Q\(2) & (!\inst95|Q\(2) & (\inst95|Q\(3) $ (!\inst97|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst97|Q\(2),
	datab => \inst95|Q\(3),
	datac => \inst95|Q\(2),
	datad => \inst97|Q\(3),
	combout => \inst|Selector60~1_combout\);

-- Location: LCCOMB_X36_Y24_N8
\inst|Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector57~0_combout\ = (\inst|y.T57~q\) # ((\inst|y.T60~q\ & ((!\inst|Selector60~1_combout\) # (!\inst|Selector60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T60~q\,
	datab => \inst|y.T57~q\,
	datac => \inst|Selector60~0_combout\,
	datad => \inst|Selector60~1_combout\,
	combout => \inst|Selector57~0_combout\);

-- Location: FF_X36_Y24_N9
\inst|y.T58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector57~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T58~q\);

-- Location: FF_X36_Y24_N5
\inst|y.T59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst|y.T58~q\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T59~q\);

-- Location: FF_X36_Y24_N27
\inst|y.T60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \inst|y.T59~q\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T60~q\);

-- Location: LCCOMB_X36_Y24_N2
\inst|Selector60~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector60~2_combout\ = (\inst|y.T60~q\ & (\inst|Selector60~0_combout\ & \inst|Selector60~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T60~q\,
	datac => \inst|Selector60~0_combout\,
	datad => \inst|Selector60~1_combout\,
	combout => \inst|Selector60~2_combout\);

-- Location: FF_X36_Y24_N3
\inst|y.T61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector60~2_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T61~q\);

-- Location: LCCOMB_X38_Y25_N28
\inst|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector23~0_combout\ = (\inst140|PB_SIN_REBOTE~q\ & ((\inst|y.T24~q\) # ((\inst|y.T23~q\ & !\inst139|PB_SIN_REBOTE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T23~q\,
	datab => \inst139|PB_SIN_REBOTE~q\,
	datac => \inst|y.T24~q\,
	datad => \inst140|PB_SIN_REBOTE~q\,
	combout => \inst|Selector23~0_combout\);

-- Location: FF_X38_Y25_N29
\inst|y.T24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector23~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T24~q\);

-- Location: LCCOMB_X38_Y24_N18
\inst|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector22~1_combout\ = (\inst|y.T43~q\) # ((\inst|y.T61~q\) # ((!\inst140|PB_SIN_REBOTE~q\ & \inst|y.T24~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst140|PB_SIN_REBOTE~q\,
	datab => \inst|y.T43~q\,
	datac => \inst|y.T61~q\,
	datad => \inst|y.T24~q\,
	combout => \inst|Selector22~1_combout\);

-- Location: LCCOMB_X38_Y24_N0
\inst|Selector22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector22~2_combout\ = (\inst|Selector22~1_combout\) # ((!\inst107|Equal0~0_combout\ & ((\inst|y.T56~q\) # (\inst|y.t66~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T56~q\,
	datab => \inst|Selector22~1_combout\,
	datac => \inst107|Equal0~0_combout\,
	datad => \inst|y.t66~q\,
	combout => \inst|Selector22~2_combout\);

-- Location: LCCOMB_X41_Y25_N6
\inst|Selector22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector22~3_combout\ = (\inst|Selector22~2_combout\) # ((\inst|y.T34~q\ & !\inst45~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.T34~q\,
	datac => \inst45~2_combout\,
	datad => \inst|Selector22~2_combout\,
	combout => \inst|Selector22~3_combout\);

-- Location: LCCOMB_X41_Y25_N4
\inst|Selector22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector22~4_combout\ = (\inst|Selector22~0_combout\) # ((\inst|Selector22~3_combout\) # ((!\inst|y~142_combout\ & \inst|y.T23~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y~142_combout\,
	datab => \inst|Selector22~0_combout\,
	datac => \inst|y.T23~q\,
	datad => \inst|Selector22~3_combout\,
	combout => \inst|Selector22~4_combout\);

-- Location: FF_X41_Y25_N5
\inst|y.T23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector22~4_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T23~q\);

-- Location: LCCOMB_X39_Y26_N26
\inst|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector25~0_combout\ = (\inst|y~143_combout\ & ((\inst|y.T23~q\) # ((\inst256~combout\ & \inst|y.T26~q\)))) # (!\inst|y~143_combout\ & (\inst256~combout\ & (\inst|y.T26~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y~143_combout\,
	datab => \inst256~combout\,
	datac => \inst|y.T26~q\,
	datad => \inst|y.T23~q\,
	combout => \inst|Selector25~0_combout\);

-- Location: FF_X39_Y26_N27
\inst|y.T26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector25~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T26~q\);

-- Location: LCCOMB_X39_Y26_N14
\inst|Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector27~1_combout\ = (\inst256~combout\ & (((!\inst|y~142_combout\ & \inst|y.T28~q\)))) # (!\inst256~combout\ & ((\inst|y.T26~q\) # ((!\inst|y~142_combout\ & \inst|y.T28~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst256~combout\,
	datab => \inst|y.T26~q\,
	datac => \inst|y~142_combout\,
	datad => \inst|y.T28~q\,
	combout => \inst|Selector27~1_combout\);

-- Location: LCCOMB_X40_Y26_N14
\inst|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector28~0_combout\ = (\inst140|PB_SIN_REBOTE~q\ & ((\inst|y.T29~q\) # ((!\inst139|PB_SIN_REBOTE~q\ & \inst|y.T28~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst139|PB_SIN_REBOTE~q\,
	datab => \inst|y.T28~q\,
	datac => \inst|y.T29~q\,
	datad => \inst140|PB_SIN_REBOTE~q\,
	combout => \inst|Selector28~0_combout\);

-- Location: FF_X40_Y26_N15
\inst|y.T29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector28~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T29~q\);

-- Location: LCCOMB_X41_Y26_N24
\inst|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector27~0_combout\ = (\inst|y.T29~q\ & !\inst140|PB_SIN_REBOTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T29~q\,
	datad => \inst140|PB_SIN_REBOTE~q\,
	combout => \inst|Selector27~0_combout\);

-- Location: LCCOMB_X40_Y26_N22
\inst|Selector27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector27~2_combout\ = (\inst|Selector27~1_combout\) # ((\inst|Selector27~0_combout\) # ((\inst|y.t67~q\ & !\inst107|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector27~1_combout\,
	datab => \inst|y.t67~q\,
	datac => \inst107|Equal0~0_combout\,
	datad => \inst|Selector27~0_combout\,
	combout => \inst|Selector27~2_combout\);

-- Location: FF_X40_Y26_N23
\inst|y.T28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector27~2_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T28~q\);

-- Location: LCCOMB_X39_Y25_N6
\inst|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector30~0_combout\ = (\inst|y.T28~q\ & ((\inst|y~143_combout\) # ((\inst256~combout\ & \inst|y.T31~q\)))) # (!\inst|y.T28~q\ & (\inst256~combout\ & (\inst|y.T31~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T28~q\,
	datab => \inst256~combout\,
	datac => \inst|y.T31~q\,
	datad => \inst|y~143_combout\,
	combout => \inst|Selector30~0_combout\);

-- Location: FF_X39_Y25_N7
\inst|y.T31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector30~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T31~q\);

-- Location: LCCOMB_X39_Y25_N18
\inst|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector32~0_combout\ = (\inst|y.T31~q\ & !\inst256~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T31~q\,
	datad => \inst256~combout\,
	combout => \inst|Selector32~0_combout\);

-- Location: LCCOMB_X39_Y25_N10
\inst|Selector73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector73~0_combout\ = (!\inst|y.T48~q\ & (!\inst|y.T15~q\ & (!\inst|Selector20~0_combout\ & !\inst|Selector32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T48~q\,
	datab => \inst|y.T15~q\,
	datac => \inst|Selector20~0_combout\,
	datad => \inst|Selector32~0_combout\,
	combout => \inst|Selector73~0_combout\);

-- Location: LCCOMB_X39_Y21_N24
\inst7|Add7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add7~3_combout\ = (!\inst|Selector73~0_combout\ & \inst7|sal[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector73~0_combout\,
	datad => \inst7|sal[6]~10_combout\,
	combout => \inst7|Add7~3_combout\);

-- Location: FF_X39_Y21_N13
\inst5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst5|Q[6]~20_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|Selector72~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Q\(6));

-- Location: LCCOMB_X36_Y22_N6
\inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31~0_combout\ = (\inst5|Q\(8) & (\inst5|Q\(9) & \inst5|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(8),
	datac => \inst5|Q\(9),
	datad => \inst5|Q\(7),
	combout => \inst31~0_combout\);

-- Location: LCCOMB_X37_Y22_N26
\inst31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31~1_combout\ = (\inst5|Q\(6) & (\inst31~0_combout\ & (\inst5|Q\(5) & !\inst15|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(6),
	datab => \inst31~0_combout\,
	datac => \inst5|Q\(5),
	datad => \inst15|LessThan1~0_combout\,
	combout => \inst31~1_combout\);

-- Location: LCCOMB_X37_Y22_N30
\inst31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31~2_combout\ = (\inst31~1_combout\) # ((\inst5|Q\(10)) # ((!\inst15|LessThan1~1_combout\ & \inst45~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31~1_combout\,
	datab => \inst15|LessThan1~1_combout\,
	datac => \inst5|Q\(10),
	datad => \inst45~0_combout\,
	combout => \inst31~2_combout\);

-- Location: LCCOMB_X40_Y24_N12
\inst|Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector61~0_combout\ = (\inst75~0_combout\ & (\inst31~2_combout\ & ((\inst|y.T22~q\)))) # (!\inst75~0_combout\ & ((\inst|y.T62~q\) # ((\inst31~2_combout\ & \inst|y.T22~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst75~0_combout\,
	datab => \inst31~2_combout\,
	datac => \inst|y.T62~q\,
	datad => \inst|y.T22~q\,
	combout => \inst|Selector61~0_combout\);

-- Location: FF_X40_Y24_N13
\inst|y.T62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector61~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T62~q\);

-- Location: LCCOMB_X40_Y24_N8
\inst|WideOr83~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr83~3_combout\ = (!\inst|y.T62~q\ & \inst|WideOr83~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.T62~q\,
	datad => \inst|WideOr83~2_combout\,
	combout => \inst|WideOr83~3_combout\);

-- Location: LCCOMB_X40_Y24_N20
\inst72|Q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst72|Q[1]~3_combout\ = (!\inst|y.T3~q\ & \inst|WideOr83~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.T3~q\,
	datad => \inst|WideOr83~1_combout\,
	combout => \inst72|Q[1]~3_combout\);

-- Location: LCCOMB_X40_Y24_N16
\inst72|Q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst72|Q[1]~4_combout\ = \inst72|Q\(1) $ (((\inst72|Q\(0) & ((!\inst72|Q[1]~3_combout\) # (!\inst|WideOr83~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr83~3_combout\,
	datab => \inst72|Q[1]~3_combout\,
	datac => \inst72|Q\(1),
	datad => \inst72|Q\(0),
	combout => \inst72|Q[1]~4_combout\);

-- Location: FF_X40_Y24_N17
\inst72|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_1Hz~clkctrl_outclk\,
	d => \inst72|Q[1]~4_combout\,
	clrn => \inst|ALT_INV_WideOr83~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst72|Q\(1));

-- Location: LCCOMB_X40_Y24_N22
\inst72|Q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst72|Q[2]~2_combout\ = \inst72|Q\(2) $ (((\inst72|Q\(1) & \inst72|Q[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst72|Q\(1),
	datac => \inst72|Q\(2),
	datad => \inst72|Q[1]~0_combout\,
	combout => \inst72|Q[2]~2_combout\);

-- Location: FF_X40_Y24_N23
\inst72|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_1Hz~clkctrl_outclk\,
	d => \inst72|Q[2]~2_combout\,
	clrn => \inst|ALT_INV_WideOr83~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst72|Q\(2));

-- Location: LCCOMB_X40_Y24_N18
\inst75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst75~0_combout\ = (\inst72|Q\(2)) # ((\inst72|Q\(1)) # (\inst72|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst72|Q\(2),
	datab => \inst72|Q\(1),
	datad => \inst72|Q\(3),
	combout => \inst75~0_combout\);

-- Location: LCCOMB_X41_Y24_N16
\inst|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector46~0_combout\ = (\inst141|PB_SIN_REBOTE~q\ & (((\inst|y.T47~q\ & !\inst75~0_combout\)))) # (!\inst141|PB_SIN_REBOTE~q\ & ((\inst|y.T45~q\) # ((\inst|y.T47~q\ & !\inst75~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst141|PB_SIN_REBOTE~q\,
	datab => \inst|y.T45~q\,
	datac => \inst|y.T47~q\,
	datad => \inst75~0_combout\,
	combout => \inst|Selector46~0_combout\);

-- Location: LCCOMB_X41_Y24_N24
\inst|Selector46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector46~1_combout\ = (\inst|Selector46~0_combout\) # ((\inst107|Equal0~0_combout\ & \inst|y.t69~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|Equal0~0_combout\,
	datab => \inst|y.t69~q\,
	datad => \inst|Selector46~0_combout\,
	combout => \inst|Selector46~1_combout\);

-- Location: FF_X41_Y24_N25
\inst|y.T47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector46~1_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T47~q\);

-- Location: LCCOMB_X43_Y24_N8
\inst|Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector68~0_combout\ = (\inst|y.T47~q\ & ((\inst72|Q\(2)) # ((\inst72|Q\(3)) # (\inst72|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T47~q\,
	datab => \inst72|Q\(2),
	datac => \inst72|Q\(3),
	datad => \inst72|Q\(1),
	combout => \inst|Selector68~0_combout\);

-- Location: FF_X43_Y24_N9
\inst|y.t69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector68~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.t69~q\);

-- Location: LCCOMB_X39_Y25_N28
\inst|Selector40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector40~1_combout\ = (\inst|y.T39~q\ & (((\inst|y.T41~q\ & !\inst|y~142_combout\)) # (!\inst256~combout\))) # (!\inst|y.T39~q\ & (((\inst|y.T41~q\ & !\inst|y~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T39~q\,
	datab => \inst256~combout\,
	datac => \inst|y.T41~q\,
	datad => \inst|y~142_combout\,
	combout => \inst|Selector40~1_combout\);

-- Location: LCCOMB_X39_Y25_N30
\inst|Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector40~2_combout\ = (\inst|Selector40~0_combout\) # ((\inst|Selector40~1_combout\) # ((\inst|y.t69~q\ & !\inst107|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector40~0_combout\,
	datab => \inst|y.t69~q\,
	datac => \inst107|Equal0~0_combout\,
	datad => \inst|Selector40~1_combout\,
	combout => \inst|Selector40~2_combout\);

-- Location: FF_X39_Y25_N31
\inst|y.T41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector40~2_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T41~q\);

-- Location: LCCOMB_X39_Y25_N24
\inst|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector45~0_combout\ = (\inst|y.T41~q\ & ((\inst|y~143_combout\) # ((\inst256~combout\ & \inst|y.T46~q\)))) # (!\inst|y.T41~q\ & (\inst256~combout\ & (\inst|y.T46~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T41~q\,
	datab => \inst256~combout\,
	datac => \inst|y.T46~q\,
	datad => \inst|y~143_combout\,
	combout => \inst|Selector45~0_combout\);

-- Location: FF_X39_Y25_N25
\inst|y.T46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector45~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T46~q\);

-- Location: LCCOMB_X39_Y25_N12
\inst|Selector70~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector70~1_combout\ = (\inst|y.T46~q\) # ((\inst|y.T19~q\) # (\inst|y.T31~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.T46~q\,
	datac => \inst|y.T19~q\,
	datad => \inst|y.T31~q\,
	combout => \inst|Selector70~1_combout\);

-- Location: LCCOMB_X40_Y25_N22
\inst|Selector70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector70~0_combout\ = (\inst|y.T39~q\) # ((\inst|y.T13~q\) # ((\inst|y.T26~q\) # (\inst|y.T8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T39~q\,
	datab => \inst|y.T13~q\,
	datac => \inst|y.T26~q\,
	datad => \inst|y.T8~q\,
	combout => \inst|Selector70~0_combout\);

-- Location: LCCOMB_X39_Y25_N26
\inst|Selector70~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector70~2_combout\ = ((\inst256~combout\ & ((\inst|Selector70~1_combout\) # (\inst|Selector70~0_combout\)))) # (!\inst|y.T1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector70~1_combout\,
	datab => \inst256~combout\,
	datac => \inst|y.T1~q\,
	datad => \inst|Selector70~0_combout\,
	combout => \inst|Selector70~2_combout\);

-- Location: FF_X36_Y4_N1
\inst3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst2|WideOr1~combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|Selector70~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Q\(1));

-- Location: LCCOMB_X40_Y21_N28
\inst5|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Q[1]~feeder_combout\ = \inst5|Q[1]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|Q[1]~10_combout\,
	combout => \inst5|Q[1]~feeder_combout\);

-- Location: FF_X40_Y21_N29
\inst5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst5|Q[1]~feeder_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	ena => \inst|Selector72~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|Q\(1));

-- Location: LCCOMB_X40_Y22_N28
\inst|Selector50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector50~2_combout\ = (!\inst36|Add0~1_combout\ & ((\inst46|LessThan1~2_combout\ & ((!\inst38|s[1]~2_combout\))) # (!\inst46|LessThan1~2_combout\ & (!\inst36|s[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst36|s[1]~2_combout\,
	datab => \inst36|Add0~1_combout\,
	datac => \inst46|LessThan1~2_combout\,
	datad => \inst38|s[1]~2_combout\,
	combout => \inst|Selector50~2_combout\);

-- Location: LCCOMB_X39_Y23_N30
\inst|Selector50~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector50~3_combout\ = (\inst|Selector50~2_combout\ & ((\inst|Selector50~4_combout\) # ((\inst|y.T51~q\ & !\inst79~0_combout\)))) # (!\inst|Selector50~2_combout\ & (((\inst|y.T51~q\ & !\inst79~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector50~2_combout\,
	datab => \inst|Selector50~4_combout\,
	datac => \inst|y.T51~q\,
	datad => \inst79~0_combout\,
	combout => \inst|Selector50~3_combout\);

-- Location: FF_X39_Y23_N31
\inst|y.T51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector50~3_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T51~q\);

-- Location: LCCOMB_X39_Y23_N16
\inst|Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector54~0_combout\ = (\inst|y.T51~q\ & \inst79~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.T51~q\,
	datad => \inst79~0_combout\,
	combout => \inst|Selector54~0_combout\);

-- Location: FF_X39_Y23_N17
\inst|y.T55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector54~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T55~q\);

-- Location: LCCOMB_X34_Y21_N6
\inst109|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~2_cout\ = CARRY((!\inst85|altsyncram_component|auto_generated|q_a\(0) & \inst92|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst92|Mux10~0_combout\,
	datad => VCC,
	cout => \inst109|LessThan1~2_cout\);

-- Location: LCCOMB_X34_Y21_N8
\inst109|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~4_cout\ = CARRY((\inst85|altsyncram_component|auto_generated|q_a\(1) & ((!\inst109|LessThan1~2_cout\) # (!\inst92|Mux9~0_combout\))) # (!\inst85|altsyncram_component|auto_generated|q_a\(1) & (!\inst92|Mux9~0_combout\ & 
-- !\inst109|LessThan1~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst92|Mux9~0_combout\,
	datad => VCC,
	cin => \inst109|LessThan1~2_cout\,
	cout => \inst109|LessThan1~4_cout\);

-- Location: LCCOMB_X34_Y21_N10
\inst109|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~6_cout\ = CARRY((\inst85|altsyncram_component|auto_generated|q_a\(2) & (\inst92|Mux8~0_combout\ & !\inst109|LessThan1~4_cout\)) # (!\inst85|altsyncram_component|auto_generated|q_a\(2) & ((\inst92|Mux8~0_combout\) # 
-- (!\inst109|LessThan1~4_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst92|Mux8~0_combout\,
	datad => VCC,
	cin => \inst109|LessThan1~4_cout\,
	cout => \inst109|LessThan1~6_cout\);

-- Location: LCCOMB_X34_Y21_N12
\inst109|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~8_cout\ = CARRY((\inst92|Mux7~0_combout\ & (\inst85|altsyncram_component|auto_generated|q_a\(3) & !\inst109|LessThan1~6_cout\)) # (!\inst92|Mux7~0_combout\ & ((\inst85|altsyncram_component|auto_generated|q_a\(3)) # 
-- (!\inst109|LessThan1~6_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst92|Mux7~0_combout\,
	datab => \inst85|altsyncram_component|auto_generated|q_a\(3),
	datad => VCC,
	cin => \inst109|LessThan1~6_cout\,
	cout => \inst109|LessThan1~8_cout\);

-- Location: LCCOMB_X34_Y21_N14
\inst109|LessThan1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~10_cout\ = CARRY((\inst92|Mux6~0_combout\ & ((!\inst109|LessThan1~8_cout\) # (!\inst85|altsyncram_component|auto_generated|q_a\(4)))) # (!\inst92|Mux6~0_combout\ & (!\inst85|altsyncram_component|auto_generated|q_a\(4) & 
-- !\inst109|LessThan1~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst92|Mux6~0_combout\,
	datab => \inst85|altsyncram_component|auto_generated|q_a\(4),
	datad => VCC,
	cin => \inst109|LessThan1~8_cout\,
	cout => \inst109|LessThan1~10_cout\);

-- Location: LCCOMB_X34_Y21_N16
\inst109|LessThan1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~12_cout\ = CARRY((\inst92|Mux5~0_combout\ & (\inst85|altsyncram_component|auto_generated|q_a\(5) & !\inst109|LessThan1~10_cout\)) # (!\inst92|Mux5~0_combout\ & ((\inst85|altsyncram_component|auto_generated|q_a\(5)) # 
-- (!\inst109|LessThan1~10_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst92|Mux5~0_combout\,
	datab => \inst85|altsyncram_component|auto_generated|q_a\(5),
	datad => VCC,
	cin => \inst109|LessThan1~10_cout\,
	cout => \inst109|LessThan1~12_cout\);

-- Location: LCCOMB_X34_Y21_N18
\inst109|LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~14_cout\ = CARRY((\inst92|Mux4~0_combout\ & ((!\inst109|LessThan1~12_cout\) # (!\inst85|altsyncram_component|auto_generated|q_a\(6)))) # (!\inst92|Mux4~0_combout\ & (!\inst85|altsyncram_component|auto_generated|q_a\(6) & 
-- !\inst109|LessThan1~12_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst92|Mux4~0_combout\,
	datab => \inst85|altsyncram_component|auto_generated|q_a\(6),
	datad => VCC,
	cin => \inst109|LessThan1~12_cout\,
	cout => \inst109|LessThan1~14_cout\);

-- Location: LCCOMB_X34_Y21_N20
\inst109|LessThan1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~16_cout\ = CARRY((\inst85|altsyncram_component|auto_generated|q_a\(7) & ((!\inst109|LessThan1~14_cout\) # (!\inst92|Mux3~0_combout\))) # (!\inst85|altsyncram_component|auto_generated|q_a\(7) & (!\inst92|Mux3~0_combout\ & 
-- !\inst109|LessThan1~14_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst92|Mux3~0_combout\,
	datad => VCC,
	cin => \inst109|LessThan1~14_cout\,
	cout => \inst109|LessThan1~16_cout\);

-- Location: LCCOMB_X34_Y21_N22
\inst109|LessThan1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~18_cout\ = CARRY((\inst85|altsyncram_component|auto_generated|q_a\(8) & (\inst92|Mux2~0_combout\ & !\inst109|LessThan1~16_cout\)) # (!\inst85|altsyncram_component|auto_generated|q_a\(8) & ((\inst92|Mux2~0_combout\) # 
-- (!\inst109|LessThan1~16_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(8),
	datab => \inst92|Mux2~0_combout\,
	datad => VCC,
	cin => \inst109|LessThan1~16_cout\,
	cout => \inst109|LessThan1~18_cout\);

-- Location: LCCOMB_X34_Y21_N24
\inst109|LessThan1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~20_cout\ = CARRY((\inst92|Mux1~0_combout\ & (\inst85|altsyncram_component|auto_generated|q_a\(9) & !\inst109|LessThan1~18_cout\)) # (!\inst92|Mux1~0_combout\ & ((\inst85|altsyncram_component|auto_generated|q_a\(9)) # 
-- (!\inst109|LessThan1~18_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst92|Mux1~0_combout\,
	datab => \inst85|altsyncram_component|auto_generated|q_a\(9),
	datad => VCC,
	cin => \inst109|LessThan1~18_cout\,
	cout => \inst109|LessThan1~20_cout\);

-- Location: LCCOMB_X34_Y21_N26
\inst109|LessThan1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst109|LessThan1~21_combout\ = (\inst85|altsyncram_component|auto_generated|q_a\(10) & (!\inst109|LessThan1~20_cout\ & \inst92|Mux0~0_combout\)) # (!\inst85|altsyncram_component|auto_generated|q_a\(10) & ((\inst92|Mux0~0_combout\) # 
-- (!\inst109|LessThan1~20_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst85|altsyncram_component|auto_generated|q_a\(10),
	datad => \inst92|Mux0~0_combout\,
	cin => \inst109|LessThan1~20_cout\,
	combout => \inst109|LessThan1~21_combout\);

-- Location: LCCOMB_X38_Y24_N10
\inst|Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector55~0_combout\ = (\inst|y.T55~q\) # ((\inst107|Equal0~0_combout\ & (\inst|y.T56~q\ & !\inst109|LessThan1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T55~q\,
	datab => \inst107|Equal0~0_combout\,
	datac => \inst|y.T56~q\,
	datad => \inst109|LessThan1~21_combout\,
	combout => \inst|Selector55~0_combout\);

-- Location: FF_X38_Y24_N11
\inst|y.T56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector55~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T56~q\);

-- Location: LCCOMB_X38_Y24_N6
\inst|Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector69~0_combout\ = (\inst|y.T56~q\) # ((\inst|y.t66~q\) # ((\inst|y.T2~q\) # (\inst|y.T64~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T56~q\,
	datab => \inst|y.t66~q\,
	datac => \inst|y.T2~q\,
	datad => \inst|y.T64~q\,
	combout => \inst|Selector69~0_combout\);

-- Location: LCCOMB_X37_Y24_N10
\inst95|Q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst95|Q[0]~0_combout\ = (\inst|WideOr71~2_combout\ & ((\inst|Selector69~0_combout\) # ((\inst|Selector69~3_combout\) # (\inst|Selector69~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector69~0_combout\,
	datab => \inst|Selector69~3_combout\,
	datac => \inst|WideOr71~2_combout\,
	datad => \inst|Selector69~2_combout\,
	combout => \inst95|Q[0]~0_combout\);

-- Location: LCCOMB_X37_Y24_N30
\inst95|Q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst95|Q[1]~4_combout\ = (\inst95|Q\(1) & (((\inst95|Q[0]~0_combout\ & !\inst95|Q\(0))) # (!\inst|Selector69~4_combout\))) # (!\inst95|Q\(1) & (\inst95|Q[0]~0_combout\ & (\inst95|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst95|Q[0]~0_combout\,
	datab => \inst95|Q\(0),
	datac => \inst95|Q\(1),
	datad => \inst|Selector69~4_combout\,
	combout => \inst95|Q[1]~4_combout\);

-- Location: FF_X37_Y24_N31
\inst95|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst95|Q[1]~4_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst95|Q\(1));

-- Location: LCCOMB_X37_Y24_N8
\inst107|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst107|Equal0~0_combout\ = ((\inst95|Q\(2)) # ((\inst95|Q\(0)) # (!\inst95|Q\(3)))) # (!\inst95|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst95|Q\(1),
	datab => \inst95|Q\(2),
	datac => \inst95|Q\(0),
	datad => \inst95|Q\(3),
	combout => \inst107|Equal0~0_combout\);

-- Location: LCCOMB_X38_Y24_N24
\inst|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector13~0_combout\ = (\inst141|PB_SIN_REBOTE~q\ & (((\inst|y.T14~q\ & !\inst75~0_combout\)))) # (!\inst141|PB_SIN_REBOTE~q\ & ((\inst|y.T12~q\) # ((\inst|y.T14~q\ & !\inst75~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst141|PB_SIN_REBOTE~q\,
	datab => \inst|y.T12~q\,
	datac => \inst|y.T14~q\,
	datad => \inst75~0_combout\,
	combout => \inst|Selector13~0_combout\);

-- Location: LCCOMB_X38_Y24_N4
\inst|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector13~1_combout\ = (\inst|Selector13~0_combout\) # ((\inst|y.T64~q\ & \inst107|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.T64~q\,
	datac => \inst107|Equal0~0_combout\,
	datad => \inst|Selector13~0_combout\,
	combout => \inst|Selector13~1_combout\);

-- Location: FF_X38_Y24_N5
\inst|y.T14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector13~1_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T14~q\);

-- Location: LCCOMB_X41_Y24_N22
\inst|Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector63~0_combout\ = (\inst|y.T14~q\ & ((\inst72|Q\(2)) # ((\inst72|Q\(1)) # (\inst72|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T14~q\,
	datab => \inst72|Q\(2),
	datac => \inst72|Q\(1),
	datad => \inst72|Q\(3),
	combout => \inst|Selector63~0_combout\);

-- Location: FF_X41_Y24_N23
\inst|y.T64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector63~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T64~q\);

-- Location: LCCOMB_X38_Y25_N26
\inst|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector10~0_combout\ = (\inst140|PB_SIN_REBOTE~q\ & ((\inst|y.T11~q\) # ((\inst|y.T10~q\ & !\inst139|PB_SIN_REBOTE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T10~q\,
	datab => \inst139|PB_SIN_REBOTE~q\,
	datac => \inst|y.T11~q\,
	datad => \inst140|PB_SIN_REBOTE~q\,
	combout => \inst|Selector10~0_combout\);

-- Location: FF_X38_Y25_N27
\inst|y.T11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector10~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T11~q\);

-- Location: LCCOMB_X38_Y25_N24
\inst|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector9~0_combout\ = (\inst|y.T11~q\ & !\inst140|PB_SIN_REBOTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.T11~q\,
	datad => \inst140|PB_SIN_REBOTE~q\,
	combout => \inst|Selector9~0_combout\);

-- Location: LCCOMB_X39_Y25_N2
\inst|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector9~1_combout\ = (\inst256~combout\ & (((\inst|y.T10~q\ & !\inst|y~142_combout\)))) # (!\inst256~combout\ & ((\inst|y.T8~q\) # ((\inst|y.T10~q\ & !\inst|y~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst256~combout\,
	datab => \inst|y.T8~q\,
	datac => \inst|y.T10~q\,
	datad => \inst|y~142_combout\,
	combout => \inst|Selector9~1_combout\);

-- Location: LCCOMB_X39_Y25_N4
\inst|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector9~2_combout\ = (\inst|Selector9~0_combout\) # ((\inst|Selector9~1_combout\) # ((\inst|y.T64~q\ & !\inst107|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T64~q\,
	datab => \inst|Selector9~0_combout\,
	datac => \inst107|Equal0~0_combout\,
	datad => \inst|Selector9~1_combout\,
	combout => \inst|Selector9~2_combout\);

-- Location: FF_X39_Y25_N5
\inst|y.T10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector9~2_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T10~q\);

-- Location: LCCOMB_X39_Y26_N8
\inst|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector12~0_combout\ = (\inst|y~143_combout\ & ((\inst|y.T10~q\) # ((\inst|y.T13~q\ & \inst256~combout\)))) # (!\inst|y~143_combout\ & (((\inst|y.T13~q\ & \inst256~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y~143_combout\,
	datab => \inst|y.T10~q\,
	datac => \inst|y.T13~q\,
	datad => \inst256~combout\,
	combout => \inst|Selector12~0_combout\);

-- Location: FF_X39_Y26_N9
\inst|y.T13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector12~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T13~q\);

-- Location: LCCOMB_X40_Y25_N18
\inst|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector14~0_combout\ = (!\inst256~combout\ & \inst|y.T13~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst256~combout\,
	datad => \inst|y.T13~q\,
	combout => \inst|Selector14~0_combout\);

-- Location: FF_X40_Y25_N19
\inst|y.T15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector14~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T15~q\);

-- Location: LCCOMB_X40_Y25_N16
\inst|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector16~0_combout\ = (\inst140|PB_SIN_REBOTE~q\ & ((\inst|y.T17~q\) # ((!\inst139|PB_SIN_REBOTE~q\ & \inst|y.T16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst140|PB_SIN_REBOTE~q\,
	datab => \inst139|PB_SIN_REBOTE~q\,
	datac => \inst|y.T17~q\,
	datad => \inst|y.T16~q\,
	combout => \inst|Selector16~0_combout\);

-- Location: FF_X40_Y25_N17
\inst|y.T17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector16~0_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T17~q\);

-- Location: LCCOMB_X41_Y25_N28
\inst|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector15~0_combout\ = (\inst|y.T17~q\ & (((\inst|y.t65~q\ & !\inst107|Equal0~0_combout\)) # (!\inst140|PB_SIN_REBOTE~q\))) # (!\inst|y.T17~q\ & (\inst|y.t65~q\ & (!\inst107|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T17~q\,
	datab => \inst|y.t65~q\,
	datac => \inst107|Equal0~0_combout\,
	datad => \inst140|PB_SIN_REBOTE~q\,
	combout => \inst|Selector15~0_combout\);

-- Location: LCCOMB_X40_Y25_N24
\inst|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector15~1_combout\ = (\inst|y.T15~q\) # ((\inst|Selector15~0_combout\) # ((!\inst|y~142_combout\ & \inst|y.T16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y~142_combout\,
	datab => \inst|y.T15~q\,
	datac => \inst|y.T16~q\,
	datad => \inst|Selector15~0_combout\,
	combout => \inst|Selector15~1_combout\);

-- Location: FF_X40_Y25_N25
\inst|y.T16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst149|CLOCK_100Hz~clkctrl_outclk\,
	d => \inst|Selector15~1_combout\,
	clrn => \inst136|PB_SIN_REBOTE~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y.T16~q\);

-- Location: LCCOMB_X40_Y25_N10
\inst|WideOr90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr90~0_combout\ = (!\inst|y.T16~q\ & (!\inst|y.T10~q\ & !\inst|y.T5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.T16~q\,
	datac => \inst|y.T10~q\,
	datad => \inst|y.T5~q\,
	combout => \inst|WideOr90~0_combout\);

-- Location: LCCOMB_X39_Y26_N12
\inst|Apuesta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Apuesta~0_combout\ = (!\inst|y.T28~q\ & !\inst|y.T23~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T28~q\,
	datad => \inst|y.T23~q\,
	combout => \inst|Apuesta~0_combout\);

-- Location: LCCOMB_X38_Y25_N0
\inst|Adivine~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Adivine~0_combout\ = (!\inst|y.T36~q\ & !\inst|y.T41~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T36~q\,
	datac => \inst|y.T41~q\,
	combout => \inst|Adivine~0_combout\);

-- Location: LCCOMB_X40_Y26_N16
\inst|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr0~0_combout\ = (\inst|y.T62~q\) # (\inst|y.T63~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.T62~q\,
	datad => \inst|y.T63~q\,
	combout => \inst|WideOr0~0_combout\);

-- Location: LCCOMB_X37_Y25_N16
\inst|WideOr93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr93~0_combout\ = (!\inst|y.T11~q\ & (\inst|WideOr83~1_combout\ & !\inst|y.T6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.T11~q\,
	datac => \inst|WideOr83~1_combout\,
	datad => \inst|y.T6~q\,
	combout => \inst|WideOr93~0_combout\);

-- Location: LCCOMB_X40_Y25_N2
\inst|WideOr93~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr93~1_combout\ = (\inst|y.T51~q\) # ((\inst|y.T10~q\) # ((\inst|y.T50~q\) # (\inst|y.T49~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T51~q\,
	datab => \inst|y.T10~q\,
	datac => \inst|y.T50~q\,
	datad => \inst|y.T49~q\,
	combout => \inst|WideOr93~1_combout\);

-- Location: LCCOMB_X40_Y25_N14
\inst|WideOr94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr94~0_combout\ = (!\inst|y.T16~q\ & (!\inst|y.T28~q\ & !\inst|y.T22~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.T16~q\,
	datac => \inst|y.T28~q\,
	datad => \inst|y.T22~q\,
	combout => \inst|WideOr94~0_combout\);

-- Location: LCCOMB_X38_Y25_N8
\inst|WideOr75~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr75~7_combout\ = (!\inst|y.T17~q\ & (!\inst|y.T24~q\ & (!\inst|y.T29~q\ & \inst|WideOr94~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T17~q\,
	datab => \inst|y.T24~q\,
	datac => \inst|y.T29~q\,
	datad => \inst|WideOr94~0_combout\,
	combout => \inst|WideOr75~7_combout\);

-- Location: LCCOMB_X38_Y25_N12
\inst|WideOr74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr74~0_combout\ = (!\inst|y.T46~q\ & (!\inst|y.T39~q\ & (!\inst|y.T42~q\ & !\inst|y.T34~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T46~q\,
	datab => \inst|y.T39~q\,
	datac => \inst|y.T42~q\,
	datad => \inst|y.T34~q\,
	combout => \inst|WideOr74~0_combout\);

-- Location: LCCOMB_X38_Y25_N10
\inst|WideOr74~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr74~1_combout\ = (\inst|WideOr74~0_combout\ & (!\inst|y.T37~q\ & (!\inst|y.T44~q\ & \inst|Adivine~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr74~0_combout\,
	datab => \inst|y.T37~q\,
	datac => \inst|y.T44~q\,
	datad => \inst|Adivine~0_combout\,
	combout => \inst|WideOr74~1_combout\);

-- Location: LCCOMB_X38_Y25_N16
\inst|WideOr93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr93~combout\ = ((\inst|WideOr93~1_combout\) # ((!\inst|WideOr74~1_combout\) # (!\inst|WideOr75~7_combout\))) # (!\inst|WideOr93~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr93~0_combout\,
	datab => \inst|WideOr93~1_combout\,
	datac => \inst|WideOr75~7_combout\,
	datad => \inst|WideOr74~1_combout\,
	combout => \inst|WideOr93~combout\);

-- Location: LCCOMB_X39_Y23_N0
\inst|WideOr92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr92~combout\ = (\inst|y.T42~q\) # ((\inst|y.T51~q\) # (!\inst|WideOr83~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.T42~q\,
	datac => \inst|y.T51~q\,
	datad => \inst|WideOr83~1_combout\,
	combout => \inst|WideOr92~combout\);

-- Location: LCCOMB_X31_Y21_N28
\inst110|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|LessThan0~0_combout\ = (\inst85|altsyncram_component|auto_generated|q_a\(10) & ((\inst85|altsyncram_component|auto_generated|q_a\(8)) # (\inst85|altsyncram_component|auto_generated|q_a\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst85|altsyncram_component|auto_generated|q_a\(8),
	datac => \inst85|altsyncram_component|auto_generated|q_a\(9),
	combout => \inst110|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y21_N30
\inst110|z~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~51_combout\ = (\inst85|altsyncram_component|auto_generated|q_a\(10) & ((\inst85|altsyncram_component|auto_generated|q_a\(8) & (\inst85|altsyncram_component|auto_generated|q_a\(9) & \inst85|altsyncram_component|auto_generated|q_a\(7))) # 
-- (!\inst85|altsyncram_component|auto_generated|q_a\(8) & (!\inst85|altsyncram_component|auto_generated|q_a\(9))))) # (!\inst85|altsyncram_component|auto_generated|q_a\(10) & (\inst85|altsyncram_component|auto_generated|q_a\(9) & 
-- ((\inst85|altsyncram_component|auto_generated|q_a\(8)) # (\inst85|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst85|altsyncram_component|auto_generated|q_a\(8),
	datac => \inst85|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst85|altsyncram_component|auto_generated|q_a\(7),
	combout => \inst110|z~51_combout\);

-- Location: LCCOMB_X31_Y21_N8
\inst110|z~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~16_combout\ = (\inst85|altsyncram_component|auto_generated|q_a\(9) & ((\inst85|altsyncram_component|auto_generated|q_a\(10) & (!\inst85|altsyncram_component|auto_generated|q_a\(8) & \inst85|altsyncram_component|auto_generated|q_a\(7))) # 
-- (!\inst85|altsyncram_component|auto_generated|q_a\(10) & (\inst85|altsyncram_component|auto_generated|q_a\(8) & !\inst85|altsyncram_component|auto_generated|q_a\(7))))) # (!\inst85|altsyncram_component|auto_generated|q_a\(9) & 
-- (\inst85|altsyncram_component|auto_generated|q_a\(7) $ (((\inst85|altsyncram_component|auto_generated|q_a\(10) & !\inst85|altsyncram_component|auto_generated|q_a\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst85|altsyncram_component|auto_generated|q_a\(8),
	datac => \inst85|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst85|altsyncram_component|auto_generated|q_a\(7),
	combout => \inst110|z~16_combout\);

-- Location: LCCOMB_X31_Y21_N24
\inst110|z~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~18_combout\ = (\inst85|altsyncram_component|auto_generated|q_a\(10) & (!\inst85|altsyncram_component|auto_generated|q_a\(8) & ((\inst85|altsyncram_component|auto_generated|q_a\(9)) # (!\inst85|altsyncram_component|auto_generated|q_a\(7))))) # 
-- (!\inst85|altsyncram_component|auto_generated|q_a\(10) & (\inst85|altsyncram_component|auto_generated|q_a\(8) & ((\inst85|altsyncram_component|auto_generated|q_a\(7)) # (!\inst85|altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst85|altsyncram_component|auto_generated|q_a\(8),
	datac => \inst85|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst85|altsyncram_component|auto_generated|q_a\(7),
	combout => \inst110|z~18_combout\);

-- Location: LCCOMB_X31_Y21_N26
\inst110|z~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~17_combout\ = (\inst85|altsyncram_component|auto_generated|q_a\(9) & (!\inst85|altsyncram_component|auto_generated|q_a\(7) & (\inst85|altsyncram_component|auto_generated|q_a\(10) $ (!\inst85|altsyncram_component|auto_generated|q_a\(8))))) # 
-- (!\inst85|altsyncram_component|auto_generated|q_a\(9) & (\inst85|altsyncram_component|auto_generated|q_a\(10) & (!\inst85|altsyncram_component|auto_generated|q_a\(8) & \inst85|altsyncram_component|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst85|altsyncram_component|auto_generated|q_a\(8),
	datac => \inst85|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst85|altsyncram_component|auto_generated|q_a\(7),
	combout => \inst110|z~17_combout\);

-- Location: LCCOMB_X31_Y23_N0
\inst110|z~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~52_combout\ = \inst110|z~17_combout\ $ ((((!\inst110|z~16_combout\ & !\inst85|altsyncram_component|auto_generated|q_a\(6))) # (!\inst110|z~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~16_combout\,
	datab => \inst110|z~18_combout\,
	datac => \inst85|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst110|z~17_combout\,
	combout => \inst110|z~52_combout\);

-- Location: LCCOMB_X30_Y24_N0
\inst110|LessThan11~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|LessThan11~15_combout\ = (\inst110|LessThan0~0_combout\ & ((\inst110|z~51_combout\) # (!\inst110|z~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst110|LessThan0~0_combout\,
	datac => \inst110|z~51_combout\,
	datad => \inst110|z~52_combout\,
	combout => \inst110|LessThan11~15_combout\);

-- Location: LCCOMB_X31_Y23_N12
\inst110|z~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~21_combout\ = (\inst110|z~16_combout\ & ((\inst85|altsyncram_component|auto_generated|q_a\(6)) # ((!\inst110|z~18_combout\ & !\inst110|z~17_combout\)))) # (!\inst110|z~16_combout\ & (((!\inst85|altsyncram_component|auto_generated|q_a\(6) & 
-- \inst110|z~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~16_combout\,
	datab => \inst110|z~18_combout\,
	datac => \inst85|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst110|z~17_combout\,
	combout => \inst110|z~21_combout\);

-- Location: LCCOMB_X31_Y23_N28
\inst110|z~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~19_combout\ = (\inst110|z~18_combout\ & (!\inst85|altsyncram_component|auto_generated|q_a\(6) & ((\inst110|z~16_combout\) # (\inst110|z~17_combout\)))) # (!\inst110|z~18_combout\ & ((\inst85|altsyncram_component|auto_generated|q_a\(6) $ 
-- (\inst110|z~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~16_combout\,
	datab => \inst110|z~18_combout\,
	datac => \inst85|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst110|z~17_combout\,
	combout => \inst110|z~19_combout\);

-- Location: LCCOMB_X31_Y23_N10
\inst110|z~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~20_combout\ = (\inst110|z~18_combout\ & (!\inst110|z~16_combout\ & (!\inst85|altsyncram_component|auto_generated|q_a\(6)))) # (!\inst110|z~18_combout\ & (\inst110|z~17_combout\ & ((\inst110|z~16_combout\) # 
-- (\inst85|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~16_combout\,
	datab => \inst110|z~18_combout\,
	datac => \inst85|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst110|z~17_combout\,
	combout => \inst110|z~20_combout\);

-- Location: LCCOMB_X31_Y23_N18
\inst110|z~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~26_combout\ = \inst110|z~20_combout\ $ ((((!\inst110|z~19_combout\ & !\inst85|altsyncram_component|auto_generated|q_a\(5))) # (!\inst110|z~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~21_combout\,
	datab => \inst110|z~19_combout\,
	datac => \inst85|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst110|z~20_combout\,
	combout => \inst110|z~26_combout\);

-- Location: LCCOMB_X30_Y24_N8
\inst110|z~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~44_combout\ = (\inst110|LessThan0~0_combout\ & ((\inst110|z~51_combout\ & ((\inst110|z~26_combout\) # (\inst110|z~52_combout\))) # (!\inst110|z~51_combout\ & ((!\inst110|z~52_combout\))))) # (!\inst110|LessThan0~0_combout\ & 
-- (((\inst110|z~26_combout\ & \inst110|z~52_combout\)) # (!\inst110|z~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~26_combout\,
	datab => \inst110|LessThan0~0_combout\,
	datac => \inst110|z~51_combout\,
	datad => \inst110|z~52_combout\,
	combout => \inst110|z~44_combout\);

-- Location: LCCOMB_X30_Y24_N6
\inst110|z~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~29_combout\ = (\inst110|z~26_combout\ & (\inst110|z~51_combout\ & (\inst110|LessThan0~0_combout\ $ (\inst110|z~52_combout\)))) # (!\inst110|z~26_combout\ & (\inst110|LessThan0~0_combout\ & (!\inst110|z~51_combout\ & \inst110|z~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~26_combout\,
	datab => \inst110|LessThan0~0_combout\,
	datac => \inst110|z~51_combout\,
	datad => \inst110|z~52_combout\,
	combout => \inst110|z~29_combout\);

-- Location: LCCOMB_X31_Y21_N4
\inst110|z~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~58_combout\ = (\inst85|altsyncram_component|auto_generated|q_a\(10) & ((\inst85|altsyncram_component|auto_generated|q_a\(7) & (!\inst85|altsyncram_component|auto_generated|q_a\(9))) # (!\inst85|altsyncram_component|auto_generated|q_a\(7) & 
-- (\inst85|altsyncram_component|auto_generated|q_a\(9) & \inst85|altsyncram_component|auto_generated|q_a\(6))))) # (!\inst85|altsyncram_component|auto_generated|q_a\(10) & ((\inst85|altsyncram_component|auto_generated|q_a\(7)) # 
-- ((!\inst85|altsyncram_component|auto_generated|q_a\(9) & !\inst85|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst85|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst85|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst85|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst110|z~58_combout\);

-- Location: LCCOMB_X31_Y21_N22
\inst110|z~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~59_combout\ = (\inst85|altsyncram_component|auto_generated|q_a\(9) & ((\inst110|z~58_combout\) # (\inst85|altsyncram_component|auto_generated|q_a\(8) $ (\inst85|altsyncram_component|auto_generated|q_a\(7))))) # 
-- (!\inst85|altsyncram_component|auto_generated|q_a\(9) & ((\inst85|altsyncram_component|auto_generated|q_a\(8) & (\inst110|z~58_combout\ & !\inst85|altsyncram_component|auto_generated|q_a\(7))) # (!\inst85|altsyncram_component|auto_generated|q_a\(8) & 
-- ((\inst110|z~58_combout\) # (!\inst85|altsyncram_component|auto_generated|q_a\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(9),
	datab => \inst85|altsyncram_component|auto_generated|q_a\(8),
	datac => \inst110|z~58_combout\,
	datad => \inst85|altsyncram_component|auto_generated|q_a\(7),
	combout => \inst110|z~59_combout\);

-- Location: LCCOMB_X31_Y21_N12
\inst110|z~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~56_combout\ = (\inst85|altsyncram_component|auto_generated|q_a\(10) & (((!\inst85|altsyncram_component|auto_generated|q_a\(7) & !\inst85|altsyncram_component|auto_generated|q_a\(6))) # (!\inst85|altsyncram_component|auto_generated|q_a\(9)))) # 
-- (!\inst85|altsyncram_component|auto_generated|q_a\(10) & (\inst85|altsyncram_component|auto_generated|q_a\(7) & (\inst85|altsyncram_component|auto_generated|q_a\(9) & \inst85|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst85|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst85|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst85|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst110|z~56_combout\);

-- Location: LCCOMB_X31_Y21_N14
\inst110|z~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~57_combout\ = (\inst110|z~56_combout\ & ((\inst85|altsyncram_component|auto_generated|q_a\(8) $ (!\inst85|altsyncram_component|auto_generated|q_a\(7))) # (!\inst85|altsyncram_component|auto_generated|q_a\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~56_combout\,
	datab => \inst85|altsyncram_component|auto_generated|q_a\(8),
	datac => \inst85|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst85|altsyncram_component|auto_generated|q_a\(7),
	combout => \inst110|z~57_combout\);

-- Location: LCCOMB_X31_Y21_N18
\inst110|z~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~28_combout\ = \inst110|z~59_combout\ $ (((\inst110|z~26_combout\) # (!\inst110|z~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~59_combout\,
	datab => \inst110|z~26_combout\,
	datac => \inst110|z~57_combout\,
	combout => \inst110|z~28_combout\);

-- Location: LCCOMB_X31_Y23_N6
\inst110|z~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~24_combout\ = (\inst110|z~21_combout\ & (!\inst85|altsyncram_component|auto_generated|q_a\(5) & ((\inst110|z~19_combout\) # (\inst110|z~20_combout\)))) # (!\inst110|z~21_combout\ & ((\inst85|altsyncram_component|auto_generated|q_a\(5) $ 
-- (\inst110|z~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~21_combout\,
	datab => \inst110|z~19_combout\,
	datac => \inst85|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst110|z~20_combout\,
	combout => \inst110|z~24_combout\);

-- Location: LCCOMB_X31_Y23_N14
\inst110|z~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~22_combout\ = (\inst110|z~19_combout\ & ((\inst85|altsyncram_component|auto_generated|q_a\(5)) # ((!\inst110|z~21_combout\ & !\inst110|z~20_combout\)))) # (!\inst110|z~19_combout\ & (((!\inst85|altsyncram_component|auto_generated|q_a\(5) & 
-- \inst110|z~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~21_combout\,
	datab => \inst110|z~19_combout\,
	datac => \inst85|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst110|z~20_combout\,
	combout => \inst110|z~22_combout\);

-- Location: LCCOMB_X31_Y23_N24
\inst110|z~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~23_combout\ = (\inst110|z~21_combout\ & (!\inst110|z~19_combout\ & (!\inst85|altsyncram_component|auto_generated|q_a\(5)))) # (!\inst110|z~21_combout\ & (\inst110|z~20_combout\ & ((\inst110|z~19_combout\) # 
-- (\inst85|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~21_combout\,
	datab => \inst110|z~19_combout\,
	datac => \inst85|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst110|z~20_combout\,
	combout => \inst110|z~23_combout\);

-- Location: LCCOMB_X31_Y23_N4
\inst110|z~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~25_combout\ = \inst110|z~23_combout\ $ ((((!\inst110|z~24_combout\ & !\inst85|altsyncram_component|auto_generated|q_a\(4))) # (!\inst110|z~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~24_combout\,
	datab => \inst110|z~22_combout\,
	datac => \inst85|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst110|z~23_combout\,
	combout => \inst110|z~25_combout\);

-- Location: LCCOMB_X30_Y24_N28
\inst110|z~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~27_combout\ = (\inst110|z~26_combout\ & ((\inst110|LessThan0~0_combout\ & ((\inst110|z~51_combout\) # (!\inst110|z~52_combout\))) # (!\inst110|LessThan0~0_combout\ & ((\inst110|z~52_combout\) # (!\inst110|z~51_combout\))))) # 
-- (!\inst110|z~26_combout\ & (\inst110|z~51_combout\ $ (((\inst110|LessThan0~0_combout\ & \inst110|z~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~26_combout\,
	datab => \inst110|LessThan0~0_combout\,
	datac => \inst110|z~51_combout\,
	datad => \inst110|z~52_combout\,
	combout => \inst110|z~27_combout\);

-- Location: LCCOMB_X30_Y24_N10
\inst110|z~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~45_combout\ = \inst110|z~29_combout\ $ ((((\inst110|z~25_combout\ & \inst110|z~27_combout\)) # (!\inst110|z~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~29_combout\,
	datab => \inst110|z~28_combout\,
	datac => \inst110|z~25_combout\,
	datad => \inst110|z~27_combout\,
	combout => \inst110|z~45_combout\);

-- Location: LCCOMB_X30_Y24_N20
\inst110|z~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~47_combout\ = (!\inst110|z~44_combout\ & ((!\inst110|z~45_combout\) # (!\inst110|LessThan11~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst110|LessThan11~15_combout\,
	datac => \inst110|z~44_combout\,
	datad => \inst110|z~45_combout\,
	combout => \inst110|z~47_combout\);

-- Location: LCCOMB_X30_Y24_N12
\inst110|z~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~36_combout\ = (\inst110|z~29_combout\ & ((\inst110|z~25_combout\ $ (\inst110|z~27_combout\)))) # (!\inst110|z~29_combout\ & ((\inst110|z~27_combout\) # ((\inst110|z~28_combout\ & \inst110|z~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~29_combout\,
	datab => \inst110|z~28_combout\,
	datac => \inst110|z~25_combout\,
	datad => \inst110|z~27_combout\,
	combout => \inst110|z~36_combout\);

-- Location: LCCOMB_X30_Y24_N24
\inst110|z~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~30_combout\ = (\inst110|z~28_combout\ & (((\inst110|z~25_combout\ & \inst110|z~27_combout\)))) # (!\inst110|z~28_combout\ & (\inst110|z~29_combout\ & ((!\inst110|z~27_combout\) # (!\inst110|z~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~29_combout\,
	datab => \inst110|z~28_combout\,
	datac => \inst110|z~25_combout\,
	datad => \inst110|z~27_combout\,
	combout => \inst110|z~30_combout\);

-- Location: LCCOMB_X30_Y24_N22
\inst110|z~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~35_combout\ = (\inst110|z~29_combout\ & (((!\inst110|z~25_combout\)))) # (!\inst110|z~29_combout\ & ((\inst110|z~28_combout\ & ((\inst110|z~27_combout\) # (!\inst110|z~25_combout\))) # (!\inst110|z~28_combout\ & (\inst110|z~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~29_combout\,
	datab => \inst110|z~28_combout\,
	datac => \inst110|z~25_combout\,
	datad => \inst110|z~27_combout\,
	combout => \inst110|z~35_combout\);

-- Location: LCCOMB_X32_Y23_N16
\inst110|z~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~33_combout\ = (\inst110|z~22_combout\ & (!\inst85|altsyncram_component|auto_generated|q_a\(4) & ((\inst110|z~24_combout\) # (\inst110|z~23_combout\)))) # (!\inst110|z~22_combout\ & ((\inst85|altsyncram_component|auto_generated|q_a\(4) $ 
-- (\inst110|z~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~22_combout\,
	datab => \inst110|z~24_combout\,
	datac => \inst85|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst110|z~23_combout\,
	combout => \inst110|z~33_combout\);

-- Location: LCCOMB_X32_Y23_N22
\inst110|z~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~32_combout\ = (\inst110|z~22_combout\ & (!\inst110|z~24_combout\ & (!\inst85|altsyncram_component|auto_generated|q_a\(4)))) # (!\inst110|z~22_combout\ & (\inst110|z~23_combout\ & ((\inst110|z~24_combout\) # 
-- (\inst85|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~22_combout\,
	datab => \inst110|z~24_combout\,
	datac => \inst85|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst110|z~23_combout\,
	combout => \inst110|z~32_combout\);

-- Location: LCCOMB_X32_Y23_N28
\inst110|z~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~31_combout\ = (\inst110|z~24_combout\ & ((\inst85|altsyncram_component|auto_generated|q_a\(4)) # ((!\inst110|z~22_combout\ & !\inst110|z~23_combout\)))) # (!\inst110|z~24_combout\ & (((!\inst85|altsyncram_component|auto_generated|q_a\(4) & 
-- \inst110|z~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~22_combout\,
	datab => \inst110|z~24_combout\,
	datac => \inst85|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst110|z~23_combout\,
	combout => \inst110|z~31_combout\);

-- Location: LCCOMB_X32_Y23_N2
\inst110|z~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~34_combout\ = \inst110|z~32_combout\ $ ((((!\inst85|altsyncram_component|auto_generated|q_a\(3) & !\inst110|z~33_combout\)) # (!\inst110|z~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst110|z~33_combout\,
	datac => \inst110|z~32_combout\,
	datad => \inst110|z~31_combout\,
	combout => \inst110|z~34_combout\);

-- Location: LCCOMB_X30_Y24_N26
\inst110|z~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~48_combout\ = \inst110|z~30_combout\ $ (((\inst110|z~36_combout\) # ((\inst110|z~35_combout\ & \inst110|z~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~36_combout\,
	datab => \inst110|z~30_combout\,
	datac => \inst110|z~35_combout\,
	datad => \inst110|z~34_combout\,
	combout => \inst110|z~48_combout\);

-- Location: LCCOMB_X30_Y24_N30
\inst110|z~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~46_combout\ = (\inst110|LessThan11~15_combout\ & ((\inst110|z~44_combout\) # (!\inst110|z~45_combout\))) # (!\inst110|LessThan11~15_combout\ & ((\inst110|z~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst110|LessThan11~15_combout\,
	datac => \inst110|z~44_combout\,
	datad => \inst110|z~45_combout\,
	combout => \inst110|z~46_combout\);

-- Location: LCCOMB_X31_Y21_N20
\inst110|z~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~54_combout\ = (\inst85|altsyncram_component|auto_generated|q_a\(8) & (((!\inst85|altsyncram_component|auto_generated|q_a\(5) & !\inst85|altsyncram_component|auto_generated|q_a\(4))) # (!\inst85|altsyncram_component|auto_generated|q_a\(6)))) # 
-- (!\inst85|altsyncram_component|auto_generated|q_a\(8) & (((\inst85|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(5),
	datab => \inst85|altsyncram_component|auto_generated|q_a\(8),
	datac => \inst85|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst85|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst110|z~54_combout\);

-- Location: LCCOMB_X31_Y21_N6
\inst110|z~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~55_combout\ = (\inst110|z~54_combout\) # (\inst85|altsyncram_component|auto_generated|q_a\(6) $ (\inst85|altsyncram_component|auto_generated|q_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(6),
	datab => \inst85|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst110|z~54_combout\,
	combout => \inst110|z~55_combout\);

-- Location: LCCOMB_X31_Y21_N2
\inst110|z~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~53_combout\ = (\inst85|altsyncram_component|auto_generated|q_a\(10) & (\inst85|altsyncram_component|auto_generated|q_a\(9) & \inst110|z~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst85|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst110|z~55_combout\,
	combout => \inst110|z~53_combout\);

-- Location: LCCOMB_X32_Y24_N0
\inst110|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|C[1]~0_combout\ = (\inst110|z~47_combout\ & (((\inst110|z~46_combout\ & !\inst110|z~53_combout\)) # (!\inst110|z~48_combout\))) # (!\inst110|z~47_combout\ & (\inst110|z~48_combout\ $ (((\inst110|z~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~47_combout\,
	datab => \inst110|z~48_combout\,
	datac => \inst110|z~46_combout\,
	datad => \inst110|z~53_combout\,
	combout => \inst110|C[1]~0_combout\);

-- Location: LCCOMB_X38_Y25_N18
\inst|WideOr91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr91~0_combout\ = (!\inst|y.T29~q\ & (!\inst|y.T17~q\ & !\inst|y.T24~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T29~q\,
	datac => \inst|y.T17~q\,
	datad => \inst|y.T24~q\,
	combout => \inst|WideOr91~0_combout\);

-- Location: LCCOMB_X38_Y25_N30
\inst|WideOr91~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr91~1_combout\ = (\inst|WideOr93~0_combout\ & (!\inst|y.T37~q\ & (!\inst|y.T44~q\ & \inst|WideOr91~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr93~0_combout\,
	datab => \inst|y.T37~q\,
	datac => \inst|y.T44~q\,
	datad => \inst|WideOr91~0_combout\,
	combout => \inst|WideOr91~1_combout\);

-- Location: LCCOMB_X35_Y25_N0
\inst|WideOr94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr94~combout\ = (!\inst|y.T34~q\ & (\inst|WideOr94~0_combout\ & !\inst|y.T10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y.T34~q\,
	datac => \inst|WideOr94~0_combout\,
	datad => \inst|y.T10~q\,
	combout => \inst|WideOr94~combout\);

-- Location: LCCOMB_X36_Y22_N24
\inst122|z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~2_combout\ = (\inst5|Q\(10) & (!\inst5|Q\(8) & ((\inst5|Q\(9)) # (!\inst5|Q\(7))))) # (!\inst5|Q\(10) & (\inst5|Q\(8) & ((\inst5|Q\(7)) # (!\inst5|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(10),
	datab => \inst5|Q\(7),
	datac => \inst5|Q\(9),
	datad => \inst5|Q\(8),
	combout => \inst122|z~2_combout\);

-- Location: LCCOMB_X36_Y22_N18
\inst122|z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~1_combout\ = (\inst5|Q\(7) & (\inst5|Q\(10) & (!\inst5|Q\(9) & !\inst5|Q\(8)))) # (!\inst5|Q\(7) & (\inst5|Q\(9) & (\inst5|Q\(10) $ (!\inst5|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(10),
	datab => \inst5|Q\(7),
	datac => \inst5|Q\(9),
	datad => \inst5|Q\(8),
	combout => \inst122|z~1_combout\);

-- Location: LCCOMB_X36_Y22_N28
\inst122|z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~0_combout\ = (\inst5|Q\(7) & (\inst5|Q\(9) $ (((\inst5|Q\(8)) # (!\inst5|Q\(10)))))) # (!\inst5|Q\(7) & ((\inst5|Q\(10) & (!\inst5|Q\(9) & !\inst5|Q\(8))) # (!\inst5|Q\(10) & (\inst5|Q\(9) & \inst5|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(10),
	datab => \inst5|Q\(7),
	datac => \inst5|Q\(9),
	datad => \inst5|Q\(8),
	combout => \inst122|z~0_combout\);

-- Location: LCCOMB_X36_Y22_N20
\inst122|z~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~4_combout\ = (\inst122|z~2_combout\ & (((!\inst5|Q\(6) & !\inst122|z~0_combout\)))) # (!\inst122|z~2_combout\ & (\inst122|z~1_combout\ & ((\inst5|Q\(6)) # (\inst122|z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~2_combout\,
	datab => \inst122|z~1_combout\,
	datac => \inst5|Q\(6),
	datad => \inst122|z~0_combout\,
	combout => \inst122|z~4_combout\);

-- Location: LCCOMB_X36_Y22_N10
\inst122|z~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~5_combout\ = (\inst122|z~1_combout\ & ((\inst5|Q\(6) $ (!\inst122|z~0_combout\)))) # (!\inst122|z~1_combout\ & (\inst122|z~0_combout\ & ((\inst5|Q\(6)) # (!\inst122|z~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~2_combout\,
	datab => \inst122|z~1_combout\,
	datac => \inst5|Q\(6),
	datad => \inst122|z~0_combout\,
	combout => \inst122|z~5_combout\);

-- Location: LCCOMB_X36_Y22_N14
\inst122|z~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~3_combout\ = (\inst122|z~2_combout\ & (!\inst5|Q\(6) & ((\inst122|z~1_combout\) # (\inst122|z~0_combout\)))) # (!\inst122|z~2_combout\ & (\inst122|z~1_combout\ $ ((\inst5|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~2_combout\,
	datab => \inst122|z~1_combout\,
	datac => \inst5|Q\(6),
	datad => \inst122|z~0_combout\,
	combout => \inst122|z~3_combout\);

-- Location: LCCOMB_X38_Y22_N20
\inst122|z~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~16_combout\ = \inst122|z~4_combout\ $ ((((!\inst122|z~3_combout\ & !\inst5|Q\(5))) # (!\inst122|z~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~4_combout\,
	datab => \inst122|z~5_combout\,
	datac => \inst122|z~3_combout\,
	datad => \inst5|Q\(5),
	combout => \inst122|z~16_combout\);

-- Location: LCCOMB_X36_Y22_N16
\inst122|z~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~19_combout\ = \inst122|z~1_combout\ $ ((((!\inst5|Q\(6) & !\inst122|z~0_combout\)) # (!\inst122|z~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~2_combout\,
	datab => \inst122|z~1_combout\,
	datac => \inst5|Q\(6),
	datad => \inst122|z~0_combout\,
	combout => \inst122|z~19_combout\);

-- Location: LCCOMB_X36_Y22_N2
\inst122|z~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~18_combout\ = ((!\inst5|Q\(8) & !\inst5|Q\(9))) # (!\inst5|Q\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(8),
	datac => \inst5|Q\(9),
	datad => \inst5|Q\(10),
	combout => \inst122|z~18_combout\);

-- Location: LCCOMB_X36_Y22_N0
\inst122|z~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~17_combout\ = (\inst5|Q\(10) & ((\inst5|Q\(9) & (\inst5|Q\(7) & \inst5|Q\(8))) # (!\inst5|Q\(9) & ((!\inst5|Q\(8)))))) # (!\inst5|Q\(10) & (\inst5|Q\(9) & ((\inst5|Q\(7)) # (\inst5|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(10),
	datab => \inst5|Q\(7),
	datac => \inst5|Q\(9),
	datad => \inst5|Q\(8),
	combout => \inst122|z~17_combout\);

-- Location: LCCOMB_X36_Y22_N4
\inst122|z~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~24_combout\ = (\inst122|z~16_combout\ & (\inst122|z~17_combout\ & (\inst122|z~19_combout\ $ (!\inst122|z~18_combout\)))) # (!\inst122|z~16_combout\ & (\inst122|z~19_combout\ & (!\inst122|z~18_combout\ & !\inst122|z~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~19_combout\,
	datab => \inst122|z~18_combout\,
	datac => \inst122|z~16_combout\,
	datad => \inst122|z~17_combout\,
	combout => \inst122|z~24_combout\);

-- Location: LCCOMB_X38_Y22_N12
\inst122|z~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~8_combout\ = (\inst122|z~4_combout\ & ((\inst122|z~3_combout\ $ (!\inst5|Q\(5))))) # (!\inst122|z~4_combout\ & (\inst122|z~3_combout\ & ((\inst5|Q\(5)) # (!\inst122|z~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~4_combout\,
	datab => \inst122|z~5_combout\,
	datac => \inst122|z~3_combout\,
	datad => \inst5|Q\(5),
	combout => \inst122|z~8_combout\);

-- Location: LCCOMB_X38_Y22_N18
\inst122|z~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~7_combout\ = (\inst122|z~5_combout\ & (((!\inst122|z~3_combout\ & !\inst5|Q\(5))))) # (!\inst122|z~5_combout\ & (\inst122|z~4_combout\ & ((\inst122|z~3_combout\) # (\inst5|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~4_combout\,
	datab => \inst122|z~5_combout\,
	datac => \inst122|z~3_combout\,
	datad => \inst5|Q\(5),
	combout => \inst122|z~7_combout\);

-- Location: LCCOMB_X38_Y22_N28
\inst122|z~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~6_combout\ = (\inst122|z~4_combout\ & (((!\inst5|Q\(5))))) # (!\inst122|z~4_combout\ & ((\inst122|z~5_combout\ & (\inst122|z~3_combout\ & !\inst5|Q\(5))) # (!\inst122|z~5_combout\ & ((\inst5|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~4_combout\,
	datab => \inst122|z~5_combout\,
	datac => \inst122|z~3_combout\,
	datad => \inst5|Q\(5),
	combout => \inst122|z~6_combout\);

-- Location: LCCOMB_X38_Y22_N22
\inst122|z~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~20_combout\ = \inst122|z~7_combout\ $ ((((!\inst5|Q\(4) & !\inst122|z~6_combout\)) # (!\inst122|z~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~8_combout\,
	datab => \inst122|z~7_combout\,
	datac => \inst5|Q\(4),
	datad => \inst122|z~6_combout\,
	combout => \inst122|z~20_combout\);

-- Location: LCCOMB_X36_Y22_N26
\inst122|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|LessThan6~0_combout\ = (\inst122|z~19_combout\ & ((\inst122|z~18_combout\ & (!\inst122|z~16_combout\ & \inst122|z~17_combout\)) # (!\inst122|z~18_combout\ & ((!\inst122|z~17_combout\))))) # (!\inst122|z~19_combout\ & (\inst122|z~17_combout\ & 
-- ((\inst122|z~18_combout\) # (!\inst122|z~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~19_combout\,
	datab => \inst122|z~18_combout\,
	datac => \inst122|z~16_combout\,
	datad => \inst122|z~17_combout\,
	combout => \inst122|LessThan6~0_combout\);

-- Location: LCCOMB_X35_Y22_N24
\inst122|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|LessThan8~0_combout\ = (\inst122|z~16_combout\ $ (!\inst122|LessThan6~0_combout\)) # (!\inst122|z~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~16_combout\,
	datac => \inst122|z~20_combout\,
	datad => \inst122|LessThan6~0_combout\,
	combout => \inst122|LessThan8~0_combout\);

-- Location: LCCOMB_X36_Y22_N8
\inst122|z~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~21_combout\ = (\inst122|z~18_combout\ & (\inst122|z~19_combout\)) # (!\inst122|z~18_combout\ & ((!\inst122|z~17_combout\) # (!\inst122|z~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst122|z~18_combout\,
	datac => \inst122|z~19_combout\,
	datad => \inst122|z~17_combout\,
	combout => \inst122|z~21_combout\);

-- Location: LCCOMB_X36_Y22_N12
\inst122|z~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~22_combout\ = (\inst5|Q\(10) & ((\inst31~0_combout\) # ((\inst122|z~18_combout\ & !\inst122|z~19_combout\)))) # (!\inst5|Q\(10) & (\inst122|z~18_combout\ & (!\inst122|z~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(10),
	datab => \inst122|z~18_combout\,
	datac => \inst122|z~19_combout\,
	datad => \inst31~0_combout\,
	combout => \inst122|z~22_combout\);

-- Location: LCCOMB_X36_Y22_N22
\inst122|z~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~23_combout\ = (\inst122|LessThan6~0_combout\ & (\inst122|z~16_combout\ $ ((!\inst122|z~21_combout\)))) # (!\inst122|LessThan6~0_combout\ & (((\inst122|z~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~16_combout\,
	datab => \inst122|z~21_combout\,
	datac => \inst122|LessThan6~0_combout\,
	datad => \inst122|z~22_combout\,
	combout => \inst122|z~23_combout\);

-- Location: LCCOMB_X35_Y22_N16
\inst122|LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|LessThan8~1_combout\ = (\inst122|z~24_combout\) # ((\inst122|LessThan8~0_combout\ & \inst122|z~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~24_combout\,
	datab => \inst122|LessThan8~0_combout\,
	datad => \inst122|z~23_combout\,
	combout => \inst122|LessThan8~1_combout\);

-- Location: LCCOMB_X35_Y22_N22
\inst122|z~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~26_combout\ = \inst122|z~16_combout\ $ (\inst122|LessThan6~0_combout\ $ (((\inst122|LessThan8~1_combout\ & \inst122|z~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~16_combout\,
	datab => \inst122|LessThan8~1_combout\,
	datac => \inst122|z~20_combout\,
	datad => \inst122|LessThan6~0_combout\,
	combout => \inst122|z~26_combout\);

-- Location: LCCOMB_X38_Y22_N8
\inst122|z~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~10_combout\ = (\inst122|z~8_combout\ & (((!\inst5|Q\(4) & !\inst122|z~6_combout\)))) # (!\inst122|z~8_combout\ & (\inst122|z~7_combout\ & ((\inst5|Q\(4)) # (\inst122|z~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~8_combout\,
	datab => \inst122|z~7_combout\,
	datac => \inst5|Q\(4),
	datad => \inst122|z~6_combout\,
	combout => \inst122|z~10_combout\);

-- Location: LCCOMB_X38_Y22_N14
\inst122|z~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~9_combout\ = (\inst122|z~8_combout\ & (!\inst5|Q\(4) & ((\inst122|z~7_combout\) # (\inst122|z~6_combout\)))) # (!\inst122|z~8_combout\ & (\inst122|z~7_combout\ $ ((\inst5|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~8_combout\,
	datab => \inst122|z~7_combout\,
	datac => \inst5|Q\(4),
	datad => \inst122|z~6_combout\,
	combout => \inst122|z~9_combout\);

-- Location: LCCOMB_X38_Y22_N10
\inst122|z~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~11_combout\ = (\inst122|z~7_combout\ & ((\inst5|Q\(4) $ (!\inst122|z~6_combout\)))) # (!\inst122|z~7_combout\ & (\inst122|z~6_combout\ & ((\inst5|Q\(4)) # (!\inst122|z~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~8_combout\,
	datab => \inst122|z~7_combout\,
	datac => \inst5|Q\(4),
	datad => \inst122|z~6_combout\,
	combout => \inst122|z~11_combout\);

-- Location: LCCOMB_X38_Y22_N16
\inst122|z~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~28_combout\ = \inst122|z~10_combout\ $ ((((!\inst5|Q\(3) & !\inst122|z~9_combout\)) # (!\inst122|z~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(3),
	datab => \inst122|z~10_combout\,
	datac => \inst122|z~9_combout\,
	datad => \inst122|z~11_combout\,
	combout => \inst122|z~28_combout\);

-- Location: LCCOMB_X35_Y22_N14
\inst122|LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|LessThan10~0_combout\ = (\inst122|z~20_combout\ $ (!\inst122|LessThan8~1_combout\)) # (!\inst122|z~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~20_combout\,
	datac => \inst122|z~28_combout\,
	datad => \inst122|LessThan8~1_combout\,
	combout => \inst122|LessThan10~0_combout\);

-- Location: LCCOMB_X35_Y22_N12
\inst122|z~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~27_combout\ = (\inst122|LessThan8~0_combout\ & (\inst122|z~24_combout\ & !\inst122|z~23_combout\)) # (!\inst122|LessThan8~0_combout\ & ((\inst122|z~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~24_combout\,
	datab => \inst122|LessThan8~0_combout\,
	datad => \inst122|z~23_combout\,
	combout => \inst122|z~27_combout\);

-- Location: LCCOMB_X35_Y22_N0
\inst122|z~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~31_combout\ = \inst122|z~27_combout\ $ (((\inst122|z~26_combout\) # (!\inst122|LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~26_combout\,
	datab => \inst122|LessThan10~0_combout\,
	datac => \inst122|z~27_combout\,
	combout => \inst122|z~31_combout\);

-- Location: LCCOMB_X36_Y22_N30
\inst112|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst112|Mux2~3_combout\ = (\inst5|Q\(6)) # (\inst5|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Q\(6),
	datad => \inst5|Q\(8),
	combout => \inst112|Mux2~3_combout\);

-- Location: LCCOMB_X35_Y22_N4
\inst112|Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst112|Mux2~11_combout\ = (\inst5|Q\(9) & (\inst5|Q\(10) & ((\inst112|Mux2~3_combout\) # (\inst5|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(9),
	datab => \inst5|Q\(10),
	datac => \inst112|Mux2~3_combout\,
	datad => \inst5|Q\(7),
	combout => \inst112|Mux2~11_combout\);

-- Location: LCCOMB_X35_Y22_N20
\inst122|z~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~36_combout\ = (!\inst112|Mux2~11_combout\ & (\inst122|z~24_combout\ $ (((\inst122|LessThan8~0_combout\ & \inst122|z~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~24_combout\,
	datab => \inst122|LessThan8~0_combout\,
	datac => \inst112|Mux2~11_combout\,
	datad => \inst122|z~23_combout\,
	combout => \inst122|z~36_combout\);

-- Location: LCCOMB_X35_Y22_N8
\inst122|z~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~34_combout\ = \inst122|z~24_combout\ $ (((!\inst122|z~23_combout\) # (!\inst122|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~24_combout\,
	datab => \inst122|LessThan8~0_combout\,
	datad => \inst122|z~23_combout\,
	combout => \inst122|z~34_combout\);

-- Location: LCCOMB_X35_Y22_N30
\inst122|z~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~35_combout\ = (\inst122|LessThan6~0_combout\ & ((!\inst122|z~34_combout\) # (!\inst112|Mux2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst112|Mux2~11_combout\,
	datac => \inst122|z~34_combout\,
	datad => \inst122|LessThan6~0_combout\,
	combout => \inst122|z~35_combout\);

-- Location: LCCOMB_X35_Y22_N10
\inst122|z~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~32_combout\ = (!\inst122|LessThan6~0_combout\ & (\inst122|z~24_combout\ $ (((!\inst122|LessThan8~0_combout\) # (!\inst122|z~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~24_combout\,
	datab => \inst122|z~23_combout\,
	datac => \inst122|LessThan6~0_combout\,
	datad => \inst122|LessThan8~0_combout\,
	combout => \inst122|z~32_combout\);

-- Location: LCCOMB_X35_Y25_N16
\inst122|z~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~33_combout\ = (!\inst122|z~18_combout\ & (\inst122|z~32_combout\ & ((\inst122|z~17_combout\) # (!\inst122|z~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~18_combout\,
	datab => \inst122|z~19_combout\,
	datac => \inst122|z~32_combout\,
	datad => \inst122|z~17_combout\,
	combout => \inst122|z~33_combout\);

-- Location: LCCOMB_X35_Y22_N26
\inst122|LessThan14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|LessThan14~0_combout\ = (\inst122|z~33_combout\) # ((\inst122|z~35_combout\ & ((\inst122|z~36_combout\) # (!\inst122|z~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~31_combout\,
	datab => \inst122|z~36_combout\,
	datac => \inst122|z~35_combout\,
	datad => \inst122|z~33_combout\,
	combout => \inst122|LessThan14~0_combout\);

-- Location: LCCOMB_X35_Y24_N12
\inst116|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst116|Mux2~0_combout\ = (!\inst|WideOr94~combout\ & (\inst|WideOr91~1_combout\ & (\inst122|z~31_combout\ $ (!\inst122|LessThan14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr94~combout\,
	datab => \inst122|z~31_combout\,
	datac => \inst|WideOr91~1_combout\,
	datad => \inst122|LessThan14~0_combout\,
	combout => \inst116|Mux2~0_combout\);

-- Location: LCCOMB_X37_Y23_N20
\inst113|z~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~58_combout\ = (\inst41|Q\(7) & (((!\inst41|Q\(9))) # (!\inst41|Q\(10)))) # (!\inst41|Q\(7) & ((\inst41|Q\(10) & (\inst41|Q\(9) & \inst41|Q\(6))) # (!\inst41|Q\(10) & (!\inst41|Q\(9) & !\inst41|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(7),
	datab => \inst41|Q\(10),
	datac => \inst41|Q\(9),
	datad => \inst41|Q\(6),
	combout => \inst113|z~58_combout\);

-- Location: LCCOMB_X37_Y23_N30
\inst113|z~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~59_combout\ = (\inst41|Q\(7) & ((\inst41|Q\(9) & ((\inst113|z~58_combout\) # (!\inst41|Q\(8)))) # (!\inst41|Q\(9) & (!\inst41|Q\(8) & \inst113|z~58_combout\)))) # (!\inst41|Q\(7) & ((\inst113|z~58_combout\) # (\inst41|Q\(9) $ 
-- (!\inst41|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(7),
	datab => \inst41|Q\(9),
	datac => \inst41|Q\(8),
	datad => \inst113|z~58_combout\,
	combout => \inst113|z~59_combout\);

-- Location: LCCOMB_X37_Y23_N12
\inst113|z~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~56_combout\ = (\inst41|Q\(10) & (((!\inst41|Q\(7) & !\inst41|Q\(6))) # (!\inst41|Q\(9)))) # (!\inst41|Q\(10) & (\inst41|Q\(7) & (\inst41|Q\(9) & \inst41|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(7),
	datab => \inst41|Q\(10),
	datac => \inst41|Q\(9),
	datad => \inst41|Q\(6),
	combout => \inst113|z~56_combout\);

-- Location: LCCOMB_X37_Y23_N26
\inst113|z~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~57_combout\ = (\inst113|z~56_combout\ & ((\inst41|Q\(7) $ (!\inst41|Q\(8))) # (!\inst41|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(7),
	datab => \inst41|Q\(9),
	datac => \inst41|Q\(8),
	datad => \inst113|z~56_combout\,
	combout => \inst113|z~57_combout\);

-- Location: LCCOMB_X37_Y23_N16
\inst113|z~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~18_combout\ = (\inst41|Q\(10) & (!\inst41|Q\(8) & ((\inst41|Q\(9)) # (!\inst41|Q\(7))))) # (!\inst41|Q\(10) & (\inst41|Q\(8) & ((\inst41|Q\(7)) # (!\inst41|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(10),
	datab => \inst41|Q\(9),
	datac => \inst41|Q\(8),
	datad => \inst41|Q\(7),
	combout => \inst113|z~18_combout\);

-- Location: LCCOMB_X37_Y23_N22
\inst113|z~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~17_combout\ = (\inst41|Q\(9) & (!\inst41|Q\(7) & (\inst41|Q\(10) $ (!\inst41|Q\(8))))) # (!\inst41|Q\(9) & (\inst41|Q\(10) & (!\inst41|Q\(8) & \inst41|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(10),
	datab => \inst41|Q\(9),
	datac => \inst41|Q\(8),
	datad => \inst41|Q\(7),
	combout => \inst113|z~17_combout\);

-- Location: LCCOMB_X37_Y23_N24
\inst113|z~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~16_combout\ = (\inst41|Q\(9) & ((\inst41|Q\(10) & (!\inst41|Q\(8) & \inst41|Q\(7))) # (!\inst41|Q\(10) & (\inst41|Q\(8) & !\inst41|Q\(7))))) # (!\inst41|Q\(9) & (\inst41|Q\(7) $ (((\inst41|Q\(10) & !\inst41|Q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(10),
	datab => \inst41|Q\(9),
	datac => \inst41|Q\(8),
	datad => \inst41|Q\(7),
	combout => \inst113|z~16_combout\);

-- Location: LCCOMB_X37_Y23_N2
\inst113|z~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~19_combout\ = (\inst41|Q\(6) & (!\inst113|z~18_combout\ & (!\inst113|z~17_combout\))) # (!\inst41|Q\(6) & ((\inst113|z~17_combout\) # ((\inst113|z~18_combout\ & \inst113|z~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(6),
	datab => \inst113|z~18_combout\,
	datac => \inst113|z~17_combout\,
	datad => \inst113|z~16_combout\,
	combout => \inst113|z~19_combout\);

-- Location: LCCOMB_X37_Y23_N14
\inst113|z~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~21_combout\ = (\inst41|Q\(6) & (((\inst113|z~16_combout\)))) # (!\inst41|Q\(6) & ((\inst113|z~17_combout\ & ((!\inst113|z~16_combout\))) # (!\inst113|z~17_combout\ & (!\inst113|z~18_combout\ & \inst113|z~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(6),
	datab => \inst113|z~18_combout\,
	datac => \inst113|z~17_combout\,
	datad => \inst113|z~16_combout\,
	combout => \inst113|z~21_combout\);

-- Location: LCCOMB_X37_Y23_N28
\inst113|z~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~20_combout\ = (\inst113|z~18_combout\ & (!\inst41|Q\(6) & ((!\inst113|z~16_combout\)))) # (!\inst113|z~18_combout\ & (\inst113|z~17_combout\ & ((\inst41|Q\(6)) # (\inst113|z~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(6),
	datab => \inst113|z~18_combout\,
	datac => \inst113|z~17_combout\,
	datad => \inst113|z~16_combout\,
	combout => \inst113|z~20_combout\);

-- Location: LCCOMB_X36_Y20_N12
\inst113|z~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~26_combout\ = \inst113|z~20_combout\ $ ((((!\inst113|z~19_combout\ & !\inst41|Q\(5))) # (!\inst113|z~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~19_combout\,
	datab => \inst113|z~21_combout\,
	datac => \inst41|Q\(5),
	datad => \inst113|z~20_combout\,
	combout => \inst113|z~26_combout\);

-- Location: LCCOMB_X36_Y23_N0
\inst113|z~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~30_combout\ = \inst113|z~59_combout\ $ (((\inst113|z~26_combout\) # (!\inst113|z~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~59_combout\,
	datab => \inst113|z~57_combout\,
	datac => \inst113|z~26_combout\,
	combout => \inst113|z~30_combout\);

-- Location: LCCOMB_X37_Y23_N18
\inst113|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|LessThan0~0_combout\ = (\inst41|Q\(10) & ((\inst41|Q\(9)) # (\inst41|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst41|Q\(9),
	datac => \inst41|Q\(8),
	datad => \inst41|Q\(10),
	combout => \inst113|LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y23_N4
\inst113|z~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~28_combout\ = \inst113|z~17_combout\ $ ((((!\inst41|Q\(6) & !\inst113|z~16_combout\)) # (!\inst113|z~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(6),
	datab => \inst113|z~18_combout\,
	datac => \inst113|z~17_combout\,
	datad => \inst113|z~16_combout\,
	combout => \inst113|z~28_combout\);

-- Location: LCCOMB_X37_Y23_N0
\inst113|z~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~27_combout\ = (\inst41|Q\(10) & ((\inst41|Q\(9) & (\inst41|Q\(8) & \inst41|Q\(7))) # (!\inst41|Q\(9) & (!\inst41|Q\(8))))) # (!\inst41|Q\(10) & (\inst41|Q\(9) & ((\inst41|Q\(8)) # (\inst41|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(10),
	datab => \inst41|Q\(9),
	datac => \inst41|Q\(8),
	datad => \inst41|Q\(7),
	combout => \inst113|z~27_combout\);

-- Location: LCCOMB_X34_Y24_N28
\inst113|z~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~29_combout\ = (\inst113|z~26_combout\ & ((\inst113|LessThan0~0_combout\ & ((\inst113|z~27_combout\) # (!\inst113|z~28_combout\))) # (!\inst113|LessThan0~0_combout\ & ((\inst113|z~28_combout\) # (!\inst113|z~27_combout\))))) # 
-- (!\inst113|z~26_combout\ & (\inst113|z~27_combout\ $ (((\inst113|LessThan0~0_combout\ & \inst113|z~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~26_combout\,
	datab => \inst113|LessThan0~0_combout\,
	datac => \inst113|z~28_combout\,
	datad => \inst113|z~27_combout\,
	combout => \inst113|z~29_combout\);

-- Location: LCCOMB_X36_Y20_N14
\inst113|z~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~23_combout\ = (\inst113|z~21_combout\ & (!\inst113|z~19_combout\ & (!\inst41|Q\(5)))) # (!\inst113|z~21_combout\ & (\inst113|z~20_combout\ & ((\inst113|z~19_combout\) # (\inst41|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~19_combout\,
	datab => \inst113|z~21_combout\,
	datac => \inst41|Q\(5),
	datad => \inst113|z~20_combout\,
	combout => \inst113|z~23_combout\);

-- Location: LCCOMB_X36_Y20_N8
\inst113|z~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~24_combout\ = (\inst113|z~21_combout\ & (!\inst41|Q\(5) & ((\inst113|z~19_combout\) # (\inst113|z~20_combout\)))) # (!\inst113|z~21_combout\ & ((\inst41|Q\(5) $ (\inst113|z~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~19_combout\,
	datab => \inst113|z~21_combout\,
	datac => \inst41|Q\(5),
	datad => \inst113|z~20_combout\,
	combout => \inst113|z~24_combout\);

-- Location: LCCOMB_X36_Y20_N28
\inst113|z~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~22_combout\ = (\inst113|z~19_combout\ & ((\inst41|Q\(5)) # ((!\inst113|z~21_combout\ & !\inst113|z~20_combout\)))) # (!\inst113|z~19_combout\ & (((!\inst41|Q\(5) & \inst113|z~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~19_combout\,
	datab => \inst113|z~21_combout\,
	datac => \inst41|Q\(5),
	datad => \inst113|z~20_combout\,
	combout => \inst113|z~22_combout\);

-- Location: LCCOMB_X36_Y20_N22
\inst113|z~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~25_combout\ = \inst113|z~23_combout\ $ ((((!\inst41|Q\(4) & !\inst113|z~24_combout\)) # (!\inst113|z~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(4),
	datab => \inst113|z~23_combout\,
	datac => \inst113|z~24_combout\,
	datad => \inst113|z~22_combout\,
	combout => \inst113|z~25_combout\);

-- Location: LCCOMB_X34_Y24_N2
\inst113|z~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~31_combout\ = (\inst113|z~26_combout\ & (\inst113|z~27_combout\ & (\inst113|LessThan0~0_combout\ $ (\inst113|z~28_combout\)))) # (!\inst113|z~26_combout\ & (\inst113|LessThan0~0_combout\ & (\inst113|z~28_combout\ & !\inst113|z~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~26_combout\,
	datab => \inst113|LessThan0~0_combout\,
	datac => \inst113|z~28_combout\,
	datad => \inst113|z~27_combout\,
	combout => \inst113|z~31_combout\);

-- Location: LCCOMB_X34_Y24_N0
\inst113|z~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~38_combout\ = (\inst113|z~29_combout\ & (((!\inst113|z~31_combout\) # (!\inst113|z~25_combout\)))) # (!\inst113|z~29_combout\ & (\inst113|z~25_combout\ & ((\inst113|z~30_combout\) # (\inst113|z~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~30_combout\,
	datab => \inst113|z~29_combout\,
	datac => \inst113|z~25_combout\,
	datad => \inst113|z~31_combout\,
	combout => \inst113|z~38_combout\);

-- Location: LCCOMB_X34_Y24_N24
\inst113|z~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~32_combout\ = (\inst113|z~30_combout\ & (\inst113|z~29_combout\ & (\inst113|z~25_combout\))) # (!\inst113|z~30_combout\ & (\inst113|z~31_combout\ & ((!\inst113|z~25_combout\) # (!\inst113|z~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~30_combout\,
	datab => \inst113|z~29_combout\,
	datac => \inst113|z~25_combout\,
	datad => \inst113|z~31_combout\,
	combout => \inst113|z~32_combout\);

-- Location: LCCOMB_X36_Y20_N30
\inst113|z~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~35_combout\ = (\inst41|Q\(4) & (!\inst113|z~23_combout\ & ((!\inst113|z~22_combout\)))) # (!\inst41|Q\(4) & ((\inst113|z~23_combout\) # ((\inst113|z~24_combout\ & \inst113|z~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(4),
	datab => \inst113|z~23_combout\,
	datac => \inst113|z~24_combout\,
	datad => \inst113|z~22_combout\,
	combout => \inst113|z~35_combout\);

-- Location: LCCOMB_X36_Y20_N24
\inst113|z~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~34_combout\ = (\inst113|z~22_combout\ & (!\inst41|Q\(4) & ((!\inst113|z~24_combout\)))) # (!\inst113|z~22_combout\ & (\inst113|z~23_combout\ & ((\inst41|Q\(4)) # (\inst113|z~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(4),
	datab => \inst113|z~23_combout\,
	datac => \inst113|z~24_combout\,
	datad => \inst113|z~22_combout\,
	combout => \inst113|z~34_combout\);

-- Location: LCCOMB_X36_Y20_N2
\inst113|z~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~33_combout\ = (\inst41|Q\(4) & (((\inst113|z~24_combout\)))) # (!\inst41|Q\(4) & ((\inst113|z~23_combout\ & (!\inst113|z~24_combout\)) # (!\inst113|z~23_combout\ & (\inst113|z~24_combout\ & !\inst113|z~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(4),
	datab => \inst113|z~23_combout\,
	datac => \inst113|z~24_combout\,
	datad => \inst113|z~22_combout\,
	combout => \inst113|z~33_combout\);

-- Location: LCCOMB_X36_Y20_N0
\inst113|z~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~36_combout\ = \inst113|z~34_combout\ $ ((((!\inst113|z~35_combout\ & !\inst41|Q\(3))) # (!\inst113|z~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~35_combout\,
	datab => \inst113|z~34_combout\,
	datac => \inst41|Q\(3),
	datad => \inst113|z~33_combout\,
	combout => \inst113|z~36_combout\);

-- Location: LCCOMB_X34_Y24_N10
\inst113|z~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~37_combout\ = (\inst113|z~30_combout\ & (((\inst113|z~29_combout\ & !\inst113|z~31_combout\)) # (!\inst113|z~25_combout\))) # (!\inst113|z~30_combout\ & ((\inst113|z~25_combout\ $ (\inst113|z~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~30_combout\,
	datab => \inst113|z~29_combout\,
	datac => \inst113|z~25_combout\,
	datad => \inst113|z~31_combout\,
	combout => \inst113|z~37_combout\);

-- Location: LCCOMB_X34_Y24_N6
\inst113|z~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~46_combout\ = \inst113|z~32_combout\ $ (((\inst113|z~38_combout\) # ((\inst113|z~36_combout\ & \inst113|z~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~38_combout\,
	datab => \inst113|z~32_combout\,
	datac => \inst113|z~36_combout\,
	datad => \inst113|z~37_combout\,
	combout => \inst113|z~46_combout\);

-- Location: LCCOMB_X37_Y23_N8
\inst113|z~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~54_combout\ = (\inst41|Q\(8) & (((!\inst41|Q\(5) & !\inst41|Q\(4))) # (!\inst41|Q\(6)))) # (!\inst41|Q\(8) & (((\inst41|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(5),
	datab => \inst41|Q\(4),
	datac => \inst41|Q\(8),
	datad => \inst41|Q\(6),
	combout => \inst113|z~54_combout\);

-- Location: LCCOMB_X37_Y23_N6
\inst113|z~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~55_combout\ = (\inst113|z~54_combout\) # (\inst41|Q\(7) $ (\inst41|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(7),
	datac => \inst113|z~54_combout\,
	datad => \inst41|Q\(6),
	combout => \inst113|z~55_combout\);

-- Location: LCCOMB_X37_Y23_N10
\inst113|z~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~53_combout\ = (\inst41|Q\(10) & (\inst41|Q\(9) & \inst113|z~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|Q\(10),
	datac => \inst41|Q\(9),
	datad => \inst113|z~55_combout\,
	combout => \inst113|z~53_combout\);

-- Location: LCCOMB_X34_Y24_N16
\inst113|z~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~47_combout\ = (\inst113|LessThan0~0_combout\ & ((\inst113|z~28_combout\ & ((\inst113|z~27_combout\))) # (!\inst113|z~28_combout\ & ((\inst113|z~26_combout\) # (!\inst113|z~27_combout\))))) # (!\inst113|LessThan0~0_combout\ & 
-- (((\inst113|z~26_combout\ & \inst113|z~28_combout\)) # (!\inst113|z~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~26_combout\,
	datab => \inst113|LessThan0~0_combout\,
	datac => \inst113|z~28_combout\,
	datad => \inst113|z~27_combout\,
	combout => \inst113|z~47_combout\);

-- Location: LCCOMB_X34_Y24_N8
\inst113|LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|LessThan11~0_combout\ = (\inst113|LessThan0~0_combout\ & ((\inst113|z~27_combout\) # (!\inst113|z~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst113|LessThan0~0_combout\,
	datac => \inst113|z~28_combout\,
	datad => \inst113|z~27_combout\,
	combout => \inst113|LessThan11~0_combout\);

-- Location: LCCOMB_X34_Y24_N18
\inst113|z~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~48_combout\ = \inst113|z~31_combout\ $ ((((\inst113|z~29_combout\ & \inst113|z~25_combout\)) # (!\inst113|z~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~30_combout\,
	datab => \inst113|z~29_combout\,
	datac => \inst113|z~25_combout\,
	datad => \inst113|z~31_combout\,
	combout => \inst113|z~48_combout\);

-- Location: LCCOMB_X34_Y24_N30
\inst113|z~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~49_combout\ = (!\inst113|z~47_combout\ & ((!\inst113|z~48_combout\) # (!\inst113|LessThan11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst113|z~47_combout\,
	datac => \inst113|LessThan11~0_combout\,
	datad => \inst113|z~48_combout\,
	combout => \inst113|z~49_combout\);

-- Location: LCCOMB_X34_Y24_N12
\inst113|z~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~50_combout\ = (\inst113|LessThan11~0_combout\ & ((\inst113|z~47_combout\) # (!\inst113|z~48_combout\))) # (!\inst113|LessThan11~0_combout\ & ((\inst113|z~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst113|z~47_combout\,
	datac => \inst113|LessThan11~0_combout\,
	datad => \inst113|z~48_combout\,
	combout => \inst113|z~50_combout\);

-- Location: LCCOMB_X32_Y24_N12
\inst113|LessThan14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|LessThan14~0_combout\ = (\inst113|z~53_combout\) # ((\inst113|z~49_combout\ & ((!\inst113|z~50_combout\) # (!\inst113|z~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~53_combout\,
	datab => \inst113|z~49_combout\,
	datac => \inst113|z~46_combout\,
	datad => \inst113|z~50_combout\,
	combout => \inst113|LessThan14~0_combout\);

-- Location: LCCOMB_X32_Y24_N18
\inst116|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst116|Mux2~1_combout\ = (\inst116|Mux2~0_combout\) # ((!\inst|WideOr91~1_combout\ & (\inst113|z~46_combout\ $ (!\inst113|LessThan14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst116|Mux2~0_combout\,
	datab => \inst113|z~46_combout\,
	datac => \inst|WideOr91~1_combout\,
	datad => \inst113|LessThan14~0_combout\,
	combout => \inst116|Mux2~1_combout\);

-- Location: LCCOMB_X32_Y24_N2
\inst116|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst116|Mux2~2_combout\ = (\inst|WideOr92~combout\ & (!\inst110|C[1]~0_combout\ & (!\inst|WideOr91~1_combout\))) # (!\inst|WideOr92~combout\ & (((\inst116|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr92~combout\,
	datab => \inst110|C[1]~0_combout\,
	datac => \inst|WideOr91~1_combout\,
	datad => \inst116|Mux2~1_combout\,
	combout => \inst116|Mux2~2_combout\);

-- Location: LCCOMB_X34_Y25_N28
\inst113|z~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~39_combout\ = (\inst113|z~38_combout\ & (\inst113|z~32_combout\ & ((!\inst113|z~37_combout\) # (!\inst113|z~36_combout\)))) # (!\inst113|z~38_combout\ & (((\inst113|z~36_combout\ & \inst113|z~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~32_combout\,
	datab => \inst113|z~36_combout\,
	datac => \inst113|z~37_combout\,
	datad => \inst113|z~38_combout\,
	combout => \inst113|z~39_combout\);

-- Location: LCCOMB_X34_Y25_N10
\inst113|z~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~45_combout\ = (\inst113|z~32_combout\ & (\inst113|z~36_combout\ $ ((\inst113|z~37_combout\)))) # (!\inst113|z~32_combout\ & ((\inst113|z~37_combout\) # ((\inst113|z~36_combout\ & !\inst113|z~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~32_combout\,
	datab => \inst113|z~36_combout\,
	datac => \inst113|z~37_combout\,
	datad => \inst113|z~38_combout\,
	combout => \inst113|z~45_combout\);

-- Location: LCCOMB_X36_Y20_N10
\inst113|z~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~42_combout\ = (\inst113|z~34_combout\ & (((!\inst41|Q\(3))))) # (!\inst113|z~34_combout\ & ((\inst41|Q\(3) & ((!\inst113|z~33_combout\))) # (!\inst41|Q\(3) & (\inst113|z~35_combout\ & \inst113|z~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~35_combout\,
	datab => \inst113|z~34_combout\,
	datac => \inst41|Q\(3),
	datad => \inst113|z~33_combout\,
	combout => \inst113|z~42_combout\);

-- Location: LCCOMB_X36_Y20_N4
\inst113|z~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~41_combout\ = (\inst113|z~33_combout\ & (!\inst113|z~35_combout\ & ((!\inst41|Q\(3))))) # (!\inst113|z~33_combout\ & (\inst113|z~34_combout\ & ((\inst113|z~35_combout\) # (\inst41|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~35_combout\,
	datab => \inst113|z~34_combout\,
	datac => \inst41|Q\(3),
	datad => \inst113|z~33_combout\,
	combout => \inst113|z~41_combout\);

-- Location: LCCOMB_X36_Y20_N18
\inst113|z~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~40_combout\ = (\inst113|z~35_combout\ & ((\inst41|Q\(3)) # ((!\inst113|z~34_combout\ & !\inst113|z~33_combout\)))) # (!\inst113|z~35_combout\ & (\inst113|z~34_combout\ & (!\inst41|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~35_combout\,
	datab => \inst113|z~34_combout\,
	datac => \inst41|Q\(3),
	datad => \inst113|z~33_combout\,
	combout => \inst113|z~40_combout\);

-- Location: LCCOMB_X36_Y20_N16
\inst113|z~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~43_combout\ = \inst113|z~41_combout\ $ ((((!\inst113|z~42_combout\ & !\inst41|Q\(2))) # (!\inst113|z~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~42_combout\,
	datab => \inst41|Q\(2),
	datac => \inst113|z~41_combout\,
	datad => \inst113|z~40_combout\,
	combout => \inst113|z~43_combout\);

-- Location: LCCOMB_X34_Y25_N12
\inst113|z~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~44_combout\ = (\inst113|z~32_combout\ & (!\inst113|z~36_combout\)) # (!\inst113|z~32_combout\ & ((\inst113|z~36_combout\ & ((\inst113|z~37_combout\) # (\inst113|z~38_combout\))) # (!\inst113|z~36_combout\ & ((!\inst113|z~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~32_combout\,
	datab => \inst113|z~36_combout\,
	datac => \inst113|z~37_combout\,
	datad => \inst113|z~38_combout\,
	combout => \inst113|z~44_combout\);

-- Location: LCCOMB_X34_Y25_N4
\inst117|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst117|Mux0~2_combout\ = (\inst113|z~45_combout\) # ((\inst113|z~43_combout\ & \inst113|z~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~45_combout\,
	datac => \inst113|z~43_combout\,
	datad => \inst113|z~44_combout\,
	combout => \inst117|Mux0~2_combout\);

-- Location: LCCOMB_X30_Y24_N16
\inst110|z~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~42_combout\ = (\inst110|z~36_combout\ & (\inst110|z~30_combout\ $ (((\inst110|z~34_combout\))))) # (!\inst110|z~36_combout\ & (((!\inst110|z~30_combout\ & \inst110|z~35_combout\)) # (!\inst110|z~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~36_combout\,
	datab => \inst110|z~30_combout\,
	datac => \inst110|z~35_combout\,
	datad => \inst110|z~34_combout\,
	combout => \inst110|z~42_combout\);

-- Location: LCCOMB_X30_Y24_N14
\inst110|z~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~37_combout\ = (\inst110|z~36_combout\ & (\inst110|z~30_combout\ & ((!\inst110|z~34_combout\) # (!\inst110|z~35_combout\)))) # (!\inst110|z~36_combout\ & (((\inst110|z~35_combout\ & \inst110|z~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~36_combout\,
	datab => \inst110|z~30_combout\,
	datac => \inst110|z~35_combout\,
	datad => \inst110|z~34_combout\,
	combout => \inst110|z~37_combout\);

-- Location: LCCOMB_X30_Y24_N2
\inst110|z~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~43_combout\ = (\inst110|z~30_combout\ & ((\inst110|z~35_combout\ $ (\inst110|z~34_combout\)))) # (!\inst110|z~30_combout\ & ((\inst110|z~35_combout\) # ((!\inst110|z~36_combout\ & \inst110|z~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~36_combout\,
	datab => \inst110|z~30_combout\,
	datac => \inst110|z~35_combout\,
	datad => \inst110|z~34_combout\,
	combout => \inst110|z~43_combout\);

-- Location: LCCOMB_X32_Y23_N12
\inst110|z~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~40_combout\ = (\inst85|altsyncram_component|auto_generated|q_a\(3) & (((!\inst110|z~32_combout\ & !\inst110|z~31_combout\)))) # (!\inst85|altsyncram_component|auto_generated|q_a\(3) & ((\inst110|z~32_combout\) # ((\inst110|z~33_combout\ & 
-- \inst110|z~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst110|z~33_combout\,
	datac => \inst110|z~32_combout\,
	datad => \inst110|z~31_combout\,
	combout => \inst110|z~40_combout\);

-- Location: LCCOMB_X32_Y23_N24
\inst110|z~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~38_combout\ = (\inst85|altsyncram_component|auto_generated|q_a\(3) & (\inst110|z~33_combout\)) # (!\inst85|altsyncram_component|auto_generated|q_a\(3) & ((\inst110|z~33_combout\ & (!\inst110|z~32_combout\ & !\inst110|z~31_combout\)) # 
-- (!\inst110|z~33_combout\ & (\inst110|z~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst110|z~33_combout\,
	datac => \inst110|z~32_combout\,
	datad => \inst110|z~31_combout\,
	combout => \inst110|z~38_combout\);

-- Location: LCCOMB_X32_Y23_N10
\inst110|z~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~39_combout\ = (\inst110|z~31_combout\ & (!\inst85|altsyncram_component|auto_generated|q_a\(3) & (!\inst110|z~33_combout\))) # (!\inst110|z~31_combout\ & (\inst110|z~32_combout\ & ((\inst85|altsyncram_component|auto_generated|q_a\(3)) # 
-- (\inst110|z~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst110|z~33_combout\,
	datac => \inst110|z~32_combout\,
	datad => \inst110|z~31_combout\,
	combout => \inst110|z~39_combout\);

-- Location: LCCOMB_X32_Y23_N6
\inst110|z~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~41_combout\ = \inst110|z~39_combout\ $ ((((!\inst110|z~40_combout\ & !\inst85|altsyncram_component|auto_generated|q_a\(2))) # (!\inst110|z~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~40_combout\,
	datab => \inst110|z~38_combout\,
	datac => \inst85|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst110|z~39_combout\,
	combout => \inst110|z~41_combout\);

-- Location: LCCOMB_X34_Y25_N18
\inst110|LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|LessThan13~0_combout\ = (\inst110|z~37_combout\) # ((!\inst110|z~43_combout\ & ((!\inst110|z~41_combout\) # (!\inst110|z~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~42_combout\,
	datab => \inst110|z~37_combout\,
	datac => \inst110|z~43_combout\,
	datad => \inst110|z~41_combout\,
	combout => \inst110|LessThan13~0_combout\);

-- Location: LCCOMB_X34_Y25_N14
\inst117|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst117|Mux0~3_combout\ = (\inst|WideOr92~combout\ & (((!\inst110|LessThan13~0_combout\)))) # (!\inst|WideOr92~combout\ & (!\inst113|z~39_combout\ & (\inst117|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr92~combout\,
	datab => \inst113|z~39_combout\,
	datac => \inst117|Mux0~2_combout\,
	datad => \inst110|LessThan13~0_combout\,
	combout => \inst117|Mux0~3_combout\);

-- Location: LCCOMB_X36_Y25_N12
\inst122|LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|LessThan13~0_combout\ = (\inst122|z~26_combout\ & ((!\inst122|LessThan10~0_combout\) # (!\inst122|z~27_combout\))) # (!\inst122|z~26_combout\ & ((\inst122|LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst122|z~26_combout\,
	datac => \inst122|z~27_combout\,
	datad => \inst122|LessThan10~0_combout\,
	combout => \inst122|LessThan13~0_combout\);

-- Location: LCCOMB_X35_Y22_N18
\inst122|z~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~25_combout\ = \inst122|z~20_combout\ $ (((\inst122|z~24_combout\) # ((\inst122|LessThan8~0_combout\ & \inst122|z~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~24_combout\,
	datab => \inst122|LessThan8~0_combout\,
	datac => \inst122|z~20_combout\,
	datad => \inst122|z~23_combout\,
	combout => \inst122|z~25_combout\);

-- Location: LCCOMB_X36_Y25_N18
\inst122|z~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~30_combout\ = (\inst122|z~25_combout\ & (((!\inst122|z~28_combout\)) # (!\inst122|z~27_combout\))) # (!\inst122|z~25_combout\ & (\inst122|z~28_combout\ & ((\inst122|z~27_combout\) # (!\inst122|z~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~25_combout\,
	datab => \inst122|z~27_combout\,
	datac => \inst122|z~28_combout\,
	datad => \inst122|z~26_combout\,
	combout => \inst122|z~30_combout\);

-- Location: LCCOMB_X38_Y22_N30
\inst122|z~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~13_combout\ = (\inst122|z~11_combout\ & (!\inst5|Q\(3) & ((!\inst122|z~9_combout\)))) # (!\inst122|z~11_combout\ & (\inst122|z~10_combout\ & ((\inst5|Q\(3)) # (\inst122|z~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(3),
	datab => \inst122|z~10_combout\,
	datac => \inst122|z~9_combout\,
	datad => \inst122|z~11_combout\,
	combout => \inst122|z~13_combout\);

-- Location: LCCOMB_X38_Y22_N24
\inst122|z~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~12_combout\ = (\inst5|Q\(3) & (((\inst122|z~9_combout\)))) # (!\inst5|Q\(3) & ((\inst122|z~10_combout\ & (!\inst122|z~9_combout\)) # (!\inst122|z~10_combout\ & (\inst122|z~9_combout\ & !\inst122|z~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(3),
	datab => \inst122|z~10_combout\,
	datac => \inst122|z~9_combout\,
	datad => \inst122|z~11_combout\,
	combout => \inst122|z~12_combout\);

-- Location: LCCOMB_X38_Y22_N0
\inst122|z~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~14_combout\ = (\inst5|Q\(3) & (!\inst122|z~10_combout\ & ((!\inst122|z~11_combout\)))) # (!\inst5|Q\(3) & ((\inst122|z~10_combout\) # ((\inst122|z~9_combout\ & \inst122|z~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(3),
	datab => \inst122|z~10_combout\,
	datac => \inst122|z~9_combout\,
	datad => \inst122|z~11_combout\,
	combout => \inst122|z~14_combout\);

-- Location: LCCOMB_X38_Y22_N2
\inst122|z~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~15_combout\ = \inst122|z~13_combout\ $ ((((!\inst5|Q\(2) & !\inst122|z~14_combout\)) # (!\inst122|z~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~13_combout\,
	datab => \inst122|z~12_combout\,
	datac => \inst5|Q\(2),
	datad => \inst122|z~14_combout\,
	combout => \inst122|z~15_combout\);

-- Location: LCCOMB_X36_Y25_N28
\inst122|z~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~29_combout\ = (\inst122|z~27_combout\ & (((!\inst122|z~28_combout\)))) # (!\inst122|z~27_combout\ & ((\inst122|z~28_combout\ & ((\inst122|z~25_combout\) # (\inst122|z~26_combout\))) # (!\inst122|z~28_combout\ & ((!\inst122|z~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~25_combout\,
	datab => \inst122|z~27_combout\,
	datac => \inst122|z~28_combout\,
	datad => \inst122|z~26_combout\,
	combout => \inst122|z~29_combout\);

-- Location: LCCOMB_X36_Y25_N10
\inst122|LessThan13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|LessThan13~1_combout\ = ((!\inst122|z~30_combout\ & ((!\inst122|z~29_combout\) # (!\inst122|z~15_combout\)))) # (!\inst122|LessThan13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|LessThan13~0_combout\,
	datab => \inst122|z~30_combout\,
	datac => \inst122|z~15_combout\,
	datad => \inst122|z~29_combout\,
	combout => \inst122|LessThan13~1_combout\);

-- Location: LCCOMB_X35_Y25_N6
\inst112|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst112|Mux3~4_combout\ = (!\inst|WideOr94~combout\ & (\inst|WideOr91~1_combout\ & !\inst|WideOr92~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr94~combout\,
	datac => \inst|WideOr91~1_combout\,
	datad => \inst|WideOr92~combout\,
	combout => \inst112|Mux3~4_combout\);

-- Location: LCCOMB_X35_Y25_N4
\inst117|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst117|Mux0~4_combout\ = (\inst117|Mux0~3_combout\ & (\inst122|LessThan13~1_combout\ & ((\inst112|Mux3~4_combout\)))) # (!\inst117|Mux0~3_combout\ & (((\inst122|LessThan13~1_combout\ & \inst112|Mux3~4_combout\)) # (!\inst|WideOr91~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst117|Mux0~3_combout\,
	datab => \inst122|LessThan13~1_combout\,
	datac => \inst|WideOr91~1_combout\,
	datad => \inst112|Mux3~4_combout\,
	combout => \inst117|Mux0~4_combout\);

-- Location: LCCOMB_X35_Y25_N14
\inst117|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst117|Mux0~6_combout\ = (\inst117|Mux0~4_combout\) # ((!\inst|WideOr91~1_combout\ & \inst|WideOr92~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst117|Mux0~4_combout\,
	datac => \inst|WideOr91~1_combout\,
	datad => \inst|WideOr92~combout\,
	combout => \inst117|Mux0~6_combout\);

-- Location: LCCOMB_X35_Y25_N24
\inst117|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst117|Mux0~5_combout\ = (\inst117|Mux0~4_combout\) # ((\inst|WideOr91~1_combout\ & !\inst|WideOr92~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst117|Mux0~4_combout\,
	datac => \inst|WideOr91~1_combout\,
	datad => \inst|WideOr92~combout\,
	combout => \inst117|Mux0~5_combout\);

-- Location: LCCOMB_X39_Y23_N2
\inst112|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst112|Mux3~5_combout\ = (!\inst|y.T42~q\ & (\inst|WideOr91~1_combout\ & (!\inst|y.T51~q\ & \inst|WideOr83~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T42~q\,
	datab => \inst|WideOr91~1_combout\,
	datac => \inst|y.T51~q\,
	datad => \inst|WideOr83~1_combout\,
	combout => \inst112|Mux3~5_combout\);

-- Location: LCCOMB_X34_Y25_N24
\inst110|Add13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add13~8_combout\ = (!\inst|WideOr91~1_combout\ & ((\inst|WideOr92~combout\ & (!\inst110|z~42_combout\)) # (!\inst|WideOr92~combout\ & ((!\inst113|z~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr92~combout\,
	datab => \inst|WideOr91~1_combout\,
	datac => \inst110|z~42_combout\,
	datad => \inst113|z~44_combout\,
	combout => \inst110|Add13~8_combout\);

-- Location: LCCOMB_X34_Y25_N30
\inst110|Add13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add13~9_combout\ = (\inst|WideOr92~combout\ & (((\inst110|z~41_combout\)))) # (!\inst|WideOr92~combout\ & (!\inst|WideOr91~1_combout\ & (\inst113|z~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr92~combout\,
	datab => \inst|WideOr91~1_combout\,
	datac => \inst113|z~43_combout\,
	datad => \inst110|z~41_combout\,
	combout => \inst110|Add13~9_combout\);

-- Location: LCCOMB_X39_Y23_N8
\inst110|Add13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add13~10_combout\ = (!\inst|y.T42~q\ & (!\inst|WideOr94~combout\ & (!\inst|y.T51~q\ & \inst|WideOr83~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T42~q\,
	datab => \inst|WideOr94~combout\,
	datac => \inst|y.T51~q\,
	datad => \inst|WideOr83~1_combout\,
	combout => \inst110|Add13~10_combout\);

-- Location: LCCOMB_X36_Y25_N30
\inst110|Add13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add13~11_combout\ = (\inst110|Add13~9_combout\) # ((\inst|WideOr91~1_combout\ & ((\inst122|z~15_combout\) # (!\inst110|Add13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr91~1_combout\,
	datab => \inst122|z~15_combout\,
	datac => \inst110|Add13~9_combout\,
	datad => \inst110|Add13~10_combout\,
	combout => \inst110|Add13~11_combout\);

-- Location: LCCOMB_X35_Y25_N18
\inst110|Add13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add13~16_combout\ = (\inst122|z~29_combout\) # ((!\inst|y.T10~q\ & (!\inst|y.T34~q\ & \inst|WideOr94~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T10~q\,
	datab => \inst|y.T34~q\,
	datac => \inst|WideOr94~0_combout\,
	datad => \inst122|z~29_combout\,
	combout => \inst110|Add13~16_combout\);

-- Location: LCCOMB_X35_Y25_N26
\inst110|Add13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add13~12_combout\ = (\inst110|Add13~8_combout\) # (((\inst112|Mux3~5_combout\ & !\inst110|Add13~16_combout\)) # (!\inst110|Add13~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst112|Mux3~5_combout\,
	datab => \inst110|Add13~8_combout\,
	datac => \inst110|Add13~11_combout\,
	datad => \inst110|Add13~16_combout\,
	combout => \inst110|Add13~12_combout\);

-- Location: LCCOMB_X34_Y25_N26
\inst110|Add13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add13~6_combout\ = (!\inst|WideOr91~1_combout\ & ((\inst|WideOr92~combout\ & (\inst110|z~37_combout\)) # (!\inst|WideOr92~combout\ & ((\inst113|z~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr92~combout\,
	datab => \inst|WideOr91~1_combout\,
	datac => \inst110|z~37_combout\,
	datad => \inst113|z~39_combout\,
	combout => \inst110|Add13~6_combout\);

-- Location: LCCOMB_X36_Y25_N16
\inst110|Add13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add13~7_combout\ = (\inst110|Add13~6_combout\) # ((!\inst|WideOr94~combout\ & (\inst112|Mux3~5_combout\ & !\inst122|LessThan13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr94~combout\,
	datab => \inst112|Mux3~5_combout\,
	datac => \inst110|Add13~6_combout\,
	datad => \inst122|LessThan13~0_combout\,
	combout => \inst110|Add13~7_combout\);

-- Location: LCCOMB_X36_Y25_N26
\inst110|Add13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add13~4_combout\ = (\inst112|Mux3~5_combout\ & (!\inst|WideOr94~combout\ & !\inst122|z~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst112|Mux3~5_combout\,
	datac => \inst|WideOr94~combout\,
	datad => \inst122|z~30_combout\,
	combout => \inst110|Add13~4_combout\);

-- Location: LCCOMB_X34_Y25_N0
\inst110|Add13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add13~5_combout\ = (!\inst|WideOr91~1_combout\ & ((\inst|WideOr92~combout\ & (!\inst110|z~43_combout\)) # (!\inst|WideOr92~combout\ & ((!\inst113|z~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr92~combout\,
	datab => \inst|WideOr91~1_combout\,
	datac => \inst110|z~43_combout\,
	datad => \inst113|z~45_combout\,
	combout => \inst110|Add13~5_combout\);

-- Location: LCCOMB_X36_Y25_N8
\inst110|Add13~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add13~13_combout\ = \inst110|Add13~7_combout\ $ (((\inst110|Add13~12_combout\ & ((\inst110|Add13~4_combout\) # (\inst110|Add13~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|Add13~12_combout\,
	datab => \inst110|Add13~7_combout\,
	datac => \inst110|Add13~4_combout\,
	datad => \inst110|Add13~5_combout\,
	combout => \inst110|Add13~13_combout\);

-- Location: LCCOMB_X36_Y25_N20
\inst116|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst116|Mux3~0_combout\ = (!\inst|WideOr94~combout\ & ((\inst122|LessThan10~0_combout\ & (\inst122|z~27_combout\ & \inst122|z~26_combout\)) # (!\inst122|LessThan10~0_combout\ & ((!\inst122|z~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|LessThan10~0_combout\,
	datab => \inst122|z~27_combout\,
	datac => \inst|WideOr94~combout\,
	datad => \inst122|z~26_combout\,
	combout => \inst116|Mux3~0_combout\);

-- Location: LCCOMB_X36_Y25_N14
\inst116|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst116|Mux3~1_combout\ = (\inst117|Mux0~6_combout\ & (((\inst110|Add13~13_combout\)) # (!\inst117|Mux0~5_combout\))) # (!\inst117|Mux0~6_combout\ & (\inst117|Mux0~5_combout\ & ((\inst116|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst117|Mux0~6_combout\,
	datab => \inst117|Mux0~5_combout\,
	datac => \inst110|Add13~13_combout\,
	datad => \inst116|Mux3~0_combout\,
	combout => \inst116|Mux3~1_combout\);

-- Location: LCCOMB_X35_Y25_N8
\inst117|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst117|Mux0~8_combout\ = (\inst117|Mux0~3_combout\ & (!\inst|WideOr91~1_combout\ & ((!\inst112|Mux3~4_combout\) # (!\inst122|LessThan13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst117|Mux0~3_combout\,
	datab => \inst122|LessThan13~1_combout\,
	datac => \inst|WideOr91~1_combout\,
	datad => \inst112|Mux3~4_combout\,
	combout => \inst117|Mux0~8_combout\);

-- Location: LCCOMB_X34_Y25_N8
\inst116|Mux3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst116|Mux3~combout\ = (\inst116|Mux3~1_combout\ & ((\inst110|z~37_combout\) # ((!\inst117|Mux0~8_combout\)))) # (!\inst116|Mux3~1_combout\ & (((\inst117|Mux0~8_combout\ & \inst113|z~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst116|Mux3~1_combout\,
	datab => \inst110|z~37_combout\,
	datac => \inst117|Mux0~8_combout\,
	datad => \inst113|z~39_combout\,
	combout => \inst116|Mux3~combout\);

-- Location: LCCOMB_X32_Y24_N24
\inst110|LessThan14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|LessThan14~0_combout\ = (\inst110|z~53_combout\) # ((\inst110|z~47_combout\ & ((!\inst110|z~46_combout\) # (!\inst110|z~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~47_combout\,
	datab => \inst110|z~48_combout\,
	datac => \inst110|z~46_combout\,
	datad => \inst110|z~53_combout\,
	combout => \inst110|LessThan14~0_combout\);

-- Location: LCCOMB_X32_Y24_N10
\inst112|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst112|Mux3~6_combout\ = (!\inst|WideOr91~1_combout\ & ((\inst|WideOr92~combout\ & (\inst110|LessThan14~0_combout\)) # (!\inst|WideOr92~combout\ & ((\inst113|LessThan14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr92~combout\,
	datab => \inst110|LessThan14~0_combout\,
	datac => \inst|WideOr91~1_combout\,
	datad => \inst113|LessThan14~0_combout\,
	combout => \inst112|Mux3~6_combout\);

-- Location: LCCOMB_X35_Y24_N6
\inst112|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst112|Mux3~7_combout\ = (!\inst112|Mux3~6_combout\ & (!\inst|WideOr91~1_combout\ & ((!\inst122|LessThan14~0_combout\) # (!\inst112|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst112|Mux3~6_combout\,
	datab => \inst|WideOr91~1_combout\,
	datac => \inst112|Mux3~4_combout\,
	datad => \inst122|LessThan14~0_combout\,
	combout => \inst112|Mux3~7_combout\);

-- Location: LCCOMB_X35_Y22_N28
\inst110|Add14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add14~2_combout\ = (!\inst|WideOr94~combout\ & (!\inst112|Mux2~11_combout\ & !\inst122|z~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr94~combout\,
	datab => \inst112|Mux2~11_combout\,
	datac => \inst122|z~34_combout\,
	combout => \inst110|Add14~2_combout\);

-- Location: LCCOMB_X35_Y24_N14
\inst112|Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst112|Mux3~14_combout\ = (!\inst|WideOr94~combout\ & (!\inst|WideOr92~combout\ & (\inst|WideOr91~1_combout\ & \inst122|LessThan14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr94~combout\,
	datab => \inst|WideOr92~combout\,
	datac => \inst|WideOr91~1_combout\,
	datad => \inst122|LessThan14~0_combout\,
	combout => \inst112|Mux3~14_combout\);

-- Location: LCCOMB_X35_Y24_N0
\inst112|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst112|Mux3~9_combout\ = (\inst112|Mux3~6_combout\) # ((\inst112|Mux3~14_combout\) # ((!\inst|WideOr91~1_combout\ & \inst|WideOr92~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst112|Mux3~6_combout\,
	datab => \inst|WideOr91~1_combout\,
	datac => \inst112|Mux3~14_combout\,
	datad => \inst|WideOr92~combout\,
	combout => \inst112|Mux3~9_combout\);

-- Location: LCCOMB_X35_Y24_N26
\inst110|Add14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add14~5_combout\ = (!\inst|WideOr92~combout\ & ((\inst|WideOr91~1_combout\ & (\inst110|Add14~2_combout\)) # (!\inst|WideOr91~1_combout\ & ((!\inst113|z~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|Add14~2_combout\,
	datab => \inst|WideOr91~1_combout\,
	datac => \inst113|z~50_combout\,
	datad => \inst|WideOr92~combout\,
	combout => \inst110|Add14~5_combout\);

-- Location: LCCOMB_X35_Y24_N4
\inst110|Add14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add14~6_combout\ = (\inst110|Add14~5_combout\) # ((!\inst110|z~46_combout\ & (!\inst|WideOr91~1_combout\ & \inst|WideOr92~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|Add14~5_combout\,
	datab => \inst110|z~46_combout\,
	datac => \inst|WideOr91~1_combout\,
	datad => \inst|WideOr92~combout\,
	combout => \inst110|Add14~6_combout\);

-- Location: LCCOMB_X32_Y24_N4
\inst110|Add14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add14~4_combout\ = (\inst|WideOr92~combout\ & (((\inst110|z~48_combout\)))) # (!\inst|WideOr92~combout\ & (!\inst|WideOr91~1_combout\ & (\inst113|z~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr92~combout\,
	datab => \inst|WideOr91~1_combout\,
	datac => \inst113|z~46_combout\,
	datad => \inst110|z~48_combout\,
	combout => \inst110|Add14~4_combout\);

-- Location: LCCOMB_X35_Y24_N24
\inst110|Add14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add14~3_combout\ = (\inst|WideOr91~1_combout\ & ((\inst122|z~31_combout\) # (!\inst110|Add13~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|Add13~10_combout\,
	datac => \inst|WideOr91~1_combout\,
	datad => \inst122|z~31_combout\,
	combout => \inst110|Add14~3_combout\);

-- Location: LCCOMB_X34_Y24_N14
\inst110|Add14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add14~7_combout\ = \inst110|Add14~6_combout\ $ (((\inst110|Add14~4_combout\) # (\inst110|Add14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|Add14~6_combout\,
	datac => \inst110|Add14~4_combout\,
	datad => \inst110|Add14~3_combout\,
	combout => \inst110|Add14~7_combout\);

-- Location: LCCOMB_X35_Y24_N2
\inst112|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst112|Mux3~8_combout\ = (\inst112|Mux3~6_combout\) # ((\inst112|Mux3~14_combout\) # ((\inst|WideOr91~1_combout\ & !\inst|WideOr92~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst112|Mux3~6_combout\,
	datab => \inst|WideOr91~1_combout\,
	datac => \inst112|Mux3~14_combout\,
	datad => \inst|WideOr92~combout\,
	combout => \inst112|Mux3~8_combout\);

-- Location: LCCOMB_X35_Y24_N18
\inst116|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst116|Mux1~0_combout\ = (\inst112|Mux3~9_combout\ & (((\inst110|Add14~7_combout\) # (!\inst112|Mux3~8_combout\)))) # (!\inst112|Mux3~9_combout\ & (\inst110|Add14~2_combout\ & ((\inst112|Mux3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|Add14~2_combout\,
	datab => \inst112|Mux3~9_combout\,
	datac => \inst110|Add14~7_combout\,
	datad => \inst112|Mux3~8_combout\,
	combout => \inst116|Mux1~0_combout\);

-- Location: LCCOMB_X34_Y24_N20
\inst116|Mux1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst116|Mux1~combout\ = (\inst112|Mux3~7_combout\ & ((\inst116|Mux1~0_combout\ & ((!\inst110|z~46_combout\))) # (!\inst116|Mux1~0_combout\ & (!\inst113|z~50_combout\)))) # (!\inst112|Mux3~7_combout\ & (((\inst116|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~50_combout\,
	datab => \inst112|Mux3~7_combout\,
	datac => \inst110|z~46_combout\,
	datad => \inst116|Mux1~0_combout\,
	combout => \inst116|Mux1~combout\);

-- Location: LCCOMB_X32_Y24_N6
\inst110|Add14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add14~8_combout\ = (!\inst|WideOr91~1_combout\ & ((\inst|WideOr92~combout\ & (\inst110|z~47_combout\)) # (!\inst|WideOr92~combout\ & ((\inst113|z~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr92~combout\,
	datab => \inst|WideOr91~1_combout\,
	datac => \inst110|z~47_combout\,
	datad => \inst113|z~49_combout\,
	combout => \inst110|Add14~8_combout\);

-- Location: LCCOMB_X35_Y24_N20
\inst110|Add14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add14~9_combout\ = (\inst110|Add14~8_combout\) # ((!\inst|WideOr94~combout\ & (\inst112|Mux3~5_combout\ & \inst122|z~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr94~combout\,
	datab => \inst112|Mux3~5_combout\,
	datac => \inst122|z~35_combout\,
	datad => \inst110|Add14~8_combout\,
	combout => \inst110|Add14~9_combout\);

-- Location: LCCOMB_X35_Y24_N10
\inst110|Add14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add14~10_combout\ = \inst110|Add14~9_combout\ $ (((\inst110|Add14~6_combout\) # ((!\inst110|Add14~3_combout\ & !\inst110|Add14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|Add14~3_combout\,
	datab => \inst110|Add14~4_combout\,
	datac => \inst110|Add14~6_combout\,
	datad => \inst110|Add14~9_combout\,
	combout => \inst110|Add14~10_combout\);

-- Location: LCCOMB_X35_Y22_N6
\inst116|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst116|Mux0~0_combout\ = (!\inst|WideOr94~combout\ & (\inst122|LessThan6~0_combout\ & ((!\inst122|z~34_combout\) # (!\inst112|Mux2~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr94~combout\,
	datab => \inst112|Mux2~11_combout\,
	datac => \inst122|z~34_combout\,
	datad => \inst122|LessThan6~0_combout\,
	combout => \inst116|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y24_N8
\inst116|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst116|Mux0~1_combout\ = (\inst112|Mux3~9_combout\ & ((\inst110|Add14~10_combout\) # ((!\inst112|Mux3~8_combout\)))) # (!\inst112|Mux3~9_combout\ & (((\inst116|Mux0~0_combout\ & \inst112|Mux3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|Add14~10_combout\,
	datab => \inst112|Mux3~9_combout\,
	datac => \inst116|Mux0~0_combout\,
	datad => \inst112|Mux3~8_combout\,
	combout => \inst116|Mux0~1_combout\);

-- Location: LCCOMB_X32_Y24_N16
\inst116|Mux0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst116|Mux0~combout\ = (\inst112|Mux3~7_combout\ & ((\inst116|Mux0~1_combout\ & ((\inst110|z~47_combout\))) # (!\inst116|Mux0~1_combout\ & (\inst113|z~49_combout\)))) # (!\inst112|Mux3~7_combout\ & (((\inst116|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst112|Mux3~7_combout\,
	datab => \inst113|z~49_combout\,
	datac => \inst110|z~47_combout\,
	datad => \inst116|Mux0~1_combout\,
	combout => \inst116|Mux0~combout\);

-- Location: LCCOMB_X31_Y28_N24
\inst147|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst147|Mux0~0_combout\ = (\inst116|Mux2~2_combout\ & (!\inst116|Mux0~combout\ & ((!\inst116|Mux1~combout\) # (!\inst116|Mux3~combout\)))) # (!\inst116|Mux2~2_combout\ & ((\inst116|Mux1~combout\ $ (\inst116|Mux0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst116|Mux2~2_combout\,
	datab => \inst116|Mux3~combout\,
	datac => \inst116|Mux1~combout\,
	datad => \inst116|Mux0~combout\,
	combout => \inst147|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y28_N18
\inst147|sal[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst147|sal[6]~0_combout\ = (\inst|WideOr93~combout\ & \inst147|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr93~combout\,
	datad => \inst147|Mux0~0_combout\,
	combout => \inst147|sal[6]~0_combout\);

-- Location: LCCOMB_X31_Y28_N12
\inst147|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst147|Mux1~0_combout\ = (!\inst116|Mux0~combout\ & ((\inst116|Mux2~2_combout\ & ((\inst116|Mux3~combout\) # (!\inst116|Mux1~combout\))) # (!\inst116|Mux2~2_combout\ & (\inst116|Mux3~combout\ & !\inst116|Mux1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst116|Mux2~2_combout\,
	datab => \inst116|Mux3~combout\,
	datac => \inst116|Mux1~combout\,
	datad => \inst116|Mux0~combout\,
	combout => \inst147|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y28_N10
\inst147|sal[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst147|sal[5]~1_combout\ = (\inst|WideOr93~combout\ & !\inst147|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr93~combout\,
	datad => \inst147|Mux1~0_combout\,
	combout => \inst147|sal[5]~1_combout\);

-- Location: LCCOMB_X31_Y28_N4
\inst147|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst147|Mux2~0_combout\ = (\inst116|Mux2~2_combout\ & (\inst116|Mux3~combout\ & ((!\inst116|Mux0~combout\)))) # (!\inst116|Mux2~2_combout\ & ((\inst116|Mux1~combout\ & ((!\inst116|Mux0~combout\))) # (!\inst116|Mux1~combout\ & (\inst116|Mux3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst116|Mux2~2_combout\,
	datab => \inst116|Mux3~combout\,
	datac => \inst116|Mux1~combout\,
	datad => \inst116|Mux0~combout\,
	combout => \inst147|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y28_N14
\inst147|sal[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst147|sal[4]~2_combout\ = (!\inst147|Mux2~0_combout\ & \inst|WideOr93~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst147|Mux2~0_combout\,
	datac => \inst|WideOr93~combout\,
	combout => \inst147|sal[4]~2_combout\);

-- Location: LCCOMB_X31_Y28_N16
\inst147|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst147|Mux3~0_combout\ = (!\inst116|Mux0~combout\ & ((\inst116|Mux2~2_combout\ & (\inst116|Mux3~combout\ & \inst116|Mux1~combout\)) # (!\inst116|Mux2~2_combout\ & (\inst116|Mux3~combout\ $ (\inst116|Mux1~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst116|Mux2~2_combout\,
	datab => \inst116|Mux3~combout\,
	datac => \inst116|Mux1~combout\,
	datad => \inst116|Mux0~combout\,
	combout => \inst147|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y28_N26
\inst147|sal[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst147|sal[3]~3_combout\ = (\inst|WideOr93~combout\ & !\inst147|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr93~combout\,
	datad => \inst147|Mux3~0_combout\,
	combout => \inst147|sal[3]~3_combout\);

-- Location: LCCOMB_X31_Y28_N8
\inst147|sal[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst147|sal[2]~4_combout\ = ((\inst116|Mux3~combout\) # ((\inst116|Mux1~combout\) # (\inst116|Mux0~combout\))) # (!\inst116|Mux2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst116|Mux2~2_combout\,
	datab => \inst116|Mux3~combout\,
	datac => \inst116|Mux1~combout\,
	datad => \inst116|Mux0~combout\,
	combout => \inst147|sal[2]~4_combout\);

-- Location: LCCOMB_X31_Y28_N30
\inst147|sal[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst147|sal[2]~5_combout\ = (\inst147|sal[2]~4_combout\ & \inst|WideOr93~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst147|sal[2]~4_combout\,
	datac => \inst|WideOr93~combout\,
	combout => \inst147|sal[2]~5_combout\);

-- Location: LCCOMB_X31_Y28_N20
\inst147|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst147|Mux5~0_combout\ = (\inst116|Mux1~combout\ & (!\inst116|Mux0~combout\ & (\inst116|Mux2~2_combout\ $ (\inst116|Mux3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst116|Mux2~2_combout\,
	datab => \inst116|Mux3~combout\,
	datac => \inst116|Mux1~combout\,
	datad => \inst116|Mux0~combout\,
	combout => \inst147|Mux5~0_combout\);

-- Location: LCCOMB_X31_Y28_N6
\inst147|sal[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst147|sal[1]~6_combout\ = (\inst|WideOr93~combout\ & !\inst147|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr93~combout\,
	datad => \inst147|Mux5~0_combout\,
	combout => \inst147|sal[1]~6_combout\);

-- Location: LCCOMB_X31_Y28_N28
\inst147|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst147|Mux6~0_combout\ = (!\inst116|Mux2~2_combout\ & (!\inst116|Mux0~combout\ & (\inst116|Mux3~combout\ $ (\inst116|Mux1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst116|Mux2~2_combout\,
	datab => \inst116|Mux3~combout\,
	datac => \inst116|Mux1~combout\,
	datad => \inst116|Mux0~combout\,
	combout => \inst147|Mux6~0_combout\);

-- Location: LCCOMB_X31_Y28_N22
\inst147|sal[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst147|sal[0]~7_combout\ = (\inst|WideOr93~combout\ & !\inst147|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr93~combout\,
	datad => \inst147|Mux6~0_combout\,
	combout => \inst147|sal[0]~7_combout\);

-- Location: LCCOMB_X35_Y25_N10
\inst110|Add13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add13~14_combout\ = \inst110|Add13~11_combout\ $ (((\inst110|Add13~8_combout\) # ((\inst112|Mux3~5_combout\ & !\inst110|Add13~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst112|Mux3~5_combout\,
	datab => \inst110|Add13~8_combout\,
	datac => \inst110|Add13~11_combout\,
	datad => \inst110|Add13~16_combout\,
	combout => \inst110|Add13~14_combout\);

-- Location: LCCOMB_X35_Y25_N28
\inst117|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst117|Mux1~0_combout\ = (\inst117|Mux0~6_combout\ & ((\inst110|Add13~14_combout\) # ((!\inst117|Mux0~5_combout\)))) # (!\inst117|Mux0~6_combout\ & (((!\inst110|Add13~16_combout\ & \inst117|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|Add13~14_combout\,
	datab => \inst110|Add13~16_combout\,
	datac => \inst117|Mux0~6_combout\,
	datad => \inst117|Mux0~5_combout\,
	combout => \inst117|Mux1~0_combout\);

-- Location: LCCOMB_X34_Y25_N20
\inst117|Mux1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst117|Mux1~combout\ = (\inst117|Mux1~0_combout\ & (((!\inst117|Mux0~8_combout\)) # (!\inst110|z~42_combout\))) # (!\inst117|Mux1~0_combout\ & (((\inst117|Mux0~8_combout\ & !\inst113|z~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~42_combout\,
	datab => \inst117|Mux1~0_combout\,
	datac => \inst117|Mux0~8_combout\,
	datad => \inst113|z~44_combout\,
	combout => \inst117|Mux1~combout\);

-- Location: LCCOMB_X36_Y25_N4
\inst117|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst117|Mux2~0_combout\ = (\inst|WideOr91~1_combout\ & (!\inst|WideOr94~combout\ & (\inst122|z~15_combout\ $ (!\inst122|LessThan13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr91~1_combout\,
	datab => \inst122|z~15_combout\,
	datac => \inst|WideOr94~combout\,
	datad => \inst122|LessThan13~1_combout\,
	combout => \inst117|Mux2~0_combout\);

-- Location: LCCOMB_X34_Y25_N2
\inst113|D[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|D[1]~0_combout\ = (\inst113|z~45_combout\ & (\inst113|z~39_combout\ $ ((\inst113|z~43_combout\)))) # (!\inst113|z~45_combout\ & (((!\inst113|z~39_combout\ & \inst113|z~44_combout\)) # (!\inst113|z~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~45_combout\,
	datab => \inst113|z~39_combout\,
	datac => \inst113|z~43_combout\,
	datad => \inst113|z~44_combout\,
	combout => \inst113|D[1]~0_combout\);

-- Location: LCCOMB_X34_Y25_N16
\inst117|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst117|Mux2~1_combout\ = (!\inst|WideOr92~combout\ & ((\inst117|Mux2~0_combout\) # ((!\inst|WideOr91~1_combout\ & !\inst113|D[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr92~combout\,
	datab => \inst|WideOr91~1_combout\,
	datac => \inst117|Mux2~0_combout\,
	datad => \inst113|D[1]~0_combout\,
	combout => \inst117|Mux2~1_combout\);

-- Location: LCCOMB_X39_Y23_N20
\inst112|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst112|Mux3~10_combout\ = (!\inst|WideOr91~1_combout\ & ((\inst|y.T42~q\) # ((\inst|y.T51~q\) # (!\inst|WideOr83~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T42~q\,
	datab => \inst|WideOr91~1_combout\,
	datac => \inst|y.T51~q\,
	datad => \inst|WideOr83~1_combout\,
	combout => \inst112|Mux3~10_combout\);

-- Location: LCCOMB_X34_Y25_N22
\inst117|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst117|Mux2~2_combout\ = (\inst117|Mux2~1_combout\) # ((\inst112|Mux3~10_combout\ & (\inst110|LessThan13~0_combout\ $ (!\inst110|z~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst117|Mux2~1_combout\,
	datab => \inst110|LessThan13~0_combout\,
	datac => \inst112|Mux3~10_combout\,
	datad => \inst110|z~41_combout\,
	combout => \inst117|Mux2~2_combout\);

-- Location: LCCOMB_X35_Y25_N12
\inst110|Add13~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add13~17_combout\ = (\inst122|z~30_combout\) # ((!\inst|y.T10~q\ & (!\inst|y.T34~q\ & \inst|WideOr94~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T10~q\,
	datab => \inst|y.T34~q\,
	datac => \inst|WideOr94~0_combout\,
	datad => \inst122|z~30_combout\,
	combout => \inst110|Add13~17_combout\);

-- Location: LCCOMB_X36_Y25_N22
\inst110|Add13~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add13~15_combout\ = \inst110|Add13~12_combout\ $ (((\inst110|Add13~4_combout\) # (\inst110|Add13~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|Add13~12_combout\,
	datac => \inst110|Add13~4_combout\,
	datad => \inst110|Add13~5_combout\,
	combout => \inst110|Add13~15_combout\);

-- Location: LCCOMB_X35_Y25_N22
\inst117|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst117|Mux0~7_combout\ = (\inst117|Mux0~5_combout\ & ((\inst117|Mux0~6_combout\ & ((\inst110|Add13~15_combout\))) # (!\inst117|Mux0~6_combout\ & (!\inst110|Add13~17_combout\)))) # (!\inst117|Mux0~5_combout\ & (((\inst117|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|Add13~17_combout\,
	datab => \inst117|Mux0~5_combout\,
	datac => \inst117|Mux0~6_combout\,
	datad => \inst110|Add13~15_combout\,
	combout => \inst117|Mux0~7_combout\);

-- Location: LCCOMB_X34_Y25_N6
\inst117|Mux0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst117|Mux0~combout\ = (\inst117|Mux0~7_combout\ & (((!\inst117|Mux0~8_combout\)) # (!\inst110|z~43_combout\))) # (!\inst117|Mux0~7_combout\ & (((\inst117|Mux0~8_combout\ & !\inst113|z~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~43_combout\,
	datab => \inst117|Mux0~7_combout\,
	datac => \inst117|Mux0~8_combout\,
	datad => \inst113|z~45_combout\,
	combout => \inst117|Mux0~combout\);

-- Location: LCCOMB_X39_Y22_N26
\inst66|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst66|LessThan12~0_combout\ = (\inst65|Q\(3) & ((\inst65|Q\(2)) # (\inst65|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|Q\(2),
	datab => \inst65|Q\(3),
	datad => \inst65|Q\(1),
	combout => \inst66|LessThan12~0_combout\);

-- Location: LCCOMB_X38_Y20_N10
\inst117|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst117|Mux3~1_combout\ = (\inst|WideOr92~combout\ & (\inst66|LessThan12~0_combout\)) # (!\inst|WideOr92~combout\ & ((\inst|WideOr94~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|LessThan12~0_combout\,
	datac => \inst|WideOr94~combout\,
	datad => \inst|WideOr92~combout\,
	combout => \inst117|Mux3~1_combout\);

-- Location: LCCOMB_X38_Y22_N4
\inst122|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|LessThan12~0_combout\ = (\inst122|z~12_combout\ & (((\inst5|Q\(2)) # (\inst122|z~14_combout\)))) # (!\inst122|z~12_combout\ & (((!\inst5|Q\(2) & !\inst122|z~14_combout\)) # (!\inst122|z~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~13_combout\,
	datab => \inst122|z~12_combout\,
	datac => \inst5|Q\(2),
	datad => \inst122|z~14_combout\,
	combout => \inst122|LessThan12~0_combout\);

-- Location: LCCOMB_X32_Y23_N20
\inst110|z~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~49_combout\ = (\inst110|z~38_combout\ & (!\inst85|altsyncram_component|auto_generated|q_a\(2) & ((\inst110|z~40_combout\) # (\inst110|z~39_combout\)))) # (!\inst110|z~38_combout\ & ((\inst85|altsyncram_component|auto_generated|q_a\(2) $ 
-- (\inst110|z~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~40_combout\,
	datab => \inst110|z~38_combout\,
	datac => \inst85|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst110|z~39_combout\,
	combout => \inst110|z~49_combout\);

-- Location: LCCOMB_X32_Y23_N4
\inst110|z~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|z~50_combout\ = (\inst110|z~40_combout\ & ((\inst85|altsyncram_component|auto_generated|q_a\(2)) # ((!\inst110|z~38_combout\ & !\inst110|z~39_combout\)))) # (!\inst110|z~40_combout\ & (((!\inst85|altsyncram_component|auto_generated|q_a\(2) & 
-- \inst110|z~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~40_combout\,
	datab => \inst110|z~38_combout\,
	datac => \inst85|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst110|z~39_combout\,
	combout => \inst110|z~50_combout\);

-- Location: LCCOMB_X32_Y23_N26
\inst110|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|LessThan12~0_combout\ = (\inst110|z~38_combout\ & ((\inst110|z~40_combout\) # ((\inst85|altsyncram_component|auto_generated|q_a\(2))))) # (!\inst110|z~38_combout\ & (((!\inst110|z~40_combout\ & 
-- !\inst85|altsyncram_component|auto_generated|q_a\(2))) # (!\inst110|z~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~40_combout\,
	datab => \inst110|z~38_combout\,
	datac => \inst85|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst110|z~39_combout\,
	combout => \inst110|LessThan12~0_combout\);

-- Location: LCCOMB_X39_Y20_N2
\inst110|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|LessThan12~1_combout\ = ((\inst110|z~50_combout\ & ((\inst110|z~49_combout\) # (\inst85|altsyncram_component|auto_generated|q_a\(1))))) # (!\inst110|LessThan12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~49_combout\,
	datab => \inst110|z~50_combout\,
	datac => \inst110|LessThan12~0_combout\,
	datad => \inst85|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst110|LessThan12~1_combout\);

-- Location: LCCOMB_X36_Y20_N6
\inst113|z~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~51_combout\ = (\inst41|Q\(2) & (((!\inst113|z~41_combout\ & !\inst113|z~40_combout\)))) # (!\inst41|Q\(2) & ((\inst113|z~41_combout\) # ((\inst113|z~42_combout\ & \inst113|z~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~42_combout\,
	datab => \inst41|Q\(2),
	datac => \inst113|z~41_combout\,
	datad => \inst113|z~40_combout\,
	combout => \inst113|z~51_combout\);

-- Location: LCCOMB_X36_Y20_N26
\inst113|z~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|z~52_combout\ = (\inst113|z~42_combout\ & ((\inst41|Q\(2)) # ((!\inst113|z~41_combout\ & !\inst113|z~40_combout\)))) # (!\inst113|z~42_combout\ & (!\inst41|Q\(2) & (\inst113|z~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~42_combout\,
	datab => \inst41|Q\(2),
	datac => \inst113|z~41_combout\,
	datad => \inst113|z~40_combout\,
	combout => \inst113|z~52_combout\);

-- Location: LCCOMB_X36_Y20_N20
\inst113|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|LessThan12~0_combout\ = (\inst113|z~40_combout\ & ((\inst113|z~42_combout\) # ((\inst41|Q\(2))))) # (!\inst113|z~40_combout\ & (((!\inst113|z~42_combout\ & !\inst41|Q\(2))) # (!\inst113|z~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~42_combout\,
	datab => \inst41|Q\(2),
	datac => \inst113|z~41_combout\,
	datad => \inst113|z~40_combout\,
	combout => \inst113|LessThan12~0_combout\);

-- Location: LCCOMB_X38_Y20_N16
\inst113|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|LessThan12~1_combout\ = ((\inst113|z~52_combout\ & ((\inst113|z~51_combout\) # (\inst41|Q\(1))))) # (!\inst113|LessThan12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~51_combout\,
	datab => \inst113|z~52_combout\,
	datac => \inst41|Q\(1),
	datad => \inst113|LessThan12~0_combout\,
	combout => \inst113|LessThan12~1_combout\);

-- Location: LCCOMB_X38_Y20_N26
\inst117|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst117|Mux3~2_combout\ = (\inst|WideOr92~combout\ & ((\inst110|LessThan12~1_combout\) # ((\inst|WideOr91~1_combout\)))) # (!\inst|WideOr92~combout\ & (((!\inst|WideOr91~1_combout\ & \inst113|LessThan12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|LessThan12~1_combout\,
	datab => \inst|WideOr92~combout\,
	datac => \inst|WideOr91~1_combout\,
	datad => \inst113|LessThan12~1_combout\,
	combout => \inst117|Mux3~2_combout\);

-- Location: LCCOMB_X38_Y20_N24
\inst117|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst117|Mux3~3_combout\ = (\inst117|Mux3~1_combout\ & (((\inst117|Mux3~2_combout\)))) # (!\inst117|Mux3~1_combout\ & ((\inst117|Mux3~2_combout\ & ((!\inst|WideOr91~1_combout\))) # (!\inst117|Mux3~2_combout\ & (!\inst122|LessThan12~0_combout\ & 
-- \inst|WideOr91~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst117|Mux3~1_combout\,
	datab => \inst122|LessThan12~0_combout\,
	datac => \inst117|Mux3~2_combout\,
	datad => \inst|WideOr91~1_combout\,
	combout => \inst117|Mux3~3_combout\);

-- Location: LCCOMB_X38_Y20_N18
\inst117|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst117|Mux3~4_combout\ = (\inst|WideOr91~1_combout\ & ((\inst117|Mux3~1_combout\) # ((\inst122|LessThan12~0_combout\ & !\inst117|Mux3~2_combout\)))) # (!\inst|WideOr91~1_combout\ & (((\inst117|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst117|Mux3~1_combout\,
	datab => \inst122|LessThan12~0_combout\,
	datac => \inst117|Mux3~2_combout\,
	datad => \inst|WideOr91~1_combout\,
	combout => \inst117|Mux3~4_combout\);

-- Location: LCCOMB_X38_Y22_N6
\inst122|z~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|z~37_combout\ = (!\inst122|z~13_combout\ & (((!\inst5|Q\(2) & !\inst122|z~14_combout\)) # (!\inst122|z~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~13_combout\,
	datab => \inst122|z~12_combout\,
	datac => \inst5|Q\(2),
	datad => \inst122|z~14_combout\,
	combout => \inst122|z~37_combout\);

-- Location: LCCOMB_X38_Y20_N20
\inst110|Add12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add12~9_combout\ = (!\inst|WideOr94~combout\ & (\inst122|z~14_combout\ $ (((!\inst122|z~37_combout\ & !\inst5|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~37_combout\,
	datab => \inst5|Q\(2),
	datac => \inst|WideOr94~combout\,
	datad => \inst122|z~14_combout\,
	combout => \inst110|Add12~9_combout\);

-- Location: LCCOMB_X39_Y23_N6
\inst110|Add12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add12~10_combout\ = (\inst110|Add12~9_combout\) # ((\inst|WideOr94~combout\ & \inst68|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|Add12~9_combout\,
	datab => \inst|WideOr94~combout\,
	datac => \inst68|Q\(3),
	combout => \inst110|Add12~10_combout\);

-- Location: LCCOMB_X39_Y20_N20
\inst110|Add12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add12~11_combout\ = (\inst|WideOr92~combout\ & ((\inst65|Q\(3)) # ((!\inst|WideOr91~1_combout\)))) # (!\inst|WideOr92~combout\ & (((\inst|WideOr91~1_combout\ & \inst110|Add12~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|Q\(3),
	datab => \inst|WideOr92~combout\,
	datac => \inst|WideOr91~1_combout\,
	datad => \inst110|Add12~10_combout\,
	combout => \inst110|Add12~11_combout\);

-- Location: LCCOMB_X39_Y20_N26
\inst110|Add12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add12~12_combout\ = (\inst|WideOr91~1_combout\ & (((\inst110|Add12~11_combout\)))) # (!\inst|WideOr91~1_combout\ & ((\inst110|Add12~11_combout\ & ((\inst110|z~50_combout\))) # (!\inst110|Add12~11_combout\ & (\inst113|z~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~52_combout\,
	datab => \inst|WideOr91~1_combout\,
	datac => \inst110|z~50_combout\,
	datad => \inst110|Add12~11_combout\,
	combout => \inst110|Add12~12_combout\);

-- Location: LCCOMB_X39_Y22_N28
\inst110|Add12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add12~3_combout\ = ((\inst|WideOr94~combout\ & !\inst|WideOr92~combout\)) # (!\inst|WideOr91~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr91~1_combout\,
	datac => \inst|WideOr94~combout\,
	datad => \inst|WideOr92~combout\,
	combout => \inst110|Add12~3_combout\);

-- Location: LCCOMB_X39_Y22_N18
\inst110|Add12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add12~4_combout\ = (\inst110|Add12~3_combout\ & ((\inst68|Q\(1)) # ((!\inst112|Mux3~5_combout\)))) # (!\inst110|Add12~3_combout\ & (((\inst112|Mux3~5_combout\ & \inst5|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst68|Q\(1),
	datab => \inst110|Add12~3_combout\,
	datac => \inst112|Mux3~5_combout\,
	datad => \inst5|Q\(1),
	combout => \inst110|Add12~4_combout\);

-- Location: LCCOMB_X39_Y22_N24
\inst110|Add12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add12~5_combout\ = (\inst110|Add12~4_combout\ & (((\inst112|Mux3~5_combout\) # (\inst41|Q\(1))))) # (!\inst110|Add12~4_combout\ & (\inst65|Q\(1) & (!\inst112|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|Q\(1),
	datab => \inst110|Add12~4_combout\,
	datac => \inst112|Mux3~5_combout\,
	datad => \inst41|Q\(1),
	combout => \inst110|Add12~5_combout\);

-- Location: LCCOMB_X39_Y20_N16
\inst110|Add12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add12~6_combout\ = (\inst|WideOr92~combout\ & ((\inst|WideOr91~1_combout\ & (\inst110|Add12~5_combout\)) # (!\inst|WideOr91~1_combout\ & ((\inst85|altsyncram_component|auto_generated|q_a\(1)))))) # (!\inst|WideOr92~combout\ & 
-- (\inst110|Add12~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|Add12~5_combout\,
	datab => \inst|WideOr92~combout\,
	datac => \inst|WideOr91~1_combout\,
	datad => \inst85|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst110|Add12~6_combout\);

-- Location: LCCOMB_X38_Y20_N12
\inst110|Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add12~0_combout\ = (\inst|WideOr94~combout\ & (((\inst68|Q\(2))))) # (!\inst|WideOr94~combout\ & (\inst122|z~37_combout\ $ (((!\inst5|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~37_combout\,
	datab => \inst68|Q\(2),
	datac => \inst|WideOr94~combout\,
	datad => \inst5|Q\(2),
	combout => \inst110|Add12~0_combout\);

-- Location: LCCOMB_X39_Y20_N24
\inst110|Add12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add12~1_combout\ = (\inst|WideOr91~1_combout\ & ((\inst|WideOr92~combout\ & ((\inst65|Q\(2)))) # (!\inst|WideOr92~combout\ & (\inst110|Add12~0_combout\)))) # (!\inst|WideOr91~1_combout\ & (((\inst|WideOr92~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|Add12~0_combout\,
	datab => \inst|WideOr91~1_combout\,
	datac => \inst|WideOr92~combout\,
	datad => \inst65|Q\(2),
	combout => \inst110|Add12~1_combout\);

-- Location: LCCOMB_X39_Y20_N30
\inst110|Add12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add12~2_combout\ = (\inst|WideOr91~1_combout\ & (((\inst110|Add12~1_combout\)))) # (!\inst|WideOr91~1_combout\ & ((\inst110|Add12~1_combout\ & (\inst110|z~49_combout\)) # (!\inst110|Add12~1_combout\ & ((\inst113|z~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~49_combout\,
	datab => \inst113|z~51_combout\,
	datac => \inst|WideOr91~1_combout\,
	datad => \inst110|Add12~1_combout\,
	combout => \inst110|Add12~2_combout\);

-- Location: LCCOMB_X39_Y20_N22
\inst110|Add12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add12~7_combout\ = (!\inst|WideOr91~1_combout\ & ((\inst|WideOr92~combout\ & (!\inst110|LessThan12~0_combout\)) # (!\inst|WideOr92~combout\ & ((!\inst113|LessThan12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|LessThan12~0_combout\,
	datab => \inst|WideOr91~1_combout\,
	datac => \inst|WideOr92~combout\,
	datad => \inst113|LessThan12~0_combout\,
	combout => \inst110|Add12~7_combout\);

-- Location: LCCOMB_X38_Y20_N2
\inst110|Add12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add12~8_combout\ = (\inst110|Add12~7_combout\) # ((!\inst|WideOr94~combout\ & (!\inst122|LessThan12~0_combout\ & \inst112|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr94~combout\,
	datab => \inst122|LessThan12~0_combout\,
	datac => \inst112|Mux3~5_combout\,
	datad => \inst110|Add12~7_combout\,
	combout => \inst110|Add12~8_combout\);

-- Location: LCCOMB_X39_Y20_N0
\inst110|Add12~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add12~13_combout\ = \inst110|Add12~8_combout\ $ (((\inst110|Add12~12_combout\ & ((\inst110|Add12~6_combout\) # (\inst110|Add12~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|Add12~12_combout\,
	datab => \inst110|Add12~6_combout\,
	datac => \inst110|Add12~2_combout\,
	datad => \inst110|Add12~8_combout\,
	combout => \inst110|Add12~13_combout\);

-- Location: LCCOMB_X38_Y20_N30
\inst122|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|LessThan12~1_combout\ = (\inst122|z~14_combout\ & ((\inst5|Q\(1) & ((\inst122|z~37_combout\) # (\inst5|Q\(2)))) # (!\inst5|Q\(1) & (\inst122|z~37_combout\ & \inst5|Q\(2))))) # (!\inst122|z~14_combout\ & (((!\inst122|z~37_combout\ & 
-- !\inst5|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|z~14_combout\,
	datab => \inst5|Q\(1),
	datac => \inst122|z~37_combout\,
	datad => \inst5|Q\(2),
	combout => \inst122|LessThan12~1_combout\);

-- Location: LCCOMB_X39_Y24_N24
\inst114|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst114|LessThan12~0_combout\ = ((!\inst68|Q\(1) & !\inst68|Q\(2))) # (!\inst68|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst68|Q\(3),
	datab => \inst68|Q\(1),
	datad => \inst68|Q\(2),
	combout => \inst114|LessThan12~0_combout\);

-- Location: LCCOMB_X38_Y20_N0
\inst117|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst117|Mux3~0_combout\ = (\inst|WideOr94~combout\ & (((\inst114|LessThan12~0_combout\)))) # (!\inst|WideOr94~combout\ & (!\inst122|LessThan12~1_combout\ & (\inst122|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|LessThan12~1_combout\,
	datab => \inst122|LessThan12~0_combout\,
	datac => \inst|WideOr94~combout\,
	datad => \inst114|LessThan12~0_combout\,
	combout => \inst117|Mux3~0_combout\);

-- Location: LCCOMB_X38_Y20_N4
\inst117|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst117|Mux3~5_combout\ = (\inst117|Mux3~3_combout\ & ((\inst110|Add12~13_combout\) # ((!\inst117|Mux3~4_combout\ & \inst117|Mux3~0_combout\)))) # (!\inst117|Mux3~3_combout\ & (\inst117|Mux3~4_combout\ & (\inst110|Add12~13_combout\ & 
-- !\inst117|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst117|Mux3~3_combout\,
	datab => \inst117|Mux3~4_combout\,
	datac => \inst110|Add12~13_combout\,
	datad => \inst117|Mux3~0_combout\,
	combout => \inst117|Mux3~5_combout\);

-- Location: LCCOMB_X41_Y18_N28
\inst146|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst146|Mux0~0_combout\ = (\inst117|Mux1~combout\ & (!\inst117|Mux0~combout\ & ((!\inst117|Mux3~5_combout\) # (!\inst117|Mux2~2_combout\)))) # (!\inst117|Mux1~combout\ & (\inst117|Mux2~2_combout\ $ ((\inst117|Mux0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst117|Mux1~combout\,
	datab => \inst117|Mux2~2_combout\,
	datac => \inst117|Mux0~combout\,
	datad => \inst117|Mux3~5_combout\,
	combout => \inst146|Mux0~0_combout\);

-- Location: LCCOMB_X41_Y18_N18
\inst146|sal[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst146|sal[6]~0_combout\ = (\inst|WideOr93~combout\ & \inst146|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr93~combout\,
	datad => \inst146|Mux0~0_combout\,
	combout => \inst146|sal[6]~0_combout\);

-- Location: LCCOMB_X41_Y18_N8
\inst146|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst146|Mux1~0_combout\ = (!\inst117|Mux0~combout\ & ((\inst117|Mux1~combout\ & (\inst117|Mux2~2_combout\ & \inst117|Mux3~5_combout\)) # (!\inst117|Mux1~combout\ & ((\inst117|Mux2~2_combout\) # (\inst117|Mux3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst117|Mux1~combout\,
	datab => \inst117|Mux2~2_combout\,
	datac => \inst117|Mux0~combout\,
	datad => \inst117|Mux3~5_combout\,
	combout => \inst146|Mux1~0_combout\);

-- Location: LCCOMB_X41_Y18_N2
\inst146|sal[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst146|sal[5]~1_combout\ = (!\inst146|Mux1~0_combout\ & \inst|WideOr93~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst146|Mux1~0_combout\,
	datac => \inst|WideOr93~combout\,
	combout => \inst146|sal[5]~1_combout\);

-- Location: LCCOMB_X41_Y18_N4
\inst146|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst146|Mux2~0_combout\ = (\inst117|Mux2~2_combout\ & (((!\inst117|Mux0~combout\ & \inst117|Mux3~5_combout\)))) # (!\inst117|Mux2~2_combout\ & ((\inst117|Mux1~combout\ & (!\inst117|Mux0~combout\)) # (!\inst117|Mux1~combout\ & 
-- ((\inst117|Mux3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst117|Mux1~combout\,
	datab => \inst117|Mux2~2_combout\,
	datac => \inst117|Mux0~combout\,
	datad => \inst117|Mux3~5_combout\,
	combout => \inst146|Mux2~0_combout\);

-- Location: LCCOMB_X41_Y18_N6
\inst146|sal[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst146|sal[4]~2_combout\ = (!\inst146|Mux2~0_combout\ & \inst|WideOr93~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst146|Mux2~0_combout\,
	datac => \inst|WideOr93~combout\,
	combout => \inst146|sal[4]~2_combout\);

-- Location: LCCOMB_X41_Y18_N24
\inst146|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst146|Mux3~0_combout\ = (!\inst117|Mux0~combout\ & ((\inst117|Mux1~combout\ & (\inst117|Mux2~2_combout\ $ (!\inst117|Mux3~5_combout\))) # (!\inst117|Mux1~combout\ & (!\inst117|Mux2~2_combout\ & \inst117|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst117|Mux1~combout\,
	datab => \inst117|Mux2~2_combout\,
	datac => \inst117|Mux0~combout\,
	datad => \inst117|Mux3~5_combout\,
	combout => \inst146|Mux3~0_combout\);

-- Location: LCCOMB_X41_Y18_N14
\inst146|sal[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst146|sal[3]~3_combout\ = (\inst|WideOr93~combout\ & !\inst146|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr93~combout\,
	datad => \inst146|Mux3~0_combout\,
	combout => \inst146|sal[3]~3_combout\);

-- Location: LCCOMB_X41_Y18_N16
\inst146|sal[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst146|sal[2]~4_combout\ = (\inst117|Mux1~combout\) # (((\inst117|Mux0~combout\) # (\inst117|Mux3~5_combout\)) # (!\inst117|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst117|Mux1~combout\,
	datab => \inst117|Mux2~2_combout\,
	datac => \inst117|Mux0~combout\,
	datad => \inst117|Mux3~5_combout\,
	combout => \inst146|sal[2]~4_combout\);

-- Location: LCCOMB_X41_Y18_N30
\inst146|sal[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst146|sal[2]~5_combout\ = (\inst|WideOr93~combout\ & \inst146|sal[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr93~combout\,
	datad => \inst146|sal[2]~4_combout\,
	combout => \inst146|sal[2]~5_combout\);

-- Location: LCCOMB_X41_Y18_N12
\inst146|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst146|Mux5~0_combout\ = (\inst117|Mux1~combout\ & (!\inst117|Mux0~combout\ & (\inst117|Mux2~2_combout\ $ (\inst117|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst117|Mux1~combout\,
	datab => \inst117|Mux2~2_combout\,
	datac => \inst117|Mux0~combout\,
	datad => \inst117|Mux3~5_combout\,
	combout => \inst146|Mux5~0_combout\);

-- Location: LCCOMB_X41_Y18_N26
\inst146|sal[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst146|sal[1]~6_combout\ = (\inst|WideOr93~combout\ & !\inst146|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr93~combout\,
	datad => \inst146|Mux5~0_combout\,
	combout => \inst146|sal[1]~6_combout\);

-- Location: LCCOMB_X41_Y18_N20
\inst146|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst146|Mux6~0_combout\ = (!\inst117|Mux2~2_combout\ & (!\inst117|Mux0~combout\ & (\inst117|Mux1~combout\ $ (\inst117|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst117|Mux1~combout\,
	datab => \inst117|Mux2~2_combout\,
	datac => \inst117|Mux0~combout\,
	datad => \inst117|Mux3~5_combout\,
	combout => \inst146|Mux6~0_combout\);

-- Location: LCCOMB_X41_Y18_N10
\inst146|sal[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst146|sal[0]~7_combout\ = (\inst|WideOr93~combout\ & !\inst146|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr93~combout\,
	datad => \inst146|Mux6~0_combout\,
	combout => \inst146|sal[0]~7_combout\);

-- Location: LCCOMB_X38_Y24_N16
\inst|WideOr74~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr74~3_combout\ = (\inst|y.T35~q\) # ((\inst|y.T45~q\) # ((\inst|y.T43~q\) # (\inst|y.T38~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T35~q\,
	datab => \inst|y.T45~q\,
	datac => \inst|y.T43~q\,
	datad => \inst|y.T38~q\,
	combout => \inst|WideOr74~3_combout\);

-- Location: LCCOMB_X36_Y24_N6
\inst|WideOr74~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr74~6_combout\ = (!\inst|y.T60~q\ & (!\inst|y.T61~q\ & (!\inst|y.T58~q\ & !\inst|y.T57~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T60~q\,
	datab => \inst|y.T61~q\,
	datac => \inst|y.T58~q\,
	datad => \inst|y.T57~q\,
	combout => \inst|WideOr74~6_combout\);

-- Location: LCCOMB_X40_Y25_N6
\inst|WideOr74~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr74~5_combout\ = (!\inst|y.T50~q\ & (!\inst|y.T51~q\ & (!\inst|y.T48~q\ & !\inst|y.T49~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T50~q\,
	datab => \inst|y.T51~q\,
	datac => \inst|y.T48~q\,
	datad => \inst|y.T49~q\,
	combout => \inst|WideOr74~5_combout\);

-- Location: LCCOMB_X37_Y25_N6
\inst|WideOr74~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr74~4_combout\ = (!\inst|y.T59~q\ & (!\inst|y.T55~q\ & !\inst|y.T56~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T59~q\,
	datac => \inst|y.T55~q\,
	datad => \inst|y.T56~q\,
	combout => \inst|WideOr74~4_combout\);

-- Location: LCCOMB_X37_Y25_N28
\inst|WideOr74~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr74~7_combout\ = (\inst|WideOr74~6_combout\ & (\inst|WideOr74~5_combout\ & (\inst|WideOr83~3_combout\ & \inst|WideOr74~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr74~6_combout\,
	datab => \inst|WideOr74~5_combout\,
	datac => \inst|WideOr83~3_combout\,
	datad => \inst|WideOr74~4_combout\,
	combout => \inst|WideOr74~7_combout\);

-- Location: LCCOMB_X40_Y25_N12
\inst|WideOr74~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr74~2_combout\ = (\inst|y.T32~q\) # ((\inst|y.T33~q\) # ((\inst|y.T40~q\) # (\inst|y.T47~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T32~q\,
	datab => \inst|y.T33~q\,
	datac => \inst|y.T40~q\,
	datad => \inst|y.T47~q\,
	combout => \inst|WideOr74~2_combout\);

-- Location: LCCOMB_X37_Y25_N26
\inst|WideOr74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr74~combout\ = (\inst|WideOr74~3_combout\) # (((\inst|WideOr74~2_combout\) # (!\inst|WideOr74~1_combout\)) # (!\inst|WideOr74~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr74~3_combout\,
	datab => \inst|WideOr74~7_combout\,
	datac => \inst|WideOr74~1_combout\,
	datad => \inst|WideOr74~2_combout\,
	combout => \inst|WideOr74~combout\);

-- Location: LCCOMB_X38_Y25_N6
\inst|WideOr75~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr75~4_combout\ = (\inst|y.T31~q\) # ((\inst|y.T19~q\) # ((\inst|y.T20~q\) # (\inst|y.T27~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T31~q\,
	datab => \inst|y.T19~q\,
	datac => \inst|y.T20~q\,
	datad => \inst|y.T27~q\,
	combout => \inst|WideOr75~4_combout\);

-- Location: LCCOMB_X38_Y25_N20
\inst|WideOr75~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr75~5_combout\ = (\inst|WideOr75~4_combout\) # (((\inst|y.T21~q\) # (!\inst|WideOr71~0_combout\)) # (!\inst|WideOr75~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr75~4_combout\,
	datab => \inst|WideOr75~7_combout\,
	datac => \inst|y.T21~q\,
	datad => \inst|WideOr71~0_combout\,
	combout => \inst|WideOr75~5_combout\);

-- Location: LCCOMB_X37_Y25_N0
\inst|WideOr75~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr75~6_combout\ = (\inst|WideOr75~5_combout\) # (((\inst|y.T26~q\) # (\inst|y.T23~q\)) # (!\inst|WideOr74~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr75~5_combout\,
	datab => \inst|WideOr74~7_combout\,
	datac => \inst|y.T26~q\,
	datad => \inst|y.T23~q\,
	combout => \inst|WideOr75~6_combout\);

-- Location: LCCOMB_X38_Y25_N22
\inst|WideOr78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr78~0_combout\ = (!\inst|y.T11~q\ & (!\inst|y.T27~q\ & (!\inst|y.T43~q\ & !\inst|y.T59~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T11~q\,
	datab => \inst|y.T27~q\,
	datac => \inst|y.T43~q\,
	datad => \inst|y.T59~q\,
	combout => \inst|WideOr78~0_combout\);

-- Location: LCCOMB_X39_Y25_N0
\inst|WideOr77~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr77~1_combout\ = (!\inst|y.T47~q\ & (!\inst|y.T15~q\ & (!\inst|y.T63~q\ & !\inst|y.T31~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T47~q\,
	datab => \inst|y.T15~q\,
	datac => \inst|y.T63~q\,
	datad => \inst|y.T31~q\,
	combout => \inst|WideOr77~1_combout\);

-- Location: LCCOMB_X38_Y26_N26
\inst|WideOr78~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr78~1_combout\ = (!\inst|y.T10~q\ & (!\inst|y.T42~q\ & (!\inst|y.T58~q\ & !\inst|y.T26~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T10~q\,
	datab => \inst|y.T42~q\,
	datac => \inst|y.T58~q\,
	datad => \inst|y.T26~q\,
	combout => \inst|WideOr78~1_combout\);

-- Location: LCCOMB_X39_Y24_N10
\inst|WideOr77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr77~0_combout\ = (!\inst|y.T46~q\ & (!\inst|y.T62~q\ & (!\inst|y.T14~q\ & !\inst|y.T30~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T46~q\,
	datab => \inst|y.T62~q\,
	datac => \inst|y.T14~q\,
	datad => \inst|y.T30~q\,
	combout => \inst|WideOr77~0_combout\);

-- Location: LCCOMB_X39_Y26_N10
\inst|WideOr78~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr78~2_combout\ = (\inst|WideOr78~0_combout\ & (\inst|WideOr77~1_combout\ & (\inst|WideOr78~1_combout\ & \inst|WideOr77~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr78~0_combout\,
	datab => \inst|WideOr77~1_combout\,
	datac => \inst|WideOr78~1_combout\,
	datad => \inst|WideOr77~0_combout\,
	combout => \inst|WideOr78~2_combout\);

-- Location: LCCOMB_X39_Y26_N24
\inst|WideOr76~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr76~2_combout\ = (\inst|y.T40~q\) # ((\inst|y.T24~q\) # ((\inst|y.T56~q\) # (\inst|y.T8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T40~q\,
	datab => \inst|y.T24~q\,
	datac => \inst|y.T56~q\,
	datad => \inst|y.T8~q\,
	combout => \inst|WideOr76~2_combout\);

-- Location: LCCOMB_X39_Y26_N30
\inst|WideOr77~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr77~2_combout\ = (!\inst|y.T61~q\ & (!\inst|y.T29~q\ & (!\inst|y.T45~q\ & !\inst|y.T13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T61~q\,
	datab => \inst|y.T29~q\,
	datac => \inst|y.T45~q\,
	datad => \inst|y.T13~q\,
	combout => \inst|WideOr77~2_combout\);

-- Location: LCCOMB_X39_Y24_N28
\inst|WideOr79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr79~0_combout\ = (!\inst|y.T57~q\ & (!\inst|y.T9~q\ & (!\inst|y.T41~q\ & !\inst|y.T25~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T57~q\,
	datab => \inst|y.T9~q\,
	datac => \inst|y.T41~q\,
	datad => \inst|y.T25~q\,
	combout => \inst|WideOr79~0_combout\);

-- Location: LCCOMB_X38_Y26_N24
\inst|WideOr76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr76~0_combout\ = (!\inst|y.T28~q\ & (!\inst|y.T12~q\ & (!\inst|y.T60~q\ & !\inst|y.T44~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T28~q\,
	datab => \inst|y.T12~q\,
	datac => \inst|y.T60~q\,
	datad => \inst|y.T44~q\,
	combout => \inst|WideOr76~0_combout\);

-- Location: LCCOMB_X39_Y26_N0
\inst|WideOr76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr76~1_combout\ = (!\inst|WideOr76~0_combout\) # (!\inst|WideOr79~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr79~0_combout\,
	datad => \inst|WideOr76~0_combout\,
	combout => \inst|WideOr76~1_combout\);

-- Location: LCCOMB_X39_Y26_N16
\inst|WideOr76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr76~combout\ = ((\inst|WideOr76~2_combout\) # ((\inst|WideOr76~1_combout\) # (!\inst|WideOr77~2_combout\))) # (!\inst|WideOr78~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr78~2_combout\,
	datab => \inst|WideOr76~2_combout\,
	datac => \inst|WideOr77~2_combout\,
	datad => \inst|WideOr76~1_combout\,
	combout => \inst|WideOr76~combout\);

-- Location: LCCOMB_X38_Y26_N12
\inst|WideOr77~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr77~3_combout\ = (\inst|y.T4~q\) # (\inst|y.T20~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|y.T4~q\,
	datad => \inst|y.T20~q\,
	combout => \inst|WideOr77~3_combout\);

-- Location: LCCOMB_X38_Y26_N6
\inst|WideOr77~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr77~4_combout\ = (\inst|WideOr77~3_combout\) # ((\inst|y.T52~q\) # ((\inst|y.T36~q\) # (!\inst|WideOr76~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr77~3_combout\,
	datab => \inst|y.T52~q\,
	datac => \inst|y.T36~q\,
	datad => \inst|WideOr76~0_combout\,
	combout => \inst|WideOr77~4_combout\);

-- Location: LCCOMB_X40_Y26_N30
\inst|WideOr77~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr77~8_combout\ = (!\inst|y.T54~q\ & (!\inst|y.T6~q\ & (!\inst|y.T38~q\ & !\inst|y.T22~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T54~q\,
	datab => \inst|y.T6~q\,
	datac => \inst|y.T38~q\,
	datad => \inst|y.T22~q\,
	combout => \inst|WideOr77~8_combout\);

-- Location: LCCOMB_X39_Y26_N22
\inst|WideOr77~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr77~5_combout\ = (!\inst|y.T7~q\ & (!\inst|y.T55~q\ & (!\inst|y.T39~q\ & !\inst|y.T23~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T7~q\,
	datab => \inst|y.T55~q\,
	datac => \inst|y.T39~q\,
	datad => \inst|y.T23~q\,
	combout => \inst|WideOr77~5_combout\);

-- Location: LCCOMB_X39_Y26_N28
\inst|WideOr77~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr77~6_combout\ = (!\inst|y.T37~q\ & (!\inst|y.T21~q\ & (!\inst|y.T5~q\ & !\inst|y.T53~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T37~q\,
	datab => \inst|y.T21~q\,
	datac => \inst|y.T5~q\,
	datad => \inst|y.T53~q\,
	combout => \inst|WideOr77~6_combout\);

-- Location: LCCOMB_X39_Y26_N6
\inst|WideOr77~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr77~7_combout\ = (\inst|WideOr77~5_combout\ & (\inst|WideOr77~1_combout\ & (\inst|WideOr77~2_combout\ & \inst|WideOr77~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr77~5_combout\,
	datab => \inst|WideOr77~1_combout\,
	datac => \inst|WideOr77~2_combout\,
	datad => \inst|WideOr77~6_combout\,
	combout => \inst|WideOr77~7_combout\);

-- Location: LCCOMB_X39_Y26_N4
\inst|WideOr77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr77~combout\ = ((\inst|WideOr77~4_combout\) # ((!\inst|WideOr77~7_combout\) # (!\inst|WideOr77~8_combout\))) # (!\inst|WideOr77~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr77~0_combout\,
	datab => \inst|WideOr77~4_combout\,
	datac => \inst|WideOr77~8_combout\,
	datad => \inst|WideOr77~7_combout\,
	combout => \inst|WideOr77~combout\);

-- Location: LCCOMB_X40_Y25_N0
\inst|WideOr78~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr78~3_combout\ = (\inst|y.T2~q\) # ((\inst|y.T34~q\) # ((\inst|y.T50~q\) # (\inst|y.T18~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T2~q\,
	datab => \inst|y.T34~q\,
	datac => \inst|y.T50~q\,
	datad => \inst|y.T18~q\,
	combout => \inst|WideOr78~3_combout\);

-- Location: LCCOMB_X40_Y25_N30
\inst|WideOr78~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr78~5_combout\ = (\inst|y.T19~q\) # ((\inst|WideOr78~3_combout\) # ((\inst|y.T51~q\) # (!\inst|WideOr78~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T19~q\,
	datab => \inst|WideOr78~3_combout\,
	datac => \inst|WideOr78~4_combout\,
	datad => \inst|y.T51~q\,
	combout => \inst|WideOr78~5_combout\);

-- Location: LCCOMB_X39_Y26_N2
\inst|WideOr78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr78~combout\ = ((\inst|WideOr78~5_combout\) # ((!\inst|WideOr78~2_combout\) # (!\inst|WideOr77~8_combout\))) # (!\inst|WideOr77~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr77~5_combout\,
	datab => \inst|WideOr78~5_combout\,
	datac => \inst|WideOr77~8_combout\,
	datad => \inst|WideOr78~2_combout\,
	combout => \inst|WideOr78~combout\);

-- Location: LCCOMB_X40_Y25_N8
\inst|WideOr79~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr79~1_combout\ = ((\inst|y.T33~q\) # ((\inst|y.T49~q\) # (\inst|y.T17~q\))) # (!\inst|y.T1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T1~q\,
	datab => \inst|y.T33~q\,
	datac => \inst|y.T49~q\,
	datad => \inst|y.T17~q\,
	combout => \inst|WideOr79~1_combout\);

-- Location: LCCOMB_X40_Y25_N4
\inst|WideOr79~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr79~2_combout\ = (\inst|y.T19~q\) # ((\inst|WideOr79~1_combout\) # ((\inst|y.T51~q\) # (!\inst|WideOr78~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T19~q\,
	datab => \inst|WideOr79~1_combout\,
	datac => \inst|WideOr78~4_combout\,
	datad => \inst|y.T51~q\,
	combout => \inst|WideOr79~2_combout\);

-- Location: LCCOMB_X39_Y26_N20
\inst|WideOr79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr79~combout\ = (((\inst|WideOr79~2_combout\) # (!\inst|WideOr77~7_combout\)) # (!\inst|WideOr79~0_combout\)) # (!\inst|WideOr78~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr78~0_combout\,
	datab => \inst|WideOr79~0_combout\,
	datac => \inst|WideOr79~2_combout\,
	datad => \inst|WideOr77~7_combout\,
	combout => \inst|WideOr79~combout\);

-- Location: LCCOMB_X34_Y24_N22
\inst113|LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|LessThan11~1_combout\ = (\inst113|LessThan11~0_combout\ & ((!\inst113|z~48_combout\) # (!\inst113|z~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst113|z~47_combout\,
	datac => \inst113|LessThan11~0_combout\,
	datad => \inst113|z~48_combout\,
	combout => \inst113|LessThan11~1_combout\);

-- Location: LCCOMB_X31_Y21_N10
\inst110|LessThan11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|LessThan11~3_combout\ = (\inst85|altsyncram_component|auto_generated|q_a\(7) & (\inst85|altsyncram_component|auto_generated|q_a\(6) & ((\inst85|altsyncram_component|auto_generated|q_a\(5)) # 
-- (\inst85|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(5),
	datab => \inst85|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst85|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst85|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst110|LessThan11~3_combout\);

-- Location: LCCOMB_X31_Y21_N0
\inst110|LessThan11~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|LessThan11~16_combout\ = (\inst85|altsyncram_component|auto_generated|q_a\(10) & (\inst85|altsyncram_component|auto_generated|q_a\(8) & (\inst85|altsyncram_component|auto_generated|q_a\(9) & \inst110|LessThan11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst85|altsyncram_component|auto_generated|q_a\(8),
	datac => \inst85|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst110|LessThan11~3_combout\,
	combout => \inst110|LessThan11~16_combout\);

-- Location: LCCOMB_X35_Y25_N20
\inst112|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst112|Mux2~9_combout\ = (!\inst|WideOr91~1_combout\ & ((\inst|WideOr92~combout\ & ((\inst110|LessThan11~16_combout\))) # (!\inst|WideOr92~combout\ & (\inst113|LessThan11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|LessThan11~1_combout\,
	datab => \inst110|LessThan11~16_combout\,
	datac => \inst|WideOr91~1_combout\,
	datad => \inst|WideOr92~combout\,
	combout => \inst112|Mux2~9_combout\);

-- Location: LCCOMB_X35_Y25_N2
\inst112|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst112|Mux2~10_combout\ = (\inst112|Mux2~9_combout\) # ((\inst112|Mux2~11_combout\ & (!\inst122|z~32_combout\ & \inst112|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst112|Mux2~11_combout\,
	datab => \inst112|Mux2~9_combout\,
	datac => \inst122|z~32_combout\,
	datad => \inst112|Mux3~4_combout\,
	combout => \inst112|Mux2~10_combout\);

-- Location: LCCOMB_X20_Y30_N0
\inst148|sal[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst148|sal[6]~0_combout\ = (\inst|WideOr93~combout\ & \inst112|Mux2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr93~combout\,
	datad => \inst112|Mux2~10_combout\,
	combout => \inst148|sal[6]~0_combout\);

-- Location: LCCOMB_X35_Y24_N22
\inst110|Add14~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add14~11_combout\ = (\inst110|Add14~4_combout\) # ((\inst|WideOr91~1_combout\ & ((\inst122|z~31_combout\) # (!\inst110|Add13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|Add13~10_combout\,
	datab => \inst|WideOr91~1_combout\,
	datac => \inst110|Add14~4_combout\,
	datad => \inst122|z~31_combout\,
	combout => \inst110|Add14~11_combout\);

-- Location: LCCOMB_X32_Y24_N22
\inst110|Add14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add14~12_combout\ = (!\inst|WideOr91~1_combout\ & ((\inst|WideOr92~combout\ & ((\inst110|z~53_combout\))) # (!\inst|WideOr92~combout\ & (\inst113|z~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~53_combout\,
	datab => \inst|WideOr91~1_combout\,
	datac => \inst|WideOr92~combout\,
	datad => \inst110|z~53_combout\,
	combout => \inst110|Add14~12_combout\);

-- Location: LCCOMB_X35_Y24_N28
\inst110|Add14~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add14~13_combout\ = (\inst110|Add14~12_combout\) # ((!\inst|WideOr94~combout\ & (\inst112|Mux3~5_combout\ & \inst122|z~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr94~combout\,
	datab => \inst110|Add14~12_combout\,
	datac => \inst112|Mux3~5_combout\,
	datad => \inst122|z~33_combout\,
	combout => \inst110|Add14~13_combout\);

-- Location: LCCOMB_X35_Y24_N30
\inst110|Add14~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add14~14_combout\ = \inst110|Add14~13_combout\ $ (((\inst110|Add14~9_combout\ & ((\inst110|Add14~6_combout\) # (!\inst110|Add14~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|Add14~11_combout\,
	datab => \inst110|Add14~9_combout\,
	datac => \inst110|Add14~6_combout\,
	datad => \inst110|Add14~13_combout\,
	combout => \inst110|Add14~14_combout\);

-- Location: LCCOMB_X35_Y25_N30
\inst110|Add14~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|Add14~15_combout\ = (\inst122|z~33_combout\ & ((\inst|y.T10~q\) # ((\inst|y.T34~q\) # (!\inst|WideOr94~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y.T10~q\,
	datab => \inst|y.T34~q\,
	datac => \inst|WideOr94~0_combout\,
	datad => \inst122|z~33_combout\,
	combout => \inst110|Add14~15_combout\);

-- Location: LCCOMB_X35_Y24_N16
\inst112|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst112|Mux3~11_combout\ = (\inst112|Mux3~9_combout\ & ((\inst110|Add14~14_combout\) # ((!\inst112|Mux3~8_combout\)))) # (!\inst112|Mux3~9_combout\ & (((\inst110|Add14~15_combout\ & \inst112|Mux3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|Add14~14_combout\,
	datab => \inst112|Mux3~9_combout\,
	datac => \inst110|Add14~15_combout\,
	datad => \inst112|Mux3~8_combout\,
	combout => \inst112|Mux3~11_combout\);

-- Location: LCCOMB_X34_Y24_N26
\inst112|Mux3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst112|Mux3~15_combout\ = (\inst113|z~48_combout\ & (\inst113|LessThan0~0_combout\ & ((\inst113|z~27_combout\) # (!\inst113|z~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~48_combout\,
	datab => \inst113|z~27_combout\,
	datac => \inst113|z~28_combout\,
	datad => \inst113|LessThan0~0_combout\,
	combout => \inst112|Mux3~15_combout\);

-- Location: LCCOMB_X34_Y24_N4
\inst112|Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst112|Mux3~12_combout\ = (\inst112|Mux3~15_combout\ & (\inst112|Mux3~7_combout\ & (!\inst112|Mux3~11_combout\ & \inst113|z~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst112|Mux3~15_combout\,
	datab => \inst112|Mux3~7_combout\,
	datac => \inst112|Mux3~11_combout\,
	datad => \inst113|z~47_combout\,
	combout => \inst112|Mux3~12_combout\);

-- Location: LCCOMB_X32_Y24_N28
\inst112|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst112|Mux3~13_combout\ = (\inst112|Mux3~12_combout\) # ((\inst112|Mux3~11_combout\ & ((\inst110|z~53_combout\) # (!\inst112|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~53_combout\,
	datab => \inst112|Mux3~11_combout\,
	datac => \inst112|Mux3~12_combout\,
	datad => \inst112|Mux3~7_combout\,
	combout => \inst112|Mux3~13_combout\);

-- Location: LCCOMB_X20_Y30_N6
\inst148|sal[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst148|sal[5]~1_combout\ = (!\inst112|Mux3~13_combout\ & (\inst|WideOr93~combout\ & !\inst112|Mux2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst112|Mux3~13_combout\,
	datac => \inst|WideOr93~combout\,
	datad => \inst112|Mux2~10_combout\,
	combout => \inst148|sal[5]~1_combout\);

-- Location: LCCOMB_X20_Y30_N12
\inst148|sal[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst148|sal[5]~2_combout\ = (\inst|WideOr93~combout\ & !\inst112|Mux3~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr93~combout\,
	datac => \inst112|Mux3~13_combout\,
	combout => \inst148|sal[5]~2_combout\);

-- Location: LCCOMB_X20_Y30_N22
\inst148|sal[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst148|sal[3]~3_combout\ = (\inst|WideOr93~combout\ & ((\inst112|Mux2~10_combout\) # (!\inst112|Mux3~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst112|Mux3~13_combout\,
	datac => \inst|WideOr93~combout\,
	datad => \inst112|Mux2~10_combout\,
	combout => \inst148|sal[3]~3_combout\);

-- Location: LCCOMB_X20_Y30_N4
\inst148|sal[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst148|sal[2]~4_combout\ = (\inst|WideOr93~combout\ & ((\inst112|Mux3~13_combout\) # (!\inst112|Mux2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst112|Mux3~13_combout\,
	datac => \inst|WideOr93~combout\,
	datad => \inst112|Mux2~10_combout\,
	combout => \inst148|sal[2]~4_combout\);

-- Location: LCCOMB_X38_Y20_N22
\inst122|LessThan12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst122|LessThan12~2_combout\ = (\inst122|LessThan12~1_combout\) # (!\inst122|LessThan12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst122|LessThan12~1_combout\,
	datad => \inst122|LessThan12~0_combout\,
	combout => \inst122|LessThan12~2_combout\);

-- Location: LCCOMB_X39_Y24_N8
\inst114|U[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst114|U[1]~0_combout\ = (\inst68|Q\(3) & ((\inst68|Q\(1)) # (!\inst68|Q\(2)))) # (!\inst68|Q\(3) & (!\inst68|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst68|Q\(3),
	datab => \inst68|Q\(1),
	datad => \inst68|Q\(2),
	combout => \inst114|U[1]~0_combout\);

-- Location: LCCOMB_X38_Y20_N8
\inst115|s[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst115|s[1]~0_combout\ = (\inst|WideOr94~combout\ & (((!\inst114|U[1]~0_combout\)))) # (!\inst|WideOr94~combout\ & (\inst122|LessThan12~2_combout\ $ (((\inst5|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst122|LessThan12~2_combout\,
	datab => \inst114|U[1]~0_combout\,
	datac => \inst|WideOr94~combout\,
	datad => \inst5|Q\(1),
	combout => \inst115|s[1]~0_combout\);

-- Location: LCCOMB_X39_Y20_N10
\inst113|U[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst113|U[1]~0_combout\ = (\inst113|z~52_combout\ & (!\inst41|Q\(1) & ((\inst113|z~51_combout\) # (!\inst113|LessThan12~0_combout\)))) # (!\inst113|z~52_combout\ & ((\inst41|Q\(1) $ (!\inst113|LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst113|z~52_combout\,
	datab => \inst113|z~51_combout\,
	datac => \inst41|Q\(1),
	datad => \inst113|LessThan12~0_combout\,
	combout => \inst113|U[1]~0_combout\);

-- Location: LCCOMB_X39_Y20_N12
\inst118|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst118|Mux2~0_combout\ = (\inst|WideOr92~combout\ & (((!\inst|WideOr91~1_combout\)))) # (!\inst|WideOr92~combout\ & ((\inst|WideOr91~1_combout\ & (\inst115|s[1]~0_combout\)) # (!\inst|WideOr91~1_combout\ & ((\inst113|U[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst115|s[1]~0_combout\,
	datab => \inst|WideOr92~combout\,
	datac => \inst|WideOr91~1_combout\,
	datad => \inst113|U[1]~0_combout\,
	combout => \inst118|Mux2~0_combout\);

-- Location: LCCOMB_X39_Y20_N18
\inst110|U[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst110|U[1]~0_combout\ = (\inst110|z~50_combout\ & (!\inst85|altsyncram_component|auto_generated|q_a\(1) & ((\inst110|z~49_combout\) # (!\inst110|LessThan12~0_combout\)))) # (!\inst110|z~50_combout\ & ((\inst110|LessThan12~0_combout\ $ 
-- (!\inst85|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|z~49_combout\,
	datab => \inst110|z~50_combout\,
	datac => \inst110|LessThan12~0_combout\,
	datad => \inst85|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst110|U[1]~0_combout\);

-- Location: LCCOMB_X39_Y22_N16
\inst66|U[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst66|U[1]~0_combout\ = (\inst65|Q\(3) & (\inst65|Q\(2) & !\inst65|Q\(1))) # (!\inst65|Q\(3) & ((\inst65|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|Q\(2),
	datab => \inst65|Q\(3),
	datad => \inst65|Q\(1),
	combout => \inst66|U[1]~0_combout\);

-- Location: LCCOMB_X39_Y20_N8
\inst118|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst118|Mux2~1_combout\ = (\inst118|Mux2~0_combout\ & ((\inst110|U[1]~0_combout\) # ((!\inst|WideOr92~combout\)))) # (!\inst118|Mux2~0_combout\ & (((\inst|WideOr92~combout\ & \inst66|U[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst118|Mux2~0_combout\,
	datab => \inst110|U[1]~0_combout\,
	datac => \inst|WideOr92~combout\,
	datad => \inst66|U[1]~0_combout\,
	combout => \inst118|Mux2~1_combout\);

-- Location: LCCOMB_X38_Y20_N14
\inst118|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst118|Mux0~0_combout\ = (\inst|WideOr91~1_combout\ & ((\inst|WideOr92~combout\ & (\inst66|LessThan12~0_combout\)) # (!\inst|WideOr92~combout\ & ((!\inst117|Mux3~0_combout\))))) # (!\inst|WideOr91~1_combout\ & (\inst|WideOr92~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr91~1_combout\,
	datab => \inst|WideOr92~combout\,
	datac => \inst66|LessThan12~0_combout\,
	datad => \inst117|Mux3~0_combout\,
	combout => \inst118|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y20_N28
\inst118|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst118|Mux0~1_combout\ = (\inst|WideOr91~1_combout\ & (((\inst118|Mux0~0_combout\)))) # (!\inst|WideOr91~1_combout\ & ((\inst118|Mux0~0_combout\ & ((\inst110|LessThan12~1_combout\))) # (!\inst118|Mux0~0_combout\ & (\inst113|LessThan12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr91~1_combout\,
	datab => \inst113|LessThan12~1_combout\,
	datac => \inst118|Mux0~0_combout\,
	datad => \inst110|LessThan12~1_combout\,
	combout => \inst118|Mux0~1_combout\);

-- Location: LCCOMB_X39_Y20_N6
\inst118|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst118|Mux1~0_combout\ = \inst110|Add12~2_combout\ $ (((\inst118|Mux0~1_combout\ & !\inst110|Add12~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst118|Mux0~1_combout\,
	datac => \inst110|Add12~2_combout\,
	datad => \inst110|Add12~6_combout\,
	combout => \inst118|Mux1~0_combout\);

-- Location: LCCOMB_X39_Y20_N28
\inst118|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst118|Mux0~2_combout\ = \inst110|Add12~12_combout\ $ (((\inst118|Mux0~1_combout\ & ((\inst110|Add12~2_combout\) # (\inst110|Add12~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst110|Add12~2_combout\,
	datab => \inst118|Mux0~1_combout\,
	datac => \inst110|Add12~12_combout\,
	datad => \inst110|Add12~6_combout\,
	combout => \inst118|Mux0~2_combout\);

-- Location: LCCOMB_X39_Y22_N12
\inst118|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst118|Mux3~0_combout\ = (\inst110|Add12~3_combout\ & (((!\inst112|Mux3~5_combout\)))) # (!\inst110|Add12~3_combout\ & ((\inst112|Mux3~5_combout\ & ((\inst5|Q\(0)))) # (!\inst112|Mux3~5_combout\ & (\inst65|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|Q\(0),
	datab => \inst110|Add12~3_combout\,
	datac => \inst5|Q\(0),
	datad => \inst112|Mux3~5_combout\,
	combout => \inst118|Mux3~0_combout\);

-- Location: LCCOMB_X39_Y22_N22
\inst118|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst118|Mux3~1_combout\ = (\inst118|Mux3~0_combout\ & (((\inst41|Q\(0))) # (!\inst110|Add12~3_combout\))) # (!\inst118|Mux3~0_combout\ & (\inst110|Add12~3_combout\ & ((\inst68|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst118|Mux3~0_combout\,
	datab => \inst110|Add12~3_combout\,
	datac => \inst41|Q\(0),
	datad => \inst68|Q\(0),
	combout => \inst118|Mux3~1_combout\);

-- Location: LCCOMB_X39_Y20_N4
\inst118|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst118|Mux3~2_combout\ = (\inst|WideOr91~1_combout\ & (((\inst118|Mux3~1_combout\)))) # (!\inst|WideOr91~1_combout\ & ((\inst|WideOr92~combout\ & (\inst85|altsyncram_component|auto_generated|q_a\(0))) # (!\inst|WideOr92~combout\ & 
-- ((\inst118|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst85|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst|WideOr91~1_combout\,
	datac => \inst|WideOr92~combout\,
	datad => \inst118|Mux3~1_combout\,
	combout => \inst118|Mux3~2_combout\);

-- Location: LCCOMB_X47_Y13_N20
\inst145|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst145|Mux0~0_combout\ = (\inst118|Mux2~1_combout\ & (!\inst118|Mux0~2_combout\ & ((!\inst118|Mux3~2_combout\) # (!\inst118|Mux1~0_combout\)))) # (!\inst118|Mux2~1_combout\ & (\inst118|Mux1~0_combout\ $ ((\inst118|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst118|Mux2~1_combout\,
	datab => \inst118|Mux1~0_combout\,
	datac => \inst118|Mux0~2_combout\,
	datad => \inst118|Mux3~2_combout\,
	combout => \inst145|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y13_N14
\inst145|sal[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst145|sal[6]~0_combout\ = (\inst|WideOr93~combout\ & \inst145|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr93~combout\,
	datad => \inst145|Mux0~0_combout\,
	combout => \inst145|sal[6]~0_combout\);

-- Location: LCCOMB_X47_Y13_N8
\inst145|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst145|Mux1~0_combout\ = (!\inst118|Mux0~2_combout\ & ((\inst118|Mux2~1_combout\ & ((\inst118|Mux3~2_combout\) # (!\inst118|Mux1~0_combout\))) # (!\inst118|Mux2~1_combout\ & (!\inst118|Mux1~0_combout\ & \inst118|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst118|Mux2~1_combout\,
	datab => \inst118|Mux1~0_combout\,
	datac => \inst118|Mux0~2_combout\,
	datad => \inst118|Mux3~2_combout\,
	combout => \inst145|Mux1~0_combout\);

-- Location: LCCOMB_X47_Y13_N30
\inst145|sal[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst145|sal[5]~1_combout\ = (!\inst145|Mux1~0_combout\ & \inst|WideOr93~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst145|Mux1~0_combout\,
	datac => \inst|WideOr93~combout\,
	combout => \inst145|sal[5]~1_combout\);

-- Location: LCCOMB_X47_Y13_N4
\inst145|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst145|Mux2~0_combout\ = (\inst118|Mux2~1_combout\ & (((!\inst118|Mux0~2_combout\ & \inst118|Mux3~2_combout\)))) # (!\inst118|Mux2~1_combout\ & ((\inst118|Mux1~0_combout\ & (!\inst118|Mux0~2_combout\)) # (!\inst118|Mux1~0_combout\ & 
-- ((\inst118|Mux3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst118|Mux2~1_combout\,
	datab => \inst118|Mux1~0_combout\,
	datac => \inst118|Mux0~2_combout\,
	datad => \inst118|Mux3~2_combout\,
	combout => \inst145|Mux2~0_combout\);

-- Location: LCCOMB_X47_Y13_N6
\inst145|sal[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst145|sal[4]~2_combout\ = (!\inst145|Mux2~0_combout\ & \inst|WideOr93~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst145|Mux2~0_combout\,
	datac => \inst|WideOr93~combout\,
	combout => \inst145|sal[4]~2_combout\);

-- Location: LCCOMB_X47_Y13_N12
\inst145|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst145|Mux3~0_combout\ = (!\inst118|Mux0~2_combout\ & ((\inst118|Mux2~1_combout\ & (\inst118|Mux1~0_combout\ & \inst118|Mux3~2_combout\)) # (!\inst118|Mux2~1_combout\ & (\inst118|Mux1~0_combout\ $ (\inst118|Mux3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst118|Mux2~1_combout\,
	datab => \inst118|Mux1~0_combout\,
	datac => \inst118|Mux0~2_combout\,
	datad => \inst118|Mux3~2_combout\,
	combout => \inst145|Mux3~0_combout\);

-- Location: LCCOMB_X47_Y13_N26
\inst145|sal[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst145|sal[3]~3_combout\ = (\inst|WideOr93~combout\ & !\inst145|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr93~combout\,
	datad => \inst145|Mux3~0_combout\,
	combout => \inst145|sal[3]~3_combout\);

-- Location: LCCOMB_X47_Y13_N28
\inst145|sal[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst145|sal[2]~4_combout\ = ((\inst118|Mux1~0_combout\) # ((\inst118|Mux0~2_combout\) # (\inst118|Mux3~2_combout\))) # (!\inst118|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst118|Mux2~1_combout\,
	datab => \inst118|Mux1~0_combout\,
	datac => \inst118|Mux0~2_combout\,
	datad => \inst118|Mux3~2_combout\,
	combout => \inst145|sal[2]~4_combout\);

-- Location: LCCOMB_X47_Y13_N18
\inst145|sal[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst145|sal[2]~5_combout\ = (\inst|WideOr93~combout\ & \inst145|sal[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr93~combout\,
	datad => \inst145|sal[2]~4_combout\,
	combout => \inst145|sal[2]~5_combout\);

-- Location: LCCOMB_X47_Y13_N24
\inst145|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst145|Mux5~0_combout\ = (\inst118|Mux1~0_combout\ & (!\inst118|Mux0~2_combout\ & (\inst118|Mux2~1_combout\ $ (\inst118|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst118|Mux2~1_combout\,
	datab => \inst118|Mux1~0_combout\,
	datac => \inst118|Mux0~2_combout\,
	datad => \inst118|Mux3~2_combout\,
	combout => \inst145|Mux5~0_combout\);

-- Location: LCCOMB_X47_Y13_N22
\inst145|sal[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst145|sal[1]~6_combout\ = (\inst|WideOr93~combout\ & !\inst145|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr93~combout\,
	datad => \inst145|Mux5~0_combout\,
	combout => \inst145|sal[1]~6_combout\);

-- Location: LCCOMB_X47_Y13_N16
\inst145|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst145|Mux6~0_combout\ = (!\inst118|Mux2~1_combout\ & (!\inst118|Mux0~2_combout\ & (\inst118|Mux1~0_combout\ $ (\inst118|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst118|Mux2~1_combout\,
	datab => \inst118|Mux1~0_combout\,
	datac => \inst118|Mux0~2_combout\,
	datad => \inst118|Mux3~2_combout\,
	combout => \inst145|Mux6~0_combout\);

-- Location: LCCOMB_X47_Y13_N10
\inst145|sal[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst145|sal[0]~7_combout\ = (\inst|WideOr93~combout\ & !\inst145|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr93~combout\,
	datad => \inst145|Mux6~0_combout\,
	combout => \inst145|sal[0]~7_combout\);

ww_Ingrese <= \Ingrese~output_o\;

ww_Apuesta <= \Apuesta~output_o\;

ww_Adivine <= \Adivine~output_o\;

ww_Caliente <= \Caliente~output_o\;

ww_Frio <= \Frio~output_o\;

ww_Tibio <= \Tibio~output_o\;

ww_Perdio <= \Perdio~output_o\;

ww_Gano <= \Gano~output_o\;

ww_Error <= \Error~output_o\;

ww_C7segmentos(6) <= \C7segmentos[6]~output_o\;

ww_C7segmentos(5) <= \C7segmentos[5]~output_o\;

ww_C7segmentos(4) <= \C7segmentos[4]~output_o\;

ww_C7segmentos(3) <= \C7segmentos[3]~output_o\;

ww_C7segmentos(2) <= \C7segmentos[2]~output_o\;

ww_C7segmentos(1) <= \C7segmentos[1]~output_o\;

ww_C7segmentos(0) <= \C7segmentos[0]~output_o\;

ww_D7segmentos(6) <= \D7segmentos[6]~output_o\;

ww_D7segmentos(5) <= \D7segmentos[5]~output_o\;

ww_D7segmentos(4) <= \D7segmentos[4]~output_o\;

ww_D7segmentos(3) <= \D7segmentos[3]~output_o\;

ww_D7segmentos(2) <= \D7segmentos[2]~output_o\;

ww_D7segmentos(1) <= \D7segmentos[1]~output_o\;

ww_D7segmentos(0) <= \D7segmentos[0]~output_o\;

ww_estados(5) <= \estados[5]~output_o\;

ww_estados(4) <= \estados[4]~output_o\;

ww_estados(3) <= \estados[3]~output_o\;

ww_estados(2) <= \estados[2]~output_o\;

ww_estados(1) <= \estados[1]~output_o\;

ww_estados(0) <= \estados[0]~output_o\;

ww_M7segmentos(6) <= \M7segmentos[6]~output_o\;

ww_M7segmentos(5) <= \M7segmentos[5]~output_o\;

ww_M7segmentos(4) <= \M7segmentos[4]~output_o\;

ww_M7segmentos(3) <= \M7segmentos[3]~output_o\;

ww_M7segmentos(2) <= \M7segmentos[2]~output_o\;

ww_M7segmentos(1) <= \M7segmentos[1]~output_o\;

ww_M7segmentos(0) <= \M7segmentos[0]~output_o\;

ww_U7segmentos(6) <= \U7segmentos[6]~output_o\;

ww_U7segmentos(5) <= \U7segmentos[5]~output_o\;

ww_U7segmentos(4) <= \U7segmentos[4]~output_o\;

ww_U7segmentos(3) <= \U7segmentos[3]~output_o\;

ww_U7segmentos(2) <= \U7segmentos[2]~output_o\;

ww_U7segmentos(1) <= \U7segmentos[1]~output_o\;

ww_U7segmentos(0) <= \U7segmentos[0]~output_o\;
END structure;


