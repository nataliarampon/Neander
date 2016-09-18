----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:40:37 09/18/2016 
-- Design Name: 
-- Module Name:    Decoder3 - Behavioral 
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

entity Decoder3 is
    Port ( entrada : in  STD_LOGIC_VECTOR (2 downto 0);
           saida : out  STD_LOGIC_VECTOR (7 downto 0));
end Decoder3;

architecture Behavioral of Decoder3 is

begin

	saida <= "00000001" when entrada = "000" else
				"00000010" when entrada = "001" else
				"00000100" when entrada = "010" else
				"00001000" when entrada = "011" else
				"00010000" when entrada = "100" else
				"00100000" when entrada = "101" else
				"01000000" when entrada = "110" else
				"10000000";
				


end Behavioral;

