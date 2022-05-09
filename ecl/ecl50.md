---
layout: post
title: "El Correo Libre Issue 50"
description: El Correo Libre Newsletter, Issue 50
author: Gareth Halfacree
---
# El Correo Libre Issue 50

<img src="images/riscvprofiles.jpg" style="max-width:100%" />

## RISC-V Architecture Profiles v0.6 Published "For Discussion Only"

The first formal releases of the RISC-V Profiles specification, v0.5 and v0.6, have been published - but its authors warn that it is "for discussion only," and "is likely to change substantially" between now and official standardisation.  
  
"RISC-V was designed to provide a highly modular and extensible instruction set, and includes a large and growing set of standard extensions," the authors of the RISC-V Profiles specification explain. "In addition, users may add their own custom extensions. This flexibility can be used to highly optimize a specialized design by including only the exact set of ISA features required for an application, but the same flexibility also leads to a combinatorial explosion in possible ISA choices.  
  
"Profiles specify a much smaller common set of ISA choices that capture the most value for most users, and which thereby enable the software community to focus resources on building a rich software ecosystem."  
  
The initial release focuses on two architecture profiles, both aimed at application-class processors: RVA20 and RVA22. Several other profiles are also under active development, the document confirms, including RVI20 for compatibility with basic RISC-V unprivileged software alongside RVM20 and RVM22 for microcontroller implementations.  
  
The latest version of the RISC-V Profiles document, which at the time of writing was v0.6, is available [on the RISC-V GitHub repository](https://github.com/riscv/riscv-profiles/) where it's published under the permissive Creative Commons-Attribution 4.0 licence. Those looking to contribute should open issues or submit a pull request.

<img src="images/qemu.jpg" style="max-width:100%" />

## QEMU 7.0 Adds Quad-Core OpenRISC, RISC-V Vector Extension 1.0

  
The latest major release of the QEMU emulator and virtualisation stack, v7.0, brings with it significant improvements for those working with free and open-source silicon - including quad-core support for OpenRISC virtualisation.  
  
In the change log for the latest release, brought to our attention by [Phoronix](https://www.phoronix.com/scan.php?page=news_item&px=QEMU-7.0-Released), the QEMU maintainers point to a major upgrade for those working on OpenRISC development: It's now possible to create a machine with four cores, up from two in the previous release. The new version also offers support for loading external initrd images, and automatically generates a device tree to be passed to the kernel.  
  
For RISC-V users, QEMU 7.0 adds support for the RISC-V Vector Extensions, RVV, as ratified in v1.0 - an upgrade from the pre-ratification support previously offered, which has been dropped. There's also support for the Zve64f, Zve32f, Zfhmin, and Zfh extensions, plus what the maintainers describe as "experimental support" for 128-bit CPUs.  
  
Other improvements for RISC-V users include support for OpenSBI binary loading in the Spike machine, support for up to 32 cores, AIA support, and fixes for a handful of bugs including illegal instruction errors when PMP is disabled.  
  
Full details are available [in the official change log](https://wiki.qemu.org/ChangeLog/7.0), while QEMU 7.0 itself can be downloaded [from the project website](https://www.qemu.org/) under the reciprocal GNU General Public License 2 and others.

<img src="images/rvfpga.jpg" style="max-width:100%" />

## Imagination Technology Calls for Teachers to "Empower the Next Gen" with RVfpga

  
Imagination Technology's Robert Owen, principal consultant for the company's Worldwide University Programme, has called on "professors and friends" to take on the task of getting the next generation of engineers and developers up to speed on RISC-V by participating in the company's RVfpga course.  
  
"We are at the start of a global series of workshops to 'train the teachers' how to use RISC-V in computer architecture courses and the design of systems on chip (SoCs)," Robert explains. "To do this, we are asking for a day of your time so that you can empower the next generation of computer science and engineering students to get real-world expertise in computer architecture and the RISC-V instruction set architecture.  
  
"This RVfpga workshop presents a commercial RISC-V system targeted to an FPGA, discusses the theory, architecture, and course structure, and shows how to use the hands-on labs as part of the complete RVfpga course. The course explores the fundamentals of computer architecture using Western Digital’s open-source, fully verified, already in-silicon, SweRV EH1 RISC-V core targeted to a Xilinx Artix 7 FPGA on Digilent’s Nexys A7 development board."  
  
Those participating will, Robert promises, receive hands-on experience with the technology as it is used in industry. "The SweRV is not an 'education core.'" he explains, "it's real-world, used inside Imagination's GPUs and Western Digital's solid-state drives."  
  
More information on the courses, which are presently aimed at teaching academic teachers and training corporate trainers though is also said to be of value to "postgrads who are considering a career in teaching or becoming a chip designer," is available [on the RISC-V blog](https://riscv.org/blog/2022/04/join-us-in-the-classroom-put-risc-v-into-your-computer-architecture-course-using-rvfpga-robert-c-w-owen-imagination-technologies/). Dates and registration links are included in the table at the bottom.

<img src="images/chipflowgatecat1.jpg" style="max-width:100%" />

## ChipFlow Releases First Video, Teases Future Plans for Chip-Design Platform

  
ChipFlow, a startup building atop the free and open source hardware ecosystem in order to offer a platform-as-a-service approach to custom chip design, has published the first in a planned series of explanatory videos - this one offering a look at building systems-on-chip (SoCs) with Python and an open-source toolchain, presented by Myrtle "gatecat" Shah.  
  
"[This is a video] about my work at ChipFlow, building open-source chips with Amaranth [HDL] and a combination of other open source ASIC design tools," gatecat explains. "At ChipFlow our our goal is that any Python developer could be able to build chips. That's the kind of world we want to see, and the question is how are we going to get there?"  
  
Gatecat's video walks through the ChipFlow flow itself, and takes a look at each of the various tools and platforms on which it's built: Amaranth HDL, Yosys, Coriolis, PDK Master, and the SkyWater Sky130 process on which designs can be fabricated into physical hardware.  
  
The video also offers a glimpse of the company's future plans: "The next steps that we are looking at is going to be extending these library of IP cores so we can build more different kinds of SoCs with more different kinds of IP," gatecat explains.  
  
"Then on the place and route side we want to support routeability-driven placement, so that as we get into larger more complex SoCs we aren't accidentally producing placements that are very difficult to route. Longer-term, we're interested in supporting processes smaller than 130nm and also analogue and mixed-signal IP blocks."  
  
The full video is available [on the ChipFlow YouTube channel](https://www.youtube.com/watch?v=rVsOZE80c-k) now.

<img src="images/thewildjarvi.jpg" style="max-width:100%" />

## BobbyCore is the "First Fully-Functional RISC-V CPU" to be Built in Logic World

  
Pseudonymous YouTuber "TheWildJarvi" and fellow gamer "Gnog3" have created a RISC-V implementation with a difference: it's not built into hardware, nor flashed onto an FPGA, but created entirely within the game Logic World.  
  
Released as Early Access back in October 2021, Logic World is designed to introduce the concepts behind logic circuits using a three-dimensional world. Many of the circuits created in the game, particularly as users get used to its capabilities, are simple - but player Gnog3 bucked the trend with a partially-functional RISC-V CPU core now extended in partnership with TheWildJarvi.  
  
TheWildJarvi has now taken that initial project and extended it into what is claimed to be the game's "first fully-functional RISC-V CPU."  
  
"This is a full RISC-V 32-bit integer core with a few other goodies attached," TheWildJarvi explains, "such as a character printer, a hardware multiplier, and some networking - literal IRL networking, to allow us to program it - and we also have a bootloader here that will allow us to program it as well."  
  
A full video tour of the project is available [on TheWildJarvi's YouTube channel](https://www.youtube.com/watch?v=T1PZ2LiSyQI); those interested in Logic World itself can find more [on the game's Steam page](https://store.steampowered.com/app/1054340/Logic_World/).

<img src="images/abdulcompressed.jpg" style="max-width:100%" />

## Award-Winning SERV Core Gets Compressed Instruction Support

  
The world's smallest RISC-V core, SERV, has gained a major new feature courtesy of contributor Abdul Wadood: support for compressed instructions, carried out under the Linux Foundation Mentorship Programme.  
  
"Compliance tests for RISC-V Compressed Instructions are passing on SERV (world's smallest RISC-V core)," Abdul writes on Twitter of his work. "Now, compressed instructions can be compiled on SERV using FuseSoC! Almost ready to be merge with main branch anytime soon."  
  
Abdul begin work on the effort as part of the [Spring '22 Linux Foundation Mentorship Programme](https://lfx.linuxfoundation.org/tools/mentorship), under SERV creator and FOSSi Foundation director Olof Kindgren. "Abdul has done a fantastic job of adding support for compressed instructions to SERV," Olof says of the effort, "which is probably the most requested feature."  
  
More information is available [on Abdul's Twitter post](https://twitter.com/AbdulWadoodAfz1/status/1512517490315776003), while the SERV core itself [is hosted on GitHub](https://github.com/olofk/serv) under the permissive ISC licence.

<img src="images/lpc.jpg" style="max-width:100%" />

## Call For Papers Opens for the Linux Plumbers Conference 2022 RISC-V MC

  
The call for papers for the RISC-V Microconference at the Linux Plumbers Conference 2022 has officially opened, ahead of the hybrid in-person/virtual event opening this September.  
  
"The sessions in each microconference are expected to address specific problems and should generate new ideas, solutions, and patches," the event's organisers explain of what would make for a good session.  
  
"Sessions should be focussed on discussion. Presentations should always aim to aid or kick off a discussion. If your presentation feels like a talk we would recommend to consider submitting to the LPC refereed track."  
  
The Linux Plumbers Conference 2022 is scheduled to take place in Dublin, Ireland from the 12th to the 14th of September 2022 inclusive; the RISC-V Microconference is being organised by Rivos Inc.'s Atish Patra and Google's Palmer Dabbelt, and will be open as an in-person event with virtual participation possible.  
  
More information is available [on the LPC blog](https://lpc.events/blog/2022/index.php/2022/02/04/cfp-open-microconferences/).

<img src="images/cpsmusicbox.jpg" style="max-width:100%" />

## David Lobato's CPS1 Musicbox Blends Modern RISC-V with Vintage Audio

  
David Lobato has published a project which blends the best of modern technology with some classic hardware: the CPS1 Musicbox, a RISC-V system-on-chip designed to drive soft-core replicas of vintage YM2151 and MSM6295 sound chips.  
  
"This was a fun project," David writes. "A modern RISC-V (Papon Charles) design driving old school sound chips (jotego) put together with LiteX (Enjoy Digital). It's awesome to have so much open source resources to learn and have fun."  
  
Designed for use on a Radiona ULX3S FPGA development board, but also usable in simulation, the CPS1 Musicbox - named for its use of soft-core recreations of the music chips as in Capcom's CP System arcade hardware - boots into a "vgmplay" utility designed to play audio dumped from arcade ROMs.  
  
A video of the project in action is available [on David's](https://twitter.com/dlobato/status/1512121606147129346) [YouTube channel](https://www.youtube.com/watch?v=gQMUazSHyAo), while the CPS1 Musicbox itself [has been published to GitHub](https://github.com/dlobato/cps1-musicbox) under an unspecified mix of open-source licenses.

<img src="images/andreasawesomelist.jpg" style="max-width:100%" />

## Andreas Olofsson Publishes Open List of "Awesome Hardware Tools," Invites Collaboration

  
Zero ASIC's Andreas Olofsson has published a repository aiming to pull together a curated list of "awesome open source hardware tools," broken down into a number of categories and with brief descriptions of each.  
  
At the time of writing, the collaborative project had 14 categories: Compiler Frameworks, Build Systems, Generators, Analogue Design, Board Design, Logic Synthesis, ASIC Layout, FPGA Layout, Formal Verification, Simulation and Analysis, Waveform Viewers, Benchmark Circuits, Documentation, and a list-of-lists category called "Other Awesome Lists" for more.  
  
Requirements for a project to be listed include its availability under a free or open-source licence, that it be fully-functional and not a "rusty" abandoned project or work-in-progress, and that the published link go straight to the source code repository.  
  
Projects published to the list so far include Amaranth HDL, Chisel, Kami, PyRTL, Spinal HDL, Edalize, FuseSoC, Silicon Compiler, Garnet, Rocket, KiCad, Yosys, Open ROAD, Nextpnr, Pono, Cocotb, Icarus, and QEMU.  
  
The full list is available [on Andreas' GitHub repository](https://github.com/aolofsson/awesome-hardware-tools) under an unspecified licence, with contribution invited via issues or pull requests.

<img src="images/wadoodblinky.jpg" style="max-width:100%" />

## Introductory "LED to Believe" Project Hits 89 Boards Supported

  
The LED to Believe project, created by FOSSi Foundation director Olof Kindgren as a way to introduce newcomers to FuseSoC and FPGA development via a simple blink-an-LED example, has reached a milestone 89 boards supported thanks to community efforts.  
  
"In addition to adding support for the compressed instruction set to SERV," Olof announced, about which see more above, "Abdul Wadood has also found some time to add two new targets to project LED to Believe. With these two variants of Nexys2, we now have support for 89 boards."  
  
The addition comes after other efforts from community contributors added support for boards including new Alchistry models from SparkFun and the Qmtech Intel/Altera Cyclone V 5CEFA5F23.  
  
"What's extra cool," says Olof about the latter, contributed by Stéphane Chevigny, "is that this is the first one using Ravenslofty's Project Mistral, the FOSSi flow for Intel FPGA Cyclone devices."  
  
The latest version of the LED to Believe project is available [on the FuseSoC GitHub repository](https://github.com/fusesoc/blinky) under the permissive MIT licence.

<img src="images/newsinbrief.jpg" style="max-width:100%" />

## FOSSi News In Brief

-   [Romain Dolbeau puts an FPGA on a NuBus card to breathe new life into Apple Mac II, Quadra machines.](https://github.com/rdolbeau/NuBusFPGA) ([More on 68kMLA.)](https://68kmla.org/bb/index.php?threads/nubusfpga-hdmi-on-nubus-macs.40760/)
-   [John McMaster shares gorgeous MPW1 Layer Metal 1 photomask imagery.](https://twitter.com/johndmcmaster/status/1512335342157791236)
-   [Johan Euphrosine's animations capture OpenLane SERV ASIC hardening process.](https://twitter.com/proppy/status/1512061724526268420) [("Just the beginning for open source ASIC tooling," says Matthew Ven.)](https://twitter.com/matthewvenn/status/1512760406342836229)
-   [KAIST researchers build the LightPC, a RISC-V system using only non-volatile OC-PMEM memory.](https://news.kaist.ac.kr/newsen/html/news/?mode=V&mng_no=20111&skey=&sval=&list_s_date=&list_e_date=&GotoPage=1)
-   [Moein Khazraee et al: "Shire: Making FPGA-accelerated Middlebox Development More Pleasant."](https://arxiv.org/abs/2201.08978)
-   [Alf-André Walla's RVScript aims to offer a fast scripting system for game engines running on RISC-V.](https://github.com/fwsGonzo/rvscript)
-   [Anthony F. J. Levi, Gabriel Aeppli for IEEE Spectrum: "The X-Ray Tech that Reveals Chip Designs."](https://spectrum.ieee.org/chip-x-ray)
-   [Jeffrey Burt for The Next Platform: "Oil and Gas Industry to get Its Own Stencil Tensor Accelerator," as part of the European Processor Initiative.](https://www.nextplatform.com/2022/04/25/oil-and-gas-industry-to-get-its-own-stencil-tensor-accelerator/) (Presented at the [RISC-V Spring Week](https://open-src-soc.org/2022-05/).)
-   [ITHome, via TechNode: "China Opens New Research Institute to Develop RISC-V Processor Project."](https://technode.com/2022/04/11/china-opens-new-research-institute-to-develop-risc-v-processor-project/)
-   [VEGA Processor, the native-Indian chip project, unveils two development boards: the ARIES v2.0 and ARIES MICRO v1.0.](https://vegaprocessors.in/devboards/)
-   [Yunhao Zhang announces egos-2000, a 2kLOC educational operating system for RISC-V.](https://groups.google.com/a/groups.riscv.org/g/sw-dev/c/s8aHCU84CKE/m/wJs6jmzEAAAJ) [(GitHub, MIT license.)](https://github.com/yhzhang0128/egos-2000)
-   [Nidhi Singal for BusinessToday.in: "Digital India RISC-V Microprocessor (DIR-V) Programme launched."](https://www.businesstoday.in/latest/story/digital-india-risc-v-microprocessor-dir-v-program-launched-331530-2022-04-27)


<img src="images/ecl-logo-small.jpg" style="max-width:100%" />

**Have feedback or news for inclusion in a future newsletter? Please send this to** [**ecl@librecores.org**](mailto:ecl@librecores.org)**.**

**Subscribe to** [**get El Correo Libre direct to your inbox**](http://eepurl.com/dnL4v1)**.**
