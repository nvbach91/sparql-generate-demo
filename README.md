# SPARQL Generate demo

A demo on how to use [SPARQL Generate](https://github.com/sparql-generate/sparql-generate)


## Software requirements

- [Git client](https://git-scm.com/downloads) or [GitHub desktop](https://desktop.github.com/download/) to clone this repository
- [JDK 23](https://jdk.java.net/23/) - download specific [version 23.0.2](https://download.java.net/java/GA/jdk23.0.2/6da2a6609d6e406f85c491fcb119101b/7/GPL/openjdk-23.0.2_windows-x64_bin.zip)
- [sparql-generate-2.1.0](https://github.com/sparql-generate/sparql-generate/tags) - download specific [version 2.1.0](https://github.com/sparql-generate/sparql-generate/releases/tag/2.1.0)
- [VS Code](https://code.visualstudio.com/)


## Installation

- create directory `C:\utilities\` (exactly)
- download `JDK 23` build and unzip it to `C:\utilities\` so that you have `C:\utilities\jdk-23.0.2\`
- create directory `C:\utilities\sparql-generate-2.1.0\`
- download `sparql-generate-2.1.0.jar` build and move it to `C:\utilities\sparql-generate-2.1.0\` so that you have `C:\utilities\sparql-generate-2.1.0\sparql-generate-2.1.0.jar`
- in the directory `C:\utilities\` clone this demo repository using GitHub Desktop or by running command `git clone https://github.com/nvbach91/sparql-generate-demo.git` in `cmd` (this will create a folder `sparql-generate-demo` in your current working directory)

```bash
C:\> cd C:\utilities
C:\utilities> git clone https://github.com/nvbach91/sparql-generate-demo.git
C:\utilities> cd sparql-generate-demo
C:\utilities\sparql-generate-demo>
```

![image](https://github.com/user-attachments/assets/908d29eb-d4e1-45a5-8843-ab076bf40c43)

- check your JDK 23.0.2 installation

```bash
C:\utilities\sparql-generate-demo> C:\utilities\jdk-23.0.2\bin\java -version
openjdk version "23" 2024-09-17
OpenJDK Runtime Environment (build 23+37-2369)
OpenJDK 64-Bit Server VM (build 23+37-2369, mixed mode, sharing)
```


## Code editor, input data, and SPARQL query

- VS Code is recommended for query editing - download VS Code and open the `C:\utilities\sparql-generate-demo\` directory in it
- input data files are located in the `.\input\` folder
- to use these data files as input for SPARQL Generate, you have to configure IRIs that points to the location of those files in the `documentset` section in the `.\sparql-generate-conf.json` configuration file
- open `.\query.sparql` file in VS Code to edit the SPARQL Generate query


## Generate RDF in different serializations

- open a integrated terminal in VS Code by pressing ``Ctrl + Shift + ` ``
- use the `.\generate.bat` command to run the program
```bash
C:\utilities\sparql-generate-demo> .\generate.bat         # generate result in format ttl
C:\utilities\sparql-generate-demo> .\generate.bat ttl     # generate result in format ttl
C:\utilities\sparql-generate-demo> .\generate.bat jsonld  # generate result in format jsonld
C:\utilities\sparql-generate-demo> .\generate.bat nt      # generate result in format nt
```
- the results can then be found in the `.\results\` folder


## SPARQL Generate language documentation and playground

- https://ci.mines-stetienne.fr/sparql-generate
- Remember to not accidentally upload confidential data to the playground



<!--

- use the `.\help.bat` command to test-run the tool
```bash
C:\utilities\sparql-generate-demo> .\help.bat
usage: SPARQL-Generate processor
 -ao,--append-output         Write from the end of the output file,
                             instead of replacing it.
 -b,--base <arg>             Base URI of the working directory. If set,
                             each file in the working directory is
                             identified by a URI resolved against the
                             base.
...
```

-->