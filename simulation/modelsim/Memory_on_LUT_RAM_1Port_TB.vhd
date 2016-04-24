LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY Memory_on_LUT_RAM_1Port_TB  IS 
  GENERIC (
    DATA_WIDTH  : NATURAL   := 8 ;  
    ADDR_WIDTH  : NATURAL   := 8 ); 
END ; 
 
ARCHITECTURE Memory_on_LUT_RAM_1Port_TB_arch OF Memory_on_LUT_RAM_1Port_TB IS
  SIGNAL we   :  STD_LOGIC := '1'  ; 
  SIGNAL q   :  std_logic_vector ((DATA_WIDTH - 1) downto 0)  ; 
  SIGNAL data   :  std_logic_vector ((DATA_WIDTH - 1) downto 0)  ; 
  SIGNAL clk   :  STD_LOGIC  ; 
  SIGNAL addr   :  natural range 0 to 2**ADDR_WIDTH - 1;
  SIGNAL iterator   :  natural range 0 to 10;
  COMPONENT SinglePortRAM_handcrafted  
    GENERIC ( 
      DATA_WIDTH  : NATURAL ; 
      ADDR_WIDTH  : NATURAL  );  
    PORT ( 
      we  : in STD_LOGIC ; 
      q  : out std_logic_vector ((DATA_WIDTH - 1) downto 0) ; 
      data  : in std_logic_vector ((DATA_WIDTH - 1) downto 0) ; 
      clk  : in STD_LOGIC ; 
      addr  : in natural range 0 to 2**ADDR_WIDTH - 1 ); 
  END COMPONENT ; 
BEGIN
  DUT  : SinglePortRAM_handcrafted  
    GENERIC MAP ( 
      DATA_WIDTH  => DATA_WIDTH  ,
      ADDR_WIDTH  => ADDR_WIDTH   )
    PORT MAP ( 
      we   => we  ,
      q   => q  ,
      data   => data  ,
      clk   => clk  ,
      addr   => addr   ) ; 



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

-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
		we  <= '0'  ;
		while iterator < 4 loop
			for Counter in 255 downto 0 loop
				addr <= Counter;
				wait for 10 ns ;
			end loop;
			iterator <= iterator + 1;
		end loop;
		iterator <= 0;
		
		we  <= '1';
		for Counter in 255 downto 128 loop
			addr <= Counter;
			data <= std_logic_vector(to_unsigned(255 - Counter, DATA_WIDTH));
			wait for 10 ns ;
		end loop;
		
		we <= '0';
		while iterator < 4 loop
			for Counter in 255 downto 0 loop
				addr <= Counter;
				wait for 10 ns ;
			end loop;
			iterator <= iterator + 1;
		end loop;
		wait for 1 us;
	 
 End Process;
END;
