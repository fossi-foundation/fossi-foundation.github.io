---
layout: page
title: "Google Summer of Code 2016 - Ideas for Projects"
---
{% include JB/setup %}

We are applying as an organization in this years Google Summer of
Code. Once accepted, students can apply with proposals and we have
collected some ideas. This list will be extended and more details
added to the ideas in the next weeks.

### Dependency Handling in the FuseSoC Package Manager

[FuseSoC](https://github.com/olofk/fusesoc) is a package manager for
digital design blocks. It fetches IP blocks from different sources and
as part of this project the handling of the cores and especially
dependency handling are improved.

More details will
follow. [Questions?](mailto:gsoc@fossi-foundation.org)

### Constrained randomised testing with coverage tracking in Cocotb

*Goal:* Extend the [Cocotb](http://potential.ventures/cocotb/) co-simulation
library to support constrained randomised testing (e.g. via Google
[https://code.google.com/p/or-tools/](or-tools)) and to track achieved
coverage of the tested HDL.

*Details:* Cocotb is a Python framework for testing VHDL and
 [System]Verilog hardware designs. Although various open source
 simulators are available, none of them provide the advanced
 verification features of expensive proprietary simulators. This
 project will implement constrained randomisation and functional
 coverage collection in Cocotb, giving open source projects these
 capabilities.

Constrained Randomisation is a similar concept to fuzz testing;
generating random stimulus transactions according to certain
constraints in order to exercise a hardware design. To understand how
well the randomly generated inputs are testing design the we also need
to instrument the code to track metrics on which scenarios have been
exercised (known as functional coverage).

The goal of this project is to provide a convenient interface to an
existing constraint solver from Cocotb and create and manage a
database of functional coverage points. To facilitate processing of
the coverage data we’ll need to export to various formats for
consumption by other tools. We can also integrate coverage information
with existing software development services such as coveralls.io.

By undertaking this project you will learn about latest ASIC/FPGA
verification practices and the interaction between hardware and
software development

*Skill Level:* Intermediate

*Language/Tools:* Python

*Mentor:* [Chris Higgs](chris.higgs@potentialventures.com)

### OpenRISC Port of the ROMCC (ROM C Compiler)

ROMCC, created by Eric Biederman, generates machine code from C that
uses only CPU registers—meaning machine code that needs no stack and,
therefore, no initialized RAM. This compiler is used in the
[Coreboot](https://www.coreboot.org/) project.

More details will
follow. [Questions?](mailto:gsoc@fossi-foundation.org)

### OpenRISC GCC Port

There is a GCC port for OpenRISC, but it lacks the potential to become
a part of the official upstream GCC due to copyright assignments. We
hence plan a clean room rewrite and have separated a summer assignment
to start with the basic compiler, based on other clean room
implementations.

More details will
follow. [Questions?](mailto:gsoc@fossi-foundation.org)

