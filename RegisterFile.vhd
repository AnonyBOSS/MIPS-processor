----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:15:34 04/19/2024 
-- Design Name: 
-- Module Name:    RegisterFileComp - Behavioral 
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
use work.Pack.ALL; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is

	signal L : std_logic_vector(31 downto 0) ; 

	signal r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32: std_logic_vector(31 downto 0) ; 


begin

	dec : decoder5to32 PORT MAP (write_sel ,L,write_ena) ; 
	--reg1: floprComp PORT MAP  (write_data,L(0),clk,'0',r1) ; 
	r1 <=( others=>'0');
	reg2: flopr PORT MAP  (write_data,L(1),clk,'0',r2) ; 
	reg3: flopr PORT MAP  (write_data,L(2),clk,'0',r3) ; 
	reg4: flopr PORT MAP  (write_data,L(3),clk,'0',r4) ; 
	reg5: flopr PORT MAP  (write_data,L(4),clk,'0',r5) ; 
	reg6: flopr PORT MAP  (write_data,L(5),clk,'0',r6) ; 
	reg7: flopr PORT MAP  (write_data,L(6),clk,'0',r7) ; 
	reg8: flopr PORT MAP  (write_data,L(7),clk,'0',r8) ; 
	reg9: flopr PORT MAP  (write_data,L(8),clk,'0',r9) ; 
	reg10: flopr PORT MAP  (write_data,L(9),clk,'0',r10) ; 
	reg11: flopr PORT MAP  (write_data,L(10),clk,'0',r11) ; 
	reg12: flopr PORT MAP  (write_data,L(11),clk,'0',r12) ; 
	reg13: flopr PORT MAP  (write_data,L(12),clk,'0',r13) ; 
	reg14: flopr PORT MAP  (write_data,L(13),clk,'0',r14) ; 
	reg15: flopr PORT MAP  (write_data,L(14),clk,'0',r15) ; 
	reg16: flopr PORT MAP  (write_data,L(15),clk,'0',r16) ; 
	reg17: flopr PORT MAP  (write_data,L(16),clk,'0',r17) ; 
	reg18: flopr PORT MAP  (write_data,L(17),clk,'0',r18) ; 
	reg19: flopr PORT MAP  (write_data,L(18),clk,'0',r19) ; 
	reg20: flopr PORT MAP  (write_data,L(19),clk,'0',r20) ; 
	reg21: flopr PORT MAP  (write_data,L(20),clk,'0',r21) ; 
	reg22: flopr PORT MAP  (write_data,L(21),clk,'0',r22) ; 
	reg23: flopr PORT MAP  (write_data,L(22),clk,'0',r23) ; 
	reg24: flopr PORT MAP  (write_data,L(23),clk,'0',r24) ; 
	reg25: flopr PORT MAP  (write_data,L(24),clk,'0',r25) ; 
	reg26: flopr PORT MAP  (write_data,L(25),clk,'0',r26) ; 
	reg27: flopr PORT MAP  (write_data,L(26),clk,'0',r27) ; 
	reg28: flopr PORT MAP  (write_data,L(27),clk,'0',r28) ; 
	reg29: flopr PORT MAP  (write_data,L(28),clk,'0',r29) ; 
	reg30: flopr PORT MAP  (write_data,L(29),clk,'0',r30) ; 
	reg31: flopr PORT MAP  (write_data,L(30),clk,'0',r31) ; 
	reg32: flopr PORT MAP  (write_data,L(31),clk,'0',r32) ; 
	mux1: mux2 PORT MAP    (r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,read_sel1,data1) ;
	mux22: mux2 PORT MAP    (r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,read_sel2,data2) ; 


end Behavioral;