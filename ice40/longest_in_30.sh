#!/bin/bash
set -ex
yosys assign.ys
LSP_TIMEOUT=30 ../nextpnr-ice40 --json assign.json --pcf assign.pcf --asc longest_in_30s.asc --up5k
icepack longest_in_30s.asc longest_in_30s.bin
