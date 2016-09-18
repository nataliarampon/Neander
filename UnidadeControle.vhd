----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:52:16 09/18/2016 
-- Design Name: 
-- Module Name:    UnidadeControle - Behavioral 
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

entity UnidadeControle is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Decoder : in  STD_LOGIC_VECTOR (15 downto 0);
           Temp : in  STD_LOGIC_VECTOR (7 downto 0);
           cargaAC : out  STD_LOGIC;
           selULA : out  STD_LOGIC_VECTOR(2 downto 0);
           cargaNZ : out  STD_LOGIC;
           cargaRI : out  STD_LOGIC;
           cargaPC : out  STD_LOGIC;
           incPC : out  STD_LOGIC;
           sel : out  STD_LOGIC;
           cargaREM : out  STD_LOGIC;
           RD: out  STD_LOGIC;
           WRT : out  STD_LOGIC;
			  goto : out STD_LOGIC;
			  halt : out STD_LOGIC;
           cargaRDM : out  STD_LOGIC);
end UnidadeControle;

architecture Behavioral of UnidadeControle is

type T_STATE is (s0,s1,s2,s3,s4,s5,s6,s7);
signal state, next_state: T_STATE;

begin
	process(rst, clk)
		begin
			if(rst = '1') then
				state <= s0;
			elsif(rising_edge(clk)) then
				state <= next_state;
			end if;
	end process;
	
	process(temp, state)	
		begin
			case state is
				when s0 => if (temp = "00000001") then next_state <= s1; end if;
				when s1 => if (temp = "00000010") then next_state <= s2; end if;
				when s2 => if (temp = "00000100") then next_state <= s3; end if;
				when s3 => if (temp = "00001000") then next_state <= s4; end if;
				when s4 => if (temp = "00010000") then next_state <= s5; end if;
				when s5 => if (temp = "00100000") then next_state <= s6; end if;
				when s6 => if (temp = "01000000") then next_state <= s7; end if;
				when s7 => if (temp = "10000000") then next_state <= s0; end if;
			end case;
	end process;
	
	process(state, decoder)
		begin
			case state is
				when s0 => 
					sel <= '0';
					cargaREM <= '1';
				when s1 => 
					RD <= '1';
					incPC <= '1';
				when s2 =>
					cargaRI <= '1';
				when s3 => case decoder is
								 when "0000000000000001" =>
									goto <= '1';
								 when "0000000000000010" =>
									sel <= '0';
									cargaREM <= '1';
								 when "0000000000000100" =>
									sel <= '0';
									cargaREM <= '1';
								 when "0000000000001000" =>
									sel <= '0';
									cargaREM <= '1';
								 when "0000000000010000" =>
									sel <= '0';
									cargaREM <= '1';
								 when "0000000000100000" =>
									sel <= '0';
									cargaREM <= '1';
								 when "0000000001000000" =>
									selULA <= "011";
									cargaAC <= '1';
									cargaNZ <= '1';
									goto <= '1';
								 when "0000000010000000" =>
									sel <= '0';
									cargaREM <= '0';
								 when "0000000100000000" =>
									sel <= '0';
									cargaREM <= '1';
								 when "0000001000000000" =>
									incPC <= '1';
									goto <= '1';
								 when "0000010000000000" =>
									sel <= '0';
									cargaREM <= '1';
								 when "0000100000000000" =>
									incPC <= '1';
									goto <= '1';
								 when "0001000000000000" =>
									halt <= '1';								 
								 when others =>
							  end case;
				when s4 => case decoder is
								 when "0000000000000010" =>
									RD <= '1';
									incPC <= '1';
								 when "0000000000000100" =>
									RD <= '1';
									incPC <= '1';
								 when "0000000000001000" =>
									RD <= '1';
									incPC <= '1';
								 when "0000000000010000" =>
									RD <= '1';
									incPC <= '1';
								 when "0000000000100000" =>
									RD <= '1';
									incPC <= '1';
								 when "0000000010000000" =>
									RD <= '1';
								 when "0000000100000000" =>
									RD <= '1';
								 when "0000010000000000" =>
									RD <= '1';
								 when others =>
							  end case;
				when s5 => case decoder is
								 when "0000000000000010" =>
									sel <= '1';
									cargaREM <= '1';
								 when "0000000000000100" =>
									sel <= '1';
									cargaREM <= '1';
								 when "0000000000001000" =>
									sel <= '1';
									cargaREM <= '1';
								 when "0000000000010000" =>
									sel <= '1';
									cargaREM <= '1';
								 when "0000000000100000" =>
									sel <= '1';
									cargaREM <= '1';
								 when "0000000010000000" =>
									cargaPC <= '1';
									goto <= '1';
								 when "0000000100000000" =>
									cargaPC <= '1';
									goto <= '1';
								 when "0000010000000000" =>
									cargaPC <= '1';
									goto <= '1';
								 when others =>
							  end case;
				when s6 => case decoder is
								 when "0000000000000010" =>
									cargaRDM <= '1';
								 when "0000000000000100" =>
									RD <= '1';
								 when "0000000000001000" =>
									RD <= '1';
								 when "0000000000010000" =>
									RD <= '1';
								 when "0000000000100000" =>
									RD <= '1';
								 when others =>
							  end case;
				when s7 => case decoder is
								 when "0000000000000010" =>
									WRT <= '1';
									goto <= '1';
								 when "0000000000000100" =>
									selULA <= "100";
									cargaAC <= '1';
									cargaNZ <= '1';
									goto <= '1';
								 when "0000000000001000" =>
									selULA <= "000";
									cargaAC <= '1';
									cargaNZ <= '1';
									goto <= '1';
								 when "0000000000010000" =>
									selULA <= "010";
									cargaAC <= '1';
									cargaNZ <= '1';
									goto <= '1';
								 when "0000000000100000" =>
									selULA <= "001";
									cargaAC <= '1';
									cargaNZ <= '1';
									goto <= '1';
								 when others =>
							  end case;
			end case;
	end process;

end Behavioral;

