transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Artsiom/OneDrive/Documents/Altera/FPGA_projects/Generator_attempt_5/Edge_selector.vhd}
vcom -93 -work work {C:/Users/Artsiom/OneDrive/Documents/Altera/FPGA_projects/Generator_attempt_5/Frequency_divider.vhd}
vcom -93 -work work {C:/Users/Artsiom/OneDrive/Documents/Altera/FPGA_projects/Generator_attempt_5/SinglePortRAM_handcrafted.vhd}
vcom -93 -work work {C:/Users/Artsiom/OneDrive/Documents/Altera/FPGA_projects/Generator_attempt_5/Generator_v_0_1.vhd}

vcom -93 -work work {C:/Users/Artsiom/OneDrive/Documents/Altera/FPGA_projects/Generator_attempt_5/simulation/modelsim/Generator_v_0_1_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclone -L rtl_work -L work -voptargs="+acc"  Generator_v_0_1_TB

add wave *
view structure
view signals
run 10 us
