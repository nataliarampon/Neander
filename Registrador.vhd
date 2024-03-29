----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:55:13 09/13/2016 
-- Design Name: 
-- Module Name:    Registrador - Behavioral 
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

entity Registrador is
    Port ( clk : in STD_LOGIC;
			  reset : in STD_LOGIC;
			  Carga : in  STD_LOGIC;
			  E : in  STD_LOGIC_VECTOR (7 downto 0);
           S : out  STD_LOGIC_VECTOR (7 downto 0));
end Registrador;

architecture Behavioral of Registrador is
	signal Entrada: std_logic_vector(7 downto 0);
	signal cargaAnt: std_logic;
begin
	
	process(clk, reset)
	begin
		if(reset = '1') then
			Entrada <= "00000000";
		elsif(clk'event and clk='1') then
			if(Carga = '1') then
				if(cargaAnt = '0') then
					Entrada <= E;
					cargaAnt <= '1';
				else
					cargaAnt <= '0';
				end if;
			end if;
		end if;
	end process;
	
	S <= Entrada;

end Behavioral;

