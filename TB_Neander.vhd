--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:58:33 09/27/2016
-- Design Name:   
-- Module Name:   C:/Users/natal/Documents/GitHub/Neander/TB_Neander.vhd
-- Project Name:  Neander
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Neander
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
 
ENTITY TB_Neander IS
END TB_Neander;
 
ARCHITECTURE behavior OF TB_Neander IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Neander
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         button_mem_inc : IN  std_logic;
         button_mem_dec : IN  std_logic;
         button_data_inc : IN  std_logic;
         button_data_dec : IN  std_logic;
         mem : OUT  std_logic_vector(7 downto 0);
         acumulador : OUT  std_logic_vector(7 downto 0);
         halt : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal button_mem_inc : std_logic := '0';
   signal button_mem_dec : std_logic := '0';
   signal button_data_inc : std_logic := '0';
   signal button_data_dec : std_logic := '0';

 	--Outputs
   signal mem : std_logic_vector(7 downto 0);
   signal acumulador : std_logic_vector(7 downto 0);
   signal halt : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Neander PORT MAP (
          clk => clk,
          reset => reset,
          button_mem_inc => button_mem_inc,
          button_mem_dec => button_mem_dec,
          button_data_inc => button_data_inc,
          button_data_dec => button_data_dec,
          mem => mem,
          acumulador => acumulador,
          halt => halt
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

		reset <= '1';
		
		wait for clk_period;
		reset <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
