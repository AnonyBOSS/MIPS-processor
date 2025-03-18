
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Pack.ALL;


entity controllerComp is
port(
		op, funct: in STD_LOGIC_VECTOR(5 downto 0);
		zero: in STD_LOGIC;
		memtoreg, memwrite: out STD_LOGIC;
		pcsrc, alusrc: out STD_LOGIC;
		regdst, regwrite: out STD_LOGIC;
		jump: out STD_LOGIC;
		alucontrol: out STD_LOGIC_VECTOR(3 downto 0));
end controllerComp;

architecture Behavioral of controllerComp is
signal branch: STD_LOGIC;
signal aluop: STD_LOGIC_VECTOR(1 downto 0);
begin
control1: maindec port map(op,regdst,jump,branch, memtoreg,aluop,memwrite,alusrc,regwrite);
alucontrol1: aludec port map(funct,aluop,alucontrol);
pcsrc<=branch and zero;
end Behavioral;