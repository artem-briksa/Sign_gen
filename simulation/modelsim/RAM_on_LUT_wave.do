onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /memory_on_lut_ram_1port_tb/clk
add wave -noupdate /memory_on_lut_ram_1port_tb/addr
add wave -noupdate -format Analog-Step -height 74 -max 254.99999999999997 -radix unsigned /memory_on_lut_ram_1port_tb/q
add wave -noupdate -radix unsigned /memory_on_lut_ram_1port_tb/data
add wave -noupdate /memory_on_lut_ram_1port_tb/we
add wave -noupdate /memory_on_lut_ram_1port_tb/iterator
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4855000 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 298
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {42 us}
