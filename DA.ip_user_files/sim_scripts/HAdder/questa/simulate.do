onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib HAdder_opt

do {wave.do}

view wave
view structure
view signals

do {HAdder.udo}

run -all

quit -force
