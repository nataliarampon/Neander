----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:33:24 09/14/2016 
-- Design Name: 
-- Module Name:    Reg2 - Behavioral 
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

entity Reg2 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           NZ : in  STD_LOGIC_VECTOR (1 downto 0);
			  carga : in STD_LOGIC;
           saida : out  STD_LOGIC_VECTOR (1 downto 0));
end Reg2;

architecture Behavioral of Reg2 is

	signal dado : std_logic_vector(1 downto 0);
	signal cargaAnt : std_logic;

begin
	process(clk, reset)
	begin
		if(reset = '1') then
			dado <= "00";
		elsif(clk'event and clk='1') then
			if(carga = '1') then
				if(cargaAnt = '0') then
					dado <= NZ;
					cargaAnt <= '1';
				else
					cargaAnt <= '0';
				end if;
			end if;
		end if;
	end process;
	saida <= dado;

end Behavioral;

