
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux2Comp is
	generic(n: integer:= 32);
    Port ( in0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           in1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           s : in  STD_LOGIC;
           z : out  STD_LOGIC_VECTOR (n-1 downto 0));
end mux2Comp;

architecture Behavioral of mux2Comp is

begin

	z <= in0 when s='0'
	else in1;

end Behavioral;