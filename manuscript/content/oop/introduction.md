# Object Orientated Programming
**Summary:**

Object Orientated Programming (OOP) is an encapsulation idiom for data and code. Similar to Structs.

**Theory:**

Object Orientated Programming is a way to encapsulate data and code. Like Structs, classes[^DLangClasses] have methods and variables. The biggest difference between a Struct and a Class is that classes are allocated on the heap instead of the stack.

An example class is:

```D
import std.stdio : writeln;

class Foo {
	void myfunc() {
		writeln("Foo.myfunc");
	}
}

void main() {
	Foo myClass = new Foo();
	myClass.myfunc();
}
```
However just by using classes you are not using OOP. Classes are just a way to encapsulate data and code, but OOP includes purpose. Making it easy to use and understand.

Furthering with the ability to use classes is inheritance.

There are two kinds of methods for classes. Virtual and non-virtual.
The core difference is that virtual methods (default in D) can be changed (via inheritance). This is reflected by the use of a vtable which contains in an array (owned by the class, not an instance) a pointer to each of the virtual methods for a class.

**Previous theory:**

Previously structs have been shown to have methods and variables. Classes are similar in these aspects including with operator overloads and constructors.

However on top of the encapsulation is a way to represent more complex data in the format of inheritance.

[^DLangClasses]: http://dlang.org/class.html