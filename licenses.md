---
layout: page
title: "Licenses for Free and Open Source Silicon"
---
{% include JB/setup %}

This text briefly introduces the reader to open source licensing,
attempt to explain the FOSSi licensing situation at present, and
suggest some further reading. It is far from comprehensive and focuses
specifically on licensing FOSSi designs but does its best to capture
the current state of play. FOSSi and Hardware Description Languages
(HDL) are used interchangeably in this article.

[Open source licenses](https://en.wikipedia.org/wiki/Open-source_license)
are used to enable developers to release their work for use by others
under certain terms and conditions. Those terms and conditions vary
greatly between the various licenses that are available, ranging from
licenses which permit others to use the work almost as they wish
(permissive), to those that put strict requirements on the re-use of
the work and ensure that derivative works remain open and *free*.

Selecting a license for open source works can be difficult when faced
with vast array of those available. Making it particularly tricky is
that there are few licenses which have been written specifically to
address the unique case of FOSSi source code, where designs are
synthesised and used in programmable hardware such as FPGAs, or used
to create semiconductor mask sets for the manufacture of silicon
chips. The overwhelming majority of available licenses were written to
apply to software and contain concepts and wording which aren’t
applicable to HDL designs. That said, the more permissive the license
the fewer technology-specific terms required, making them more
suitable for use with HDL source code.

The permissiveness of the license is a matter for the licensor (the
author, copyright owner) and often depends on their position regarding
reuse of the design. The
[more permissive](https://en.wikipedia.org/wiki/Permissive_free_software_licence)
the license, the less requirements on future users and developers of
the IP. Less permissive licenses have more restrictions, which
generally ensure the derivative works remain as free and open as the
original work. These less permissive licenses, also known as
*[copyleft](https://en.wikipedia.org/wiki/Copyleft)* licenses for how
they enforce the work’s openness, vary greatly from
[*weak* to *strong* copyleft](https://en.wikipedia.org/wiki/Copyleft#Strong_and_weak_copyleft)
and primarily indicate how a derivative work may be licensed - whether
it must be entirely released under an equivalently open license
(strong copyleft,
[reciprocal licenses](https://en.wikipedia.org/wiki/Viral_license)) or
not.

As already mentioned, almost all strong copyleft licenses have been
written to apply to software, and the mechanisms they specify (binary
linking, for example) that qualify a derivative work to be released
under the same terms and conditions - guaranteeing the IP remain open
and free to be reused - are problematic attempting to apply them a HDL
design. [This article](http://jolt.law.harvard.edu/articles/pdf/v25/25HarvJLTech131.pdf)
for the Harvard Journal of Law by Eli Greenbaum gives an overview of
the problem
([summary](http://acawiki.org/Open_Source_Semiconductor_Core_Licensing)
and [comment](http://gondwanaland.com/mlog/2012/05/12/gpl-semi/)). In
short, in the case of linking, for example, a HDL design compiled for
manufacture typically isn’t considered binary object code, and when
one HDL design is instantiated in another, it isn’t exactly the same
as linking in the software context. There are many other problematic
technical issues which emerge. What to do about this is an active area
of research and discussion by the interested parties.

[One approach put forward](http://www.ohwr.org/documents/341) by
Javier Serrano of CERN goes that in order to leverage the existing
pool of mature and tested software licenses then some sort of
consensus should be reached regarding the translation of software
concepts to the hardware context. Ideally, it would be through
something released by the stewards of the existing licenses dealing
the applicability of their existing software licenses to HDL
designs. It has been commonplace in the past decade to license HDL
code under licenses such as the GNU GPL and LGPL licenses which are
copyleft, and the permissive BSD and MIT software licenses, with the
idea being that the general intention of the license is invoked. Given
the large number of HDL works having adopted a software license,
providing firmer legal ground for them via some translation of the
technical concepts used in software licenses like the GNU GPL would be
beneficial.

Another approach is to adapt existing software licenses and replace
incompatible software concepts with those applicable to use in
semiconductors and reprogrammable logic chips (FPGAs). Licenses such
as this are the [Solderpad license](http://solderpad.org/licenses/)
based on the Apache software license, and the
[OHDL](http://juliusbaxter.net/ohdl/) which is based on the Mozilla
public license. The
[CERN OHL](http://www.ohwr.org/projects/cernohl/wiki) aims to be the
GNU GPL license for hardware, however
[its applicability to HDL designs has been raised](http://lists.ohwr.org/sympa/arc/cernohl/2014-07/msg00000.html).

One consideration in this discussion is that copyright applies to the
source code files, but not the manufactured hardware such as a silicon
die, for example. See "Licensing your Designs" in
[this OSHWA article](http://www.oshwa.org/sharing-best-practices/). Do
the conditions in the license that are triggered when a derivative
work is *distributed* (what constitutes distribution in this case is
also a good question) apply when something is manufactured?  Then
consider an FPGA containing a bitstream, which could be construed to
be more like a software binary.

The case for why copyleft licenses for hardware may be hard or
impossible to enforce is made by
[Andrew Katz in this article](http://www.ifosslr.org/ifosslr/article/view/69/131). He
proposes the [Solderpad license](http://solderpad.org/licenses/) to
mitigate these issues, and argues that beyond the practical barriers
open source hardware impose, wishing to enforce copyleft requirements
will eliminate potential collaborators, making an already small
ecosystem smaller.

This is an active topic and this article will be updated as it
progresses.

## Further reading (not all FOSSi/HDL-oriented)

 * [Our planned activities](2017/02/10/licensing-roadmap)
 * [http://www.ladyada.net/library/openhardware/license.html](http://www.ladyada.net/library/openhardware/license.html)
 * [https://github.com/ewa/free-hdl-license/wiki](https://github.com/ewa/free-hdl-license/wiki)
 * [http://www.inmojo.com/licenses/](http://www.inmojo.com/licenses/)
 * [http://www.embecosm.com/2013/03/08/a-license-to-build/](http://www.embecosm.com/2013/03/08/a-license-to-build/)
 * [http://everything.explained.today/Open-source_hardware/](http://everything.explained.today/Open-source_hardware/)
 * [http://www.oshwa.org/sharing-best-practices/](http://www.oshwa.org/sharing-best-practices/) - section "Licensing your Designs"

## Licenses for FOSSi/HDL

### Permissive

 * [Solderpad](http://solderpad.org/licenses/) - based on the Apache License 2.0, modified to apply to HDL works
 * [Modified BSD license](https://en.wikipedia.org/wiki/BSD_licenses#3-clause_license_.28.22Revised_BSD_License.22.2C_.22New_BSD_License.22.2C_or_.22Modified_BSD_License.22.29) - ensures warranty disclaimers are maintained and enables the authors to approve attribution of derived works

### Copyleft

 * [CERN OHL](http://www.ohwr.org/projects/cernohl/wiki)
 * [OHDL](http://juliusbaxter.net/ohdl/)


