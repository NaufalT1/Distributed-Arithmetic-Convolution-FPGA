onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Adder_opt

do {wave.do}

view wave
view structure
view signals

do {Adder.udo}

run -all

quit -force
