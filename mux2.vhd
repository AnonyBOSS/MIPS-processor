
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux2 is
		 port(
         in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,in17,in18,in19,in20,in21,in22,in23,in24,in25,in26,in27,in28,in29,in30,in31,in32 : in STD_LOGIC_VECTOR(31 downto 0);
         S1: in STD_LOGIC_VECTOR(4 downto 0);
         Z: out STD_LOGIC_VECTOR(31 downto 0)
       );
end mux2;

architecture Behavioral of mux2 is
begin
        z <= in1 when s1 =  "00000" else
		       in2 when s1 =  "00001" else
				 in3 when s1 =  "00010" else
				 in4 when s1 =  "00011" else
				 in5 when s1 =  "00100" else
				 in6 when s1 =  "00101" else
				 in7 when s1 =  "00110" else
				 in8 when s1 =  "00111" else
				 in9 when s1 =  "01000" else
				 in10 when s1 = "01001" else
				 in11 when s1 = "01010" else
				 in12 when s1 = "01011" else
				 in13 when s1 = "01100" else
				 in14 when s1 = "01101" else
				 in15 when s1 = "01110" else
				 in16 when s1 = "01111" else
				 in17 when s1 = "10000" else
				 in18 when s1 = "10001" else
				 in19 when s1 = "10010" else
				 in20 when s1 = "10011" else
				 in21 when s1 = "10100" else
				 in22 when s1 = "10101" else
				 in23 when s1 = "10110" else
				 in24 when s1 = "10111" else
				 in25 when s1 = "11000" else
				 in26 when s1 = "11001" else
				 in27 when s1 = "11010" else
				 in28 when s1 = "11011" else
				 in29 when s1 = "11100" else
				 in30 when s1 = "11101" else
				 in31 when s1 = "11110" else
				 in32 when s1 = "11111" else
				 (OTHERS => 'Z');
	
end Behavioral;