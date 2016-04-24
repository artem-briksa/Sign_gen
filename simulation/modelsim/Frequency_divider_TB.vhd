LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 

ENTITY Frequency_divider_TB  IS 
END ; 
 
ARCHITECTURE Frequency_divider_TB_arch OF Frequency_divider_TB IS
  SIGNAL Counts   	:  std_logic_vector (17 downto 0) := (others => '0') ; 
  SIGNAL Output   	:  STD_LOGIC   := '0' ; 
  SIGNAL CLK  	 	:  STD_LOGIC  ; 
  SIGNAL Enable   	:  STD_LOGIC  ; 
  COMPONENT Frequency_divider  
    PORT ( 
      Counts  : in std_logic_vector (17 downto 0) ; 
      Output  : out STD_LOGIC ; 
      CLK  : in STD_LOGIC ; 
      Enable  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : Frequency_divider  
    PORT MAP ( 
      Counts   => Counts  ,
      Output   => Output  ,
      CLK   => CLK  ,
      Enable   => Enable   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 10 us, Period = 10 ns
  Process
	Begin
	 clk  <= '0'  ;
	wait for 5 ns ;
-- 5 ns, single loop till start period.
	 clk  <= '1'  ;
	wait for 5 ns ;
-- dumped values till 10 ns
	--wait;
 End Process;
 
 Process
	Begin
		wait for 250 ns ;
		Counts  <= std_logic_vector(to_unsigned(0, 18))  ;		
		wait for 1000 ns ;
		Counts  <= std_logic_vector(to_unsigned(1, 18))  ;		
		wait for 1000 ns ;
		Counts  <= std_logic_vector(to_unsigned(2, 18))  ;		
		wait for 1000 ns ;
		Counts  <= std_logic_vector(to_unsigned(3, 18))  ;		
		wait for 1000 ns ;
		Counts  <= std_logic_vector(to_unsigned(4, 18))  ;		
		wait for 1000 ns ;	
		Counts  <= std_logic_vector(to_unsigned(255, 18))  ;		
		wait for 1000 ns ;
		Counts  <= std_logic_vector(to_unsigned(0, 18))  ;		
		wait for 1000 ns ;
		Counts  <= std_logic_vector(to_unsigned(5, 18))  ;		
		wait for 1000 ns ;
		
	wait;
 End Process;
 
 Process
	Begin
		Enable <= '0';	
		wait for 500 ns ;
		Enable <= '1';	
		wait for 500 ns ;
		Enable <= '0';
		wait for 500 ns ;
		Enable <= '1';	
		wait for 500 ns ;
		Enable <= '0';
		wait for 500 ns ;
		Enable <= '1';	
		wait for 500 ns ;
		Enable <= '0';
		wait for 500 ns ;
		Enable <= '1';	
		wait for 500 ns ;
		Enable <= '0';
		wait for 500 ns ;
		Enable <= '1';	
		wait for 500 ns ;
		Enable <= '0';
		wait for 500 ns ;
		Enable <= '1';	
		wait for 500 ns ;
		Enable <= '0';
		wait for 500 ns ;
		Enable <= '1';	
		wait for 500 ns ;
		Enable <= '0';
		wait for 500 ns ;
		Enable <= '1';	
		wait for 500 ns ;
		Enable <= '0';
		wait for 500 ns ;
		Enable <= '1';	
		wait for 500 ns ;
		Enable <= '0';
		wait for 500 ns ;
		Enable <= '1';	
		wait for 500 ns ;
		Enable <= '0';
		wait for 500 ns ;
		Enable <= '1';	
		wait for 500 ns ;
		Enable <= '0';
		wait for 500 ns ;
		Enable <= '1';	
		wait for 500 ns ;
		Enable <= '0';
		wait for 500 ns ;
		Enable <= '1';	
		wait for 500 ns ;
		Enable <= '0';
		wait for 500 ns ;
		Enable <= '1';	
		wait for 500 ns ;
		Enable <= '0';
		wait for 500 ns ;
		Enable <= '1';	
		wait for 500 ns ;
		Enable <= '0';
		wait for 500 ns ;
		Enable <= '1';	
		wait for 500 ns ;
		Enable <= '0';
		wait for 500 ns ;
		
	wait;
 End Process;
 
 
END;
