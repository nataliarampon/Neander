----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:24:58 09/14/2016 
-- Design Name: 
-- Module Name:    Cont8 - Behavioral 
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

entity Cont8 is
    Port ( clk : in STD_LOGIC;
			  reset : in STD_LOGIC;
			  carga : in  STD_LOGIC;
           incrementa : in  STD_LOGIC;
           entrada : in  STD_LOGIC_VECTOR (7 downto 0);
           cont : out  STD_LOGIC_VECTOR (7 downto 0));
end Cont8;

architecture Behavioral of Cont8 is

	signal dado : std_logic_vector (7 downto 0);

begin

	process(clk, reset)
	begin
		if(reset = '1') then
			dado <= "00000000";
		elsif(clk'event and clk='1') then
			if(carga = '1') then
				dado <= entrada;
			elsif(incrementa = '1') then
				dado <= dado + 1;
			end if;
		end if;
	end process;
	cont <= dado;

end Behavioral;

