----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:17:50 04/19/2024 
-- Design Name: 
-- Module Name:    decoderComp - Behavioral 
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

entity decoder5to32 is
    Port ( a : in  STD_LOGIC_VECTOR (4 downto 0);
           b : out  STD_LOGIC_VECTOR (31 downto 0);
           e : in  STD_LOGIC);
end decoder5to32;

architecture Behavioral of decoder5to32 is

begin

	b <= (OTHERS => '0') when e = '0' else
		  "00000000000000000000000000000001" when a = "00000" else
		  "00000000000000000000000000000010" when a = "00001" else
		  "00000000000000000000000000000100" when a = "00010" else
		  "00000000000000000000000000001000" when a = "00011" else
		  "00000000000000000000000000010000" when a = "00100" else
		  "00000000000000000000000000100000" when a = "00101" else
		  "00000000000000000000000001000000" when a = "00110" else
		  "00000000000000000000000010000000" when a = "00111" else
		  "00000000000000000000000100000000" when a = "01000" else
		  "00000000000000000000001000000000" when a = "01001" else
		  "00000000000000000000010000000000" when a = "01010" else
		  "00000000000000000000100000000000" when a = "01011" else
		  "00000000000000000001000000000000" when a = "01100" else
		  "00000000000000000010000000000000" when a = "01101" else
		  "00000000000000000100000000000000" when a = "01110" else
		  "00000000000000001000000000000000" when a = "01111" else
		  "00000000000000010000000000000000" when a = "10000" else
		  "00000000000000100000000000000000" when a = "10001" else
		  "00000000000001000000000000000000" when a = "10010" else
		  "00000000000010000000000000000000" when a = "10011" else
		  "00000000000100000000000000000000" when a = "10100" else
		  "00000000001000000000000000000000" when a = "10101" else
		  "00000000010000000000000000000000" when a = "10110" else
		  "00000000100000000000000000000000" when a = "10111" else
		  "00000001000000000000000000000000" when a = "11000" else
		  "00000010000000000000000000000000" when a = "11001" else
		  "00000100000000000000000000000000" when a = "11010" else
		  "00001000000000000000000000000000" when a = "11011" else
		  "00010000000000000000000000000000" when a = "11100" else
		  "00100000000000000000000000000000" when a = "11101" else
		  "01000000000000000000000000000000" when a = "11110" else
		  "10000000000000000000000000000000" when a = "11111" else
		  (OTHERS => 'Z');
					  
end Behavioral;