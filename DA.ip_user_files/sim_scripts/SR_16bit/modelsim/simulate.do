onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xbip_utils_v3_0_10 -L c_reg_fd_v12_0_6 -L c_mux_bit_v12_0_6 -L c_shift_ram_v12_0_14 -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.SR_16bit

do {wave.do}

view wave
view structure
view signals

do {SR_16bit.udo}

run -all

quit -force
