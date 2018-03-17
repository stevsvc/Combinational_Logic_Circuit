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

-- DATE "02/06/2018 15:44:03"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab2_top IS
    PORT (
	clkin_50 : IN std_logic;
	pb : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic
	);
END LogicalStep_Lab2_top;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab2_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_pb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \INST1|hex_out[0]~1\ : std_logic;
SIGNAL \INST1|hex_out[1]~3\ : std_logic;
SIGNAL \INST1|hex_out[2]~5\ : std_logic;
SIGNAL \INST1|hex_out[3]~7\ : std_logic;
SIGNAL \INST1|hex_out[4]~8_combout\ : std_logic;
SIGNAL \INST3|hex_out[4]~0_combout\ : std_logic;
SIGNAL \INST3|hex_out[5]~1_combout\ : std_logic;
SIGNAL \INST3|hex_out[6]~2_combout\ : std_logic;
SIGNAL \INST3|hex_out[7]~3_combout\ : std_logic;
SIGNAL \INST6|Mux5~0_combout\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[1]~1_combout\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[1]~q\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[1]~2\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[2]~1_combout\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[2]~q\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[2]~2\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[3]~1_combout\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[3]~q\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[3]~2\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[4]~1_combout\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[4]~q\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[4]~2\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[5]~1_combout\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[5]~q\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[5]~2\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[6]~1_combout\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[6]~q\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[6]~2\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[7]~1_combout\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[7]~q\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[7]~2\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[8]~1_combout\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[8]~q\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[8]~2\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[9]~1_combout\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[9]~q\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[9]~2\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[10]~1_combout\ : std_logic;
SIGNAL \INST7|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \INST1|hex_out[0]~0_combout\ : std_logic;
SIGNAL \INST3|hex_out[0]~4_combout\ : std_logic;
SIGNAL \INST1|hex_out[1]~2_combout\ : std_logic;
SIGNAL \INST3|hex_out[1]~5_combout\ : std_logic;
SIGNAL \INST1|hex_out[3]~6_combout\ : std_logic;
SIGNAL \INST3|hex_out[3]~7_combout\ : std_logic;
SIGNAL \INST1|hex_out[2]~4_combout\ : std_logic;
SIGNAL \INST3|hex_out[2]~6_combout\ : std_logic;
SIGNAL \INST5|Mux5~0_combout\ : std_logic;
SIGNAL \INST7|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \INST6|Mux1~0_combout\ : std_logic;
SIGNAL \INST5|Mux1~0_combout\ : std_logic;
SIGNAL \INST7|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \INST5|Mux0~0_combout\ : std_logic;
SIGNAL \INST6|Mux0~0_combout\ : std_logic;
SIGNAL \INST7|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \INST2|Mux3~1_combout\ : std_logic;
SIGNAL \INST4|hex_out[1]~0_combout\ : std_logic;
SIGNAL \INST2|Mux3~0_combout\ : std_logic;
SIGNAL \INST2|Mux3~2_combout\ : std_logic;
SIGNAL \INST4|hex_out[1]~3_combout\ : std_logic;
SIGNAL \INST4|hex_out[1]~2_combout\ : std_logic;
SIGNAL \INST4|hex_out[1]~4_combout\ : std_logic;
SIGNAL \INST4|hex_out[1]~1_combout\ : std_logic;
SIGNAL \INST4|hex_out[1]~14_combout\ : std_logic;
SIGNAL \INST4|hex_out[1]~15_combout\ : std_logic;
SIGNAL \INST4|hex_out[2]~5_combout\ : std_logic;
SIGNAL \INST4|hex_out[2]~6_combout\ : std_logic;
SIGNAL \INST4|hex_out[2]~12_combout\ : std_logic;
SIGNAL \INST4|hex_out[2]~13_combout\ : std_logic;
SIGNAL \INST4|hex_out[3]~7_combout\ : std_logic;
SIGNAL \INST4|hex_out[3]~8_combout\ : std_logic;
SIGNAL \INST4|hex_out[3]~10_combout\ : std_logic;
SIGNAL \INST4|hex_out[3]~11_combout\ : std_logic;
SIGNAL \INST4|hex_out[4]~9_combout\ : std_logic;
SIGNAL \INST6|Mux6~0_combout\ : std_logic;
SIGNAL \INST5|Mux6~0_combout\ : std_logic;
SIGNAL \INST7|DOUT[0]~0_combout\ : std_logic;
SIGNAL \INST5|Mux4~0_combout\ : std_logic;
SIGNAL \INST6|Mux4~0_combout\ : std_logic;
SIGNAL \INST7|DOUT[2]~2_combout\ : std_logic;
SIGNAL \INST5|Mux3~0_combout\ : std_logic;
SIGNAL \INST6|Mux3~0_combout\ : std_logic;
SIGNAL \INST7|DOUT[3]~3_combout\ : std_logic;
SIGNAL \INST6|Mux2~0_combout\ : std_logic;
SIGNAL \INST5|Mux2~0_combout\ : std_logic;
SIGNAL \INST7|DOUT[4]~4_combout\ : std_logic;
SIGNAL \INST7|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \INST7|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \INST7|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \INST7|ALT_INV_DOUT[2]~2_combout\ : std_logic;
SIGNAL \INST7|ALT_INV_DOUT[0]~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clkin_50 <= clkin_50;
ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);
\INST7|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \INST7|clk_proc:COUNT[10]~q\;
\INST7|ALT_INV_DOUT[4]~4_combout\ <= NOT \INST7|DOUT[4]~4_combout\;
\INST7|ALT_INV_DOUT[3]~3_combout\ <= NOT \INST7|DOUT[3]~3_combout\;
\INST7|ALT_INV_DOUT[2]~2_combout\ <= NOT \INST7|DOUT[2]~2_combout\;
\INST7|ALT_INV_DOUT[0]~0_combout\ <= NOT \INST7|DOUT[0]~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y24_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X3_Y10_N23
\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST7|DOUT_TEMP[1]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST7|DOUT_TEMP[5]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST7|DOUT_TEMP[6]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST4|hex_out[1]~15_combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST4|hex_out[2]~13_combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST4|hex_out[3]~11_combout\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST4|hex_out[4]~9_combout\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST7|ALT_INV_DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST7|ALT_INV_DOUT[2]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST7|ALT_INV_DOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST7|ALT_INV_DOUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST7|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST7|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X6_Y0_N15
\pb[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(3),
	o => \pb[3]~input_o\);

-- Location: IOIBUF_X1_Y10_N15
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X10_Y20_N15
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X10_Y19_N22
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X10_Y22_N15
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X10_Y19_N15
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X10_Y21_N15
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X0_Y5_N1
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LCCOMB_X11_Y17_N14
\INST1|hex_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|hex_out[0]~0_combout\ = (\sw[4]~input_o\ & (\sw[0]~input_o\ $ (VCC))) # (!\sw[4]~input_o\ & (\sw[0]~input_o\ & VCC))
-- \INST1|hex_out[0]~1\ = CARRY((\sw[4]~input_o\ & \sw[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[0]~input_o\,
	datad => VCC,
	combout => \INST1|hex_out[0]~0_combout\,
	cout => \INST1|hex_out[0]~1\);

-- Location: LCCOMB_X11_Y17_N16
\INST1|hex_out[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|hex_out[1]~2_combout\ = (\sw[5]~input_o\ & ((\sw[1]~input_o\ & (\INST1|hex_out[0]~1\ & VCC)) # (!\sw[1]~input_o\ & (!\INST1|hex_out[0]~1\)))) # (!\sw[5]~input_o\ & ((\sw[1]~input_o\ & (!\INST1|hex_out[0]~1\)) # (!\sw[1]~input_o\ & 
-- ((\INST1|hex_out[0]~1\) # (GND)))))
-- \INST1|hex_out[1]~3\ = CARRY((\sw[5]~input_o\ & (!\sw[1]~input_o\ & !\INST1|hex_out[0]~1\)) # (!\sw[5]~input_o\ & ((!\INST1|hex_out[0]~1\) # (!\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[1]~input_o\,
	datad => VCC,
	cin => \INST1|hex_out[0]~1\,
	combout => \INST1|hex_out[1]~2_combout\,
	cout => \INST1|hex_out[1]~3\);

-- Location: LCCOMB_X11_Y17_N18
\INST1|hex_out[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|hex_out[2]~4_combout\ = ((\sw[2]~input_o\ $ (\sw[6]~input_o\ $ (!\INST1|hex_out[1]~3\)))) # (GND)
-- \INST1|hex_out[2]~5\ = CARRY((\sw[2]~input_o\ & ((\sw[6]~input_o\) # (!\INST1|hex_out[1]~3\))) # (!\sw[2]~input_o\ & (\sw[6]~input_o\ & !\INST1|hex_out[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[6]~input_o\,
	datad => VCC,
	cin => \INST1|hex_out[1]~3\,
	combout => \INST1|hex_out[2]~4_combout\,
	cout => \INST1|hex_out[2]~5\);

-- Location: LCCOMB_X11_Y17_N20
\INST1|hex_out[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|hex_out[3]~6_combout\ = (\sw[7]~input_o\ & ((\sw[3]~input_o\ & (\INST1|hex_out[2]~5\ & VCC)) # (!\sw[3]~input_o\ & (!\INST1|hex_out[2]~5\)))) # (!\sw[7]~input_o\ & ((\sw[3]~input_o\ & (!\INST1|hex_out[2]~5\)) # (!\sw[3]~input_o\ & 
-- ((\INST1|hex_out[2]~5\) # (GND)))))
-- \INST1|hex_out[3]~7\ = CARRY((\sw[7]~input_o\ & (!\sw[3]~input_o\ & !\INST1|hex_out[2]~5\)) # (!\sw[7]~input_o\ & ((!\INST1|hex_out[2]~5\) # (!\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \sw[3]~input_o\,
	datad => VCC,
	cin => \INST1|hex_out[2]~5\,
	combout => \INST1|hex_out[3]~6_combout\,
	cout => \INST1|hex_out[3]~7\);

-- Location: LCCOMB_X11_Y17_N22
\INST1|hex_out[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|hex_out[4]~8_combout\ = !\INST1|hex_out[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \INST1|hex_out[3]~7\,
	combout => \INST1|hex_out[4]~8_combout\);

-- Location: LCCOMB_X11_Y17_N24
\INST3|hex_out[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|hex_out[4]~0_combout\ = (\pb[3]~input_o\ & ((\sw[4]~input_o\))) # (!\pb[3]~input_o\ & (\INST1|hex_out[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datac => \INST1|hex_out[4]~8_combout\,
	datad => \sw[4]~input_o\,
	combout => \INST3|hex_out[4]~0_combout\);

-- Location: LCCOMB_X11_Y17_N2
\INST3|hex_out[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|hex_out[5]~1_combout\ = (\pb[3]~input_o\ & \sw[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb[3]~input_o\,
	datad => \sw[5]~input_o\,
	combout => \INST3|hex_out[5]~1_combout\);

-- Location: LCCOMB_X11_Y16_N30
\INST3|hex_out[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|hex_out[6]~2_combout\ = (\sw[6]~input_o\ & \pb[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datac => \pb[3]~input_o\,
	combout => \INST3|hex_out[6]~2_combout\);

-- Location: LCCOMB_X11_Y17_N0
\INST3|hex_out[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|hex_out[7]~3_combout\ = (\pb[3]~input_o\ & \sw[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datac => \sw[7]~input_o\,
	combout => \INST3|hex_out[7]~3_combout\);

-- Location: LCCOMB_X13_Y21_N6
\INST6|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|Mux5~0_combout\ = (\INST3|hex_out[5]~1_combout\ & ((\INST3|hex_out[4]~0_combout\ & ((\INST3|hex_out[7]~3_combout\))) # (!\INST3|hex_out[4]~0_combout\ & (\INST3|hex_out[6]~2_combout\)))) # (!\INST3|hex_out[5]~1_combout\ & 
-- (\INST3|hex_out[6]~2_combout\ & (\INST3|hex_out[4]~0_combout\ $ (\INST3|hex_out[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[4]~0_combout\,
	datab => \INST3|hex_out[5]~1_combout\,
	datac => \INST3|hex_out[6]~2_combout\,
	datad => \INST3|hex_out[7]~3_combout\,
	combout => \INST6|Mux5~0_combout\);

-- Location: IOIBUF_X0_Y6_N22
\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

-- Location: CLKCTRL_G4
\clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X13_Y21_N0
\INST7|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|clk_proc:COUNT[0]~0_combout\ = !\INST7|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST7|clk_proc:COUNT[0]~q\,
	combout => \INST7|clk_proc:COUNT[0]~0_combout\);

-- Location: FF_X13_Y21_N1
\INST7|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|clk_proc:COUNT[0]~q\);

-- Location: LCCOMB_X13_Y21_N10
\INST7|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|clk_proc:COUNT[1]~1_combout\ = (\INST7|clk_proc:COUNT[1]~q\ & (\INST7|clk_proc:COUNT[0]~q\ $ (VCC))) # (!\INST7|clk_proc:COUNT[1]~q\ & (\INST7|clk_proc:COUNT[0]~q\ & VCC))
-- \INST7|clk_proc:COUNT[1]~2\ = CARRY((\INST7|clk_proc:COUNT[1]~q\ & \INST7|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|clk_proc:COUNT[1]~q\,
	datab => \INST7|clk_proc:COUNT[0]~q\,
	datad => VCC,
	combout => \INST7|clk_proc:COUNT[1]~1_combout\,
	cout => \INST7|clk_proc:COUNT[1]~2\);

-- Location: FF_X13_Y21_N11
\INST7|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|clk_proc:COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|clk_proc:COUNT[1]~q\);

-- Location: LCCOMB_X13_Y21_N12
\INST7|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|clk_proc:COUNT[2]~1_combout\ = (\INST7|clk_proc:COUNT[2]~q\ & (!\INST7|clk_proc:COUNT[1]~2\)) # (!\INST7|clk_proc:COUNT[2]~q\ & ((\INST7|clk_proc:COUNT[1]~2\) # (GND)))
-- \INST7|clk_proc:COUNT[2]~2\ = CARRY((!\INST7|clk_proc:COUNT[1]~2\) # (!\INST7|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \INST7|clk_proc:COUNT[1]~2\,
	combout => \INST7|clk_proc:COUNT[2]~1_combout\,
	cout => \INST7|clk_proc:COUNT[2]~2\);

-- Location: FF_X13_Y21_N13
\INST7|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|clk_proc:COUNT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|clk_proc:COUNT[2]~q\);

-- Location: LCCOMB_X13_Y21_N14
\INST7|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|clk_proc:COUNT[3]~1_combout\ = (\INST7|clk_proc:COUNT[3]~q\ & (\INST7|clk_proc:COUNT[2]~2\ $ (GND))) # (!\INST7|clk_proc:COUNT[3]~q\ & (!\INST7|clk_proc:COUNT[2]~2\ & VCC))
-- \INST7|clk_proc:COUNT[3]~2\ = CARRY((\INST7|clk_proc:COUNT[3]~q\ & !\INST7|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST7|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \INST7|clk_proc:COUNT[2]~2\,
	combout => \INST7|clk_proc:COUNT[3]~1_combout\,
	cout => \INST7|clk_proc:COUNT[3]~2\);

-- Location: FF_X13_Y21_N15
\INST7|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|clk_proc:COUNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|clk_proc:COUNT[3]~q\);

-- Location: LCCOMB_X13_Y21_N16
\INST7|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|clk_proc:COUNT[4]~1_combout\ = (\INST7|clk_proc:COUNT[4]~q\ & (!\INST7|clk_proc:COUNT[3]~2\)) # (!\INST7|clk_proc:COUNT[4]~q\ & ((\INST7|clk_proc:COUNT[3]~2\) # (GND)))
-- \INST7|clk_proc:COUNT[4]~2\ = CARRY((!\INST7|clk_proc:COUNT[3]~2\) # (!\INST7|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST7|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \INST7|clk_proc:COUNT[3]~2\,
	combout => \INST7|clk_proc:COUNT[4]~1_combout\,
	cout => \INST7|clk_proc:COUNT[4]~2\);

-- Location: FF_X13_Y21_N17
\INST7|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|clk_proc:COUNT[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|clk_proc:COUNT[4]~q\);

-- Location: LCCOMB_X13_Y21_N18
\INST7|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|clk_proc:COUNT[5]~1_combout\ = (\INST7|clk_proc:COUNT[5]~q\ & (\INST7|clk_proc:COUNT[4]~2\ $ (GND))) # (!\INST7|clk_proc:COUNT[5]~q\ & (!\INST7|clk_proc:COUNT[4]~2\ & VCC))
-- \INST7|clk_proc:COUNT[5]~2\ = CARRY((\INST7|clk_proc:COUNT[5]~q\ & !\INST7|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST7|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \INST7|clk_proc:COUNT[4]~2\,
	combout => \INST7|clk_proc:COUNT[5]~1_combout\,
	cout => \INST7|clk_proc:COUNT[5]~2\);

-- Location: FF_X13_Y21_N19
\INST7|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|clk_proc:COUNT[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|clk_proc:COUNT[5]~q\);

-- Location: LCCOMB_X13_Y21_N20
\INST7|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|clk_proc:COUNT[6]~1_combout\ = (\INST7|clk_proc:COUNT[6]~q\ & (!\INST7|clk_proc:COUNT[5]~2\)) # (!\INST7|clk_proc:COUNT[6]~q\ & ((\INST7|clk_proc:COUNT[5]~2\) # (GND)))
-- \INST7|clk_proc:COUNT[6]~2\ = CARRY((!\INST7|clk_proc:COUNT[5]~2\) # (!\INST7|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST7|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \INST7|clk_proc:COUNT[5]~2\,
	combout => \INST7|clk_proc:COUNT[6]~1_combout\,
	cout => \INST7|clk_proc:COUNT[6]~2\);

-- Location: FF_X13_Y21_N21
\INST7|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|clk_proc:COUNT[6]~q\);

-- Location: LCCOMB_X13_Y21_N22
\INST7|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|clk_proc:COUNT[7]~1_combout\ = (\INST7|clk_proc:COUNT[7]~q\ & (\INST7|clk_proc:COUNT[6]~2\ $ (GND))) # (!\INST7|clk_proc:COUNT[7]~q\ & (!\INST7|clk_proc:COUNT[6]~2\ & VCC))
-- \INST7|clk_proc:COUNT[7]~2\ = CARRY((\INST7|clk_proc:COUNT[7]~q\ & !\INST7|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \INST7|clk_proc:COUNT[6]~2\,
	combout => \INST7|clk_proc:COUNT[7]~1_combout\,
	cout => \INST7|clk_proc:COUNT[7]~2\);

-- Location: FF_X13_Y21_N23
\INST7|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|clk_proc:COUNT[7]~q\);

-- Location: LCCOMB_X13_Y21_N24
\INST7|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|clk_proc:COUNT[8]~1_combout\ = (\INST7|clk_proc:COUNT[8]~q\ & (!\INST7|clk_proc:COUNT[7]~2\)) # (!\INST7|clk_proc:COUNT[8]~q\ & ((\INST7|clk_proc:COUNT[7]~2\) # (GND)))
-- \INST7|clk_proc:COUNT[8]~2\ = CARRY((!\INST7|clk_proc:COUNT[7]~2\) # (!\INST7|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST7|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \INST7|clk_proc:COUNT[7]~2\,
	combout => \INST7|clk_proc:COUNT[8]~1_combout\,
	cout => \INST7|clk_proc:COUNT[8]~2\);

-- Location: FF_X13_Y21_N25
\INST7|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|clk_proc:COUNT[8]~q\);

-- Location: LCCOMB_X13_Y21_N26
\INST7|clk_proc:COUNT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|clk_proc:COUNT[9]~1_combout\ = (\INST7|clk_proc:COUNT[9]~q\ & (\INST7|clk_proc:COUNT[8]~2\ $ (GND))) # (!\INST7|clk_proc:COUNT[9]~q\ & (!\INST7|clk_proc:COUNT[8]~2\ & VCC))
-- \INST7|clk_proc:COUNT[9]~2\ = CARRY((\INST7|clk_proc:COUNT[9]~q\ & !\INST7|clk_proc:COUNT[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \INST7|clk_proc:COUNT[8]~2\,
	combout => \INST7|clk_proc:COUNT[9]~1_combout\,
	cout => \INST7|clk_proc:COUNT[9]~2\);

-- Location: FF_X13_Y21_N27
\INST7|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|clk_proc:COUNT[9]~q\);

-- Location: LCCOMB_X13_Y21_N28
\INST7|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|clk_proc:COUNT[10]~1_combout\ = \INST7|clk_proc:COUNT[9]~2\ $ (\INST7|clk_proc:COUNT[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \INST7|clk_proc:COUNT[10]~q\,
	cin => \INST7|clk_proc:COUNT[9]~2\,
	combout => \INST7|clk_proc:COUNT[10]~1_combout\);

-- Location: FF_X13_Y21_N29
\INST7|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST7|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|clk_proc:COUNT[10]~q\);

-- Location: LCCOMB_X11_Y17_N12
\INST3|hex_out[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|hex_out[0]~4_combout\ = (\pb[3]~input_o\ & (\sw[0]~input_o\)) # (!\pb[3]~input_o\ & ((\INST1|hex_out[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \INST1|hex_out[0]~0_combout\,
	combout => \INST3|hex_out[0]~4_combout\);

-- Location: LCCOMB_X11_Y17_N6
\INST3|hex_out[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|hex_out[1]~5_combout\ = (\pb[3]~input_o\ & (\sw[1]~input_o\)) # (!\pb[3]~input_o\ & ((\INST1|hex_out[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \INST1|hex_out[1]~2_combout\,
	combout => \INST3|hex_out[1]~5_combout\);

-- Location: LCCOMB_X11_Y17_N30
\INST3|hex_out[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|hex_out[3]~7_combout\ = (\pb[3]~input_o\ & (\sw[3]~input_o\)) # (!\pb[3]~input_o\ & ((\INST1|hex_out[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[3]~input_o\,
	datac => \pb[3]~input_o\,
	datad => \INST1|hex_out[3]~6_combout\,
	combout => \INST3|hex_out[3]~7_combout\);

-- Location: LCCOMB_X11_Y17_N4
\INST3|hex_out[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|hex_out[2]~6_combout\ = (\pb[3]~input_o\ & (\sw[2]~input_o\)) # (!\pb[3]~input_o\ & ((\INST1|hex_out[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datac => \pb[3]~input_o\,
	datad => \INST1|hex_out[2]~4_combout\,
	combout => \INST3|hex_out[2]~6_combout\);

-- Location: LCCOMB_X14_Y21_N28
\INST5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Mux5~0_combout\ = (\INST3|hex_out[1]~5_combout\ & ((\INST3|hex_out[0]~4_combout\ & (\INST3|hex_out[3]~7_combout\)) # (!\INST3|hex_out[0]~4_combout\ & ((\INST3|hex_out[2]~6_combout\))))) # (!\INST3|hex_out[1]~5_combout\ & 
-- (\INST3|hex_out[2]~6_combout\ & (\INST3|hex_out[0]~4_combout\ $ (\INST3|hex_out[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[0]~4_combout\,
	datab => \INST3|hex_out[1]~5_combout\,
	datac => \INST3|hex_out[3]~7_combout\,
	datad => \INST3|hex_out[2]~6_combout\,
	combout => \INST5|Mux5~0_combout\);

-- Location: LCCOMB_X13_Y21_N8
\INST7|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|DOUT_TEMP[1]~0_combout\ = (\INST7|clk_proc:COUNT[10]~q\ & (!\INST6|Mux5~0_combout\)) # (!\INST7|clk_proc:COUNT[10]~q\ & ((!\INST5|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|Mux5~0_combout\,
	datab => \INST7|clk_proc:COUNT[10]~q\,
	datad => \INST5|Mux5~0_combout\,
	combout => \INST7|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X13_Y21_N30
\INST6|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|Mux1~0_combout\ = (\INST3|hex_out[5]~1_combout\ & (!\INST3|hex_out[7]~3_combout\ & ((\INST3|hex_out[4]~0_combout\) # (!\INST3|hex_out[6]~2_combout\)))) # (!\INST3|hex_out[5]~1_combout\ & ((\INST3|hex_out[6]~2_combout\ & 
-- ((\INST3|hex_out[7]~3_combout\))) # (!\INST3|hex_out[6]~2_combout\ & (\INST3|hex_out[4]~0_combout\ & !\INST3|hex_out[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[4]~0_combout\,
	datab => \INST3|hex_out[5]~1_combout\,
	datac => \INST3|hex_out[6]~2_combout\,
	datad => \INST3|hex_out[7]~3_combout\,
	combout => \INST6|Mux1~0_combout\);

-- Location: LCCOMB_X14_Y21_N6
\INST5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Mux1~0_combout\ = (\INST3|hex_out[1]~5_combout\ & (!\INST3|hex_out[3]~7_combout\ & ((\INST3|hex_out[0]~4_combout\) # (!\INST3|hex_out[2]~6_combout\)))) # (!\INST3|hex_out[1]~5_combout\ & ((\INST3|hex_out[3]~7_combout\ & 
-- ((\INST3|hex_out[2]~6_combout\))) # (!\INST3|hex_out[3]~7_combout\ & (\INST3|hex_out[0]~4_combout\ & !\INST3|hex_out[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[0]~4_combout\,
	datab => \INST3|hex_out[1]~5_combout\,
	datac => \INST3|hex_out[3]~7_combout\,
	datad => \INST3|hex_out[2]~6_combout\,
	combout => \INST5|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y21_N4
\INST7|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|DOUT_TEMP[5]~1_combout\ = (\INST7|clk_proc:COUNT[10]~q\ & (!\INST6|Mux1~0_combout\)) # (!\INST7|clk_proc:COUNT[10]~q\ & ((!\INST5|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST7|clk_proc:COUNT[10]~q\,
	datac => \INST6|Mux1~0_combout\,
	datad => \INST5|Mux1~0_combout\,
	combout => \INST7|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X14_Y21_N30
\INST5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Mux0~0_combout\ = (\INST3|hex_out[3]~7_combout\) # ((\INST3|hex_out[1]~5_combout\ & ((!\INST3|hex_out[2]~6_combout\) # (!\INST3|hex_out[0]~4_combout\))) # (!\INST3|hex_out[1]~5_combout\ & ((\INST3|hex_out[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[0]~4_combout\,
	datab => \INST3|hex_out[1]~5_combout\,
	datac => \INST3|hex_out[3]~7_combout\,
	datad => \INST3|hex_out[2]~6_combout\,
	combout => \INST5|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y21_N24
\INST6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|Mux0~0_combout\ = (\INST3|hex_out[7]~3_combout\) # ((\INST3|hex_out[5]~1_combout\ & ((!\INST3|hex_out[4]~0_combout\) # (!\INST3|hex_out[6]~2_combout\))) # (!\INST3|hex_out[5]~1_combout\ & (\INST3|hex_out[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[7]~3_combout\,
	datab => \INST3|hex_out[5]~1_combout\,
	datac => \INST3|hex_out[6]~2_combout\,
	datad => \INST3|hex_out[4]~0_combout\,
	combout => \INST6|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y21_N2
\INST7|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|DOUT_TEMP[6]~2_combout\ = (\INST7|clk_proc:COUNT[10]~q\ & ((\INST6|Mux0~0_combout\))) # (!\INST7|clk_proc:COUNT[10]~q\ & (\INST5|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST7|clk_proc:COUNT[10]~q\,
	datac => \INST5|Mux0~0_combout\,
	datad => \INST6|Mux0~0_combout\,
	combout => \INST7|DOUT_TEMP[6]~2_combout\);

-- Location: IOIBUF_X9_Y0_N22
\pb[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => \pb[1]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\pb[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(2),
	o => \pb[2]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\pb[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => \pb[0]~input_o\);

-- Location: LCCOMB_X11_Y17_N10
\INST2|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|Mux3~1_combout\ = ((\pb[1]~input_o\ & (!\pb[2]~input_o\ & \pb[0]~input_o\))) # (!\pb[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \pb[1]~input_o\,
	datac => \pb[2]~input_o\,
	datad => \pb[0]~input_o\,
	combout => \INST2|Mux3~1_combout\);

-- Location: LCCOMB_X11_Y16_N0
\INST4|hex_out[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|hex_out[1]~0_combout\ = (\pb[3]~input_o\ & \pb[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb[3]~input_o\,
	datad => \pb[2]~input_o\,
	combout => \INST4|hex_out[1]~0_combout\);

-- Location: LCCOMB_X11_Y17_N28
\INST2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|Mux3~0_combout\ = (\pb[1]~input_o\ & (\sw[4]~input_o\ & (!\pb[0]~input_o\ & \sw[0]~input_o\))) # (!\pb[1]~input_o\ & (\pb[0]~input_o\ & ((\sw[4]~input_o\) # (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \pb[1]~input_o\,
	datac => \pb[0]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \INST2|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y17_N8
\INST2|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|Mux3~2_combout\ = (\INST2|Mux3~1_combout\ & ((\INST1|hex_out[0]~0_combout\) # ((\INST4|hex_out[1]~0_combout\ & \INST2|Mux3~0_combout\)))) # (!\INST2|Mux3~1_combout\ & (\INST4|hex_out[1]~0_combout\ & ((\INST2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|Mux3~1_combout\,
	datab => \INST4|hex_out[1]~0_combout\,
	datac => \INST1|hex_out[0]~0_combout\,
	datad => \INST2|Mux3~0_combout\,
	combout => \INST2|Mux3~2_combout\);

-- Location: LCCOMB_X11_Y16_N22
\INST4|hex_out[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|hex_out[1]~3_combout\ = (\pb[3]~input_o\ & ((\pb[1]~input_o\) # (!\pb[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb[1]~input_o\,
	datac => \pb[3]~input_o\,
	datad => \pb[2]~input_o\,
	combout => \INST4|hex_out[1]~3_combout\);

-- Location: LCCOMB_X11_Y16_N16
\INST4|hex_out[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|hex_out[1]~2_combout\ = (\pb[0]~input_o\ & (\pb[1]~input_o\ & (\sw[1]~input_o\ $ (\sw[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \pb[1]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[5]~input_o\,
	combout => \INST4|hex_out[1]~2_combout\);

-- Location: LCCOMB_X11_Y16_N24
\INST4|hex_out[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|hex_out[1]~4_combout\ = (\INST4|hex_out[1]~3_combout\ & (\INST4|hex_out[1]~2_combout\ & ((!\INST4|hex_out[1]~0_combout\)))) # (!\INST4|hex_out[1]~3_combout\ & (((\INST1|hex_out[1]~2_combout\) # (\INST4|hex_out[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4|hex_out[1]~3_combout\,
	datab => \INST4|hex_out[1]~2_combout\,
	datac => \INST1|hex_out[1]~2_combout\,
	datad => \INST4|hex_out[1]~0_combout\,
	combout => \INST4|hex_out[1]~4_combout\);

-- Location: LCCOMB_X11_Y16_N2
\INST4|hex_out[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|hex_out[1]~1_combout\ = (\pb[3]~input_o\ & (\pb[2]~input_o\ & ((!\pb[1]~input_o\) # (!\pb[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \pb[1]~input_o\,
	datac => \pb[3]~input_o\,
	datad => \pb[2]~input_o\,
	combout => \INST4|hex_out[1]~1_combout\);

-- Location: LCCOMB_X11_Y16_N4
\INST4|hex_out[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|hex_out[1]~14_combout\ = (\INST4|hex_out[1]~1_combout\ & (\sw[1]~input_o\ & ((\pb[0]~input_o\) # (!\INST4|hex_out[1]~4_combout\)))) # (!\INST4|hex_out[1]~1_combout\ & (((\INST4|hex_out[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \INST4|hex_out[1]~4_combout\,
	datac => \sw[1]~input_o\,
	datad => \INST4|hex_out[1]~1_combout\,
	combout => \INST4|hex_out[1]~14_combout\);

-- Location: LCCOMB_X11_Y16_N10
\INST4|hex_out[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|hex_out[1]~15_combout\ = (\sw[5]~input_o\ & ((\INST4|hex_out[1]~14_combout\) # ((\INST4|hex_out[1]~4_combout\ & \pb[0]~input_o\)))) # (!\sw[5]~input_o\ & (\INST4|hex_out[1]~4_combout\ & (\INST4|hex_out[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \INST4|hex_out[1]~4_combout\,
	datac => \INST4|hex_out[1]~14_combout\,
	datad => \pb[0]~input_o\,
	combout => \INST4|hex_out[1]~15_combout\);

-- Location: LCCOMB_X11_Y16_N26
\INST4|hex_out[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|hex_out[2]~5_combout\ = (\pb[0]~input_o\ & (\pb[1]~input_o\ & (\sw[2]~input_o\ $ (\sw[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[6]~input_o\,
	datad => \pb[1]~input_o\,
	combout => \INST4|hex_out[2]~5_combout\);

-- Location: LCCOMB_X11_Y16_N12
\INST4|hex_out[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|hex_out[2]~6_combout\ = (\INST4|hex_out[1]~0_combout\ & (((!\INST4|hex_out[1]~3_combout\)))) # (!\INST4|hex_out[1]~0_combout\ & ((\INST4|hex_out[1]~3_combout\ & (\INST4|hex_out[2]~5_combout\)) # (!\INST4|hex_out[1]~3_combout\ & 
-- ((\INST1|hex_out[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4|hex_out[2]~5_combout\,
	datab => \INST4|hex_out[1]~0_combout\,
	datac => \INST4|hex_out[1]~3_combout\,
	datad => \INST1|hex_out[2]~4_combout\,
	combout => \INST4|hex_out[2]~6_combout\);

-- Location: LCCOMB_X11_Y16_N8
\INST4|hex_out[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|hex_out[2]~12_combout\ = (\INST4|hex_out[1]~1_combout\ & (\sw[2]~input_o\ & ((\pb[0]~input_o\) # (!\INST4|hex_out[2]~6_combout\)))) # (!\INST4|hex_out[1]~1_combout\ & (\INST4|hex_out[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4|hex_out[2]~6_combout\,
	datab => \INST4|hex_out[1]~1_combout\,
	datac => \pb[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \INST4|hex_out[2]~12_combout\);

-- Location: LCCOMB_X11_Y16_N14
\INST4|hex_out[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|hex_out[2]~13_combout\ = (\sw[6]~input_o\ & ((\INST4|hex_out[2]~12_combout\) # ((\pb[0]~input_o\ & \INST4|hex_out[2]~6_combout\)))) # (!\sw[6]~input_o\ & (((\INST4|hex_out[2]~12_combout\ & \INST4|hex_out[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \INST4|hex_out[2]~12_combout\,
	datad => \INST4|hex_out[2]~6_combout\,
	combout => \INST4|hex_out[2]~13_combout\);

-- Location: LCCOMB_X11_Y16_N18
\INST4|hex_out[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|hex_out[3]~7_combout\ = (\pb[0]~input_o\ & (\pb[1]~input_o\ & (\sw[7]~input_o\ $ (\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \pb[1]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \INST4|hex_out[3]~7_combout\);

-- Location: LCCOMB_X11_Y16_N20
\INST4|hex_out[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|hex_out[3]~8_combout\ = (\INST4|hex_out[1]~3_combout\ & (!\INST4|hex_out[1]~0_combout\ & ((\INST4|hex_out[3]~7_combout\)))) # (!\INST4|hex_out[1]~3_combout\ & ((\INST4|hex_out[1]~0_combout\) # ((\INST1|hex_out[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4|hex_out[1]~3_combout\,
	datab => \INST4|hex_out[1]~0_combout\,
	datac => \INST1|hex_out[3]~6_combout\,
	datad => \INST4|hex_out[3]~7_combout\,
	combout => \INST4|hex_out[3]~8_combout\);

-- Location: LCCOMB_X11_Y16_N28
\INST4|hex_out[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|hex_out[3]~10_combout\ = (\INST4|hex_out[1]~1_combout\ & (\sw[3]~input_o\ & ((\pb[0]~input_o\) # (!\INST4|hex_out[3]~8_combout\)))) # (!\INST4|hex_out[1]~1_combout\ & (((\INST4|hex_out[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \INST4|hex_out[1]~1_combout\,
	datac => \pb[0]~input_o\,
	datad => \INST4|hex_out[3]~8_combout\,
	combout => \INST4|hex_out[3]~10_combout\);

-- Location: LCCOMB_X11_Y16_N6
\INST4|hex_out[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|hex_out[3]~11_combout\ = (\INST4|hex_out[3]~8_combout\ & ((\INST4|hex_out[3]~10_combout\) # ((\pb[0]~input_o\ & \sw[7]~input_o\)))) # (!\INST4|hex_out[3]~8_combout\ & (((\sw[7]~input_o\ & \INST4|hex_out[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \INST4|hex_out[3]~8_combout\,
	datac => \sw[7]~input_o\,
	datad => \INST4|hex_out[3]~10_combout\,
	combout => \INST4|hex_out[3]~11_combout\);

-- Location: LCCOMB_X11_Y17_N26
\INST4|hex_out[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|hex_out[4]~9_combout\ = (!\pb[3]~input_o\ & \INST1|hex_out[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datac => \INST1|hex_out[4]~8_combout\,
	combout => \INST4|hex_out[4]~9_combout\);

-- Location: LCCOMB_X14_Y21_N8
\INST6|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|Mux6~0_combout\ = (\INST3|hex_out[5]~1_combout\ & (\INST3|hex_out[7]~3_combout\ & (!\INST3|hex_out[6]~2_combout\ & \INST3|hex_out[4]~0_combout\))) # (!\INST3|hex_out[5]~1_combout\ & (\INST3|hex_out[6]~2_combout\ $ (((!\INST3|hex_out[7]~3_combout\ & 
-- \INST3|hex_out[4]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[7]~3_combout\,
	datab => \INST3|hex_out[5]~1_combout\,
	datac => \INST3|hex_out[6]~2_combout\,
	datad => \INST3|hex_out[4]~0_combout\,
	combout => \INST6|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y21_N10
\INST5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Mux6~0_combout\ = (\INST3|hex_out[1]~5_combout\ & (\INST3|hex_out[0]~4_combout\ & (\INST3|hex_out[3]~7_combout\ & !\INST3|hex_out[2]~6_combout\))) # (!\INST3|hex_out[1]~5_combout\ & (\INST3|hex_out[2]~6_combout\ $ (((\INST3|hex_out[0]~4_combout\ & 
-- !\INST3|hex_out[3]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[0]~4_combout\,
	datab => \INST3|hex_out[1]~5_combout\,
	datac => \INST3|hex_out[3]~7_combout\,
	datad => \INST3|hex_out[2]~6_combout\,
	combout => \INST5|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y21_N20
\INST7|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|DOUT[0]~0_combout\ = (\INST7|clk_proc:COUNT[10]~q\ & (\INST6|Mux6~0_combout\)) # (!\INST7|clk_proc:COUNT[10]~q\ & ((\INST5|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST7|clk_proc:COUNT[10]~q\,
	datac => \INST6|Mux6~0_combout\,
	datad => \INST5|Mux6~0_combout\,
	combout => \INST7|DOUT[0]~0_combout\);

-- Location: LCCOMB_X14_Y21_N12
\INST5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Mux4~0_combout\ = (\INST3|hex_out[3]~7_combout\ & (\INST3|hex_out[2]~6_combout\ & ((\INST3|hex_out[1]~5_combout\) # (!\INST3|hex_out[0]~4_combout\)))) # (!\INST3|hex_out[3]~7_combout\ & (!\INST3|hex_out[0]~4_combout\ & (\INST3|hex_out[1]~5_combout\ 
-- & !\INST3|hex_out[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[0]~4_combout\,
	datab => \INST3|hex_out[1]~5_combout\,
	datac => \INST3|hex_out[3]~7_combout\,
	datad => \INST3|hex_out[2]~6_combout\,
	combout => \INST5|Mux4~0_combout\);

-- Location: LCCOMB_X14_Y21_N14
\INST6|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|Mux4~0_combout\ = (\INST3|hex_out[7]~3_combout\ & (\INST3|hex_out[6]~2_combout\ & ((\INST3|hex_out[5]~1_combout\) # (!\INST3|hex_out[4]~0_combout\)))) # (!\INST3|hex_out[7]~3_combout\ & (\INST3|hex_out[5]~1_combout\ & (!\INST3|hex_out[6]~2_combout\ 
-- & !\INST3|hex_out[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[7]~3_combout\,
	datab => \INST3|hex_out[5]~1_combout\,
	datac => \INST3|hex_out[6]~2_combout\,
	datad => \INST3|hex_out[4]~0_combout\,
	combout => \INST6|Mux4~0_combout\);

-- Location: LCCOMB_X14_Y21_N18
\INST7|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|DOUT[2]~2_combout\ = (\INST7|clk_proc:COUNT[10]~q\ & ((\INST6|Mux4~0_combout\))) # (!\INST7|clk_proc:COUNT[10]~q\ & (\INST5|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|Mux4~0_combout\,
	datab => \INST7|clk_proc:COUNT[10]~q\,
	datac => \INST6|Mux4~0_combout\,
	combout => \INST7|DOUT[2]~2_combout\);

-- Location: LCCOMB_X14_Y21_N22
\INST5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Mux3~0_combout\ = (\INST3|hex_out[1]~5_combout\ & ((\INST3|hex_out[0]~4_combout\ & ((\INST3|hex_out[2]~6_combout\))) # (!\INST3|hex_out[0]~4_combout\ & (\INST3|hex_out[3]~7_combout\ & !\INST3|hex_out[2]~6_combout\)))) # 
-- (!\INST3|hex_out[1]~5_combout\ & (!\INST3|hex_out[3]~7_combout\ & (\INST3|hex_out[0]~4_combout\ $ (\INST3|hex_out[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[0]~4_combout\,
	datab => \INST3|hex_out[1]~5_combout\,
	datac => \INST3|hex_out[3]~7_combout\,
	datad => \INST3|hex_out[2]~6_combout\,
	combout => \INST5|Mux3~0_combout\);

-- Location: LCCOMB_X14_Y21_N16
\INST6|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|Mux3~0_combout\ = (\INST3|hex_out[5]~1_combout\ & ((\INST3|hex_out[6]~2_combout\ & ((\INST3|hex_out[4]~0_combout\))) # (!\INST3|hex_out[6]~2_combout\ & (\INST3|hex_out[7]~3_combout\ & !\INST3|hex_out[4]~0_combout\)))) # 
-- (!\INST3|hex_out[5]~1_combout\ & (!\INST3|hex_out[7]~3_combout\ & (\INST3|hex_out[6]~2_combout\ $ (\INST3|hex_out[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[7]~3_combout\,
	datab => \INST3|hex_out[5]~1_combout\,
	datac => \INST3|hex_out[6]~2_combout\,
	datad => \INST3|hex_out[4]~0_combout\,
	combout => \INST6|Mux3~0_combout\);

-- Location: LCCOMB_X14_Y21_N0
\INST7|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|DOUT[3]~3_combout\ = (\INST7|clk_proc:COUNT[10]~q\ & ((\INST6|Mux3~0_combout\))) # (!\INST7|clk_proc:COUNT[10]~q\ & (\INST5|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST7|clk_proc:COUNT[10]~q\,
	datac => \INST5|Mux3~0_combout\,
	datad => \INST6|Mux3~0_combout\,
	combout => \INST7|DOUT[3]~3_combout\);

-- Location: LCCOMB_X14_Y21_N26
\INST6|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|Mux2~0_combout\ = (\INST3|hex_out[5]~1_combout\ & (!\INST3|hex_out[7]~3_combout\ & ((\INST3|hex_out[4]~0_combout\)))) # (!\INST3|hex_out[5]~1_combout\ & ((\INST3|hex_out[6]~2_combout\ & (!\INST3|hex_out[7]~3_combout\)) # 
-- (!\INST3|hex_out[6]~2_combout\ & ((\INST3|hex_out[4]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[7]~3_combout\,
	datab => \INST3|hex_out[5]~1_combout\,
	datac => \INST3|hex_out[6]~2_combout\,
	datad => \INST3|hex_out[4]~0_combout\,
	combout => \INST6|Mux2~0_combout\);

-- Location: LCCOMB_X14_Y21_N4
\INST5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Mux2~0_combout\ = (\INST3|hex_out[1]~5_combout\ & (\INST3|hex_out[0]~4_combout\ & (!\INST3|hex_out[3]~7_combout\))) # (!\INST3|hex_out[1]~5_combout\ & ((\INST3|hex_out[2]~6_combout\ & ((!\INST3|hex_out[3]~7_combout\))) # 
-- (!\INST3|hex_out[2]~6_combout\ & (\INST3|hex_out[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[0]~4_combout\,
	datab => \INST3|hex_out[1]~5_combout\,
	datac => \INST3|hex_out[3]~7_combout\,
	datad => \INST3|hex_out[2]~6_combout\,
	combout => \INST5|Mux2~0_combout\);

-- Location: LCCOMB_X14_Y21_N2
\INST7|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|DOUT[4]~4_combout\ = (\INST7|clk_proc:COUNT[10]~q\ & (\INST6|Mux2~0_combout\)) # (!\INST7|clk_proc:COUNT[10]~q\ & ((\INST5|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|Mux2~0_combout\,
	datab => \INST7|clk_proc:COUNT[10]~q\,
	datac => \INST5|Mux2~0_combout\,
	combout => \INST7|DOUT[4]~4_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;
END structure;


