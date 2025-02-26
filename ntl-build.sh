#!/usr/bin/env bash

# This script is used to build NTL's Rust version with support for the `riscv32imac-unknown-linux-gnu` target.

cp ntl-config.toml config.toml
export CFLAGS_riscv32imac_unknown_linux_gnu="-march=rv32imac -mabi=ilp32"
./x build -i --stage 1 compiler/rustc library/std
./x dist -i --stage 1
