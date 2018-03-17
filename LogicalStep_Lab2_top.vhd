library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity LogicalStep_Lab2_top is port (
   clkin_50			: in	std_logic;
	pb					: in	std_logic_vector(3 downto 0);
 	sw   				: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds				: out std_logic_vector(7 downto 0); -- for displaying the switch content
   seg7_data 		: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  	: out	std_logic;				    		-- seg7 digit1 selector
	seg7_char2  	: out	std_logic				    		-- seg7 digit2 selector
	
); 
end LogicalStep_Lab2_top;

architecture SimpleCircuit of LogicalStep_Lab2_top is
--
-- Components Used ---
------------------------------------------------------------------- 
  component SevenSegment port (
   hex   		:  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
   sevenseg 	:  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
   ); 
   end component;

-- segment7_mux COMPONENT ADDED
-- see functionality in segment7_mux.vhd
	
	component segment7_mux port (
		clk				: in  std_logic := '0';
		DIN2				: in  std_logic_vector(6 downto 0);
		DIN1				: in  std_logic_vector(6 downto 0);
		DOUT 				: out std_logic_vector(6 downto 0);
		DIG2				: out std_logic;
		DIG1				: out std_logic
	);
	end component;
	
-- hex_mux COMPONENT ADDED
-- see functionality in hex_mux.vhd
	
	component hex_mux    
	port (
			hex_concatenate : in std_logic_vector(7 downto 0);
			hex_sum			 : in std_logic_vector(7 downto 0);
			mux_select	 	 : in	std_logic;
			hex_out			 : out std_logic_vector(7 downto 0)
        );
	 end component;

--Logic_Processor COMPONENT ADDED
--see functionality in Logic_Processor.vhd	 
	 
	component Logic_Processor
   port (
			hex_A, hex_B    : in std_logic_vector(3 downto 0);
			select_pb		 : in std_logic_vector(2 downto 0);
			hex_out			 : out std_logic_vector(7 downto 0)
        );
	end component;

--Adder COMPONENT ADDED
--see functionality in Adder.vhd	
	
	component Adder
   port (
			hex_A, hex_B    : in std_logic_vector(3 downto 0);
			hex_out			 : out std_logic_vector(7 downto 0)
        );
	end component;
	
-- Create any signals, or temporary variables to be used 
--
--  std_logic_vector is a signal which can be used for logic operations such as OR, AND, NOT, XOR
--
	signal seg7_A		: std_logic_vector(6 downto 0);
	signal seg7_B		: std_logic_vector(6 downto 0);
	signal hex_A		: std_logic_vector(3 downto 0);
	signal hex_B		: std_logic_vector(7 downto 4);
	signal sum			: std_logic_vector(7 downto 0);
   signal logic_func : std_logic_vector(7 downto 0);
	signal mux_signal : std_logic_vector(7 downto 0);
	
-- Here the circuit begins

begin
	--ASSIGNATION OF SWITCH INPUTS TO hex_A AND hex_B BASED ON DIAGRAM PROVIDED IN MANUAL
	hex_A <= sw(3 downto 0);
	hex_B <= sw(7 downto 4);
	
--COMPONENT HOOKUP
--INSTANTIATION OF DIFFERENT LOGIC GATES 

	INST1: Adder port map(hex_A, hex_B, sum);
	INST2: Logic_Processor port map(hex_A, hex_B, NOT pb(2 downto 0), logic_func);
	INST3: hex_mux port map(hex_B & hex_A, sum, NOT pb(3), mux_signal);
	INST4: hex_mux port map(logic_func, sum, NOT pb(3), leds);
	INST5: SevenSegment port map(mux_signal(3 downto 0), seg7_A);
	INST6: SevenSegment port map(mux_signal(7 downto 4), seg7_B);
	INST7: segment7_mux port map (clkin_50, seg7_B, seg7_A, seg7_data, seg7_char1	, seg7_char2);
	 
	
end SimpleCircuit;

