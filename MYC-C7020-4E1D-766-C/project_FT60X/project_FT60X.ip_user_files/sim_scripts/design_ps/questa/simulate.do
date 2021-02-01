onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib design_ps_opt

do {wave.do}

view wave
view structure
view signals

do {design_ps.udo}

run -all

quit -force
