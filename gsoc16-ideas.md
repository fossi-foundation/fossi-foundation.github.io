---
layout: page
title: "Google Summer of Code 2016 - Ideas for Projects"
---
{% include JB/setup %}

We are accepted as an organization in this years Google Summer of
Code. Students can apply with proposals in the time frame from March
14 to March 25. We have collected some ideas in the following, but we
encourage you to send your own ideas to
[gsoc@fossi-foundation.org](mailto:gsoc@fossi-foundation.org) or post
to our
[mailing list](https://lists.fossi-foundation.org/listinfo/discussion).

### Dependency Handling in the FuseSoC Package Manager

[FuseSoC](https://github.com/olofk/fusesoc) is a package manager for
digital design blocks. It fetches IP blocks from different sources and
as part of this project the handling of the cores and especially
dependency handling are improved.

More details will
follow. [Questions?](mailto:gsoc@fossi-foundation.org)

*Language/Tools:* Python

### Constrained randomised testing with coverage tracking in Cocotb

*Goal:* Extend the [Cocotb](http://potential.ventures/cocotb/) co-simulation
library to support constrained randomised testing (e.g. via Google
[or-tools](https://code.google.com/p/or-tools/)) and to track achieved
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

*Mentor:* [Chris Higgs](mailto:chris.higgs@potentialventures.com)

### Visualization and Debugging Interface for jor1k

[jor1k](https://github.com/s-macke/jor1k) is an emulator for the
OpenRISC and RISC-V platform and is the fastest emulator which runs in
the web browser and boots Linux. It comes with a working underlying
framework and a comprehensive library for hardware devices such as a
framebuffer and network support. It would be nice for teaching and for
a broader audience to give the user a much more advanced user
interface with debugging capabilities (disaassembler, breakpoints,
...) and further visualization features (status screens). Hence the
student would have a lot of freedom for improving jor1k, issues
(#24)[https://github.com/s-macke/jor1k/issues/24],
(#107)[https://github.com/s-macke/jor1k/issues/107] and
(#110)[https://github.com/s-macke/jor1k/issues/110] are good starting
points for a proposal.

*Skill Level:* Intermediate

*Language/Tools:* Javascript and HTML

*Mentor:* [Sebastian Macke](mailto:sebastian@macke.de)

### QEMU port of OpenRISC

[QEMU](http://wiki.qemu.org/Main_Page) is a generic and open source
machine emulator and virtualizer and contains a lot of features which
would be very helpful for the OpenRISC community. There exists an old
port but it is outdated and very slow.  The goal of this project would
be to rewrite and improve the current port and upstream the
patches. Test cases, device support and a working image running Linux
with proper device support should be provided as well.

*Skill Level:* Intermediate

*Language/Tools:* C

*Mentor:* [Sebastian Macke](mailto:sebastian@macke.de)

### OpenRISC: Improved OpenOCD support for transports and SMP

[OpenOCD](http://openocd.org/) supports the OpenRISC processor, but
the current backend is tailored to the needs of JTAG. Hence, we want
to improve the backend to allow other physical transports, which is
generally possible with OpenOCD. If time permits, the student may also
add multi-thread (SMP) support to the OpenRISC backend.

*Skill Level:* Intermediate

*Language/Tools:* C, Tcl

*Mentor:* [Stefan Wallentowitz](mailto:stefan@wallentowitz.de)

### OpenRISC Port of the ROMCC (ROM C Compiler)

ROMCC, created by Eric Biederman, generates machine code from C that
uses only CPU registers—meaning machine code that needs no stack and,
therefore, no initialized RAM. This compiler is used in the
[Coreboot](https://www.coreboot.org/) project.

More details will
follow. [Questions?](mailto:gsoc@fossi-foundation.org)

### Your LibreCore

Our core ambition is to grow the community projects around open source
components. LibreCores are IP cores, but they are free and open. If
you have a great idea for such a LibreCore, we are happy to mentor
you, but it is important that it is re-usable and contains everything
needed for simple and flexible integration, like testbenches, the
required software drivers etc. So, it is important that you discuss a
proposal intensively.

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

### Reference Implementation fo a Leakage Aware Compiler Optimization

More details will
follow. [Questions?](mailto:gsoc@fossi-foundation.org)

### GNU Superoptimizer 2.0: Reference Implementation for the AAP

More details will
follow. [Questions?](mailto:gsoc@fossi-foundation.org)

### An Altruistic Processor (AAP): Reference Implementation

More details will
follow. [Questions?](mailto:gsoc@fossi-foundation.org)
