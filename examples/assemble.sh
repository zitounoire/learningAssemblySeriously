#!/bin/bash

nasm -f elf "${1}.asm"

# to link the object file generated use ld

ld -m elf_i386 -s -o $1 "${1}.o"

