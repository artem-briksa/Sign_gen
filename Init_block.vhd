--created 27.04.2016
--Bryksa Artsiom
--Initialization block for Generator_v_0_1.vhd

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Init_block is
	generic (
		ADDR_WIDTH  	: NATURAL   := 8 ;
		DATA_WIDTH  	: NATURAL   := 8 
	); 
	port (
		CLK				: in std_logic;
		Enable			: in std_logic;
		Data				: out std_logic;
		Addres			: out std_logic 
	);
end Init_block;

architecture rtl of Init_block is

begin	

Main : process (CLK)
    begin
		if rising_edge(CLK) then	  
--			if Counter = 0 then
--				we <= '0';
--				Counter <= Counter_from;
--				state <= idle;
--			else				
--				if Counter > (2**(ADDR_WIDTH - 1) - 1) then
--					data <= std_logic_vector(to_unsigned((2**ADDR_WIDTH - 1) - Counter, DATA_WIDTH));
--				else 
--					data <= std_logic_vector(to_unsigned(Counter, DATA_WIDTH));
--				end if;				
--				Counter <= Counter - 1;
--			end if;
		end if;
    end process Main;
		
end rtl;