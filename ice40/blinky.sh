#!/bin/bash
set -ex
yosys blinky.ys
/usr/bin/time -v ../nextpnr-ice40 --json blinky.json --pcf blinky.pcf --asc blinky.asc --lp384
#icepack blinky.asc blinky.bin
#icebox_vlog blinky.asc > blinky_chip.v
#iverilog -o blinky_tb blinky_chip.v blinky_tb.v
#vvp -N ./blinky_tb
