LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY Memory_on_lut_rom_TB  IS 
END ; 
 
ARCHITECTURE Memory_on_lut_rom_TB_arch   OF Memory_on_lut_rom_TB   IS
  SIGNAL Output   		:  std_logic_vector (7 downto 0)  ; 
  SIGNAL Counter_load 	:  std_logic_vector (7 downto 0) ;
  SIGNAL Counts_t  		:  std_logic_vector (17 downto 0) ;
  SIGNAL Driver   		:  STD_LOGIC  ; 
  SIGNAL CLK   			:  STD_LOGIC  ; 
  
  COMPONENT Memory_on_LUT_ROM  
    PORT ( 
      Output  		: out std_logic_vector (7 downto 0) ;
      Counter_load 	: in std_logic_vector (7 downto 0) ;
      Counts_t  	: in std_logic_vector (17 downto 0) ;
	    Enable		: in STD_LOGIC; 
      CLK  			: in STD_LOGIC 
	  ); 
  END COMPONENT ; 
BEGIN
  DUT  : Memory_on_LUT_ROM  
    PORT MAP ( 
      Output   => Output  ,
      Counter_load   => Counter_load  ,
      Counts_t   => Counts_t  ,
      Enable   => Driver  ,
      CLK   => CLK   ) ; 



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
		Counter_load <= std_logic_vector(to_unsigned(255, 8));		
		Counts_t  <= std_logic_vector(to_unsigned(1, 18))  ;	
		Driver <= '0';
		
		wait for 100 ns ;	
		Driver <= '1';
		
		wait for 4000 ns ;	
		Counts_t  <= std_logic_vector(to_unsigned(3, 18))  ;
		
		wait for 6000 ns ;	
		Counts_t  <= std_logic_vector(to_unsigned(0, 18))  ;
		
		wait for 2000 ns ;	
		Counts_t  <= std_logic_vector(to_unsigned(1, 18))  ;
		
		wait for 6000 ns ;	
		Counts_t  <= std_logic_vector(to_unsigned(5, 18))  ;
		
		wait for 15000 ns ;	
		Counter_load <= std_logic_vector(to_unsigned(127, 8));	
		Counts_t  <= std_logic_vector(to_unsigned(2, 18))  ;
		
		wait for 3000 ns ;				
		Driver <= '0';
		wait for 1000 ns ;	
		Driver <= '1';

		
	wait;
 End Process;
 
END Memory_on_lut_rom_TB_arch;
