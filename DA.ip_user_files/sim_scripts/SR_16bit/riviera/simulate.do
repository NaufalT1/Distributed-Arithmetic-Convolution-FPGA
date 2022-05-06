onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+SR_16bit -L xbip_utils_v3_0_10 -L c_reg_fd_v12_0_6 -L c_mux_bit_v12_0_6 -L c_shift_ram_v12_0_14 -L xil_defaultlib -L secureip -O5 xil_defaultlib.SR_16bit

do {wave.do}

view wave
view structure

do {SR_16bit.udo}

run -all

endsim

quit -force
