--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:44:29 09/24/2016
-- Design Name:   
-- Module Name:   C:/Users/natal/Documents/GitHub/Neander/TB_GeradorTempos.vhd
-- Project Name:  Neander
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: GeradorTempos
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_GeradorTempos IS
END TB_GeradorTempos;
 
ARCHITECTURE behavior OF TB_GeradorTempos IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT GeradorTempos
    PORT(
         clk : IN  std_logic;
         goto_t0 : IN  std_logic;
         tempos : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal goto_t0 : std_logic := '0';

 	--Outputs
   signal tempos : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: GeradorTempos PORT MAP (
          clk => clk,
          goto_t0 => goto_t0,
          tempos => tempos
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		goto_t0 <= '1';
		wait for clk_period;
		goto_t0 <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
