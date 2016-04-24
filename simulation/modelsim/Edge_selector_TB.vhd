LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 


ENTITY Edge_selector_TB  IS 
END ; 
 
ARCHITECTURE rtl OF Edge_selector_TB IS

  SIGNAL Input   		:  STD_LOGIC  ; 
  SIGNAL CLK_200MHz   	:  STD_LOGIC  ; 
  SIGNAL Fall   		:  STD_LOGIC  ; 
  SIGNAL Rise   		:  STD_LOGIC  ; 
  
   -- Clock period definitions
   constant CLK_200MHz_period : time := 5 ns;
  
  COMPONENT Edge_selector  
    PORT ( 
      Input  		: in STD_LOGIC ; 
      CLK_200MHz  	: in STD_LOGIC ; 
      Fall  		: out STD_LOGIC ; 
      Rise  		: out STD_LOGIC ); 
  END COMPONENT ; 
  
BEGIN
  DUT  : Edge_selector  
    PORT MAP ( 
      Input   => Input  ,
      CLK_200MHz   => CLK_200MHz  ,
      Fall   => Fall  ,
      Rise   => Rise   ) ; 




   -- Clock process definitions
   CLK_200MHz_process :process
   begin
		CLK_200MHz <= '1';
		wait for CLK_200MHz_period/2;
		CLK_200MHz <= '0';
		wait for CLK_200MHz_period/2;
   end process; 


-- "Repeater Pattern" Repeat Forever
-- Start Time = 0 ns, End Time = 1 us, Period = 50 ns
  Process
	Begin
	 input  <= '1'  ;
	wait for 100 ns ;
	for Z in 1 to 3
	loop
	    input  <= '0'  ;
	   wait for 50 ns ;
	    input  <= '1'  ;
	   wait for 50 ns ;
	    input  <= '1'  ;
	   wait for 50 ns ;
-- 850 ns, repeat pattern in loop.
	end  loop;
	    input  <= '0'  ;
	   wait for 50 ns ;
	    input  <= '1'  ;
	   wait for 50 ns ;
	    input  <= '1'  ;
	   wait for 50 ns ;
-- 1 us, periods remaining till edit start time.
	wait;
 End Process;
END;
