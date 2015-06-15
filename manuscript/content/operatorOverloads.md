# Operator overloads
**Summary:**

Operator overloads allows the developer to modify the default behaviour of a type when interacted with in an expression with any specified (or possibly only specified in user code) types.
This includes on assignment, multiplication or division.

**Exercises:**

To get an idea of what operator overloads do, lets consider ``opEquals``.

```D
import std.stdio : writeln;

struct MyStruct {
	int b;
	
	bool opEquals(MyStruct value) {
		return value.b == b;
	}
}

void main() {
	MyStruct myStruct;
	myStruct.b = 7;

	writeln(myStruct == MyStruct(8));
}
```

1. Compile and run the example code.
2. In the given code it does a simple comparison. Perhaps change the value of b to match?
3. Try out ``opCast`` from D's documentation[^DLangOpOverloadsDocs].
4. How about ``opAssign``?
5. And ``opIndex`` using an array as the backing value?
6. Make ``MyStruct(8) * 2 == 16``. Hint ``opBinary``.

Given D's documentation having a wide variety of examples a simple order of things to try is all that is listed here.

**Theory:**

Most of the time developers have no need for operator overloads. The main users are library makers. Which is highly recommended that as a developer you work towards. Library makers focus upon making highly reusable code for use by other programmers. One of their main goals is to map data structures to form easily coherent and understood (modification wise) to other types code. One of the tools they use is operator overloads. This allows them to make user code very simple and elegant while also doing complex tasks.
On the other hand operator overloads also have the ability to make code hard to read and understand. Because of its nature of changing the default language behaviour of expressions. Within the D language there is a vast array of operator overloads, more so then most other languages. But less then what C++ has. This choice was to prevent it from making code harder to understand but allow the developer to extend the language semantics enough to map the code to the mind as easy as possible.

There is a few types of operator overloads. First off assignment overloads allow to manipulate the given type with another in place. Where as with unary operator overloads creates a new value given an input one. Although it is not required to create a new value but highly recommended.

Some of the main ones are:

* opAssign
* opIndex
* opIndexAssign
* opCast
* opUnary
* opEquals

The meanings of each are fairly obvious except for ``opIndex`` and ``opIndexAssign``. These operator overloads are used for making a type behave as if it was an array of associative array.

There are many many others operator overloads available that are not listed here. Check out the documentation on them at [^DLangOpOverloadsDocs].

**Previous Theory:**

In previous theory we have visited struct's and classes along with OOP.  With these data structure types comes another way other then fields and methods to interact with them. Operator overloading like constructors and destructors get called at special points by the language. In these cases that is when related operators are being used. Both unary and assignment.

Unary operator overloads are in the format of ``a * b``. Where a supports operator overloading for type b with the multiplication operator.
Assignment operator overloads are when you assign (and possibly mutate like it was a unary value) a value.

{pagebreak}
An example of this would be:

```D
import std.stdio : writeln;

struct MyStruct {
	int x;	

	void opAssign(MyStruct from) {
		x = from.x * -2;
	}
}

void main() {
	MyStruct value;
	value.x = 11;

	value = MyStruct(22);

	writeln(value.x);
}
```
The default behaviour of assignment to value within main would make you expect value was out right replaced with a new value. Instead it modifies itself. This is viewed as bad practice but shows the purpose clearly of operator overloads.

[^DLangOpOverloadsDocs]: http://dlang.org/operatoroverloading.html