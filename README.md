# CMPSC 200: Space Rock Surprise

| Date              |          |
|:------------------|:---------|
| 19 September 2023 | Assigned  |
| 29 September 2023 | Due, end of lab       |
| Status           | [![GatorGrader](../../actions/workflows/main.yml/badge.svg)](../../actions/workflows/main.yml) |


## Learning objectives

* debug a basic `Assembly` language program using register values to correct program code
* develop solutions to recognizable, known problems using Rasperry Pi Pico W hardware (ARMv6 ISA)
* describe the process of using memory registers to manipulate data

## Introduction

This week's work gets us _finally_ into systems, in particular the system that we'll be spending the rest of our semester with: the Raspberry Pi Pico W (aka Cortex M0+). Like the CARDIAC, this device has an ISA which describes a RISC (reduced instruction set computer). However, compared to the _very_ reduced instruction set of the CARDIAC, this device has a larger vocabulary. But, what it gains in expressiveness, it lacks greatly in storage.

While the CARDIAC had _many_ memory spaces to use, we're restricted to the range of `R0` - `R7` on our Cortex, which seems like a pretty wide range of availability. In practice, we'll discover that's not so accommodating.

### Known knowns

#### Hello, World!

The traditional new-to-a-language developer experience. This one is provided for you, and we'll talk through it as an example of how a program works in ARMv6 Assembly.

This program will:

* print the phrase `Hello, World!`, followed by
* a counter which increments by `1` for each run of a loop

#### Basic adder

A callback to our earliest days with the CARDIAC, we'll explore a basic adder. But, there's a catch: we have a similar technical limitation to our earlier machine except _it gets worse._ Whereas the CARDIAC accepted any numbers from `-999`` - `+999`, working in the world of powers of `2` creates some constraints.

This program will:

* add two numbers
* store the result in a register
* print the result from a register

#### Rock sifter

As we learn a bit more about our new machine, we need to put it to some sort of profitable use! Here, we're going to sift some _valuable_ `MOONROCK`s from the gathered detritus of our otherwise useless moon.

Our program should:

* load the letters of the word `MOONROCK` in correct order using memory locations
* print the fully assembled word