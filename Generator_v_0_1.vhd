--created 26.04.2016
--Bryksa Artsiom
--Simple generator, RAM on LUTs (handcrafted), attempt

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity Generator_v_0_1 is  
	generic (
		ADDR_WIDTH  	: NATURAL   := 8 ;
		DRIVER_WIDTH	: NATURAL	:= 3 ;
		DATA_WIDTH  	: NATURAL   := 8 
	); 
	port (
		CLK_200MHz		: in std_logic;
      Dout				: out std_logic_vector ((DATA_WIDTH - 1) downto 0);
		Driver			: in std_logic_vector((DRIVER_WIDTH - 1) downto 0)
	);
end Generator_v_0_1;

architecture rtl of Generator_v_0_1 is
 ----TYPES----------------------------------------------------------------------	
	type generator_state is (count, init_ram, idle);
	subtype driver_subtype is std_logic_vector((DRIVER_WIDTH - 1) downto 0);
 ----CONSTANTS------------------------------------------------------------------ 
	constant Counter_from: natural := 2**ADDR_WIDTH - 1;
	constant Counter_to	: natural := 0; 
--	constant d_init		: driver_subtype := driver_subtype(to_unsigned(1,DRIVER_WIDTH));	-- '1' - init memory
--	constant d_count		: driver_subtype := driver_subtype(to_unsigned(2,DRIVER_WIDTH));	-- '2' - begin to count
--	constant d_idle		: driver_subtype := driver_subtype(to_unsigned(3,DRIVER_WIDTH));	-- '3' - idle
	constant d_init		: integer := 1;	-- '1' - init memory
	constant d_count		: integer := 2;	-- '2' - begin to count
	constant d_idle		: integer := 3;	-- '3' - idle
 ----SIGNALS--------------------------------------------------------------------
	signal we   			: STD_LOGIC := '0'  ; 						--write enable
	signal q   				: std_logic_vector ((DATA_WIDTH - 1) downto 0) ; 	--quit data
	signal data   			: std_logic_vector ((DATA_WIDTH - 1) downto 0) ; 	--init data
	signal clk   			: STD_LOGIC  ; 
	signal addr   			: natural range 0 to 2**ADDR_WIDTH - 1 ;
	signal state 			: generator_state := idle;
	signal driver_t		: driver_subtype := driver_subtype(to_unsigned(3,DRIVER_WIDTH));	
	signal Counter   		: natural range 0 to 2**ADDR_WIDTH - 1 := Counter_from;
		
 ----COMPONENTS-----------------------------------------------------------------
  component SinglePortRAM_handcrafted  
    generic ( 
      DATA_WIDTH  	: NATURAL ; 
      ADDR_WIDTH  	: NATURAL  );  
    port ( 
      we  		: in STD_LOGIC ; 
      q  		: out std_logic_vector ((DATA_WIDTH - 1) downto 0) ; 
      data  	: in std_logic_vector ((DATA_WIDTH - 1) downto 0) ; 
      clk  		: in STD_LOGIC ; 
      addr  	: in natural range 0 to 2**ADDR_WIDTH - 1 ); 
  end component ; 
 ----BEGIN----------------------------------------------------------------------
  BEGIN
  
 ----MODULES----------------------------------------------------------------------
  SinglePortRAM_handcrafted_module  : SinglePortRAM_handcrafted  
    generic map ( 
      DATA_WIDTH  => DATA_WIDTH  ,
      ADDR_WIDTH  => ADDR_WIDTH   )
    port map ( 
      we   	=> we  ,
      q   	=> q  ,
      data  => data  ,
      clk   => clk  ,
      addr  => addr   ) ;
 ----SIMPLE_LOGIC----------------------------------------------------------------------
	addr <= Counter;
	clk <= CLK_200MHz;
	Dout <= q;
	driver_t <= driver_subtype(unsigned(Driver));
 ----PROCESSES----------------------------------------------------------------------
		
	Main : process (CLK_200MHz)
    begin
        if rising_edge(CLK_200MHz) then
				case state is
			
					when count =>
						case to_integer(unsigned(driver_t)) is 						
							when d_init =>
								Counter <= Counter_from;
								we <= '1';
								state <= init_ram;
							when d_idle =>
								we <= '0';
								state <= idle;
							when others =>
								Counter <= Counter - 1;
								if (Counter = (Counter_to + 1)) then
									Counter <= Counter_from;     
								end if;								
						end case;
					
					when init_ram =>
						case to_integer(unsigned(driver_t)) is 	
							when d_count =>
								we <= '0';
								Counter <= Counter_from;
								state <= count;
							when d_idle =>
								we <= '0';
								Counter <= Counter_from;
								state <= idle;
							when others =>
								----"Init block"-----------
								if Counter = 0 then
									--we <= '0';
									Counter <= Counter_from;
									--state <= idle;
								else
									if Counter > (2**(ADDR_WIDTH - 1) - 1) then
										data <= std_logic_vector(to_unsigned((2**ADDR_WIDTH - 1) - Counter, DATA_WIDTH));
									else 
										data <= std_logic_vector(to_unsigned(Counter, DATA_WIDTH));
									end if;
									Counter <= Counter - 1;
								end if;
								----------------------------							
						end case;

					when idle =>
						case to_integer(unsigned(driver_t)) is 	
							when d_init =>
								state <= init_ram;
								we <= '1';
								Counter <= Counter_from;
							when d_count =>
								state <= count;
							when others =>
								null ;
								
						end case;							
				
				end case;
        end if;
    end process Main;

end rtl;