#!/bin/bash
set -ex
yosys assign.ys
LSP_TIMEOUT=300 ../nextpnr-ice40 --json assign.json --pcf assign.pcf --asc longest_in_300s.asc --up5k
icepack longest_in_300s.asc longest_in_300s.bin
