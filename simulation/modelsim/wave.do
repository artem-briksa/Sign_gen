onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /memory_on_lut_rom_tb/CLK
add wave -noupdate -format Analog-Step -height 74 -max 254.99999999999997 -radix unsigned /memory_on_lut_rom_tb/Output
add wave -noupdate -radix unsigned /memory_on_lut_rom_tb/DUT/Counter
add wave -noupdate -radix unsigned /memory_on_lut_rom_tb/Counter_load
add wave -noupdate -radix unsigned /memory_on_lut_rom_tb/Counts_t
add wave -noupdate /memory_on_lut_rom_tb/DUT/divided_clock
add wave -noupdate /memory_on_lut_rom_tb/Driver
add wave -noupdate /memory_on_lut_rom_tb/DUT/Fall
add wave -noupdate /memory_on_lut_rom_tb/DUT/Rise
add wave -noupdate /memory_on_lut_rom_tb/DUT/state
add wave -noupdate -divider {New Divider}
add wave -noupdate -radix unsigned /memory_on_lut_rom_tb/DUT/Frequency_divider_module/Enable
add wave -noupdate -radix unsigned /memory_on_lut_rom_tb/DUT/Frequency_divider_module/Counts_t
add wave -noupdate -radix unsigned /memory_on_lut_rom_tb/DUT/Frequency_divider_module/Counter
add wave -noupdate /memory_on_lut_rom_tb/DUT/Frequency_divider_module/CLK
add wave -noupdate /memory_on_lut_rom_tb/DUT/Frequency_divider_module/Output
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {40751656 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 381
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
WaveRestoreZoom {0 ps} {52500 ns}
