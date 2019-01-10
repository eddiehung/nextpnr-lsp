#!/bin/bash
set -ex
yosys assign.ys
LSP_TIMEOUT=300 ../nextpnr-ice40 --json assign.json --pcf assign.pcf --asc longest_300s.asc --up5k
icepack longest_300s.asc longest_300s.bin
