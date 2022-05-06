create_clock -period 10.000 -name Clk -waveform {0.000 5.000} [get_ports Clk]
create_generated_clock -name {Unit_Data_Path/unit_Buff_Masukan/Count[0]} -source [get_ports Clk] -divide_by 1 [get_pins {Unit_Data_Path/unit_Buff_Masukan/s_Count_reg[0]/Q}]
create_generated_clock -name {Unit_Data_Path/unit_Buff_Masukan/Count[1]} -source [get_ports Clk] -divide_by 1 [get_pins {Unit_Data_Path/unit_Buff_Masukan/s_Count_reg[1]/Q}]
create_generated_clock -name {Unit_Data_Path/unit_Buff_Masukan/Count[2]} -source [get_ports Clk] -divide_by 1 [get_pins {Unit_Data_Path/unit_Buff_Masukan/s_Count_reg[2]/Q}]
create_generated_clock -name {Unit_Data_Path/unit_Buff_Masukan/Count[3]} -source [get_ports Clk] -divide_by 1 [get_pins {Unit_Data_Path/unit_Buff_Masukan/s_Count_reg[3]/Q}]
set_input_delay -clock [get_clocks Clk] -min -add_delay 0.000 [get_ports reset]
set_input_delay -clock [get_clocks Clk] -max -add_delay 6.000 [get_ports reset]
set_input_delay -clock [get_clocks Clk] -min -add_delay 0.000 [get_ports rx_line]
set_input_delay -clock [get_clocks Clk] -max -add_delay 6.000 [get_ports rx_line]
set_output_delay -clock [get_clocks Clk] -min -add_delay 0.000 [get_ports LED_bobot_cmplt]
set_output_delay -clock [get_clocks Clk] -max -add_delay 0.000 [get_ports LED_bobot_cmplt]
set_output_delay -clock [get_clocks Clk] -min -add_delay 0.000 [get_ports LED_conv_cmplt]
set_output_delay -clock [get_clocks Clk] -max -add_delay 0.000 [get_ports LED_conv_cmplt]
set_output_delay -clock [get_clocks Clk] -min -add_delay 0.000 [get_ports LED_done]
set_output_delay -clock [get_clocks Clk] -max -add_delay 0.000 [get_ports LED_done]
set_output_delay -clock [get_clocks Clk] -min -add_delay 0.000 [get_ports LED_masukan_cmplt]
set_output_delay -clock [get_clocks Clk] -max -add_delay 0.000 [get_ports LED_masukan_cmplt]
set_output_delay -clock [get_clocks Clk] -min -add_delay 0.000 [get_ports tx_line]
set_output_delay -clock [get_clocks Clk] -max -add_delay 0.000 [get_ports tx_line]