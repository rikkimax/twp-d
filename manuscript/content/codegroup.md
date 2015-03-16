# How code is grouped
**Summary:**

Programs are grouped into two different layers. The first layer, which you already understand well is a file. For programming D it is refered to as a *module*. The second is internal to a file and that is a function.

**Exercises:**
Create two new files.

{title="excodegroup1.d"}
```D
void myfunction() {
    writeln("Hi from myfunction!");
}
```

{title="excodegroup2.d"}
```D
import excodegroup1;

void main() {
	myfunction();
}
```

Compile and run them by adding them both to e.g. rdmd/dmd.

```sh
rdmd excodegroup1.d excodegroup2.d
```
or:

```sh
dmd excodegroup1.d excodegroup2.d -ofexcodegroup
./excodegroup
```

For Windows users, note that it has the exe extension for the generated binary.

1. Change the text in myfunction "Hi from myfunction!" to something else.
2. What happens if you remove the brackets in the main function when "calling" myfunction.
3. Try removing a semicolon.
4. Make the main function output "I'm the main one!".
5. If you remove the bracket around the quoted text in myfunction with a space between writeln and myfunction. Does it still work?

**Theory:**
As stated in the summary, there are two grouping layers in D. A module and a function.

- Module:

   At the most basic unit, a module is a file. When talking in terms of D, the file must be encoded using UTF-8. Right now that probably won't matter to you.

   Modules contain the source code of your program. Modules can refer to others to use their source code indirectly. This is called an import. The ``helloworld.d`` example used in the getting started chapter is an example of this. It uses import to include the module ``std.stdio``. This is a module in D's standard library. This is denoted by the "std." in front of "stdio".
   When reading module names, split it by a dot. All but the last part is a directory. The last one is the file name without d extension on the end.

   As an example of this, you will find ``std.stdio.d`` source code in the phobos repository on Github[^phobosStdStdioFile]. Do not be afraid at looking at the source code for the standard library. It may be beyond you, but you will learn a lot from it.

   While in the D community you may see ``.di`` files. These are similar to ``.d`` files but they do not contain source code. Only the definitions.
- Function

   Within source files, some languages like to read from top down as if they were instructions to execute. D is not one of these languages. D on the other hand is known as a c style language. It works by grouping instructions into functions. Per application there is one entry point which is a function. In the other languages its a bit like thinking a function wraps around the entire file to be executed and is the entry point.

** Previous theory:**

Lets take a look at the previous example (excluding the shebang line):

```D
import std.stdio;

void main() {
	writeln("Hello World!");
}
```
Lets break down what is happening:

1. It is a module
2. First line of this module includes another, the stdio standard library module.
3. We have a rather complex line.
    1. void, this is known as the return type
    2. main, the name of the function
    3. (), in the brackets would be arguments (some information you are telling it)
4. Here we are executing a function called writeln. Giving it the argument of "Hello World!". Notice how it is of the format: ``name(value);``.
   In this case writeln outputs some text to the command line shell.

[^phobosStdStdioFile]: http://github.com/D-Programming-Language/phobos/blob/master/std/stdio.d