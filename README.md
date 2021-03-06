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
*Deployment under Windows 10 is not tested - compatibility reports welcome*

- Microsoft Visual Studio 2015
*Compatibilit reports with later versions of Visual Studio welcome*

- StreamAnalyze Amos

### Step-by-step instructions

1. Download and unpack StreamAnalyze Amos
(latest version [here](https://streamanalyze.com/sa-amos/))

1. Set environment variable `AMOS_HOME` to the root of the the unpacked `sa.amos`, and add `%AMOS_HOME%\bin` into the `PATH` variable

1. Download and unpack [SciSPARQL-sa.amos-headers.zip](http://user.it.uu.se/~andan342/SciSPARQL-sa.amos-headers.zip) to `%AMOS_HOM%E`

1. Clone this repository to `SciSPARQL` directory under `%AMOS_HOME%`

1. Make sure Visual Studio's `msdev.exe` and `%AMOS_HOME%\bin` are in the system `PATH`

1. Under `%AMOS_HOME%\SciSPARQL` run `compile.cmd` and then `mkdmp.cmd`

1. Use `ssdm` command to run **Scientific SPARQL Database Manager**




