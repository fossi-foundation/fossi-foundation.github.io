
:counter: image-counter: 0
:counter: table-counter: 0

:toc:
:toclevels: 5
:sectnums:
:sectnumlevels: 5

= Speed vs Rate matric for Embnech - 0.1-draft-2020420


**Revision History**
[cols="1,3a,10a,5a",options="header"]
|=============================================
|*_Revision_* |*_Date_* |*_Contents_* |*_Author(s)_*
|0.1 |Apr 20,2021 |Initial revision / Draft
|Avishai Tvila
 +
 Ofer Shinaar
|=============================================
{nbsp} +
{nbsp} +



**Reference Documents**
[cols="1,3,3,3",]
|========================================
|Item # |Document |Revision Used |Comment
|========================================

{nbsp} +
{nbsp} +

[[_Toc507430300]]**Abbreviations**

[cols=",",options="",]
|===========================
|Abbreviation |Description
|SW           |Software
|HW           |Hardware
|MCU          |Micro Controller Unit
|===========================

{nbsp} +
{nbsp} +

[[Motivation]]
== Overview

=== Motivation
On the embedded space, sometimes throughput is more important than latency.
Those days we can start seeing emerging IoT cores/MCUs that have a multithreaded
design. On Those designs score for *rate/throughput* will be more critical than
a score for *speed*. It is straightforward to estimate the *rate* score of
multi-core without shared resources, but with HW multi-threading, resource
sharing is built-in. Even for multi-core without HW threading, sharing for
resources is inevitable.
E.g. Crossbar matrix is shared among the multi-cores, and it will impact the
score result.




[[Speed-Metric]]
== Speed Metric (Embench native Matric)
* Measure latency: how fast the CPU completes a single workload.
* Benchmark Score Formula:

****
`*Reference-Time~(one-workload)~ / Platform-under-Test-Time~(one-workload)~*`
****
* Final Score: Geomean



[[Rate-metric]]
== Rate metric
* Measure throughput: for a given frame time, how many copies of the same
workload the CPU can do.
* Benchmark score formula:
****
`*N = Number of workload copies under test*` {nbsp} +

`*N * Reference-Time~(one-workload-copy)~ /
Platform-under-Test-Time~(all-workload-copies)~*`
****
* Final Score: Geomean


{nbsp} +

NOTE: We need to use the same reference time for both, speed and rate
