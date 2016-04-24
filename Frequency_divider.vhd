library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity Frequency_divider is
	port (
		CLK			: in std_logic;
		Enable		: in std_logic;
		Counts		: in std_logic_vector(17 downto 0);
		Output		: out std_logic
	);
end Frequency_divider;

architecture rtl of Frequency_divider is
	
	type state_type is (enable_count, disable_count);
	
   constant Counter_bits 	: natural := 18;	
	signal clk_t 				: std_logic;
	signal Fall 				: std_logic	:= '0';
	signal Rise 				: std_logic	:= '0';
   signal Counter 			: unsigned((Counter_bits - 1) downto 0) := (others => '0');
	signal Counts_t			: unsigned((Counter_bits - 1) downto 0) := (others => '0');
	signal Out_t				: std_logic := '0';
	signal state 				: state_type := enable_count;
	
	
	COMPONENT Edge_selector  
		PORT ( 
			Input  			: in STD_LOGIC ; 
			CLK_200MHz  	: in STD_LOGIC ; 
			Fall  			: out STD_LOGIC ; 
			Rise  			: out STD_LOGIC ); 
	END COMPONENT ; 
begin
	 Edge_selector_module  : Edge_selector  
    PORT MAP ( 
      Input   => Enable  ,
      CLK_200MHz   => clk_t  ,
      Fall   => Fall  ,
      Rise   => Rise   
		);
	
	clk_t <= CLK;
	Output <= Out_t;
	Counts_t <= unsigned(Counts);
	
	--Main process with counter
	Count_proc : process (clk_t)
	begin
		if rising_edge(clk_t) then
		
		case state is
			when enable_count =>
				if Counter = 0 then
					Out_t <= '1';
					Counter <= Counts_t;	
				else
					Out_t <= '0';
					Counter <= Counter - 1;
				end if;
				
				if Fall = '1' then
					Out_t <= '0';
					state <= disable_count;
				end if;
				
			when disable_count =>
				Counter <= (others => '0');			
				if Rise = '1' then
					Out_t <= '1';					
					Counter <= Counts_t;	
					state <= enable_count;
				end if;
				
			end case;
		end if;
	end process;
	
	
end rtl;