## Platform support
There are three main toolchains available for D. Keep in mind a toolchain is not just the compiler (source code to e.g. exe's aka the runnable binaries). A toolchain includes the linker and some import libraries commonly.

* dmd (Reference compiler)

   Available on all x86 CPU's for Windows, OSX and Linux. Debian based distros are the most supported for Linux.
* ldc (LLVM family)

   Available on all x86 CPU's for Windows, OSX and Linux.
* gdc (GNU family)

   Available on all x86 CPU's for OSX and Linux.

Currently no toolchain out right supports ARM or PowerPC. Older Mac OSX machines used the PowerPC architecture. These are not supported.

I> **While learning you should only use the latest version of dmd**
I> 
I> This will give you the best support and experiance.