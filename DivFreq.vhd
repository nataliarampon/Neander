----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:39:37 09/26/2016 
-- Design Name: 
-- Module Name:    DivFreq - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DivFreq is
    Port ( clk : in  STD_LOGIC;
           clk_out : out  STD_LOGIC);
end DivFreq;

architecture Behavioral of DivFreq is

	signal cont : integer := 0;
	signal clock : std_logic := '0';

begin

	process(clk)
	begin
		if(clk'event and clk='1') then
			cont <= cont + 1;
			if (cont = 10) then
				clock <= not clock;
				cont <= 0;
			end if;
		end if;

	end process;

	clk_out <= clock;
end Behavioral;

