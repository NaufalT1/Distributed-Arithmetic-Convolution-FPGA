onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib adder_DA_opt

do {wave.do}

view wave
view structure
view signals

do {adder_DA.udo}

run -all

quit -force
