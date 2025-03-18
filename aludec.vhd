
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity aludec is
port (
	Funct:IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	ALUop : IN STD_LOGIC_Vector(1 downto 0);
	Operation: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
end aludec;

architecture Behavioral of aludec is
begin
process(ALUop,Funct)
begin
	case aluop is
	when "00" => Operation <= "0010";
	when "01" => Operation <= "0110"; 
	when others =>
		case Funct is 
		when "100000" => Operation  <= "0010"; --add
		when "100010" =>  Operation <= "0110"; --sub
		when "100100" =>  Operation <= "0000"; 
		when "100101" =>  Operation <= "0001"; 
		when "101010" => Operation  <= "0111";
		when "100111" => Operation  <= "1100";
		when others => Operation <= "----";
		end case;
	end case;
end process;
end Behavioral;