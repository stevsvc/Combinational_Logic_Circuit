library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Logic_Processor is
   port (
			--DECLARATION OF VARIABLES NEEDED FOR Logic_Processor LOGIC GATE
			hex_A, hex_B    : in std_logic_vector(3 downto 0);
			select_pb		 : in std_logic_vector(2 downto 0);
			hex_out			 : out std_logic_vector(7 downto 0)
        );
		  
end entity Logic_Processor;

architecture Logic_Processor_Pb of Logic_Processor is

begin 
	
 --UTILIZATION OF MULTIPLEXER LOGIC TO OPERATE LOGIC FUNCTION AND, OR, XOR
 
 with select_pb(2 downto 0) select
 hex_out <= ("0000" & hex_A) AND ("0000" & hex_B) when "001",
				("0000" & hex_A)  OR ("0000" & hex_B) when "010",
				("0000" & hex_A) XOR ("0000" & hex_B) when "100", -- ZEROS ADDED BEFORE LOGIC OPERATIONS TO AVOID OVERFLOW
				"00000000" when others;
				
end Logic_Processor_Pb;