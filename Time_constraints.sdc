## Generated SDC file "Time_constraints.sdc"

## Copyright (C) 1991-2013 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

## DATE    "Fri Mar 25 02:06:21 2016"

##
## DEVICE  "EP1C6Q240C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {CLK_100MHz} -period 10.000 -waveform { 0.000 5.000 } [get_ports {CLK_100MHz}]


#**************************************************************
# Create Generated Clock
#**************************************************************

#create_generated_clock -name {PLL_module|altpll_component|pll|clk[0]} -source [get_pins {PLL_module|altpll_component|pll|inclk[0]}] -duty_cycle 50.000 -multiply_by 2 -master_clock {CLK_100MHz} [get_pins {PLL_module|altpll_component|pll|clk[0]}] 
#create_generated_clock -name {PLL_module|altpll_component|pll|clk[1]} -source [get_pins {PLL_module|altpll_component|pll|inclk[0]}] -duty_cycle 50.000 -multiply_by 2 -phase 45.000 -master_clock {CLK_100MHz} [get_pins {PLL_module|altpll_component|pll|clk[1]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {CLK_100MHz}]  0.000 [get_ports {CLK_100MHz}]


#**************************************************************
# Set Output Delay
#**************************************************************

#set_output_delay -add_delay  -clock [get_clocks {PLL_module|altpll_component|pll|clk[1]}]  -4.000 [get_ports {CLK_200MHz_out}]
#set_output_delay -add_delay  -clock [get_clocks {PLL_module|altpll_component|pll|clk[1]}]  -4.000 [get_ports {CLK_offset_1}]
#set_output_delay -add_delay  -clock [get_clocks {PLL_module|altpll_component|pll|clk[0]}]  -4.000 [get_ports {CLK_offset_2}]
#
#set_output_delay -add_delay  -clock [get_clocks {PLL_module|altpll_component|pll|clk[1]}]  -4.000 [get_ports {Dout[0]}]
#set_output_delay -add_delay  -clock [get_clocks {PLL_module|altpll_component|pll|clk[1]}]  -4.000 [get_ports {Dout[1]}]
#set_output_delay -add_delay  -clock [get_clocks {PLL_module|altpll_component|pll|clk[1]}]  -4.000 [get_ports {Dout[2]}]
#set_output_delay -add_delay  -clock [get_clocks {PLL_module|altpll_component|pll|clk[1]}]  -4.000 [get_ports {Dout[3]}]
#set_output_delay -add_delay  -clock [get_clocks {PLL_module|altpll_component|pll|clk[1]}]  -4.000 [get_ports {Dout[4]}]
#set_output_delay -add_delay  -clock [get_clocks {PLL_module|altpll_component|pll|clk[1]}]  -4.000 [get_ports {Dout[5]}]
#set_output_delay -add_delay  -clock [get_clocks {PLL_module|altpll_component|pll|clk[1]}]  -4.000 [get_ports {Dout[6]}]
#set_output_delay -add_delay  -clock [get_clocks {PLL_module|altpll_component|pll|clk[1]}]  -4.000 [get_ports {Dout[7]}]
#set_output_delay -add_delay  -clock [get_clocks {PLL_module|altpll_component|pll|clk[1]}]  -4.000 [get_ports {Dout[8]}]
#set_output_delay -add_delay  -clock [get_clocks {PLL_module|altpll_component|pll|clk[1]}]  -4.000 [get_ports {Dout[9]}]
#set_output_delay -add_delay  -clock [get_clocks {PLL_module|altpll_component|pll|clk[1]}]  -4.000 [get_ports {Dout[10]}]
#set_output_delay -add_delay  -clock [get_clocks {PLL_module|altpll_component|pll|clk[1]}]  -4.000 [get_ports {Dout[11]}]
#set_output_delay -add_delay  -clock [get_clocks {PLL_module|altpll_component|pll|clk[1]}]  -4.000 [get_ports {Dout[12]}]
#set_output_delay -add_delay  -clock [get_clocks {PLL_module|altpll_component|pll|clk[1]}]  -4.000 [get_ports {Dout[13]}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

