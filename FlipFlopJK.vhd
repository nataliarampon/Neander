----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:32:21 09/18/2016 
-- Design Name: 
-- Module Name:    FlipFlopJK - Behavioral 
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

entity FlipFlopJK is
    Port ( clk : in  STD_LOGIC;
           J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           saida : out  STD_LOGIC);
end FlipFlopJK;

architecture Behavioral of FlipFlopJK is

	signal dado : std_logic;

begin

	process(clk)
	begin
		if(clk'event and clk='1') then
			if(J = '0' and  K = '0') then
				dado <= dado;
			elsif(J = '0' and K ='1') then
				dado <= '0';
			elsif(J = '1' and K ='0') then
				dado <= '1';
			else
				dado <= not dado;
			end if;
		end if;
	end process;
	
	saida <= dado;

end Behavioral;

