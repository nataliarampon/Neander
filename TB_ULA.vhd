--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:57:33 09/24/2016
-- Design Name:   
-- Module Name:   C:/Users/natal/Documents/GitHub/Neander/TB_ULA.vhd
-- Project Name:  Neander
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ULA
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_UNSIGNED.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_ULA IS
END TB_ULA;
 
ARCHITECTURE behavior OF TB_ULA IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ULA
    PORT(
         sel : IN  std_logic_vector(2 downto 0);
         X : IN  std_logic_vector(7 downto 0);
         Y : IN  std_logic_vector(7 downto 0);
         S : OUT  std_logic_vector(7 downto 0);
         NZ : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sel : std_logic_vector(2 downto 0) := (others => '0');
   signal X : std_logic_vector(7 downto 0) := (others => '0');
   signal Y : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(7 downto 0);
   signal NZ : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ULA PORT MAP (
          sel => sel,
          X => X,
          Y => Y,
          S => S,
          NZ => NZ
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		X <= "00000000";
		Y <= "00000000";
		sel <= "000";

		for i in 0 to 6 loop
			for i in 0 to 3 loop
				for i in 0 to 2 loop
					wait for 20 ns;
					report "Valores : X = "&integer'image(conv_integer(X))&" Y = "&integer'image(conv_integer(Y));
					report "sel: : "&integer'image(conv_integer(sel))&" Resultado obtido: "&integer'image(conv_integer(S));
					report "NZ: : "&integer'image(conv_integer(NZ));
				Y <= Y+1;
				end loop;
			X <= X+1;
			end loop;
		sel <= sel + 1;
		end loop;
		
		wait for 20 ns;
		X <= "10000000";
		Y <= "00000001";
		sel <= "000";
		
      wait;
   end process;

END;
