create_clock -period 40.000 -name Clk -waveform {0.000 20.000} [get_ports Clk]
set_input_delay -clock [get_clocks Clk] -min -add_delay 0.400 [get_ports {Beban[*]}]
set_input_delay -clock [get_clocks Clk] -max -add_delay 0.600 [get_ports {Beban[*]}]
set_input_delay -clock [get_clocks Clk] -min -add_delay 0.400 [get_ports {Count[*]}]
set_input_delay -clock [get_clocks Clk] -max -add_delay 0.600 [get_ports {Count[*]}]
set_input_delay -clock [get_clocks Clk] -min -add_delay 0.400 [get_ports {Input[*]}]
set_input_delay -clock [get_clocks Clk] -max -add_delay 0.600 [get_ports {Input[*]}]
set_input_delay -clock [get_clocks Clk] -min -add_delay 0.400 [get_ports Reset]
set_input_delay -clock [get_clocks Clk] -max -add_delay 0.600 [get_ports Reset]
create_clock -period 47.619 -name {Count[0]} -waveform {0.000 23.810} [get_ports {Count[0]}]
create_clock -period 47.619 -name {Count[1]} -waveform {0.000 23.810} [get_ports {Count[1]}]
create_clock -period 47.619 -name {Count[2]} -waveform {0.000 23.810} [get_ports {Count[2]}]
create_clock -period 47.619 -name {Count[3]} -waveform {0.000 23.810} [get_ports {Count[3]}]
create_clock -period 47.619 -name {Count[4]} -waveform {0.000 23.810} [get_ports {Count[4]}]
create_clock -period 47.619 -name {Count[5]} -waveform {0.000 23.810} [get_ports {Count[5]}]
