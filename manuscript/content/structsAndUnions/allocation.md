## Allocation
**Summary:**

TODO: what is it?

**Theory:**

There are three locations to allocate memory. Registers, stack and the heap.

Registers are built into the cpu and it allows to pass arguments to and from functions. As well as doing computation upon there values. They are small, measuring in only four bytes at most each commonly.
The stack and the heap are very much the same thing, but thought of as being seperate. Both of which are assigned within RAM allowing them to be very large in size. However the stack is preallocated upon program execution.

The stack is implemented using a concept called LIFO (Last In First Out). Adding values to the stack allows for tracing what functions have previously been called, to call the current one. As well as more larger arguments. Removing them allows more functions to be called at higher levels in the call chain.

TODO: add table to show this

**Previous theory:**

TODO: registers