onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib SR_1bit_opt

do {wave.do}

view wave
view structure
view signals

do {SR_1bit.udo}

run -all

quit -force
