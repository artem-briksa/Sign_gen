library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity Signal_generator is
    port (
        CLK_200MHz 					: in std_logic;
        CLK_200MHz_shifted_45 	: in std_logic;
        dout 							: out std_logic_vector(13 downto 0);
		  offset_clock1				: out std_logic;
		  offset_clock2				: out std_logic
    );
end Signal_generator;

architecture rtl of Signal_generator is
    constant BitsPerOutPut : natural := 14;
    constant counts 	: natural := 100_000_000 / 1_000_000 * 2 + 1;   -- generating frequancy is in Hz in the denominator
    constant step 	: integer := 1;--(2**BitsPerOutPut) / counts;
    signal Counter 	: unsigned(24 downto 0) := to_unsigned(counts, 25);
    
    --signal DataOut 	: unsigned(BitsPerOutPut - 1 downto 0) := (others => '0');
    signal Buf_Data 	: unsigned(BitsPerOutPut - 1 downto 0) := (others => '0');
	 

begin

	 offset_clock1 <= CLK_200MHz_shifted_45;
	 offset_clock2 <= not CLK_200MHz;
	 --DataOut <= Buf_Data;
    dout <= std_logic_vector(Buf_Data);
    
    Main : process (CLK_200MHz, CLK_200MHz_shifted_45)
    begin
        if rising_edge(CLK_200MHz) then
        
            Counter <= Counter - 1;
--          Buf_Data <= std_logic_vector(to_unsigned((to_integer(unsigned(Buf_Data)) + step),BitsPerOutPut));      --for saw signal
          Buf_Data <= Buf_Data + step;      --for saw signal
            if Counter = 0 then
            
              Buf_Data <= (others => '0');     --  for saw signal
--                DataOutBuf_Data (BitsPerOutPut - 1 downto 0) <= not Buf_Data(BitsPerOutPut - 1 downto 0);
                Counter <= to_unsigned(counts, 25);
        
            end if;
        end if;
    end process Main;
end rtl;

