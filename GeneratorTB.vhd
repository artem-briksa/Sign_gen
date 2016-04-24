LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY GeneratorTB IS
END GeneratorTB;
 
ARCHITECTURE behavior OF GeneratorTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Generator
    PORT(
			CLK_100MHz 			: in std_logic;
			CLK_200MHz_out		: out std_logic;
			CLK_offset_1		: out std_logic;
			CLK_offset_2		: out std_logic;
			Dout					: out std_logic_vector(13 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_100MHz : std_logic := '0';

 	--Outputs
	signal CLK_200MHz_out		: std_logic;
	signal CLK_offset_1			: std_logic;
	signal CLK_offset_2			: std_logic;
   signal dout 					: std_logic_vector(13 downto 0);

   -- Clock period definitions
   constant CLK_100MHz_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Generator PORT MAP (
          CLK_100MHz => CLK_100MHz,
          CLK_200MHz_out => CLK_200MHz_out,
          CLK_offset_1 => CLK_offset_1,
          CLK_offset_2 => CLK_offset_2,
          dout => dout
        );

   -- Clock process definitions
   CLK_100MHzP_process :process
   begin
		CLK_100MHz <= '0';
		wait for CLK_100MHz_period/2;
		CLK_100MHz <= '1';
		wait for CLK_100MHz_period/2;
   end process; 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      --wait for 100 ns;	

      --wait for CLK_100MHzP_period*10;

      -- insert stimulus here 

      wait for 20 us;
   end process;

END;
