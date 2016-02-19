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

[Questions?](mailto:gsoc@fossi-foundation.org)

### Constrained randomised testing with coverage tracking in Cocotb

Extend the [Cocotb](http://potential.ventures/cocotb/) co-simulation
library to support constrained randomised testing (e.g. via Google
[https://code.google.com/p/or-tools/](or-tools)) and to track achieved
coverage of the tested HDL.

[Questions?](mailto:gsoc@fossi-foundation.org)

### OpenRISC Port of the ROMCC (ROM C Compiler)

ROMCC, created by Eric Biederman, generates machine code from C that
uses only CPU registers—meaning machine code that needs no stack and,
therefore, no initialized RAM. This compiler is used in the
[Coreboot](https://www.coreboot.org/) project.

[Questions?](mailto:gsoc@fossi-foundation.org)

### OpenRISC GCC Port

There is a GCC port for OpenRISC, but it lacks the potential to become
a part of the official upstream GCC due to copyright assignments. We
hence plan a clean room rewrite and have separated a summer assignment
to start with the basic compiler, based on other clean room
implementations.

[Questions?](mailto:gsoc@fossi-foundation.org)
