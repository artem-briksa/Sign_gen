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
    DRIVER_WIDTH  : NATURAL   := 3 ;  
    ADDR_WIDTH  : NATURAL   := 8 ); 
END ; 
 
ARCHITECTURE Generator_v_0_1_TB_arch OF Generator_v_0_1_TB IS
  SIGNAL Driver   :  std_logic_vector ((DRIVER_WIDTH - 1) downto 0)  ; 
  SIGNAL Dout   :  std_logic_vector ((DATA_WIDTH - 1) downto 0)  ; 
  SIGNAL CLK_200MHz   :  STD_LOGIC  ; 
  COMPONENT Generator_v_0_1  
    GENERIC ( 
      DATA_WIDTH  : NATURAL ; 
      DRIVER_WIDTH  : NATURAL ; 
      ADDR_WIDTH  : NATURAL  );  
    PORT ( 
      Driver  : in std_logic_vector ((DRIVER_WIDTH - 1) downto 0) ; 
      Dout  : out std_logic_vector ((DATA_WIDTH - 1) downto 0) ; 
      CLK_200MHz  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : Generator_v_0_1  
    GENERIC MAP ( 
      DATA_WIDTH  => DATA_WIDTH  ,
      DRIVER_WIDTH  => DRIVER_WIDTH  ,
      ADDR_WIDTH  => ADDR_WIDTH   )
    PORT MAP ( 
      Driver   => Driver  ,
      Dout   => Dout  ,
      CLK_200MHz   => CLK_200MHz   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 10 us, Period = 10 ns
  Process
	Begin
	 CLK_200MHz  <= '0'  ;
	wait for 5 ns ;
-- 5 ns, single loop till start period.
	 CLK_200MHz  <= '1'  ;
	wait for 5 ns ;
-- dumped values till 10 ns
	--wait;
 End Process;
 
 -- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
		wait for 100 ns;
		Driver <= std_logic_vector(to_unsigned(2, DRIVER_WIDTH));
		wait for 4000 ns;
		Driver <= std_logic_vector(to_unsigned(1, DRIVER_WIDTH));
		wait for 4000 ns;
		Driver <= std_logic_vector(to_unsigned(2, DRIVER_WIDTH));
	wait;
 End Process;
END;
