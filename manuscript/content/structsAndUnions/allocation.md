{pagebreak}

## Allocation
**Summary:**

Allocation is the means to store data. Both in format complex data types such as Structs and Unions but also variables within a function body. The primary form to allocate is in RAM.

**Theory:**

There are three locations to allocate memory. Registers, stack and the heap.

Registers are built into the cpu and it allows to pass arguments to and from functions. As well as doing computation upon there values. They are small, measuring in only four bytes at most each commonly.
The stack and the heap are very much the same thing, but thought of as being seperate. Both of which are assigned within RAM allowing them to be very large in size. However the stack is preallocated upon program execution.

The stack is implemented using a concept called LIFO (Last In First Out). Adding values to the stack allows for tracing what functions have previously been called, to call the current one. As well as more larger arguments. Removing them allows more functions to be called at higher levels in the call chain.

TODO: add table to show this

Structs and Unions are primarily allocated on the stack. Primitive variables are allocated only in registers within function bodies and Arrays are always allocated on the heap.

**Previous theory:**

Previously variables within function bodies have been shown and used to manipulate data. These are allocated within registers. They are short lived and swapped around as needed on the CPU.

Structs and Unions have been shown both locally both within function bodies but also as arguments. For small structs and unions taking up only 4-8 bytes. They can be allocated within the stack or even in registers if short lived. 
But for pointers, including pointers to structs and primitives. They are allocated on the heap. The heap is basically the RAM where as the stack is again the RAM but preallocated to the application.