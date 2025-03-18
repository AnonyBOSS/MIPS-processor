
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Pack.ALL;



entity Main_module is
Port ( clk : in  STD_LOGIC;
		  reset : in  STD_LOGIC;
		  writedata, dataadr : out STD_LOGIC_VECTOR(31 downto 0);
		  memwrite: OUT STD_LOGIC);
end Main_module;

architecture Behavioral of Main_module is
Signal memwrite1 : STD_LOGIC;
Signal pc , instruction , readdata, dataadr1, writedata1 : STD_LOGIC_VECTOR(31 downto 0);
begin
	memwrite <= memwrite1;
	dataadr <= dataadr1;
	writedata <= writedata1;
	instm : imem port map (pc(7 downto 2), instruction);
	datam : dmem port map (clk, memwrite1, dataadr1, writedata1, readdata);
	mip: Mips port map(clk, reset, instruction, readdata, pc ,dataadr1, writedata1, memwrite1);
end Behavioral;
