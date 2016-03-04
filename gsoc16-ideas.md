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

### Ideas Overview

 * [Dependency Handling in the FuseSoC Package Manager](#dependency-handling-in-the-fusesoc-package-manager) (Python)
 * [Constrained randomised testing with coverage tracking in Cocotb](#constrained-randomised-testing-with-coverage-tracking-in-cocotb) (Python)
 * [Visualization and Debugging Interface for jor1k](#visualization-and-debugging-interface-for-jor1k) (JavaScript, HTML)
 * [Extend LibreCores.org](#extend-librecoresorg) (PHP, Symfony, MySQL, HTML, Javascript)
 * [Create a Parallella acceleration framework for GNU radio](#create-a-parallella-acceleration-framework-for-gnu-radio) (Python, C)
 * [Your LibreCore](#your-librecore) (Verilog, VHDL, Chisel)
 * [Port RISC-V core to Parallella](#port-risc-v-core-to-parallella) (Verilog, C, Chisel)
 * [QEMU port of OpenRISC](#qemu-port-of-openrisc) (C)
 * [OpenRISC: Improved OpenOCD support for transports and SMP](#openrisc-improved-openocd-support-for-transports-and-smp) (C, Tcl)
 * [OpenRISC Port of the ROMCC (ROM C Compiler)](#openrisc-port-of-the-romcc-rom-c-compiler) (C)
 * [OpenRISC GCC Port](#openrisc-gcc-port) (C)
 * [Reference Implementation for a Leakage Aware Compiler Optimization](#reference-implementation-for-a-leakage-aware-compiler-optimization)
 * [GNU Superoptimizer 2.0: Reference Implementation for the AAP](#gnu-superoptimizer-20-reference-implementation-for-the-aap)
 * [An Altruistic Processor (AAP): Reference Implementation](#an-altruistic-processor-aap-reference-implementation)

### Dependency Handling in the FuseSoC Package Manager

[FuseSoC](https://github.com/olofk/fusesoc) is a package manager for
digital design blocks. It fetches IP blocks from different sources and
as part of this project the handling of the cores and especially
dependency handling are improved.

The dependency handling in FuseSoC is currently limited to specifying
an exact version of a dependency. For this project we want to extend
this so that cores can have a dependency on a range of versions. We
also want to support alternative dependencies for cores with similar
interfaces. The dependency handler also need to be able to resolve
conflicts and produce a minimal set of dependencies.

Much of the inspiration for the dependency handling comes from Gentoo's
ebuild format, and the format used for the DEPEND and RDEPEND lists
could serve as a good starting point.  If time permits it would also be
very interesting to add support for Gentoo style useflags to the cores
as well.

Hopefully this project will produce a general-purpose python dependency
management library which can be used in other projects as well.

*Skill Level:* Intermediate

*Language/Tools:* Python

*Mentor:* [Olof Kindgren](mailto:olof.kindgren@gmail.com)

### Constrained randomised testing with coverage tracking in Cocotb

*Goal:* Extend the [Cocotb](http://potential.ventures/cocotb/)
co-simulation library to support constrained randomised testing
(e.g. via Google [or-tools](https://code.google.com/p/or-tools/)) and
to track achieved coverage of the tested HDL.

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
[#24](https://github.com/s-macke/jor1k/issues/24),
[#107](https://github.com/s-macke/jor1k/issues/107) and
[#110](https://github.com/s-macke/jor1k/issues/110) are good starting
points for a proposal.

*Skill Level:* Intermediate

*Language/Tools:* Javascript and HTML

*Mentor:* [Sebastian Macke](mailto:sebastian@macke.de)

### Extend LibreCores.org
[LibreCores](http://www.librecores.org) is a community web site with the goal of providing an overview of IP cores and the corresponding ecosystem, similar to the now abandoned OpenCores.org site. For further information on our goals, see the [FOSDEM Presentation slides](https://fosdem.org/2016/schedule/event/digital_hardware_design/attachments/slides/1037/export/events/attachments/digital_hardware_design/slides/1037/fossi_fosdem.pdf) announcing LibreCores. The full site source code is available on [GitHub](https://github.com/librecores/librecores-web). The issues also contain some plans and tasks to be taken on.

Please talk to Philpp for a full description of available tasks and a discussion what can/should be done, also based on your existing experience.

*Skill Level:* Intermediate

*Language/Tools:* PHP with the Symfony Framework, MySQL, HTML/JS

*Mentor:* [Philipp Wagner](mailto:mail@philipp-wagner.com)

### Create a Parallella acceleration framework for GNU radio

GNU radio is an immensly powerful framework for software defined
radio, but it’s only as good as its built in hardware
support. Currently, there is support for SIMD, GPUs, and FPGAs, but
there is no support for manycore array accelerators like Epiphany. The
project involves creating the equivalent of an
[accelerator](https://gnuradio.org/redmine/projects/gnuradio/wiki/Zynq/35)
(done in an FPGA) for the Epiphany manycore accelerator. All code
should be written in "high level" C to maximize portability between
manycore architecture.

*Language:* Python/C

*License:* GPL/MIT

*Mentor:* [Andreas Olofsson](mailto:andreas@adapteva.com)

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

### Port RISC-V core to Parallella

The RISC-V is an exciting new open source processor architecture
founded at UC Berkeley. A test environment has been created for the
Zynq based Zedboard development platform. Given that there are over
10,000 Parallellas in the field in 75 countries and 200 universities,
it would be a great services to computer architecture researchers if
there was a ready to run
[reference implementation](https://github.com/ucb-bar/fpga-zynq) of
the RISC-V rocket core running in the Zynq FPGA on the open source
Parallella board.

*Language/Tools:* Verilog, C, Chisel

*Mentor:* [Andreas Olofsson](mailto:andreas@adapteva.com)

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

### OpenRISC GCC Port

There is a GCC port for OpenRISC, but it lacks the potential to become
a part of the official upstream GCC due to copyright assignments. We
hence plan a clean room rewrite and have separated a summer assignment
to start with the basic compiler, based on other clean room
implementations.

More details will
follow. [Questions?](mailto:gsoc@fossi-foundation.org)

### Reference Implementation for a Leakage Aware Compiler Optimization

More details will
follow. [Questions?](mailto:gsoc@fossi-foundation.org)

### GNU Superoptimizer 2.0: Reference Implementation for the AAP

More details will
follow. [Questions?](mailto:gsoc@fossi-foundation.org)

### An Altruistic Processor (AAP): Reference Implementation

More details will
follow. [Questions?](mailto:gsoc@fossi-foundation.org)
