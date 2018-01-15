---
layout: page
title: "Google Summer of Code 2018 - Ideas for Projects"
---

<!--
We are happy to [announce](2017/03/02/gsoc) that we have been selected to participate in Google Summer of Code 2017!
-->
Whether you’re an aspiring student or mentor, feel free to contact us,
either through the private GSoC-specific mailing list [gsoc@fossi-foundation.org](mailto:gsoc@fossi-foundation.org),
through the public [discussion mailing list](https://lists.librecores.org/listinfo/discussion),
or through the mentors listed for each project below.
We are also available on [Gitter in librecores/Lobby](https://gitter.im/librecores/Lobby).

Looking forward to meet you all!

* TOC
{:toc}



### Create your own LibreCores, or contribute to an existing one

*Details:* Our main goal is to grow the community around open source silicon
designs. LibreCores are IP cores, but they are free and open. While
there are many projects you can contribute too, you may have your own
great idea for a LibreCore. All projects start small, and we see this
is a great chance to bring forward new ideas and start building new
tiny bits and pieces that enable free and open source chips.

We are happy to mentor you with your own idea, but it is important
that it is re-usable and contains everything needed for simple and
flexible integration, like testbenches, the required software drivers
etc. So, it is important that you discuss a proposal intensively.

*Skill level:* All

*Language/Tool:* Verilog, VHDL, Chisel, ...

*Mentor:* We will find the mentor with you,
 [LibreCores GSoC team](mailto:gsoc@fossi-foundation.org)


### Extend LibreCores.org

[LibreCores](http://www.librecores.org) is a community web site with the goal of providing an overview of IP cores and the corresponding ecosystem. We strive for LibreCores to be *the* resource for free and open source IP: it should be easy to find, integrate, and contribute to the projects found there -- to make digital design projects as easy as writing software. For further information on our goals, see the [FOSDEM Presentation slides](https://fosdem.org/2016/schedule/event/digital_hardware_design/attachments/slides/1037/export/events/attachments/digital_hardware_design/slides/1037/fossi_fosdem.pdf) announcing LibreCores. The full site source code is available on [GitHub](https://github.com/librecores/librecores-web).

You can find a non-exhaustive [list of available tasks in our documentation](http://librecores-web.readthedocs.io/en/latest/contributing.html). Please talk to Philipp if you have other ideas, or didn't find an interesting project. We welcome your own ideas!

*Skill Level:* Intermediate

*Language/Tools:* PHP7 with the [Symfony Framework](http://symfony.com/), MySQL, HTML/JS

*Mentor:* [Philipp Wagner](mailto:mail@philipp-wagner.com)


### Continuous Integration for Hardware Projects on LibreCores CI

*Goal:* Setup verification and continuous integration flow for one of open-source digital hardware projects.

*Details:*
[LibreCores CI](https://www.librecores.org/static/librecores-ci) is a
under-development Continuous Integration service within
[LibreCores](http://librecores.org). In this project we offer students
to work with modern hardware verification tools, RTL codebase and
[Jenkins Pipeline](https://jenkins.io/solutions/pipeline/) in order to
setup efficient verification flows for one of the open-source hardware
project being hosted on LibreCores. The project includes improvements
of the HW project testability in RTL, development/improvement of
testing frameworks and a development of a new Pipeline Library for
automation in Jenkins.

Prerequisites:
* Basic knowledge of the hardware verification techniques
* Knowledge of one of RTL languages
* Knowledge of one of the scripting languages (preferably Python or Groovy)

*Skill Level:* Intermediate

*Language/Tools:* Verilog/VHDL/.../Python, Jenkins, Groovy

*Mentors:* [Oleg Nenashev](mailto:o.v.nenashev@gmail.com),
[Stefan Wallentowitz](mailto:stefan@wallentowitz.de)


### Open SoC Debug: Efficient Control-Flow Traces

Trace debugging is the method to observe the execution of a
system-on-chip. The [Open SoC Debug](http://www.opensocdebug.org) project
creates open source building blocks for a debug infrastructure, with a
strong focus on efficient trace debugging.

Control Flow tracing (or instruction tracing) is the process of observing a program execution on a processor, and creating a "trace" from these observations, which allows a tool to re-create the program flow as it happened on-chip.

To transmit traces efficiently from the chip to the host PC, trace compression must be applied. This compression reduces all non-essential parts of the trace, reducing it to (typically) only jump instructions where the target cannot be determined using the program binary.

The goal of this project is to (a) find a good trace compression algorithm for instruction traces, and (b) implement it in System Verilog (on the hardware side) and C (on the software side) for the Open SoC Debug system.

*Skill Level*: Intermediate

*Language/Tools:* SystemVerilog, C

*Mentor:* [Philipp Wagner](mailto:mail@philipp-wagner.com)

### Open SoC Debug: Trace Visualization and Configuration

*Details:* The [Open SoC Debug](http://opensocdebug.org) project
creates open source building blocks for a debug infrastructure, with a
strong focus on efficient trace debugging. Currently we focus on the
target (hardware) side of the infrastructure, but want to improve the
host software, especially visualization of traces and configuration of
the debug hardware.

In this project you should not reinvent the wheel, but build around
existing infrastructure. For example the
[Open Trace Format 2](https://silc.zih.tu-dresden.de/otf2-current/html/)
and the
[SCORE-P infrastructure](http://www.vi-hps.org/projects/score-p/) are
good starting points. For the visualization and interface building we
suggest having a look at state of the visualization tools like
[ravel](https://github.com/LLNL/ravel) to integrate with or build a
new framework for example on [electron](http://electron.atom.io/).

*Skill level*: Beginner, Intermediate

*Language/Tools*: C++/Java/JS

*Mentor:* [Philipp Wagner](mailto:mail@philipp-wagner.com),
[Stefan Wallentowitz](mailto:stefan@wallentowitz.de)

### Open SoC Debug: Trace Logging to Memory

*Details*: In the [Open SoC Debug](http://opensocdebug.org) we
currently transfer traces from the debug target to the host for
on-line visualization or offline processing. But low level traces may
be interesting even while the system-on-chip is in the field, similar
to system traces, e.g. from Linux. The idea is to write the traces to
a reserved space in the system memory and read them from the running
software.

Basically this idea involves two hardware tasks: A configuration
interface for trace logging and the interface between the debug
interconnect and the system memory. Ideally your proof-of-concept
includes a simple software. This setup can be optimized for example
with trace compression and circular buffering.

*Skill level*: Intermediate

*Language/Tools*: System Verilog

*Mentor:* [Stefan Wallentowitz](mailto:stefan@wallentowitz.de)


### Open SoC Debug: Run-Control Debugging

*Details*: [Open SoC Debug](http://opensocdebug.org) is a free and open debug and trace system for embedded systems.
Our current developments mainly focused on the tracing part, leaving run-control debug for this GSoC project!
By run-control debug we mean the process of firing up GDB, setting breakpoints in a program, and stepping through the program.
In order to support these operations from GDB, the goal of this project is to create (a) [hardware](https://github.com/opensocdebug/osd-hw) extensions in SystemVerilog, which allow reading control registers from a CPU (these are used to set breakpoints and halt/continue the CPU), and (b) create a gdbserver implementation inside our [Open SoC Debug software implementation](https://github.com/opensocdebug/osd-sw) which GDB can connect to. To get you started, we have sample code available which can be used as a starting point.

*Skill level*: Intermediate

*Language/Tools*: System Verilog, C

*Mentor:* [Philipp Wagner](mailto:mail@philipp-wagner.com)

### OpTiMSoC: Extend the Linux Port

*Details:* The
[Open Tiled Manycore System-on-Chip](http://optimsoc.org) is a
prototyping platform for massively parallel multicore
system-on-chip. The main runtime environments we employ so far are
baremetal and a very lean operating system ("compute node OS").

In last year's GSoC [Pedro created an initial Linux port for OpTiMSoC](https://www.optimsoc.org/blog/2017/09/04/gsoc2917.html).
He solved all the hard problems of getting Linux up and running, and paved the path to continue with more high-level features of Linux.
By now the OpenRISC port of Linux is upstreamed and [extended to provide multi-core support (SMP)](https://lkml.org/lkml/2017/9/10/24).

The goal of this GSoC project is to extend the OpTiMSoC Linux port.
What extensions, you might ask? It's up to you!
How about enabling multi-core support? Or creating an extended device driver for our Network-on-Chip (NoC)? Or writing an accelerator interface to trigger computations in the compute grid of OpTiMSoC from software running on Linux? There's an endless stream of opportunities to choose from -- bring your own idea or get in touch with us to discuss ideas we have.

No matter which task you choose, you get unique insights into hardware (you can actually view the waveform of most signals in OpTiMSoC!) and Linux internals.

*Skill level:* Intermediate, Advanced

*Language/Tools*: Linux Kernel development (C), optional: FPGA synthesis flow

*Mentors:* [Stefan Wallentowitz](mailto:stefan@wallentowitz.de),
 [Philipp Wagner](mailto:mail@philipp-wagner.com),
 [Stafford Horne](mailto:shorne@gmail.com)
