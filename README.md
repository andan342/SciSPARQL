# Scientific SPARQL project

## Summary

Scientific SPARQL (SciSPARQL) is a dialect of W3C [SPARQL 1.1](http://www.w3.org/TR/sparql11-query/) query language for RDF.

Scientific SPARQL Database Manager is the prototype system that implements SciSPARQL. It can be used stand-alone, as a client or as a server.

[Introduction to SPARQL and SciSPARQL](http://www.it.uu.se/research/group/udbl/SciSPARQL/SciSPARQL_intro.pdf)

[SciSPARQL User Manual](http://www.it.uu.se/research/group/udbl/SciSPARQL/SciSPARQL.htm)

[Array API Reference](http://www.it.uu.se/research/group/udbl/SciSPARQL/NMA_API.htm)

## Windows installation

### Prerequisites

- Microsoft Windows 7 or 8

- Microsoft Visual C++ 6.0  
*Visual Studio 2015 will be supported in the near future*

- StreamAnalyze Amos

### Step-by-step instructions

- download and unpack StreamAnalyze Amos
(latest version [here](http://user.it.uu.se/~torer/download/sa.amosWindows.zip))

- set environment variable `AMOS_HOME` to the root of the the unpacked `sa.amos`

- download and unpack [SciSPARQL-sa.amos-headers.zip](http://user.it.uu.se/~andan342/SciSPARQL-sa.amos-headers.zip) to `%AMOS_HOM%E`

- clone this repository to `SciSPARQL` directory under `%AMOS_HOME%`

- make sure Visual Studio's `msdev.exe` and `%AMOS_HOME%\bin` are in the system `PATH`

- under `%AMOS_HOME%\SciSPARQL` run `compile6.cmd` and then `mkdmp.cmd`

- use `ssdm` command to run **Scientific SPARQL Database Manager**




