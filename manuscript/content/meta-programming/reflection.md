{pagebreak}

## Reflection
**Summary:**

Generating code/acting upon other types during execution is reflection. It allows for knowing all fields, there types ext. As well as methods and there respective information.

**Exercises:**

{title=reflectionBase.d}
```D
module reflectionBase;

struct MyType {
	int field;
	void method() {
		import std.stdio : writeln;
		writeln("Hello from MyType.method");
	}
}
```
Using *reflectionBase.d* as the type definitions. Lets use another file to showcase reflective capabilities at compile time.

{title=reflection1.d}
```D
void main() {
	import reflectionBase;
	register!MyType;
}

void register(T)() {
	import std.stdio : writeln;
	writeln(T.stringof);
}
```

1. Compile + execute both of the above code.
2. If you replace ``writeln(`` with ``pragma(msg, ``, what is the difference?
3. What is the output of ``__traits(allMembers, T)`` within the ``writeln``?
4. Using the big list at the end of the book of traits, (both standard library and built into the compiler) to experiament with the given type ``T``.

**Theory:**

Reflection is a very broad topic but in essence it is to enable finding information about a symbol. For this book it only covers capabilities of a language such as Java or C# for usage with meta-programming.

{pagebreak}
First off differences between Java/C# and D.

Java/C#:

* Available at run time
* Freely accessible and manipulable but may loose some information during compilation

D:

* Only available during compilation of the code unit
* Not able to find all symbols for usage with it
* Requires *registering* a symbol so its information can be stored for run time usage

To find out information about symbols/modules traits are used. Traits come in two flavours. The in built to compiler intrinsics and a module in the standard library. It is simple to identify the two. The built in ones use the form ``__traits(<name>, <arg0>, ... <argN>)`` and the standard library module uses template type and free-functions.

For most return values of traits heavily use tuples as the return type. Tuples are a value type that consists essentially of a mix typed static array of values. In other language such as Python this can be created dynamically during run time. However in D this is not possible.

```D
struct MyTuple(ARGS theArgs) {
	ARGS args = theArgs;
}
```
This is the very essence of how a tuple is defined in D. However there are lots of niceties implemented in the standard library [^TypeTupleStd]. Such as opApply for allowing it to work with the foreach statement. Of note is the function ``tuple``. For which allows for initiating a tuple at both compile time and run time given a set argument values.

At the end of the book there is a small list of traits supported by D along with further description about them. For more information see D's website/specification as well as the authors other book regarding Compile Time Function Execution(CTFE) [^CTFEBook].

[^CTFEBook]: http://leanpub.com/ctfe
[^TypeTupleStd]: http://dlang.org/phobos/std_typecons.html#.Tuple