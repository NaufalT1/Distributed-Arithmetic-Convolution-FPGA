## Clock signal
##Bank = 35, Pin name = IO_L12P_T1_MRCC_35,					Sch name = CLK100MHZ
#set_property PACKAGE_PIN E3 [get_ports Clk]
#set_property IOSTANDARD LVCMOS33 [get_ports Clk]
create_clock -period 14.100 -name sys_clk_pin -waveform {0.000 7.050} -add [get_ports Clk]

set_input_delay -clock [get_clocks *] -clock_fall -min 1.000 [get_ports rx_line]
set_input_delay -clock [get_clocks *] -clock_fall -max 3.000 [get_ports rx_line]
set_input_delay -clock [get_clocks *] -clock_fall -min 1.000 [get_ports reset]
set_input_delay -clock [get_clocks *] -clock_fall -max 3.000 [get_ports reset]
set_output_delay -clock [get_clocks *] -min 0.750 [get_ports tx_line]
set_output_delay -clock [get_clocks *] -max 3.250 [get_ports tx_line]
set_output_delay -clock [get_clocks *] -min 0.750 [get_ports LED_bobot_cmplt]
set_output_delay -clock [get_clocks *] -max 3.250 [get_ports LED_bobot_cmplt]
set_output_delay -clock [get_clocks *] -min 0.750 [get_ports LED_conv_cmplt]
set_output_delay -clock [get_clocks *] -max 3.250 [get_ports LED_conv_cmplt]
set_output_delay -clock [get_clocks *] -min 0.750 [get_ports LED_masukan_cmplt]
set_output_delay -clock [get_clocks *] -max 3.250 [get_ports LED_masukan_cmplt]
set_output_delay -clock [get_clocks *] -min 0.750 [get_ports LED_done]
set_output_delay -clock [get_clocks *] -max 3.250 [get_ports LED_done]


