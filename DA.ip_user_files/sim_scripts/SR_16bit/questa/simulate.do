onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib SR_16bit_opt

do {wave.do}

view wave
view structure
view signals

do {SR_16bit.udo}

run -all

quit -force
