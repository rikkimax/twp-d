{pagebreak}

## Allocation
**Summary:**

Allocation is the means to store data. Both in format complex data types such as Structs and Unions but also variables within a function body. The primary form to allocate is in RAM.

**Theory:**

There are three locations to allocate memory. Registers, stack and the heap.

Registers are built into the cpu and it allows to pass arguments to and from functions. As well as doing computation upon there values. They are small, measuring in only four bytes at most each commonly.
The stack and the heap are very much the same thing, but thought of as being seperate. Both of which are assigned within RAM allowing them to be very large in size. However the stack is preallocated upon program execution.

The stack is implemented using a concept called LIFO (Last In First Out). Adding values to the stack allows for tracing what functions have previously been called, to call the current one. As well as more larger arguments. Removing them allows more functions to be called at higher levels in the call chain.

| Offset | Value                        |
|-----------|-------------------------------|
| 0         | 0x987654321           |
| 1         | 1                              |

{title="At pointer 0x987654321"}
| Offset | Value |
|----------|----------|
| 0        | 8        |

Lets assume that this is the representation of an array on the stack. A length and a pointer to the values. In other words, a function takes an array as argument and here is the last two *word* sized values on it. In this case we are assuming that it is 32bit.

At offset zero is a pointer and at one is a *word* sized unsigned integer. What this means is that the last value to be added to the stack (offset 1) is the size of the array and then using the next value on the stack (offset 0) to point to the array values.

Remember, accessing a value on the stack means removing it from said stack. However you will not need to actually use it directly so don't worry too much. The main thing to take away from this is that the stack gets manipulated by function arguments. An argument may just be an allocated value being passed around.

Structs and Unions are primarily allocated on the stack. Primitive variables are allocated only in registers within function bodies and Arrays are always allocated on the heap.

**Previous theory:**

Previously variables within function bodies have been shown and used to manipulate data. These are allocated within registers. They are short lived and swapped around as needed on the CPU.

But for pointers, including pointers to structs and primitives. They are allocated on the heap. The heap is basically the RAM where as the stack is again the RAM but preallocated to the application.

Unlike structs which can be allocated on the heap, registers or the stack depending upon usage and size.