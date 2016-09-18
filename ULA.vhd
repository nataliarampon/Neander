----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:47:40 09/11/2016 
-- Design Name: 
-- Module Name:    ULA - Behavioral 
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

entity ULA is
    Port ( sel : in  STD_LOGIC_VECTOR (2 downto 0);
			  X : in  STD_LOGIC_VECTOR (7 downto 0);
           Y : in  STD_LOGIC_VECTOR (7 downto 0);
           S : out  STD_LOGIC_VECTOR (7 downto 0);
           NZ : out  STD_LOGIC_VECTOR (1 downto 0));
end ULA;

architecture Behavioral of ULA is

	signal soma : STD_LOGIC_VECTOR(7 downto 0);

begin

	soma <=  X+Y when sel="000" else
			X and Y when sel="001" else
			X or Y when sel="010" else
			not X when sel = "011" else
			Y when sel = "100" else
			Y;
	
	NZ(0) <= '1' when soma = "00000000" else
				'0';
	NZ(1) <= '1' when soma(7) = '1' else
				'0';

	S <= soma;

end Behavioral;

