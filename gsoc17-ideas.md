---
layout: page
title: "Google Summer of Code 2017 - Ideas for Projects"
---
{% include JB/setup %}

We have started collecting ideas for 2017 and applied as organization
in Google Summer for Code 2017. Below we start collecting new ideas,
you can find the project ideas from last year [here](gsoc16-ideas).

### Ideas Overview

 * [Open Source Allure Test Report Adapter for UVM](#allure-test-report)
   (SystemVerilog)


### Open Source Allure Test Report Adapter for UVM

*Goal:* The goal of this project is to create an
[Allure](http://allure.qatools.ru/) Test
[Report Adapter](https://github.com/allure-framework/allure1/wiki/Creating-Allure-Adapter)
that extends the UVM report server. Allure test reports can be
consumed by automation tools such as Jenkins.

*Details:* The
[Universal Verification Methodology (UVM)](https://github.com/accellera/uvm)
is a standardized methodology for verifying integrated circuit
designs. Integrated Circuit Verification is the most time consuming
activity in hardware development. The UVM standard is used by several
ASIC and FPGA teams to create complex verification environment that
ensure designs are thoroughly verified in simulation before being
released. A key aspect of verification is the ability to automatically
process millions of test reports, but the native test reporting
capabilities of UVM are limited and do not readily integrate with
existing automation tools.

*Skill level:* *Intermediate*

*Language/Tool:* SystemVerilog, Simulator

*Mentor:* [Martin d'Anjou](martin.danjou14@gmail.com)
