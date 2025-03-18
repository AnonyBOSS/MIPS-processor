
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pcComp is
    Port ( clk : in  STD_LOGIC;
           loadAddress : in  STD_LOGIC_VECTOR(31 downto 0);
           currentAddress : out  STD_LOGIC_VECTOR(31 downto 0));
end pcComp;

architecture Behavioral of pcComp is

begin
process(clk)
begin
if(clk'event and clk='1') then
currentAddress<=loadAddress;
end if;
end process;
end Behavioral;