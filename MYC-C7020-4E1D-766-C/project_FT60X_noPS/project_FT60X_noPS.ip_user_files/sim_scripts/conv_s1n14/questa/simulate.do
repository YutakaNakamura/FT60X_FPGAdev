onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib conv_s1n14_opt

do {wave.do}

view wave
view structure
view signals

do {conv_s1n14.udo}

run -all

quit -force
