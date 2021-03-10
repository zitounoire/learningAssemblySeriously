# Learning assmebly

This repo is me going through [This tutorial](https://www.tutorialspoint.com/assembly_programming/assembly_introduction.htm).
Any notes i find interesting will be put in this readme file

---
# Introduction

## Data sizes of a processor:

* Word: a 2-byte data item
* Doubleword: a 4-byte (32 bit) data item
* Quadword: an 8-byte (64 bit) data item
* Paragraph: a 16-byte (128 bit) area
* Kilobyte: 1024 bytes
* Megabyte: 1,048,576 bytes

## Binary system

|128|64|32|16|8|4|2|1| Value <br>
\--------------------- <br>
| 7 | 6| 5| 4|3|2|1|0| Bit number

## Hex

Decimal: 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
Hex 	 0 1 2 3 4 5 6 7 8 9  A  B  C  D  E  F


## Bin to hex conversion

0110101010001010 --> 0110 1010 1000 1011 --> 6A8B 

## Bin Arithmetic

easy so gonna skip taking notes

## Addressing data in memory

* Fetch-Decode-Execute cycle (execution cycle)
* Indianess
* Types of memory addresses


# Basic Syntax

An assmebly program is devided into 3 sections:

* Data section:

```
section.data
# used for declaring initialised data (doesn't change at runtime)
```

* Bss section

```
section.bss
# used for variable declaration
```

* Text section 

```
# This section contains the code

section.text
    global _start
_start:
```

## Comments

```
mov eax, ebx ; This is a comment
```
## ASM Statements

* Instructions (opcode)
* Assembler directives
* Macros

## Syntax

```
[label] mnemonic [operands] [;comments]
```

# Compiling and linking an asm program

```
$ nasm -f elf <.asm file> (here we chose the elf format but there are plenty more to choose from nasm -f)
$ ld -m elf_i386 -s -o <binary name> <.o object file name>
```
# Example

See examples/hello.asm

---

# Memory segments

we can replace the `section` keyword with `segment`

```
segment .text
    global _start
_start:
```

An assembly program is divided into three segments

* Data segment (represented by the .data and .bss sections)
* Code segment (represented by the .text section) 
* The Stack (contains arguments passed to functions and procedures)

# Registers

## Data registers

EAX - EBX - ECX - EDX

## Pointer registers

EIP - ESP - EBP 

## Index registers

ESI - EDI

## Flags register

Holds flags that are useful in arithmetic operations, comparaisons ...(carry flag, parity flag ...and more)


## Segment registers

DS - SS - CS


