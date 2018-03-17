library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Adder is
   port (
			--DECLARATION OF VARIABLES NEEDED FOR Adder LOGIC GATE
			hex_A, hex_B    : in std_logic_vector(3 downto 0);
			hex_out			 : out std_logic_vector(7 downto 0)
        );
		  
end entity Adder;

architecture Bit_Adder of Adder is

begin 
	
--TRANSFORMATION FROM HEXADECIMAL NOTATION TO UNSIGNED NOTATION IN ORDER TO PROCEED WITH THE SUM OPERATION AND THEN TRANSFORMATION BACK 
--TO STD_LOGIC_VECTOR TO BE OUTPUT TO SEG7 DISPLAYS

 hex_out <= std_logic_vector(unsigned("0000" & hex_A) + unsigned("0000" & hex_B)); -- ZEROS ADDED TO AVOID OVERFLOW SINCE RESULT COULD EXCEED 4 BITS
				
end Bit_Adder;