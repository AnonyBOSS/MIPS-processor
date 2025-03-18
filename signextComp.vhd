
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity signextComp is
port( 
	a: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Y: OUT STD_LOGIC_VECTOR(31 DOWNTO 0) );
end signextComp;

architecture Behavioral of signextComp is

begin

	Y <= X"ffff" & a WHEN a(15) = '1' ELSE
	   X"0000" & a;

end Behavioral;
