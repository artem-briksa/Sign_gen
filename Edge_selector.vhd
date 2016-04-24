library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity Edge_selector is
	port (		
        CLK_200MHz 	: in std_logic;
		  Input			: in std_logic;
		  Rise			: out std_logic;
		  Fall			: out std_logic
	);
end Edge_selector;

architecture rtl of Edge_selector is
	signal RiseSelector 		: std_logic;
	signal RiseOut				: std_logic;
	signal FallSelector		: std_logic;
	signal FallOut				: std_logic;	

begin
	--Rise_edge
	Rise_edge : process (CLK_200MHz)
	begin
		if rising_edge(CLK_200MHz) then
			RiseSelector <=  Input;
			Rise <= (not RiseSelector) and Input;
		end if;
	end process Rise_edge;
	
	--Fall_edge
	Fall_edge : process (CLK_200MHz)
	begin		
		if rising_edge(CLK_200MHz) then
			FallSelector <= Input;
			Fall <= FallSelector and (not Input);
		end if;
		
	end process Fall_edge;
	

end rtl;
