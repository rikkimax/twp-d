# Pointers to code
**Summary:**

Like all data, code can have a pointer taken to its place in memory. This allows passing code around to be ran without knowing the true context of where it came from. This is heavily used in functional style programming.

**Exercises:**

The starting code example is:

```D
void theFunction(int x) {
	import std.stdio : writeln;
	writeln(x * x);
}

void main() {
	void function(int) myFunction;
	myFunction = &theFunction;

	myFunction(5);
}
```

1. Run this code, what does it output? Can you change it?
2. How about adding another free-function that adds instead of multiplies? Replace the assignment to ``myFunction`` it. Does it give the appropriate value?
3. Lets move on to delegates after function pointers. First use the new code and run it.

    ```D
     struct AStruct {
         bool value;

         void theFunction() {
             import std.stdio : writeln;
             writeln(!value);
         }
     }

     void main() {
        AStruct myStruct = AStruct(false);

        void delegate() myFunction;
        myFunction = &myStruct.theFunction;
     }
    ```
4. Make myFunction pass in an ``int`` as an argument. 

**Theory:**

When data is placed in memory it can have its location stored in a pointer. Like data, code is also stored in memory and can be accessed. Only there is one major difference. You cannot read or write to it. While this may seem like a small coincidence it is not. Code is data. Only of the executable kind.

A topic that was not covered under allocation was that of pages and page rights. A page is a section of memory (dependent on the hardware). Page rights are set by the OS to mark certain sections of memory only executable or read and writable. Code when loaded into memory during the execution of the program sets code into executable pages but not read and writable ones. This allows you to execute code but not modify it.
Some bad programs change these settings to allow it to modify itself and other programs to do evil things. However that isn't too much a problem for you.

Just like data it is possible to take pointers to functions and methods. A pointer to a function is called a function pointer. But a pointer to a method is called a delegate. The main difference between the two is that a delegate includes a context value with it. This will commonly be the instance of the class, struct or union.

The syntax for the type which identifies a function pointer is: `` returnType function(ArgType1, ...) ``. Which is almost identical to a function declaration except with the usage of function in the place of the name. For a delegate it is almost identical except ``delegate``*(* replaces ``function``*(*.

Within memory a function pointer is just a pointer. However a delegate also has a context pointer or value associated with it. A lot like how arrays work.

**Previous theory:**

Function pointers are merely a pointer to a block of memory. Allocated to potentially an unknown size and cannot be me modified. However they can be used to call functions.
Delegate pointers are like function pointers in that they can call the method. But they differ in that they contain a context a little like how arrays have a length for a context.