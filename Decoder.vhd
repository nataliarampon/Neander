----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:13:49 09/14/2016 
-- Design Name: 
-- Module Name:    Decoder - Behavioral 
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

entity Decoder is
    Port ( opcode : in  STD_LOGIC_VECTOR (3 downto 0);
           inst : out  STD_LOGIC_VECTOR (15 downto 0));
end Decoder;

architecture Behavioral of Decoder is

begin

	inst <= "0000000000000001" when opcode = "0000" else
			  "0000000000000010" when opcode = "0001" else
			  "0000000000000100" when opcode = "0010" else
			  "0000000000001000" when opcode = "0011" else
			  "0000000000010000" when opcode = "0100" else
			  "0000000000100000" when opcode = "0101" else
			  "0000000001000000" when opcode = "0110" else
			  "0000000010000000" when opcode = "0111" else
			  "0000000100000000" when opcode = "1000" else
			  "0000001000000000" when opcode = "1001" else
			  "0000010000000000" when opcode = "1010" else
			  "0000100000000000" when opcode = "1011" else
			  "0001000000000000" when opcode = "1100" else
			  "0010000000000000" when opcode = "1101" else
			  "0100000000000000" when opcode = "1110" else
			  "1000000000000000";
			  
end Behavioral;

