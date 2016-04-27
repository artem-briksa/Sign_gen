--created 26.04.2016
--Bryksa Artsiom
--Simple generator, RAM on LUTs (handcrafted), attempt

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity Generator_v_0_1 is  
	generic (
		ADDR_WIDTH  	: NATURAL   := 8 ;
		DRIVER_WIDTH	: NATURAL	:= 4 ;
		DATA_WIDTH  	: NATURAL   := 8 
	); 
	port (
		CLK_200MHz		: in std_logic;
      Dout				: out std_logic_vector ((DATA_WIDTH - 1) downto 0);
--		Driver			: in std_logic_vector((DRIVER_WIDTH - 1) downto 0);
		Reset				: in std_logic;	--"1000" -- 8
		Start				: in std_logic;	--"0100" -- 4
		Stop				: in std_logic;	--"0010" -- 2
		Load_data		: in std_logic;	--"0001" -- 1
		
		wr_data			: in std_logic_vector ((DATA_WIDTH - 1) downto 0);
		wr_smpl			: in std_logic;
		cnt_from			: in std_logic_vector ((ADDR_WIDTH - 1) downto 0)
	);
end Generator_v_0_1;

architecture rtl of Generator_v_0_1 is
 ----TYPES----------------------------------------------------------------------	
	type generator_state is (count, init_ram, idle);
	subtype driver_subtype is std_logic_vector((DRIVER_WIDTH - 1) downto 0);
 ----CONSTANTS------------------------------------------------------------------ 
	constant Counter_to	: natural := 0; 
--	constant d_init		: driver_subtype := driver_subtype(to_unsigned(1,DRIVER_WIDTH));	-- '1' - init memory
--	constant d_count		: driver_subtype := driver_subtype(to_unsigned(2,DRIVER_WIDTH));	-- '2' - begin to count
--	constant d_idle		: driver_subtype := driver_subtype(to_unsigned(3,DRIVER_WIDTH));	-- '3' - idle
	constant d_init		: integer := 1;	-- '1' - init memory
	constant d_count		: integer := 2;	-- '2' - begin to count
	constant d_idle		: integer := 3;	-- '3' - idle
	constant FrDev_size	: natural := 18;
 ----SIGNALS--------------------------------------------------------------------
	signal we   			: STD_LOGIC := '0'  ; 						--write enable
	signal Enable_wr		: STD_LOGIC := '0';
	signal q   				: std_logic_vector ((DATA_WIDTH - 1) downto 0) ; 	--quit data
	signal q_buff			: std_logic_vector ((DATA_WIDTH - 1) downto 0) ; 	--quit data
	signal data   			: std_logic_vector ((DATA_WIDTH - 1) downto 0) ; 	--init data
	signal clk   			: STD_LOGIC  ; 
	signal addr   			: natural range 0 to 2**ADDR_WIDTH - 1 ;
	
	signal Counter_from	: natural := 2**ADDR_WIDTH - 1;
	
	signal state 			: generator_state := idle;
	signal busy 			: STD_LOGIC := '0';
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
      we   	=> Enable_wr  ,		--changed from "we"
      q   	=> q  ,
      data  => wr_data  ,		--changed from "data"
      clk   => clk  ,
      addr  => addr   ) ;

 ----SIMPLE_LOGIC----------------------------------------------------------------------
	addr <= Counter;
	clk <= CLK_200MHz;
	Enable_wr <= (wr_smpl and we);
	Counter_from <= to_integer(unsigned(cnt_from));
--	driver_t <= driver_subtype(unsigned(Driver));
	driver_t <= Reset & Start & Stop & Load_data;
 ----PROCESSES----------------------------------------------------------------------
	Dout_control : process (q, state)
    begin
        --if rising_edge(CLK_200MHz) then
			case state is	
				when init_ram | idle =>	
					Dout <= (others => '0');
				when others =>
					Dout <= q;
				end case;
			--end if;
    end process Dout_control;
	 
	Main : process (CLK_200MHz)
    begin
        if rising_edge(CLK_200MHz) then
				case state is
			
					when count =>
						case to_integer(unsigned(driver_t)) is 						
							when 1 =>	--init 
								Counter <= Counter_from;
								we <= '1';
								busy <= '0';
								state <= init_ram;
							when 8 | 2 =>	--reset | stop
								we <= '0';
								busy <= '0';
								state <= idle;
							when others =>
								if Counter = Counter_to then
									Counter <= Counter_from;
								else 
									Counter <= Counter - 1;									
								end if;								
						end case;
					
					when init_ram =>
						case to_integer(unsigned(driver_t)) is 	
							when 4 =>	--start
								busy <= '1';
								we <= '0';
								Counter <= Counter_from;
								state <= count;
							when 8 =>	--reset
								we <= '0';
								Counter <= Counter_from;
								state <= idle;
							when others =>
								----"Init block"-----------
									if Counter = 0 then
										we <= '0';
										Counter <= Counter_from;
										state <= idle;
									else												
										if wr_smpl = '1' then				
											Counter <= Counter - 1;
										end if;										
									end if;
								----------------------------							
						end case;

					when idle =>
						case to_integer(unsigned(driver_t)) is 	
							when 1 =>	--init
								state <= init_ram;
								we <= '1';
								Counter <= Counter_from;
							when 4 =>	--count
								busy <= '1';
								state <= count;
							when others =>
								null ;
								
						end case;							
				
				end case;
        end if;
    end process Main;

end rtl;