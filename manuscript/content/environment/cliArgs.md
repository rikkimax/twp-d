{pagebreak}

## Command line arguments
**Summary:**

Every program have arguments. These arguments are used to tell the program who it is and what any calling programs wants to pass to it. 

**Exercises:**

Lets start off with by simply writing to stdout all arguments.

```D
import std.stdio;

void main(string[] args) {
	writeln(args);
}
```

1. First off run it. It will output the array of strings passed to the program.
2. Try running the program like: ``sh ./program arg1 arg2``
3. Notice anything different? Such as three arguments instead of one?

**Theory:**

Like functions, all programs have arguments. In the D programming language you are not required to use these. This is denated by a main function without arguments.

These arguments are a string array. The first of which is the programs execution file. In other words itself. The following will be the values afterwards seperated by a space.

This is a very simple topic, but is very important for complex user interactivity over command line. Commonly they will use interfaces that use ``--name=value`` syntax or ``-n v``. Of course value with the equals sign can be optional. Commonly there will be a help flag defined. On Windows this will be ``/?``. Unlike the nix* world, Windows went with a forward slash to represent a flag.

A great example of a complex command line arguments interface is the wc program. What this program does is it counts characters/lines in files. This is a very common nix* program.

{height=15%}
![wc executable help information](images/wc_help.png)






