## Native
**Summary:**

Native languages are the lowest level still possible above assembly level. Most of the time they wrap around core features of the target CPU to make it easy to use and work with. There will also be an extensive library associated with it to make it more "high level".

**Theory:**

A native language by definition compiles directly to assembly. Assembly is the operating instructions for a CPU or microprocessor. Microprocessors are small chips that are used in electronics. They have very limited amount of resources available to them. A common microprocessor being used today is Arduino atleast while learning. These days it is possible to get microprocessors that operate at a few hundred megahertz along with a few megabytes of ram. This is comparable to late 80's desktop computer technology.
A common and important feature of native languages is the ability to write inline assembly. Inline assembly is assembly code that is injected in place as specified in a function.

Along with a compiler it is common to have with your toolchain a linker, assembler and system library files such as libc. Unlike other languages, native languages are not required to use the systems libc. However it significantly makes it easier to work on the given platform. Libc is the library used for the C programming language. The reason it is used as the basis is because it is used to bridge almost every other in existance together. Usually it provides the basis for features such as file handling.

For these reasons native languages are the most limiting in terms of feature sets compared to higher level ones. But they are also able to give you every ounce of performance out of the CPU. As shown by C++, D and Objective-C. The language can still provide niceities such as Garbage Collection (GC) and runtime reflection.

**Previous Theory:**

The language used so far has been the D programming language within this book. It is a native language through and through. Capable of being run on everything from an x86 cpu to a small ARM embedded device, with a bit of work.
Other languages such as C and C++ have vast numbers of developers working on them to get support for almost every piece of hardware in existance. Bare in mind that the main reason C++ is used on devices such as gaming consoles is purely because of its C heritage and not because it offers things that other languages like D does not.