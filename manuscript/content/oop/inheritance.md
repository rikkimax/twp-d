{pagebreak}

## Inheritance
**Summary:**

Inheritance allows changing other classes implementation for adding both fields and methods.

**Theory:**

Inheritance is a powerful feature in languages that support OOP. It allows for overriding and changing other classes as well as defining what the class must be able to do without actually implementing it. This allows for swappable implementations.

Two language features related to inheritance is interfaces[^DLangInterfaces] and casting.
Casting is not specific to inheritance however the purpose will be clearly seen here.

Casting allows the language think that some data is a different type. While you cannot change an *int* to a class. You can change an unsigned type to a signed type. Also changing smaller primitive types to larger ones.

For classes upcasting to the inherited classes/interfaces is possible. But it is also possible to downcast or explicitly casting to any that you want if you write a special operator overload method. However explicit casting is possible for  structs, unions and classes.

To inherit from another class/interface, use the syntax:

``class name : <interface/class name> [, <interface name>] {``.

You can inherit from many interfaces, but only one class. The class must be the first one listed. Interfaces like classes can inherit from other interfaces.

```D
interface MyInterface {
	void add(int x, int y);
	int getResult();
}

class MyClass : MyInterface {
	private int result;

	void add(int x, int y) {
		result = x  + y;
	}

	int getResult() {
		return result;
	}
}
```
Defined is a class which inherits from an interface.

Example usage of inheritance from an interface.
```D
import std.stdio : writeln;

void main() {
	MyInterface myClass = cast(MyInterface)new MyClass();
	myClass.add(5, 2);
	int value = myClass.getResult();
	writeln(value);
}
```

If you implement a method in a class that inherits from another that also implements it, it will override it. In D you will be required to explicitly say that it overrides.

```D
import std.stdio : writeln;

class Foo {
	void func() {
		writeln("Foo.func");
	}
}

class Bar : Foo {
	override void func() {
		writeln("Bar.func");
	}
}

void main() {
	Foo foo = new Foo();
	Bar bar = new Bar();
	
	foo.func();
	bar.func();
}
```
It should output:

    Foo.func
    Bar.func

Keep in mind that calling ``Foo.func`` and ``Bar.func`` will look up the pointer to the method during runtime to determine the actual method to call.

{pagebreak}
**Previous theory:**

Previously we looked at classes and structs. Now lets apply a unique D feature called ``alias this``.

```D
import std.stdio : writeln;

class Class1 {
	int myNumber;
	
	this(int anArgument) {
		myNumber = anArgument;
	}

	void printIt() {
		writeln(myNumber);
	}
}

class Class2 {
	Class1 myClass1;
	alias myClass1 this;
	
	this(int myArgument) {
		myClass1 = new MyClass1(myArgument);
	}

	void printIt() {
		writeln("From Class2: ", myNumber);
	}
}

void main() {
	Class2 myClass2 = new Class2(7);
	myClass2.printIt();
}
```
In this example *Class2* is shown to contain a field called myNumber yet it is declared in Class1. Essentially *Class2* inherits all the fields and methods that *Class1* has inside itself and it can override *Class1*'s behaviour.

{pagebreak}
A converted version of this using inheritance would be:

```D
import std.stdio : writeln;

class Class1 {
	int myNumber;
	
	this(int anArgument) {
		myNumber = anArgument;
	}

	void printIt() {
		writeln(myNumber);
	}
}

class Class2 : Class1 {
	this(int myArgument) {
		myClass1 = new MyClass1(myArgument);
	}

	override void printIt() {
		writeln("From Class2: ", myNumber);
	}
}

void main() {
	Class2 myClass2 = new Class2(7);
	myClass2.printIt();
}
```

{pagebreak}
The major differences between these two are:

**Alias this:**
- Only available in D
- Can be used in structs and classes
- *Currently* limited to one

**Inheritance:**
- Limited to classes
- Available in almost all languages that support classes
- Supports multiple inherited from
- Supports interfaces and classes to be inherited from
- Can only inherit from one class
- When overriding methods you must annotate with ``override``.

[^DLangInterfaces]: http://dlang.org/interface.html