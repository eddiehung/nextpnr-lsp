#!/bin/bash
set -ex
yosys assign.ys
LSP_TIMEOUT=3000 ../nextpnr-ice40 --json assign.json --pcf assign.pcf --asc longest_in_3000s.asc --up5k
icepack longest_in_3000s.asc longest_in_3000s.bin
