---
layout: page
title: "Google Summer of Code 2021 - Ideas for Projects"
---

FOSSi Foundation is applying as an umbrella organization in Google
Summer of Code 2021. That means, that we give small projects the
chance to participate in the program. Below you can find a list of
ideas that the projects had, but students are encouraged to propose
their own ideas.

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

*Language/Tool:* Verilog, VHDL, Chisel, TL-Verilog, ...

*Mentor:* We will find the mentor with you,
 [LibreCores GSoC team](mailto:gsoc@fossi-foundation.org)


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

*Mentors:* [Stefan Wallentowitz](mailto:stefan@wallentowitz.de)


### WARP-V Many-Core in the Cloud

*Details:* In the past GSoCs, Akos Hadnagy, Ahmed Salman, Alaa Salman, Vineet Jain, and Shivam Potdar helped to mature three ground-breaking projects that have received a good deal of attention:

  1. [WARP-V](https://github.com/stevehoover/warp-v): a flexible TL-Verilog CPU core generator
  2. a library of [TL-Verilog "flow" components](https://github.com/stevehoover/tlv_flow_lib) (think STL for TL-Verilog)
  3. [1st CLaaS](https://github.com/stevehoover/1st-CLaaS): a framework for hardware acceleration of web/cloud applications using cloud FPGAs

This year, these projects can come together as an accelerator microservice running on cloud FPGAs! WARP-V is our CPU core. The flow library provides a network-on-chip (NoC) (that is not well tested). And 1st-CLaaS gives us our cloud FPGA infrastructure. We already have a basic single-core implementation of [WARP-V in 1st CLaaS](https://github.com/stevehoover/1st-CLaaS/tree/master/apps/warpv) capable of loading a program from a web client, executing it, and returning a result value. And WARP-V already supports multiple cores using a simple NoC from the flow library (with one known remaining bug). This project will produce a functional multi-core running in the cloud.

The first half of this project will demonstrate the three pieces coming together in "hello-world" fashion in simulation. The web client will load a program on a specified core and run that program which reads a status register containing the core ID, and returns it to the web client.

The remainder of the project can focus on any of the following, depending on the interests of the student:

  - the maturity of the hardware functionality
  - characterization and optimization of implementation(s) using Xilinx FPGA tools
  - constraining the implementation using Xilinx FPGA tools to reduce synthesis run time
  - developing test programs in RISC-V assembly language
  - developing the front-end web application to interface with the FPGA many-core

This project will not only lead to a highly-configurable many-core hardware accelerator PaaS; it will also:

  - serve to motivate the industry toward FPGA-accelerated web applications and FPGA-accelerated cloud computing
  - demonstrate the flexibility of TL-Verilog and WARP-V to motivate the industry toward better design methodology

*Primary Mentor:* [Akos Hadnagy](https://www.linkedin.com/in/akos-hadnagy/) ([email](mailto:akos.hadnagy@gmail.com)), Secondary: [Steve Hoover](https://www.linkedin.com/in/steve-hoover-a44b607/) ([email](mailto:steve.hoover@redwoodeda.com))

*Skill level:* Advanced

*Languages/Tools:* TL-Verilog, Vivado (logic synthesis and simulation debug), GTKWave, Makerchip.com, AWS F1, and optionally: JavaScript, HTML5

*Discussion:* [WARP-V LibreCores Gitter Room](https://gitter.im/librecores/warp-v), [1st CLaaS Gitter Room](https://gitter.im/librecores/fpga-webserver)


### Integration of WARP-V with OpenPiton

*Details:* In GSoC 2020, one of Shivam Potdar's accomplishments was to prepare the [WARP-V](https://github.com/stevehoover/warp-v) CPU core for integration with the [OpenPiton](https://parallel.princeton.edu/openpiton/) heterogeneous many-core framework. This project would aim to complete that integration.

This will enable academic exploration of the combined flexibility benefits of OpenPiton and WARP-V. OpenPiton provides flexibility through the integration of different CPU cores. WARP-V provides flexibility of the CPU core itself. WARP-V can be optimized for the cycle-time of OpenPiton, and differently-configured WARP-V cores could be run within the same system along with other CPU cores.

*Skill level:* Advanced

*Languages/Tools:* Verilog, TL-Verilog

*Co-mentors:* [Steve Hoover](https://www.linkedin.com/in/steve-hoover-a44b607/) ([email](mailto:steve.hoover@redwoodeda.com)), [Jonathan Balkind](https://www.linkedin.com/in/jbalkind/) ([email](mailtojbalkind@ucsb.edu)), [Akos Hadnagy](https://www.linkedin.com/in/akos-hadnagy/) ([email](mailto:akos.hadnagy@gmail.com))

*Discussion:* [WARP-V LibreCores Gitter Room](https://gitter.im/librecores/warp-v), [OpenPiton LibreCores Gitter Room](https://gitter.im/librecores/openpiton)


### WARP-V TensorCore Extension for Deep Learning

*Details:* Deep Learning continues to be a key application for custom processors. The core operation in high-performance implementations are fused dot products and matrix multiply. This project will add a tensor core to the WARP-V RISC-V processor. The main challenges will be:

  - developing the tensor core ISA
  - debugging the design in simulation
  - using Xilinx FPGA tools to optimize the implementation(s) (optionally)
  - developing the integration with TVM or TensorFlow (optionally)

This project will not only produce a Deep Learning hardware accelerator, it will also serve as a proof-point for a Deep Learning research platform to experiment with tensor operators and custom number systems.

*Skill level:* Advanced

*Language/Tools:* TL-Verilog, Makerchip, Xilinx tools

*Mentor:* [Theodore Omtzigt](https://www.linkedin.com/in/theodoreomtzigt/) ([email](mailto:theo@stillwater-sc.com)), Secondary: [Akos Hadnagy](https://www.linkedin.com/in/akos-hadnagy/) ([email](mailto:akos.hadnagy@gmail.com))


### Circuit Visualization

*Details:* The Makerchip platform for open-source circuit design has introduced support for custom visualization of circuit simulations. This has been used to great success in RISC-V training and has other applicability as well. In fact, any circuit can be visualized in useful ways. A few examples can be opened from [this repo](https://github.com/stevehoover/makerchip_examples). Some circuits we would like to provide visibility into include:

  - SweRV
  - SERV
  - TL-Verilog flow library
  - BaseJump STL
  - basic circuits for instructional purposes
  - virtualized FPGA boards

Visualization is written in (very straight-forward) JavaScript that has access to trace data from simulation and a canvas to draw on. A bit more detail on these ideas can be found [here](https://github.com/stevehoover/TL-V_Projects)

*Skill level:* Beginner

*Language/Tools:* JavaScript, Verilog/SystemVerilog/TL-Verilog

*Mentor:* [Steve Hoover](https://www.linkedin.com/in/steve-hoover-a44b607/) ([email](mailto:steve.hoover@redwoodeda.com)), Secondary: [Akos Hadnagy](https://www.linkedin.com/in/akos-hadnagy/)


### Block-Based Circuit Design

*Details:* Two of the benefits of TL-Verilog are:

  1. that it is far simpler syntactically than Verilog or VHDL (sure, it's an extension, but it obviates much of Verilog)
  2. that you can do more with less

We have already witnessed a [12-year-old coding a RISC-V core](https://riscv.org/blog/2020/12/risc-v-microarchitecture-for-kids-steve-hoover-redwood-eda/) using TL-Verilog. There is a real opportunity to introduce students to circuit design at a younger age.

The [Scratch](https://scratch.mit.edu/) platform has gotten younger kids interested in programming through the use of block-based programming. Can we apply block-based programming to TL-Verilog?? It seems like.. maybe.. yes. This project will attempt to do so using [Blockly](https://developers.google.com/blockly).

*Skill level:* Beginner

*Language/Tools:* TL-Verilog, Blockly

*Mentor:* [Steve Hoover](https://www.linkedin.com/in/steve-hoover-a44b607/) ([email](mailto:steve.hoover@redwoodeda.com))


### Other TL-Verilog-Related Projects

If you are interested in the TL-Verilog ecosystem, you might also consider any of these [TL-Verilog project ideas](https://github.com/stevehoover/TL-V_Projects). All would make excellent GSoC projects and mentors can be identified.


### LLVM Code Generation for RISC-V Open Source GPU

The RISC-V ISA will transform the world. Recently, U. Washington taped out an open source RISC-V manycore processor with 496 cores that hits 500 Billion RISC-V instructions per second in one chip. We have silicon up and running in our lab and are developing a second generation design based on results from the first generation, with a target of improving programmability. Our goal is to make this the defacto open source GPGPU design. (See bjump.org/manycore.) You will work to help design the CUDA-light programming environment using LLVM and make recommends for future versions of the architecture. For the second version, the design is hosted on Amazon F1, which allows us to simulate having the real chip even as we develop new features.

*Skills:* Knowledgeable of LLVM

*Mentors:* Michael Taylor

### Optimization of the BlackParrot Linux-Capable RISC-V Multicore

The RISC-V ISA will transform the world. U. Washington has received funding from DARPA to develop the world's first truly open RISC-V Linux-capable multicore implementation. In contrast to prior projects, our SystemVerilog-based design is truly open and we encourage external contributors, and ultimately intend to hand the design off to the world to maintain.  By this summer, we will have the "genesis release" of the core ready, but the focus is on functionality rather than extreme performance or energy efficiency. We are looking for folks to help optimize parts of the design and take it to the next level.

*Skills:* Knowledgeable of SystemVerilog and Computer Architecture.

*Mentors:* Michael Taylor

### PRGA + FASM: Open-source Bitgen for FPGAs
[Princeton Reconfigurable Gate Array (PRGA)](https://prga.readthedocs.io/en/latest/) is an open-source framework for building and using custom FPGAs. It consists of a Python front-end API (the PRGA Builder) for building custom FPGAs, and a CAD flow (the PRGA Tool Chain) for implementing target RTL designs on those custom FPGAs. The PRGA Tool Chain uses [Yosys](http://www.clifford.at/yosys/) for synthesis, [VPR](https://verilogtorouting.org/) for place & route, and the PRGA Bitgen for bitstream generation. The goal of this project is to add support for [FPGA Assembly (FASM)](https://github.com/SymbiFlow/fasm), a generic bitstream file format and part of the [SymbiFlow](https://symbiflow.github.io/) project, to PRGA. Specifically:

1. Enable the PRGA Builder to output a FASM schema which describes all of the available logic resources in the FPGA. The PRGA Builder supports different types of configuration memories, and the FASM schema should be independent of that.
2. Replace the inputs to the PRGA Bitgen, namely *.blif (synthesis result), *.net (packing result), *.place (placing result) and *.route (routing result), with one FASM file.

*Skill level:* Intermediate

*Language/Tools:* Python, C++, basic knowledge of FPGA CAD tools

*Mentors:* Ang Li

### Architectural Improvements to OpenPiton+Ariane
[OpenPiton+Ariane](https://openpiton-blog.princeton.edu/2018/11/announcing-openpiton-with-ariane/) is a permissively-licensed RISC-V manycore processor, built as a collaboration between the [PULP Platform](https://www.pulp-platform.org/) from ETH Zürich and the [OpenPiton Platform](http://www.openpiton.org/) from Princeton University. We would like to co-optimise OpenPiton and Ariane in their combined platform, to improve performance of the processor both in FPGA emulation systems and for eventual silicon chips. Possible improvements could be along the lines of: adding a global branch predictor, introducing a multi-level TLB, etc. We are also open to other projects aimed at improving the performance of aspects of either Ariane or OpenPiton.

*Skill level:* Intermediate

*Language/Tools:* Verilog, SystemVerilog, RISC-V

*Mentor:* Jonathan Balkind

### Building Manycore SoCs with OpenPiton + LiteX
[LiteX](https://github.com/enjoy-digital/litex) makes building FPGA-based SoCs easy. Using the Python hardware design library Migen, LiteX provides a variety of peripherals to enable users to build a complex SoC around a core of their choice. For this project, we would like to connect a manycore [OpenPiton](http://www.openpiton.org/) processor design in order to build a new manycore LiteX SoC.

*Skill level:* Intermediate

*Language/Tools:* Python (Migen), Verilog

*Mentor:* Jonathan Balkind

### Giving AnyCore an Open-Source FPU
[AnyCore](https://people.engr.ncsu.edu/ericro/research/anycore.htm) is an advanced superscalar processor developed at NC State University, designed to be highly configurable across parameters like issue width and pipeline depth. This project would entail connecting an open-source Floating Point Unit (FPU) to the high performance AnyCore processor, which runs the RISC-V ISA.

*Skill level:* Beginner/Intermediate

*Language/Tools:* Verilog/SystemVerilog, RISC-V

*Mentor:* Jonathan Balkind

### Parallelising Verilog RTL Simulation Using MPI
Verilog simulators don’t scale well in speed when hardware designs become very large, but modern processors rely on networks-on-chip (NoCs) which could be used to partition the simulation. This project would involve implementing a verilog simulation infrastructure (using [Verilator](https://www.veripool.org/wiki/verilator)) which is partitioned into multiple simulation instances which communicate using OpenMPI, to enable verilog simulation of a large design (like a 1000-core processor).

*Skill level:* Intermediate

*Language/Tools:* Verilog, C++, OpenMPI

*Mentor:* Jonathan Balkind

### Continuous Integration for OpenRISC mor1kx

The [OpenRISC](http://openrisc.io/) project dates back to 2000 and defines an open source RISC architecture.  The current implementation of the architecture [mor1kx](https://github.com/openrisc/mor1kx) has a constantly evolving code base which is sometimes found to have bugs.  This project would be to extend the continuous integration (CI) system to test changes to mor1kx to ensure there are no regressions.  The CI should verify the core by running [or1k-tests](https://github.com/openrisc/or1k-tests), check that debugging features work with OpenOCD/GDB and monitor resource usages by running yosys synthesis.  The tests should also run with different options enabled for the codebase, i.e. caches enabled/disabled, load store buffers, pipelines CAPPUCCINO, MAROCCHINO, ESPRESSO.

*Skill level:* Beginner

*Language/Tools:* Verilog, Shell, Travis CI

*Mentor:* [Stafford Horne](mailto:shorne@gmail.com)

### OpenRISC formal

The [OpenRISC](http://openrisc.io/) project dates back to 2000 and defines an open source RISC architecture.  With the recent developments with [Yosys formal](http://www.clifford.at/papers/2016/yosys-synth-formal/) it is now possible for us to provide formal verification for the OpenRISC cores like [mor1kx](https://github.com/openrisc/mor1kx).  This project will be to start to formally verify the subsystems of the [mor1kx](https://github.com/openrisc/mor1kx) OpenRISC implementation.  This will help generate interest from companies that know of OpenRISC but haven't chosen it due to unknowns about stability.

*Skill level:* Intermediate

*Language/Tools:* Verilog, OpenRISC, yosys

*Mentor:* [Stafford Horne](mailto:shorne@gmail.com)

### Design and Integration of (n)Migen IIR Fixpoint Filters into pyFDA

[Python Filter Design and Analysis Tool (pyFDA)](https://github.com/chipmuenk/pyfda) is a modular open source tool for designing and simulating FIR and IIR digital filters.

The recent integration of [migen](https://github.com/m-labs/migen) allows simulation of fixpoint filters and export of Verilog netlists that can be used e.g. in an FPGA design flow. Currently, only a direct form FIR filter topology is implemented
in migen as a proof of concept. Simulation and design of IIR fixpoint filters would be highly desirable as these filters require careful scaling and verification with fixpoint arithmetics.

The goal of this project is to implement more IIR fixpoint filters in [migen](https://github.com/m-labs/migen) or, preferrably, its successor [nMigen](https://github.com/m-labs/nmigen), and integrate them into pyFDA.

The student should first implement a basic IIR (direct form) filter in (n)Migen with a python testbench to become acquainted with (n)Migen. In the next step, this filter is integrated into pyFDA. Depending on the speed of progress, more advanced filters like cascaded IIR, LDI, state-variable ... filters and their testbenches can be implemented and integrated. Quality is more important than quantity, well documented and structured code is a main project objective.

*Skill level:* intermediate

*Language/Tools:* Python, some knowledge of fixpoint arithmetics and DSP and Verilog or VHDL. Basic knowledge of (n)migen would be great but can be acquired during the project.

*Mentors:*
[Christian Muenker](mailto:chipmuenk@gmail.com), [@chipmuenk on github](https://github.com/chipmuenk)

### Compressed instruction support for SERV

The award-winning [SERV](https://github.com/olofk/serv) is the world's smallest RISC-V CPU

SERV currently implements the RISC-V RV32I base instruction set and a small part of the privileged specification to support timer interrupts which are required for running an RTOS such as Zephyr. While the CPU core is small, it does not support the RISC-V compressed (C) instruction set extension. Adding support for this would reduce code size for applications running on SERV.

The goal of this project is to add support for the RISC-V compressed instruction set extension in SERV

*Skill level:* intermediate

*Language/Tools:* Verilog

*Mentors:*
[Olof Kindgren](mailto:olof.kindgren@gmail.com), [@olofk on github](https://github.com/olofk)

### Extend LibreCores.org

[LibreCores](https://www.librecores.org) is a community web site with the goal of providing an overview of IP cores and the corresponding ecosystem. We strive for LibreCores to be *the* resource for free and open source IP: it should be easy to find, integrate, and contribute to the projects found there -- to make digital design projects as easy as writing software. For further information on our goals, see the [FOSDEM Presentation slides](https://fosdem.org/2016/schedule/event/digital_hardware_design/attachments/slides/1037/export/events/attachments/digital_hardware_design/slides/1037/fossi_fosdem.pdf) announcing LibreCores. The full site source code is available on [GitHub](https://github.com/librecores/librecores-web).

You can find a non-exhaustive [list of available tasks in our documentation](http://librecores-web.readthedocs.io/en/latest/contributing.html). Please talk to Philipp if you have other ideas, or didn't find an interesting project. We welcome your own ideas!

*Skill Level:* Intermediate

*Language/Tools:* PHP7 with the [Symfony Framework](http://symfony.com/), MySQL, HTML/JS

*Mentor:* [Philipp Wagner](mailto:mail@philipp-wagner.com)
