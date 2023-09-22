# CMPSC 200: Space Rock Surprise

| Date              |          |
|:------------------|:---------|
| 19 September 2023 | Assigned  |
| 29 September 2023 | Due, end of lab       |
| Status           | [![GatorGrader](../../actions/workflows/main.yml/badge.svg)](../../actions/workflows/main.yml) |


## Learning objectives

* debug a basic `Assembly` language programs using register values to correct program code
* develop solutions to recognizable, known problems using Rasperry Pi Pico W hardware (ARMv6 ISA)
* describe the process of using memory registers to manipulate data

## Introduction

This week's work gets us _finally_ into systems, in particular the system that we'll be spending the rest of our semester with: the Raspberry Pi Pico W (aka Cortex M0+). Like the CARDIAC, this device has an ISA which describes a RISC (reduced instruction set computer). However, compared to the _very_ reduced instruction set of the CARDIAC, this device has a larger vocabulary. But, what it gains in expressiveness, it lacks greatly in storage.

While the CARDIAC had _many_ memory spaces to use, we're restricted to the range of `R0` - `R7` on our Cortex, which seems like a pretty wide range of availability. In practice, we'll discover that's not so accommodating.

### Known knowns

#### Hello, World!

The traditional new-to-a-language developer experience. This one is provided for you, and we'll talk through it as an example of how a program works in ARMv6 Assembly.

This program will:

* print the phrase `Hello, World!`

#### Basic adder

A callback to our earliest days with the CARDIAC, we'll explore a basic adder. But, there's a catch: we have a similar technical limitation to our earlier machine except _it gets worse._ Whereas the CARDIAC accepted any numbers from `-999` - `+999`, working in the world of powers of `2` creates some constraints.

This program will:

* add two numbers
* store the result in a register
* print the result from a register

#### Rock sifter

As we learn a bit more about our new machine, we need to put it to some sort of profitable use! Here, we're going to sift some _valuable_ `MOONROCK`s from the gathered detritus of our otherwise useless moon.

Our program should:

* load the letters of the word `MOONROCK` in correct order using memory locations
* print the fully assembled word

### Lab: You Bet Your Basalt

Complete this work in [basalt_bonanza/program.S](basalt_bonanza/program.S).

After digging through our `MOONROCK` collection, we came upon a pretty special one. Only, it fused together during re-entry, so we need to separate the parts and put it back together. This will require use of a new instruction that works _kind-of like_ an old instruction. Here, you'll learn a bit more about `LDRB` (or, "Load Register Byte").

While we've used this briefly in at least one of our exercises (`basic_addition`), this assignment will test your understanding of storage and loading.

Your program should:

* rearrange the letters found in `rock` to fill the `rockbox`
* these letters will spell a rare kind of space rock: in fact, there's only one in existence

> Hint: You may need to look up the name of the rock on the internet.

### Assignment "Hacks"

See the `Suggestion` below to challenge yourself to implement a Hack. As always, you are allowed to develop
your own Hack to satisfy this stretch goal. Place the code for the Hack inline with the code in the corresponding
file.

In order to recieve credit for the Hack, you must fill out the [hack.md](docs/hack.md) file located in the
`docs` folder.

> Note: The hacks this week are _exploratory_ in nature; they ask you to, effectively, break the programs to discover the conditions surrounding various failure modes. 

#### `basic_addition`

We've successfully added two (`2`) numbers: `100` and `128`. Reading ahead in our future discussion of binary (see [our slides](https://github.com/allegheny-college-cmpsc-200-fall-2023/course-materials/blob/main/slides/CMPSC%20200%20-%20ARM%20Assembly.pdf)), characterize these numbers:

* how "big" are they? 
* what happens if we try to add `254` and `254`?
  * what about `355`, and `420`?

#### `moon_rocks` or `basalt_bonanza`

Here, we've printed a string. Normally, not so daring a feat. But, this is space: the final frontier (or is it the unknown country?). What happens if we mess with our `.data` section: 

* the length of the space-saving string or the `.fill`
* what happens if we add or subtract too many numbers from our registers?

> If you didn't get either of the jokes in the previous description add watching Star Trek VI to your weekend plans. I mean, Hamlet also says it somewhere, but it's not as cool as Star Trek.

### Changes to files in `.vscode`

Based on your system setup (refer to your `hello-blinky` assignment), you will need to make changes in _each exercise's folder_. 
See our [wiki's entry  on "Configuring Assignments"](https://github.com/allegheny-college-cmpsc-200-fall-2023/course-materials/wiki/03-Configuring-Assignments)
for more inforamtion.
