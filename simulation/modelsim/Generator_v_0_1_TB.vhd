LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY Generator_v_0_1_TB  IS 
  GENERIC (
    DATA_WIDTH  	: NATURAL   := 8 ;  
    DRIVER_WIDTH  	: NATURAL   := 4 ;  
    ADDR_WIDTH  	: NATURAL   := 8 ); 
END ; 
 
ARCHITECTURE Generator_v_0_1_TB_arch OF Generator_v_0_1_TB IS
	constant period 		: time := 10 ns;
	constant wr_wait_clock 	: natural := 5;

--  SIGNAL Driver   	:  std_logic_vector ((DRIVER_WIDTH - 1) downto 0)  ; 
	SIGNAL Reset		: std_logic := '0';
	SIGNAL Start		: std_logic := '0';
	SIGNAL Stop			: std_logic := '0';
	SIGNAL Load_data	: std_logic := '0';
	SIGNAL Dout   		: std_logic_vector ((DATA_WIDTH - 1) downto 0) := (others => '0')  ; 
	
	SIGNAL wr_smpl		: std_logic := '0';
	SIGNAL wr_data   	: std_logic_vector ((DATA_WIDTH - 1) downto 0) := (others => '0') ; 
	SIGNAL cnt_from   	: std_logic_vector ((ADDR_WIDTH - 1) downto 0) := (others => '1') ; 
	
	SIGNAL CLK_200MHz   : STD_LOGIC  ; 
	
  COMPONENT Generator_v_0_1  
    GENERIC ( 
      DATA_WIDTH  	: NATURAL ; 
      DRIVER_WIDTH  : NATURAL ; 
      ADDR_WIDTH  	: NATURAL  );  
    PORT ( 
--      Driver  : in std_logic_vector ((DRIVER_WIDTH - 1) downto 0) ; 
		Reset				: in std_logic;
		Start				: in std_logic;
		Stop				: in std_logic;
		Load_data			: in std_logic;
		
		wr_data				: in std_logic_vector ((DATA_WIDTH - 1) downto 0);
		cnt_from			: in std_logic_vector ((ADDR_WIDTH - 1) downto 0);
		wr_smpl				: in std_logic;
		
		Dout  				: out std_logic_vector ((DATA_WIDTH - 1) downto 0) ; 
		CLK_200MHz  		: in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : Generator_v_0_1  
    GENERIC MAP ( 
      DATA_WIDTH  => DATA_WIDTH  ,
      DRIVER_WIDTH  => DRIVER_WIDTH  ,
      ADDR_WIDTH  => ADDR_WIDTH   )
    PORT MAP ( 
--      Driver   => Driver  ,
		Reset => Reset,
		Start =>  Start,
		Stop =>	Stop ,
		Load_data => Load_data ,
		
		wr_smpl => wr_smpl,
		wr_data => wr_data,
		cnt_from => cnt_from,
		
		Dout   => Dout  ,
		CLK_200MHz   => CLK_200MHz   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 10 us, Period = 10 ns
  Process
	Begin
	 CLK_200MHz  <= '0'  ;
	wait for period / 2 ;
-- 5 ns, single loop till start period.
	 CLK_200MHz  <= '1'  ;
	wait for period / 2 ;
-- dumped values till 10 ns
	--wait;
 End Process;
 
 -- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
		wait for 100 ns;
		Reset <= '1';
		wait for period;
		Reset <= '0';
		wait for 400 ns;
		Start <= '1';
		wait for period;
		Start <= '0';
		wait for 7000 ns;
		Stop <= '1';
		wait for period;
		Stop <= '0';
		wait for 1500 ns;
		Load_data <= '1';
		wait for period;
		Load_data <= '0';
		
		--wr_data	
		--wr_smpl	
		--wr_addr
		--Init block		
		for i in (2**ADDR_WIDTH - 1) downto 0 loop 
		
			wr_smpl <= '1';		
			
			if i > (2**(ADDR_WIDTH - 1) - 1) then
				wr_data <= std_logic_vector(to_unsigned((2**ADDR_WIDTH - 1) - i, DATA_WIDTH));
			else 
				wr_data <= std_logic_vector(to_unsigned(i, DATA_WIDTH));
			end if;
			
			wait for period;
			wr_smpl <= '0';
			wr_data <= (others => '0');			
			wait for period * wr_wait_clock;			
		end loop;
		--end of Init block
		
		wait for 2000 ns;
		Start <= '1';
		wait for period;
		Start <= '0';
		wait for 6000 ns;
		Reset <= '1';
		wait for period;
		Reset <= '0';		
		wait for 250 ns;
		cnt_from <= std_logic_vector(to_unsigned(100, ADDR_WIDTH));
		wait for 250 ns;
		Load_data <= '1';
		wait for period;
		Load_data <= '0';
		
		for i in 99 downto 0 loop 		
			wr_smpl <= '1';		
			
			wr_data <= std_logic_vector(to_unsigned(100, DATA_WIDTH));
			
			wait for period;
			wr_smpl <= '0';
			wr_data <= (others => '0');	
			if i = 0 then
				cnt_from <= std_logic_vector(to_unsigned(255, ADDR_WIDTH));
			end if;
			wait for period * wr_wait_clock;			
		end loop;
		
		wait for 1000 ns;
		Start <= '1';
		wait for period;
		Start <= '0';
		wait for 7000 ns;
		Stop <= '1';
		wait for period;
		Stop <= '0';
		wait for 100 ns;
		Reset <= '1';
		wait for period;
		Reset <= '0';	
		
	wait;
 End Process;
END;
