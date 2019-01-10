#!/bin/bash
set -ex
yosys assign.ys
../nextpnr-ice40 --json assign.json --pcf assign.pcf --asc shortest.asc --up5k
icepack shortest.asc shortest.bin
