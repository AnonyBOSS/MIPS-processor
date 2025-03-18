----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:12:14 04/19/2024 
-- Design Name: 
-- Module Name:    floprComp - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity flopr  is
    Port ( D : in  STD_LOGIC_VECTOR (31 downto 0);
           L : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (31 downto 0));
end flopr;

architecture Behavioral of flopr is

begin

	process(clk,rst)
	begin
		if(rst='1') then Q<=(OTHERS=>'0');
		elsif (clk' event and clk='1') then
			if(L='1') then Q<=D;
			end if;
		end if;
	end process;

end Behavioral;