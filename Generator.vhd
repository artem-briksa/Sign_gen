library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Generator is
	port (
		CLK_100MHz 			: in std_logic;
      CLK_200MHz_out		: out std_logic;
      CLK_offset_1		: out std_logic;
      CLK_offset_2		: out std_logic;
		Dout					: out std_logic_vector(13 downto 0)
	);
end Generator;

architecture rtl of Generator is
	
	constant BitsPerOutSample 	: natural := 14;
	
	signal CLK_100MHz_t						:  std_logic;
	signal CLK_200MHz_t						:  std_logic;
	signal CLK_200MHz_shifted_45			:  std_logic;
	signal offset_clock1_t					: std_logic;	
	signal offset_clock2_t					: std_logic;	
	signal dout_t								: std_logic_vector((BitsPerOutSample - 1) downto 0);	
	
	component PLL
		port (
			inclk0		: IN STD_LOGIC  ;
			c0				: OUT STD_LOGIC ;
			c1				: OUT STD_LOGIC 
		);
	end component;
	
	component Signal_generator
		port (
			CLK_200MHz 					: in std_logic;
			CLK_200MHz_shifted_45 	: in std_logic;
			dout 							: out std_logic_vector(BitsPerOutSample - 1 downto 0);
		   offset_clock1				: out std_logic;
		   offset_clock2				: out std_logic
		);
	end component;
	
begin				
			
	CLK_100MHz_t <= CLK_100MHz;
	Dout <= dout_t;
   CLK_200MHz_out <= CLK_200MHz_shifted_45;
	CLK_offset_1 <= offset_clock1_t;
	CLK_offset_2 <= offset_clock2_t;
	
	PLL_module : PLL port map (
								inclk0 => CLK_100MHz_t,
								c0 => CLK_200MHz_t,
								c1 => CLK_200MHz_shifted_45
							);
	Generator : Signal_generator port map (
								CLK_200MHz => CLK_200MHz_t,
								CLK_200MHz_shifted_45 => CLK_200MHz_shifted_45,
								dout => dout_t,
								offset_clock1 => offset_clock1_t,
								offset_clock2 => offset_clock2_t
							);

end rtl;

