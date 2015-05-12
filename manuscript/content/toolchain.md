# Toolchain
**Summary:**

The toolchain is the most highly used tool that a developer has and will ever use. It is the crux in enabling the developer to execute code that they write. It also can be the difference between an algorithm taking a few milliseconds versus a few seconds to complete.

**Exercises:**

**Theory:**

A toolchain can be devided up into four common features. A linker, compiler, system libraries and assembler. Assemblers are compilers except they work directly with the assembly to produce binary outputs. Instead normally compilers work at a much higher level that most developers can understand.

![Toolchain software parts](images/toolchain.png)

Compilers generally speaking do not produce actual executables instead they produce what is known as an object file. Object files contain compiled to binary assembly representation of the source code without making e.g. pointers point to the real location. Object files do not need to know the real location of any symbols are, instead when the linker produces either a shared library or executable it locates and injects it where necessary.

There are three kinds of binary outputs from a linker.
Shared libraries otherwise known as Dynamic Link Libraries on Windows are reusable code that has its symbols remapped and used during the runtime of an application. In otherwords they can be loaded then unloaded during the execution of a program.
Static libraries are essentially object files that contain many many object files.
Executable binaries are code that can be directly executed.

In reality there is very little difference between an shared library and executable. In practice they are not interchangable.

To understand what this all means in context of D, lets examine what implementations you are using for each.

{title="Toolchain implementation per platform"}
| Part | Windows x86 32bit (OMF) | Windows x86 64bit and 32bit PE-COFF | Linux | OSX |
|-------------------------|----------------------------------|-------------------------------|--------------------------|---------------------------------------|
| Compiler            | dmd                             | dmd                         | dmd                     | dmd                                  |
| Linker                | Optlink (link)                | MSVC (link)              | binutils (ld)          | binutils (ld)                        |
| Assembler          | None                           | MSVC (Masm)           | Gas/Nasm            | nasm                                 |
| System libraries | DMC [^DMCCompiler] | MSVC / Windows Kit | As part of system | Clang + as part of system |

These values are important to understanding on what your current system is running as.
This ignores the other D compilers such as gdc and ldc. However it should look very similar to this.

Viewing this information without the context of how and when it gets executed is pretty useless. So the general compilation sequence is:

!(Toolchain compiler process)[images/toolchain-compiler.png].

Of course there are many other ways of doing it. But this is a good mental model in understanding how compilers and linkers work.



**Previous Theory:**


[^DMCCompiler]: http://www.digitalmars.com/