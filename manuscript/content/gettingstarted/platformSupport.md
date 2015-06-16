## Platform support
There are three main tool chains available for D. Keep in mind a tool chain is not just the compiler (source code to e.g. EXE's aka the runnable binaries). A tool chain includes the linker and some import libraries commonly.

* DMD (Reference compiler)

   Available on all x86 CPU's for Windows, OSX and Linux. Debian based distros are the most supported for Linux.
* LDC (LLVM family)

   Available on all x86 CPU's for Windows, OSX and Linux.
* GDC (GNU family)

   Available on all x86 CPU's for OSX and Linux.

Currently no tool chain out right supports ARM or Power-PC. Older Mac OSX machines used the Power-PC architecture. These are not supported.

I> **While learning you should only use the latest version of DMD**
I> 
I> This will give you the best support and experience.