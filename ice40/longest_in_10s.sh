#!/bin/bash
set -ex
yosys assign.ys
LSP_TIMEOUT=10 ../nextpnr-ice40 --json assign.json --pcf assign.pcf --asc longest_in_10s.asc --up5k
icepack longest_in_10s.asc longest_in_10s.bin
