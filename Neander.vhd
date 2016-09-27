----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:35:42 09/26/2016 
-- Design Name: 
-- Module Name:    Neander - Behavioral 
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

entity Neander is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           button_mem_inc : in  STD_LOGIC;
           button_mem_dec : in  STD_LOGIC;
           button_data_inc : in  STD_LOGIC;
           button_data_dec : in  STD_LOGIC;
           show_mem : in  STD_LOGIC;
           start_but : in  STD_LOGIC;
           display : out  STD_LOGIC_VECTOR (6 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
           power_on_LED : out  STD_LOGIC);
end Neander;

architecture Behavioral of Neander is
		
	COMPONENT Memoria
		  PORT (
			 clka : IN STD_LOGIC;
			 wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
			 addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			 dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			 douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			 clkb : IN STD_LOGIC;
			 web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
			 addrb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			 dinb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			 doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		  );
	END COMPONENT;
		
		signal clkKHz : std_logic;

begin

	-------------------------------------------------------------------
	-- This is the first "layer" of implementation:
	-- The FPGA board clock in 50 MHz is divided into a KHZ counterpart
	-- to be used in the 7-segment display and in the Neander processor
	--------------------------------------------------------------------

	DIV_FREQ: entity work.DivFreq port map(
		clk  => clk,
      clk_out => clkKHz
	);
	
	----------------------------------------------------------------------
	-- This is the second "layer" of implementation:
	-- The actual Neander processor as displayed in the report's schematic
	----------------------------------------------------------------------
	
	PC: entity work.Cont8 port map(
		clk => clkKHz,
		reset => reset,
		carga => cargaPC,
      incrementa => incPC,
      entrada => RDMout,
      cont => PCout
	);
	
	MUX3: entity work.Mux3 port map(
		sel => selMUX3,
      A => PCout,
      B => RDMout,
      C => mult,
      S => MUX3out
	);
	
	REMem: entity work.Registrador port map(
		clk => clkKHz,
		reset => reset,
	   Carga => cargaREM,
		E => MUX3out,
      S => REMout
	); 
	
   BRAM : Memoria port map( --- MEMORIA NAO FIZ N SEI FAZER ---
    clka => clkKHz,
    wea => write_read,
    addra => REMout,
    dina => RDMout,
    douta => RAMout,
    clkb => clkKHz,
    web => '0',
    addrb => REMout,
    dinb => "00000000",
    doutb => displayMem
   );
  
	Mux2: entity work.Mux port map(
		sel => selRDM,
		A => ACout,
      B => mult,
      S => MUX2out
	);
	
	RDM: entity work.RegistradorRDM port map(
		clk => clkKHz,
		reset => reset,
	   Carga => cargaRDM,
		RD => RD, --read
		A => MUX2out,
		B => RAMout,
      S => RDMout
	);
	
	RI: entity work.Registrador port map(
		clk => clkKHz,
		reset => reset,
	   Carga => cargaRI,
		E => RDMout,
      S => opcode
	);
	
	DECODER: entity work.Decoder port map(
		opcode => opcode(7 downto 4),
      inst => inst
	);
	
	AC: entity work.Registrador port map(
		clk => clkKHz,
		reset => reset,
	   Carga => cargaAC,
		E => ULAout,
      S => ACout
	);
	
	ULA: entity work.ULA port map(
		sel => selULA,
		X => ACout,
      Y => RDMout,
      S => ULAout,
		M => mult,
      NZ => NZin
	);
	
	NZ: entity work.Reg2 port map(
		clk => clkKHz,
      reset => reset,
      NZ => NZin,
		carga => cargaNZ,
      saida => NZout
	);
	
	TIMER: entity work.GeradorTempos port map(
		clk => clkKHz,
      goto_t0 => goto,
      tempos => tempos
	);
	
	UC: entity work.UnidadeControle port map(
		rst => reset,
		clk => clkKHz,
		N => NZout(1),
		Z => NZout(0),
		Decoder => inst,
		Temp => tempos,
		cargaAC => cargaAC,
		selULA => selULA,
		cargaNZ => cargaNZ,
		cargaRI => cargaRI,
		cargaPC => cargaPC,
		incPC => incPC,
		sel => selMUX3,
		cargaREM => cargaREM,
		RD => RD,
		WRT => WRT,
		goto => goto,
		halt => halt,
		selRDM => selRDM,
		cargaRDM => cargaRDM
	);
	
	----------------------------------------------------------------------
	-- This is the third "layer" of implementation:
	-- The conversors and multiplexer to display the memory location, data
	-- or the acumulator
	----------------------------------------------------------------------
	
	
	
	

end Behavioral;

