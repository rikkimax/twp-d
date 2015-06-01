# Paradigms
**Summary:**

Programming languages fall into either a mix of one of three styles or a mix of them. Procedural with its free-functions and structs, OOP with its love of classes and of course functional with its love of functions and passing data between them.
These styles map to different peoples minds differently.

**Exercises:**

Using the files listed on the theory section (ParadigmExampleProcedural.d, ParadigmExampleOOP.d, ParadigmExampleFunctional.d):

1. Multiply the interger by itself before being outputted
2. Have an offset to the input line that is read. E.g.

    ```
       Abf: 7
       7
       9IJ: 6
       6
    ```

**Theory:**

There are three main paradigms. Procedural has the prupose of using structs/unions has contexts and having free-functions to manipulate them in some form. OOP is uses classes almost purely in the aim of making highly abstracted, swappable code. And of course lastly functional, which tried to think of how data gets passed around using functions to mutate as it goes.

They each have there pros and cons. Procedural is the most used of all the paradigms today. With OOP coming in a close second. Functional is really just a baby compared but still quite massive in market shared.

Examples that demonstrates outputting an integer that is read from the standard input into standard output, using each of the three paradigms are shown below.

{title=ParadigmExampleProcedural.d}
```D
void main() {
	import std.stdio : writeln, readln;
	import std.conv : to;

	for(;;) {
		string line = readln();
		
		if (line.length <= 1) {
			continue;
		}
		
		line = line[0 .. $-1];
		int value = to!int(line);
		
		if (value != 0) {
			writeln(value);
		}
	}	
}
```

This is the most simplist to understand and write of all the versions shown. But it is also fairly simple example being used.

{title=ParadigmExampleOOP.d}
```D
class InfoReader {
	int read() {
		import std.stdio : readln;
		import std.conv : to;

		int ret;
		string line;

		while((line = readln()).length <= 1) {}
		ret = to!int(line[0 .. $-1]);

		return ret;
	}
}

class InfoUser {
	void handle(int x) {
		import std.stdio : writeln;
		if (x != 0) {
			writeln(x);
		}
	}
}

void main() {
	InfoReader reader = new InfoReader();
	InfoUser user = new InfoUser();
	
	for(;;) {
		int got = reader.read();
		user.handle(got);
	}
}
```

In this case usually InfoReader and InfoUser would be interfaces with the implementation being passed to it some how.
Also as D does not support a static method entry point, the free-function main is used in place.

{title=ParadigmExampleFunctional.d}
```D
void main() {
	import std.stdio : stdin, writeln, write;
	import std.algorithm : map, filter, each;
	import std.conv : to;
	
	stdin.byLine()
	.filter!(a => a.length > 1)
	.map!(a => a[0 .. $-1])
	.map!(a => to!int(a))
	.filter!(a => a != 0)
	.each!writeln;
}
```

The above code snippet uses a language feature called Uniform Function Call Syntax(UFCS)[^UFCSDocs] in D. Which allows for passing the first argument as if it was a class/struct/union instance to a free-function.

Another language feature that will be unfamiliar to the reader will be the => syntax. This is a lambda[^LambdaDocs] basically a function.

Out of the examples shown, functional is by far the smallest in code length. It is also tied with OOP for the most complex. While procedural at first glance is definately the easiest to read and understand.
Of note is that the OOP implementation already supports swapping of implementations for reading an integer and outputting it.

[^UFCSDocs]: http://dlang.org/function.html#pseudo-member
[^LambdaDocs]: http://dlang.org/expression.html#Lambda