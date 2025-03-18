----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Pack.ALL; 



entity Mips is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
			  instr, readdata : in STD_LOGIC_VECTOR(31 downto 0);
			  pc, aluout, data2 : out STD_LOGIC_VECTOR(31 downto 0);
			  memwrite: OUT STD_LOGIC);
end Mips;

architecture Behavioral of Mips is
signal zero, memtoreg, jumpsrc, pcsrc,alusrc,regwrite, regdst: STD_LOGIC;
signal aluControl : STD_LOGIC_Vector(3 downto 0);
begin

control : controllerComp port map(instr(31 downto 26), instr(5 downto 0), zero, memtoreg, 
										memwrite, pcsrc, alusrc, regdst, regwrite, jumpsrc, aluControl);
dpath : datapath port map(clk, rst, readdata, instr, memtoreg, jumpsrc, pcsrc, alusrc, 
									regwrite, regdst, aluControl, zero, pc, aluout, data2);

end Behavioral;