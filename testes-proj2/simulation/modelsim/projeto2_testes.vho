-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "02/03/2024 12:50:22"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	contador_slide IS
    PORT (
	clk : IN std_logic;
	load : IN std_logic;
	ena : IN std_logic;
	clr : IN std_logic;
	d : IN std_logic_vector(3 DOWNTO 0);
	q : OUT std_logic_vector(3 DOWNTO 0);
	tc : OUT std_logic
	);
END contador_slide;

-- Design Ports Information
-- q[0]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tc	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ena	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador_slide IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_ena : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_d : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_tc : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \tc~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \ena~input_o\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \_~0_combout\ : std_logic;
SIGNAL \aux~4_combout\ : std_logic;
SIGNAL \_~1_combout\ : std_logic;
SIGNAL \count[1]~2_combout\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \_~5_combout\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \_~2_combout\ : std_logic;
SIGNAL \_~3_combout\ : std_logic;
SIGNAL \_~4_combout\ : std_logic;
SIGNAL \count[2]~3_combout\ : std_logic;
SIGNAL \op_2~0_combout\ : std_logic;
SIGNAL \count[3]~4_combout\ : std_logic;
SIGNAL \count[3]~5_combout\ : std_logic;
SIGNAL \op_1~0_combout\ : std_logic;
SIGNAL \count[0]~0_combout\ : std_logic;
SIGNAL \count[0]~1_combout\ : std_logic;
SIGNAL \aux~5_combout\ : std_logic;
SIGNAL count : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_load <= load;
ww_ena <= ena;
ww_clr <= clr;
ww_d <= d;
q <= ww_q;
tc <= ww_tc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y18_N23
\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(0),
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(1),
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(2),
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(3),
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\tc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aux~5_combout\,
	devoe => ww_devoe,
	o => \tc~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X1_Y24_N8
\d[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(0),
	o => \d[0]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\ena~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ena,
	o => \ena~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\d[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(1),
	o => \d[1]~input_o\);

-- Location: LCCOMB_X1_Y21_N2
\_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \_~0_combout\ = (!\ena~input_o\ & (!\load~input_o\ & (!\clr~input_o\ & count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ena~input_o\,
	datab => \load~input_o\,
	datac => \clr~input_o\,
	datad => count(1),
	combout => \_~0_combout\);

-- Location: LCCOMB_X1_Y21_N28
\aux~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux~4_combout\ = (!\load~input_o\ & (\ena~input_o\ & !\clr~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \ena~input_o\,
	datad => \clr~input_o\,
	combout => \aux~4_combout\);

-- Location: LCCOMB_X1_Y21_N24
\_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \_~1_combout\ = (\aux~4_combout\ & (\op_1~0_combout\ & (count(0) $ (count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux~4_combout\,
	datab => count(0),
	datac => \op_1~0_combout\,
	datad => count(1),
	combout => \_~1_combout\);

-- Location: LCCOMB_X1_Y21_N6
\count[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~2_combout\ = (\_~0_combout\) # ((\_~1_combout\) # ((\d[1]~input_o\ & \load~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[1]~input_o\,
	datab => \load~input_o\,
	datac => \_~0_combout\,
	datad => \_~1_combout\,
	combout => \count[1]~2_combout\);

-- Location: FF_X1_Y21_N7
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: IOIBUF_X1_Y24_N1
\d[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(3),
	o => \d[3]~input_o\);

-- Location: LCCOMB_X1_Y21_N20
\_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \_~5_combout\ = (!\ena~input_o\ & (!\clr~input_o\ & (count(3) & !\load~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ena~input_o\,
	datab => \clr~input_o\,
	datac => count(3),
	datad => \load~input_o\,
	combout => \_~5_combout\);

-- Location: IOIBUF_X3_Y24_N22
\d[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(2),
	o => \d[2]~input_o\);

-- Location: LCCOMB_X1_Y21_N26
\_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \_~2_combout\ = (!\ena~input_o\ & (!\clr~input_o\ & (!\load~input_o\ & count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ena~input_o\,
	datab => \clr~input_o\,
	datac => \load~input_o\,
	datad => count(2),
	combout => \_~2_combout\);

-- Location: LCCOMB_X1_Y21_N16
\_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \_~3_combout\ = ((!count(0) & !count(3))) # (!count(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datac => count(3),
	datad => count(1),
	combout => \_~3_combout\);

-- Location: LCCOMB_X1_Y21_N18
\_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \_~4_combout\ = (\aux~4_combout\ & ((count(2) & ((\_~3_combout\))) # (!count(2) & (count(0) & !\_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux~4_combout\,
	datab => count(2),
	datac => count(0),
	datad => \_~3_combout\,
	combout => \_~4_combout\);

-- Location: LCCOMB_X1_Y21_N8
\count[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~3_combout\ = (\_~2_combout\) # ((\_~4_combout\) # ((\d[2]~input_o\ & \load~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[2]~input_o\,
	datab => \load~input_o\,
	datac => \_~2_combout\,
	datad => \_~4_combout\,
	combout => \count[2]~3_combout\);

-- Location: FF_X1_Y21_N9
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X1_Y21_N10
\op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \op_2~0_combout\ = count(3) $ (((count(0) & (count(2) & count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(0),
	datac => count(2),
	datad => count(1),
	combout => \op_2~0_combout\);

-- Location: LCCOMB_X1_Y21_N0
\count[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[3]~4_combout\ = (\_~5_combout\) # ((\aux~4_combout\ & (\op_1~0_combout\ & \op_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux~4_combout\,
	datab => \_~5_combout\,
	datac => \op_1~0_combout\,
	datad => \op_2~0_combout\,
	combout => \count[3]~4_combout\);

-- Location: LCCOMB_X1_Y21_N30
\count[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[3]~5_combout\ = (\count[3]~4_combout\) # ((\d[3]~input_o\ & \load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d[3]~input_o\,
	datac => \load~input_o\,
	datad => \count[3]~4_combout\,
	combout => \count[3]~5_combout\);

-- Location: FF_X1_Y21_N31
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X1_Y21_N14
\op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \op_1~0_combout\ = ((!count(2)) # (!count(3))) # (!count(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datac => count(3),
	datad => count(2),
	combout => \op_1~0_combout\);

-- Location: LCCOMB_X1_Y21_N12
\count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~0_combout\ = (\ena~input_o\ & ((!count(0)) # (!\op_1~0_combout\))) # (!\ena~input_o\ & ((count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ena~input_o\,
	datac => \op_1~0_combout\,
	datad => count(0),
	combout => \count[0]~0_combout\);

-- Location: LCCOMB_X1_Y21_N4
\count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~1_combout\ = (\load~input_o\ & (\d[0]~input_o\)) # (!\load~input_o\ & (((\clr~input_o\) # (\count[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[0]~input_o\,
	datab => \clr~input_o\,
	datac => \load~input_o\,
	datad => \count[0]~0_combout\,
	combout => \count[0]~1_combout\);

-- Location: FF_X1_Y21_N5
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X1_Y21_N22
\aux~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux~5_combout\ = (\ena~input_o\ & (!\load~input_o\ & (!\op_1~0_combout\ & !\clr~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ena~input_o\,
	datab => \load~input_o\,
	datac => \op_1~0_combout\,
	datad => \clr~input_o\,
	combout => \aux~5_combout\);

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_tc <= \tc~output_o\;
END structure;


