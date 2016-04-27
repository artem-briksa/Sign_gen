LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY Generator_v_0_1_TB  IS 
  GENERIC (
    DATA_WIDTH  : NATURAL   := 8 ;  
    DRIVER_WIDTH  : NATURAL   := 4 ;  
    ADDR_WIDTH  : NATURAL   := 8 ); 
END ; 
 
ARCHITECTURE Generator_v_0_1_TB_arch OF Generator_v_0_1_TB IS
	constant period : time := 10 ns;

--  SIGNAL Driver   :  std_logic_vector ((DRIVER_WIDTH - 1) downto 0)  ; 
	SIGNAL Reset	: std_logic := '0';
	SIGNAL Start	: std_logic := '0';
	SIGNAL Stop		: std_logic := '0';
	SIGNAL Load_data	: std_logic := '0';
	SIGNAL Dout   :  std_logic_vector ((DATA_WIDTH - 1) downto 0)  ; 
	SIGNAL CLK_200MHz   :  STD_LOGIC  ; 
  COMPONENT Generator_v_0_1  
    GENERIC ( 
      DATA_WIDTH  : NATURAL ; 
      DRIVER_WIDTH  : NATURAL ; 
      ADDR_WIDTH  : NATURAL  );  
    PORT ( 
--      Driver  : in std_logic_vector ((DRIVER_WIDTH - 1) downto 0) ; 
		Reset				: in std_logic;
		Start				: in std_logic;
		Stop				: in std_logic;
		Load_data			: in std_logic;
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
		wait for 17000 ns;
		Start <= '1';
		wait for period;
		Start <= '0';
		wait for 10000 ns;
		Stop <= '1';
		wait for period;
		Stop <= '0';
	wait;
 End Process;
END;
