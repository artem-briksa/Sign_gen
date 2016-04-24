
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Memory_on_LUT_RAM_1Port is

	generic 
	(
		DATA_WIDTH : natural := 8;
		ADDR_WIDTH : natural := 8
	);

	port 
	(
		clk		: in std_logic;
		addr		: in natural range 0 to 2**ADDR_WIDTH - 1;
		data		: in std_logic_vector((DATA_WIDTH-1) downto 0);
		we			: in std_logic := '1';
		q			: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end Memory_on_LUT_RAM_1Port;

architecture rtl of Memory_on_LUT_RAM_1Port is

	--TYPES------------------------------------------------------------------
	-- Build a 2-D array type for the RAM
	subtype word_t is std_logic_vector((DATA_WIDTH-1) downto 0);
	type memory_t is array(2**ADDR_WIDTH-1 downto 0) of word_t;
	--CONSTANTS--------------------------------------------------------------
	constant Counter_load	: unsigned((ADDR_WIDTH - 1) downto 0)	:= to_unsigned(2**ADDR_WIDTH - 1, ADDR_WIDTH);
	--FUNCTIONS--------------------------------------------------------------
	function init_ram
		return memory_t is 
		variable tmp : memory_t := (others => (others => '0'));
	begin 
		for addr_pos in 0 to 2**ADDR_WIDTH - 1 loop 
			-- Initialize each address with the address itself
			tmp(addr_pos) := std_logic_vector(to_unsigned(addr_pos, DATA_WIDTH));
		end loop;
		return tmp;
	end init_ram;	 

	--SIGNALS----------------------------------------------------------------
   signal Counter 			: unsigned((ADDR_WIDTH - 1) downto 0) := Counter_load;	
	-- Declare the RAM signal and specify a default value.	Quartus II
	-- will create a memory initialization file (.mif) based on the 
	-- default value.
	signal ram : memory_t := init_ram;

	-- Register to hold the address 
	signal addr_reg : natural range 0 to 2**ADDR_WIDTH-1;

begin

	process(clk)
	begin
	if(rising_edge(clk)) then
		if(we = '1') then
			ram(addr) <= data;
		else
		
			Counter <= Counter - 1;	
			if Counter = 0 then
				Counter <= Counter_load;     
			end if;
		end if;

		-- Register the address for reading
		addr_reg <= addr;
	end if;
	end process;

	q <= ram(addr_reg);

end rtl;
