onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+SR_1bit -L xbip_utils_v3_0_10 -L c_reg_fd_v12_0_6 -L c_mux_bit_v12_0_6 -L c_shift_ram_v12_0_14 -L xil_defaultlib -L secureip -O5 xil_defaultlib.SR_1bit

do {wave.do}

view wave
view structure

do {SR_1bit.udo}

run -all

endsim

quit -force
