---
layout: page
title: "Google Summer of Code 2022 - Ideas for Projects"
---

*Note that this page is under construction for the new year of GSoC. Projects listed here will change and estimated project lengths are still to be defined.*

FOSSi Foundation is applying as an umbrella organization in Google
Summer of Code 2022. That means that we give small projects the
chance to participate in the program. Below you can find a list of
ideas that the projects had, but students are encouraged to propose
their own ideas. These projects are mostly open-ended and can be
tailored to your level of experience, assuming that you have the 
appropriate set of required skills for the particular project idea.

Whether you’re an aspiring student or mentor, feel free to contact us,
either through the private GSoC-specific mailing list [gsoc@fossi-foundation.org](mailto:gsoc@fossi-foundation.org),
through the public [discussion mailing list](https://lists.librecores.org/listinfo/discussion),
or through the mentors listed for each project below.
We are also available on [Gitter in librecores/Lobby](https://gitter.im/librecores/Lobby).

Looking forward to meet you all!

* TOC
{:toc}


### Porting BaseJump STL to FuseSoc

*Details:* FuseSoC is a package manager and set of build tools for reusable hardware building blocks, which makes it easy to share designs between projects and reuse open IP. BaseJump STL is a comprehensive hardware library for SystemVerilog that seeks to contain all of the commonly used hardware primitives, much as the C++ Standard Template Library does with software primitives. This project is to port BaseJumpSTL to FuseSoC so that new hardware projects can hit the ground running and reuse hand-optimized IP cores rather than re-designing and re-debugging.

*Skill level:* Beginner

*Language/Tool:* SystemVerilog, Python

*Mentor:* [Michael Taylor](mailto:prof.taylor@gmail.com)


### Logical Equivalence Checks with LLHD

The Low Level Hardware Description language, or [LLHD](https://llhd.io/) in short, is simple intermediate representation that is able to capture the semantics of today's hardware description languages *including* their behavioral, verification, and testing features. The IR has been developed alongside the [Moore](https://github.com/fabianschuiki/moore) compiler and published as a [paper](https://arxiv.org/pdf/2004.03494) at PLDI 2020. Since then, we have been busy merging LLHD into the [CIRCT](https://github.com/llvm/circt) project, a larger joint effort to develop Circuit IR Compilers and Tools.

When working with LLHD, you can assume that all the nasty parts of languages like SystemVerilog or VHDL have already been taken care of by a language frontend, and you are dealing with a much simpler but still complete representation of a circuit. As of today there are already a basic reference simulator as well as a faster LLVM-JIT-compilation-based simulator available for LLHD.

As a proof of concept for LLHD's verification prowess we would like you to implement a basic Logical Equivalence Check (LEC) for LLHD designs. This is essentially the process of taking two circuits and formally proving (or disproving) that they logically do the same thing, even if they use a different combination of logic gates to do so. This is a crucial step in chip design flows, to ensure that a synthesizer has properly translated RTL into a gate-level implementation, and that further place-and-route work did not violate the operation of a design.

In this project you will take two LLHD designs, translate them into the fundamental boolean equations, and formulate a satisfiability problem for an existing optimized SAT/SMT solver with them. You can scale this project's complexity to your liking, for example simplifying by looking only at combinational circuits, or complicating by finding ways to use registers as invariant anchor points in a circuit.

SAT/SMT solvers are tools that are extremely fun and satisfying to work with, but generally don't get the love they deserve in the circuit design community. With this project you'll be able to contribute to a key process in the ASIC design flow and generally show that, with good existing abstractions such as LLHD and the standardized solver file formats, it is very easy to create seemingly daunting formal tools for an open ASIC world.

*Skill Level:* Intermediate to Advanced

*Language/Tools:* C++, SAT/SMT Solver (e.g. Z3, Boolector, Bitwuzla, or others)

*Mentor:* [Fabian Schuiki](mailto:fschuiki@iis.ee.ethz.ch)


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


### Building Manycore SoCs with OpenPiton + LiteX
[LiteX](https://github.com/enjoy-digital/litex) makes building FPGA-based SoCs easy. Using the Python hardware design library Migen, LiteX provides a variety of peripherals to enable users to build a complex SoC around a core of their choice. For this project, we would like to connect a manycore [OpenPiton](http://www.openpiton.org/) processor design in order to build a new manycore LiteX SoC.

*Skill level:* Intermediate

*Language/Tools:* Python (Migen), Verilog

*Mentor:* [Jonathan Balkind](mailto:jbalkind@ucsb.edu)


### OpenRISC Benchmarking and Performance improvements

The [OpenRISC](https://openrisc.io) CPU architecture has multiple CPU implementations
including the mor1kx and marocchino.  Recent testing has shown that memory access
on the marocchino is slightly slower compared to the mor1kx.

This project will have the student:

* Use tools like the [Embench](https://www.embench.org/news.html) modern benchmark suite
  to measure OpenRISC processor and compiler toolchain performance.
* Document the OpenRISC performance at [Embench IoT results](https://github.com/embench/embench-iot-results)
  to be able to compare OpenRISC vs other popular CPUs.
* Track down and improve OpenRISC CPU performance by finding and fixing deficiencies in the verilog designed cores.

*Skill level:* Advanced

*Project Length:* large

*Language/Tools:* Verilog, Shell scripting, C, Assembly, Python

*Mentor:* [Stafford Horne](mailto:shorne@gmail.com)


### LiteX SMP SoC for OpenRISC

The [LiteX](https://github.com/enjoy-digital/litex) project makes creating
FPGA-based SoCs easy.  LiteX supports creating SoCs containing OpenRISC CPU cores.
Up until now however, there have been no LiteX SoCs that support running
OpenRISC multicore/SMP Linux.  The [linux-on-litex-vexrisc](https://github.com/litex-hub/linux-on-litex-vexriscv)
project provides a good example of how to develop and document getting Linux
up and running on a LiteX SoC; including multicore.

Using `linux-on-litex-vexrisc` as an example, this project will have the student
creating a project to help people get up and running with OpenRISC.  The final
goal shall be to have a documented multicore OpenRISC LiteX SoC running Linux
SMP.

*Skill level:* Advanced

*Project Length:* large

*Language/Tools:* Verilog, LiteX, Linux, Python, OpenRISC architecture

*Mentor:* [Stafford Horne](mailto:shorne@gmail.com)

### OpenRISC Linux Feature Development

The OpenRISC Linux kernel support is under constant development but there are
certain Linux facilities that are not yet used or available on the OpenRISC
platform.

This project will have the student developing, testing and sending patches up to
the Linux kernel.  This includes:

* Develop [rseq](https://lwn.net/Articles/650333/) support to OpenRISC Linux
  and glibc.
* Add floating point support to OpenRISC Linux.
* Use the cacheinfo API for reporting CPU details in OpenRISC Linux.
* Add [virtio](https://developer.ibm.com/articles/l-virtio/) support to OpenRISC
  Linux which would allow running OpenRISC containers.

*Skill level:* Advanced

*Project Length:* large

*Language/Tools:* Linux, C, Assembly, OpenRISC architecture

*Mentor:* [Stafford Horne](mailto:shorne@gmail.com)

### Integration of WARP-V with OpenPiton

*Details:* In GSoC 2020, one of Shivam Potdar's accomplishments was to prepare the [WARP-V](https://github.com/stevehoover/warp-v) CPU core for integration with the [OpenPiton](https://parallel.princeton.edu/openpiton/) heterogeneous many-core framework. This project would aim to complete that integration.

This will enable academic exploration of the combined flexibility benefits of OpenPiton and WARP-V. OpenPiton provides flexibility through the integration of different CPU cores. WARP-V provides flexibility of the CPU core itself. WARP-V can be optimized for the cycle-time of OpenPiton, and differently-configured WARP-V cores could be run within the same system along with other CPU cores.

*Skill level:* Advanced

*Languages/Tools:* Verilog, TL-Verilog

*Co-mentors:* [Steve Hoover](https://www.linkedin.com/in/steve-hoover-a44b607/) ([email](mailto:steve.hoover@redwoodeda.com)), [Jonathan Balkind](https://www.linkedin.com/in/jbalkind/) ([email](mailtojbalkind@ucsb.edu)), [Akos Hadnagy](https://www.linkedin.com/in/akos-hadnagy/) ([email](mailto:akos.hadnagy@gmail.com))

*Discussion:* [WARP-V LibreCores Gitter Room](https://gitter.im/librecores/warp-v), [OpenPiton LibreCores Gitter Room](https://gitter.im/librecores/openpiton)


### Improve Test Coverage of the Moore HDL Compiler

[Moore](https://github.com/fabianschuiki/moore) is a compiler for SystemVerilog and VHDL hardware designs. Its goal is world domination by finally moving the burden of implementing SV and VHDL out of tools like synthesizers and simulators and into a separate frontend, very much like what Clang and LLVM did for the software world. In contrast to other projects that focus on specific use cases such as synthesis or netlists processing, Moore strives to support the entirety of the SV and VHDL languages. As output the compiler produces [LLHD IR](https://llhd.io/), a simple intermediate representation that is able to capture the semantics of today's hardware description languages *including* their behavioral, verification, and testing features. (See also the [LLHD paper](https://arxiv.org/pdf/2004.03494) from PLDI 2020 for details.)

We would love to have you help make Moore even better! Since the input languages are very complex, a key aspect of Moore is to perform well on existing test suites and benchmarks. The [SymbiFlow](https://github.com/SymbiFlow) project maintains a [large suite of SystemVerilog tests](https://symbiflow.github.io/sv-tests-results/) where Moore is also represented. The goal of this project is to go into these tests and extend and improve the Moore compiler to support more of the use cases that are currently failing. You'll be able to look for juicy optimization targets and common reasons of failure, fix them, and reap the benefits of seeing a lot more green on this dashboard!

The Moore compiler is written in Rust. Don't be scared if you haven't touched Rust before -- if you know C or C++ you'll feel right at home. The main language we're currently tackling with Moore right now is SystemVerilog, so either knowing the language a bit or not being scared of looking into language reference manual will be useful.

*Skill Level:* Advanced

*Language/Tools:* Rust, SystemVerilog

*Mentor:* [Fabian Schuiki](mailto:fschuiki@iis.ee.ethz.ch)


### Giving AnyCore an Open-Source FPU
[AnyCore](https://people.engr.ncsu.edu/ericro/research/anycore.htm) is an advanced superscalar processor developed at NC State University, designed to be highly configurable across parameters like issue width and pipeline depth. This project would entail connecting an open-source Floating Point Unit (FPU) to the high performance AnyCore processor, which runs the RISC-V ISA.

*Skill level:* Beginner/Intermediate

*Language/Tools:* Verilog/SystemVerilog, RISC-V

*Mentor:* [Jonathan Balkind](mailto:jbalkind@ucsb.edu)


### Other TL-Verilog-Related Projects

If you are interested in the TL-Verilog ecosystem, you might also consider any of these [TL-Verilog project ideas](https://github.com/stevehoover/TL-V_Projects). All would make excellent GSoC projects and mentors can be identified.


### Architectural Improvements to OpenPiton+Ariane
[OpenPiton+Ariane](https://openpiton-blog.princeton.edu/2018/11/announcing-openpiton-with-ariane/) is a permissively-licensed RISC-V manycore processor, built as a collaboration between the [PULP Platform](https://www.pulp-platform.org/) from ETH Zürich and the [OpenPiton Platform](http://www.openpiton.org/) from Princeton University. We would like to co-optimise OpenPiton and Ariane in their combined platform, to improve performance of the processor both in FPGA emulation systems and for eventual silicon chips. Possible improvements could be along the lines of: adding a global branch predictor, introducing a multi-level TLB, etc. We are also open to other projects aimed at improving the performance of aspects of either Ariane or OpenPiton.

*Skill level:* Intermediate

*Language/Tools:* Verilog, SystemVerilog, RISC-V

*Mentor:* [Jonathan Balkind](mailto:jbalkind@ucsb.edu)


### Extend LibreCores.org

[LibreCores](https://www.librecores.org) is a community web site with the goal of providing an overview of IP cores and the corresponding ecosystem. We strive for LibreCores to be *the* resource for free and open source IP: it should be easy to find, integrate, and contribute to the projects found there -- to make digital design projects as easy as writing software. For further information on our goals, see the [FOSDEM Presentation slides](https://fosdem.org/2016/schedule/event/digital_hardware_design/attachments/slides/1037/export/events/attachments/digital_hardware_design/slides/1037/fossi_fosdem.pdf) announcing LibreCores. The full site source code is available on [GitHub](https://github.com/librecores/librecores-web).

You can find a non-exhaustive [list of available tasks in our documentation](http://librecores-web.readthedocs.io/en/latest/contributing.html). Please talk to Philipp if you have other ideas, or didn't find an interesting project. We welcome your own ideas!

*Skill Level:* Intermediate

*Language/Tools:* PHP7 with the [Symfony Framework](http://symfony.com/), MySQL, HTML/JS

*Mentor:* [Philipp Wagner](mailto:mail@philipp-wagner.com)


### Push a Design through the Moore HDL Compiler

[Moore](https://github.com/fabianschuiki/moore) is a compiler for SystemVerilog and VHDL hardware designs. Its goal is world domination by finally moving the burden of implementing SV and VHDL out of tools like synthesizers and simulators and into a separate frontend, very much like what Clang and LLVM did for the software world. In contrast to other projects that focus on specific use cases such as synthesis or netlists processing, Moore strives to support the entirety of the SV and VHDL languages. As output the compiler produces [LLHD IR](https://llhd.io/), a simple intermediate representation that is able to capture the semantics of today's hardware description languages *including* their behavioral, verification, and testing features. (See also the [LLHD paper](https://arxiv.org/pdf/2004.03494) from PLDI 2020 for details.)

We would love to have you help make Moore even better! As a proof of concept that goes beyond the single RISC-V core that Moore tackles successfully, we would like to push a larger, more complex compute cluster through the compiler. This could be for example a [Snitch](https://github.com/pulp-platform/snitch) compute cluster of ETH Zurich which contains complex caches, interconnects, memory systems, multiple processor cores and large floating-point data paths. The goal of this project is to take this cluster's SV source code and implement the pieces Moore currently lacks in order to be able to compile the cluster. You'll be able to look for frequent sources of errors and juicy implementation targets, implement them in the compiler, and see the errors disappear one by one. If it turns out that not a lot of pieces are missing, you'll be able to fully simulate the cluster with an LLHD-based simulator and push the project forward significantly.

The Moore compiler is written in Rust. Don't be scared if you haven't touched Rust before -- if you know C or C++ you'll feel right at home. The main language we're currently tackling with Moore right now is SystemVerilog, so either knowing the language a bit or not being scared of looking into language reference manual will be useful.

*Skill Level:* Advanced

*Language/Tools:* Rust, SystemVerilog

*Mentor:* [Fabian Schuiki](mailto:fschuiki@iis.ee.ethz.ch)


### RISC-V core with AI Acceleration synthesizable with open source tools.
A joint project between Embecosm and Southampton university recently developed an open source ISA extension for the CV32E40P RISC-V core to accelerate neural network inference acceleration.  The project [GitHub](https://github.com/AI-Vector-Accelerator) demonstrated a 5 fold increase in inference performance.   [YouTube](https://youtu.be/t0Fpy4TzLUE) has a short presentation of the project, given at the London Open Source RISC-V meetup in January 2021.

This demonstrated the potential benefit of this approach, but relied on a core which can only be synthesized using proprietary FPGA synthesis tools.  This project proposes trying to repeat the approach using a RISC-V core (such as PicoRV or Fomu) which can be synthesized using the Yosys open source tool suite.

The deliverables of this project would be

 - A RISC-V core synthesisable with Yosys extended to accelerate AI inference
 - Bring up of the extended core on a suitable FPGA platform.
 - Measurement of the impact on AI inference using TinyMLPerf.

*Primary Mentor:* [Jeremy Bennett](https://github.com/jeremybennett) ([email](mailto:jeremy.bennett@embecosm.com)), *Secondary Mentor:* [William Jones](https://github.com/william-r-jones) ([email](mailto:william.jones@embecosm.com))

*Skill level:* Advanced (particularly FPGA synthesis using Yosys)

*Language/Tools:* Verilog, SystemVerilog, RISC-V, Yosys open source tool suite

### VPI based fst digital simulation waveform dumping

Most digital simulators use a proprietary binary data format for storing the simulation waveforms. This makes it impossible to access these waveforms for post processing. The only waveform format which is supported by all simulators is vcd. But the vcd waveform format is very limited as it does not support complex data structures and stores the waveform data in ASCII format resulting in very large waveform data files. The fst file format provided by GTKWave is an alternative. It is open available and represents an efficient binary file format overcoming the vcd file limitations.

The goal of the project is to develop VPI based functions to dump digital simulation waveforms in fst format. 

*Primary Mentor:* Klaus Strohmayer / semify e.U. [email](mailto:office@semify.com)

*Skill level:* intermediate

*Language/Tools:* Verilog / SystemVerilog, C/C++

### More precise instruction scheduling in LLVM for RISC-V based HammerBlade Manycore
The RISC-V ISA will transform the world. Recently, UW taped out an open source RISC-V manycore processor with 496 cores that hits 500 Billion RISC-V instructions per second in one chip. The latest version is called HammerBlade Manycore, the design is hosted on Amazon F1, which allows us to simulate having the real chip even as we develop new features. We maintain a downstream RISC-V LLVM backend for custom compiler support. We want to improve the code generation with better instruction scheduling. We already have some basic scheduling support in our LLVM backend, this project aims to improve it by more precisely describing the pipeline model with adjusted weights.

*Skill level:* intermediate

*Project length:* long

*Mentors:* [Reshabh K Sharma](mailto:reshabh@cs.washington.com), [Michael Taylor](mailto:prof.taylor@gmail.com)

*Language/Tools:* C++, some knowledge of computer architecture, instruction pipelining and LLVM

### TinyParrot: A minimal BlackParrot RISC-V Multicore variant
*Details:* BlackParrot aims to be the default open-source, Linux-capable, cache-coherent, RV64GC multicore used by the world. It has been FPGA and Silicon-validated as an industry-strength design with leading efficiency. We wish to support open-source toolchains for FPGA and ASIC flows, but current open-source SRAM generators have not quite matured to make this seamless. This project will shrink BlackParrot to have extremely tiny caches, provide minimal ISA support and have other logic-saving optimizations with the goal of being able to easily synthesize to gates.

*Skill level:* beginner-intermediate

*Project length:* medium

*Mentors:* [Dan Petrisko](mailto:petrisko@cs.washington.com), [Michael Taylor](mailto:prof.taylor@gmail.com)

*Language/Tools:* SystemVerilog, some knowledge of computer architecture, RISC-V knowledge preferred but not required
