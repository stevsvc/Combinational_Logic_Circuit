library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;



entity hex_mux is
   port (
			--VARIABLES NEEDED FOR THE hex_mux LOGIC GATE BASED ON MANUAL DIAGRAMS
			hex_concatenate : in std_logic_vector(7 downto 0);
			hex_sum			 : in std_logic_vector(7 downto 0);
			mux_select	 	 : in	std_logic;
			hex_out			 : out std_logic_vector(7 downto 0)
        );
		  
end entity hex_mux;

architecture mux_logic of hex_mux is

begin 

--UTILIZATION OF MULTIPLEXER LOGIC CHOOSING BETWEEN hex_concatenate AND hex_sum BASED ON mux_select INPUT
 
 with mux_select select
 hex_out <= hex_concatenate when '0',
				hex_sum         when '1';
				

end mux_logic;
