----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:42:25 09/26/2016 
-- Design Name: 
-- Module Name:    RegistradorRDM - Behavioral 
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

entity RegistradorRDM is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Carga : in  STD_LOGIC;
           RD : in  STD_LOGIC_vector(0 downto 0);
           A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           S : out  STD_LOGIC_VECTOR (7 downto 0));
end RegistradorRDM;

architecture Behavioral of RegistradorRDM is
	signal Entrada: std_logic_vector(7 downto 0);
	signal cargaAnt, RDant : std_logic;
begin
	process(clk, reset)
	begin
		if(reset = '1') then
			Entrada <= "00000000";
		elsif(clk'event and clk='1') then
			if(Carga = '1') then
				if(cargaAnt = '0') then
					Entrada <= A;
					cargaAnt <= '1';
				else
					cargaAnt <= '0';
				end if;
			elsif(RD = "0") then
				if(RDant = '0') then
					Entrada <= B;
					RDant <= '1';
				else
					RDant <= '0';
				end if;
			end if;
		end if;
	end process;
	
	
	S <= Entrada;


end Behavioral;

