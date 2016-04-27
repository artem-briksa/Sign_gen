onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /generator_v_0_1_tb/CLK_200MHz
add wave -noupdate -radix unsigned /generator_v_0_1_tb/Driver
add wave -noupdate -format Analog-Step -height 74 -max 254.99999999999997 -radix unsigned /generator_v_0_1_tb/Dout
add wave -noupdate -divider Other
add wave -noupdate /generator_v_0_1_tb/DUT/we
add wave -noupdate -radix unsigned /generator_v_0_1_tb/DUT/q
add wave -noupdate -radix unsigned /generator_v_0_1_tb/DUT/data
add wave -noupdate /generator_v_0_1_tb/DUT/addr
add wave -noupdate -format Analog-Step -height 74 -max 254.99999999999997 /generator_v_0_1_tb/DUT/Counter
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2365000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 282
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
WaveRestoreZoom {0 ps} {10500 ns}
