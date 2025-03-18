 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity shifterComp is
    Port (   
        	 in1 : IN STD_LOGIC_VECTOR( 31 downto 0); 
	        out1 :	OUT STD_LOGIC_VECTOR( 31 downto 0) ); 

end shifterComp;

architecture Behavioral of shifterComp is

begin

	out1 <= in1(29 downto 0) & "00";

end Behavioral;
