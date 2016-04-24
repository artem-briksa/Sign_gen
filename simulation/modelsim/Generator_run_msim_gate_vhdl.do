transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Generator.vho}

vcom -93 -work work {C:/Users/Artsiom/OneDrive/Documents/Altera/FPGA_projects/Generator_attempt_5/GeneratorTB.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /uut=Generator_vhd.sdo -L cyclone -L gate_work -L work -voptargs="+acc"  GeneratorTB

add wave *
view structure
view signals
run -all
