----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:23:49 09/17/2016 
-- Design Name: 
-- Module Name:    GeradorTempos - Behavioral 
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

entity GeradorTempos is
    Port ( clk : in  STD_LOGIC;
           goto_t0 : in  STD_LOGIC;
           tempos : out  STD_LOGIC_VECTOR (7 downto 0));
end GeradorTempos;

architecture Behavioral of GeradorTempos is
	
	signal signalJK1, signalJK2, signalJK3 : STD_LOGIC;
	signal firstAnd, firstOr, secondAnd, thirdAnd, secondOr : STD_LOGIC;
	signal counterCode : STD_LOGIC_VECTOR(2 downto 0);
	
begin

	JK1: entity work.FlipFlopJK port map(clk, not goto_t0, '1', signalJK1);
	firstAnd <= signalJK1 and (not goto_t0);
	firstOr <= (signalJK1 or goto_t0);
	
	JK2: entity work.FlipFlopJK port map(clk, firstAnd, firstOr, signalJK2);
	secondAnd <= signalJK2 and firstAnd;
	thirdAnd <= signalJK1 and signalJK2;
	secondOr <= thirdAnd or goto_t0;
	
	JK3: entity work.FlipFlopJK port map(clk, secondAnd, secondOr, signalJK3); 
	counterCode <= signalJK3&signalJK2&signalJK1;
	
	DECODER: entity work.Decoder3 port map(counterCode, tempos);

end Behavioral;

