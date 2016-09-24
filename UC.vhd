--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:25:21 09/24/2016
-- Design Name:   
-- Module Name:   C:/Users/leodo/Documents/GitHub/Neander/UC.vhd
-- Project Name:  Neander
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UnidadeControle
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
 
ENTITY UC IS
END UC;
 
ARCHITECTURE behavior OF UC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UnidadeControle
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
         Decoder : IN  std_logic_vector(15 downto 0);
         Temp : IN  std_logic_vector(7 downto 0);
         cargaAC : OUT  std_logic;
         selULA : OUT  std_logic_vector(2 downto 0);
         cargaNZ : OUT  std_logic;
         cargaRI : OUT  std_logic;
         cargaPC : OUT  std_logic;
         incPC : OUT  std_logic;
         sel : OUT  std_logic;
         cargaREM : OUT  std_logic;
         RD : OUT  std_logic;
         WRT : OUT  std_logic;
         goto : OUT  std_logic;
         halt : OUT  std_logic;
         cargaRDM : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';
   signal Decoder : std_logic_vector(15 downto 0) := (others => '0');
   signal Temp : std_logic_vector(7 downto 0) := (others => '0') ;

 	--Outputs
   signal cargaAC : std_logic;
   signal selULA : std_logic_vector(2 downto 0);
   signal cargaNZ : std_logic;
   signal cargaRI : std_logic;
   signal cargaPC : std_logic;
   signal incPC : std_logic;
   signal sel : std_logic;
   signal cargaREM : std_logic;
   signal RD : std_logic;
   signal WRT : std_logic;
   signal goto : std_logic;
   signal halt : std_logic;
   signal cargaRDM : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UnidadeControle PORT MAP (
          rst => rst,
          clk => clk,
          Decoder => Decoder,
          Temp => Temp,
          cargaAC => cargaAC,
          selULA => selULA,
          cargaNZ => cargaNZ,
          cargaRI => cargaRI,
          cargaPC => cargaPC,
          incPC => incPC,
          sel => sel,
          cargaREM => cargaREM,
          RD => RD,
          WRT => WRT,
          goto => goto,
          halt => halt,
          cargaRDM => cargaRDM
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
		rst <= '1';
      wait for 100 ns;	
		rst <= '0';
		
      wait for clk_period*10;
		
      -- insert stimulus here
		Decoder <= "0000000000000010";
		temp <= "00000001";
	   wait for clk_period;
		temp <= "00000010";		
      wait for clk_period;
		temp <= "00000100";
      wait for clk_period;
		temp <= "00001000";
      wait for clk_period;
		temp <= "00010000";
      wait for clk_period;
		temp <= "00100000";
      wait for clk_period;
		temp <= "01000000";
      wait for clk_period;
		temp <= "10000000";

		
		

      wait;
   end process;

END;
