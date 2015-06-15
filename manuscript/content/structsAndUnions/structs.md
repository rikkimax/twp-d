{pagebreak}

## Structs
**Summary:**
While primitive types and arrays are useful on there own. Combining them into more complex data types. Allowing for groups of them within memory, is very useful. The use of which is to encapsulate a mental model to allow for many instances with different data to be operated on.

**Theory:**

Structs encapsulate multiple values into a single type. These can be both functions and variable declarations. For more advanced uses, it is possible to define more types still.

Functions inside a struct (or class, but that is covered later) are called methods. Outside of a struct or class, they are referred to as free-functions.

Normal methods have slightly different declaration to normal functions. They are commonly have a definition:

```D
int myfunction(MyStruct this, int x) {
	return x;
}
```
The argument x and return type, is just example to show that they are the same as functions:

```D
int myfunction(int x) {
	return x;
}
```
Except the difference is that methods of a context, called *this*. The keyword *this* is a predefined language keyword. It refers to the current instance of the struct/union/class.
The context itself, is not written like it is shown. This would normally be a free-function in this case and the argument this would not be called this. Instead something like *ctx* or *context* could be used. It would normally be written as a method as:

```D
struct MyStruct {
	int y;
	
	int myFunction(int x) {
		return x;
	}
}
```
In this example it would be possible to return ``x + y`` instead of just x. Because it has a context.

Methods can have special properties. The two most important are static and operator overloads.
Static methods do not contain a context argument unlike normal functions.
Operator overload methods, are methods that change certain features of the language to call it instead of the language predefined behaviour.

{pagebreak}
Structs and Unions can be initiated like primitive variables in that they do not need any explicit setting. But to do so is pretty simple.

```D
MyStruct myStruct = MyStruct(5);
writeln(myStruct.myFunction(8));
```

The second line's arguments to ``writeln`` has already been shown before. But unlike previous knowledge ``myStruct`` is used as a context to ``myFunction``.
For the initiation, struct/unions are simply ``type(arguments)``. Normally for arguments they will go into the first variables declared that match the type or that it can implicitly converted to. If you wish to change this behaviour, a constructor can be used.
A constructor is merely a method with a special name and without a return type.

```D
struct MyStruct {
	int x;
	int z;

	this(int arg) {
		this.z = arg;
	}

	int myFunction(int y) {
		return y;
	}
}

```
Previously if you were to use:

{line-numbers=off}
```D
MyStruct myStruct = MyStruct(4);
```

Would have assigned ``x`` *4*. But now it would assign ``z`` *4*

{pagebreak}
There is another special function related to constructors. Destructors are the opposite of constructors. They execute when the type will be removed from memory. A destructor like a constructor has no return type. But unlike a constructor it does not have arguments, yet it still has the argument brackets.
Simple test example:

```D

struct MyStruct {
	int x;
	
	this(int v) {
		x = v;
		writeln("Constructor called");
	}

	~this() {
		writeln("Destructor called");
	}
}

void main() {
	MyStruct myStruct = MyStruct(5);	
}
```
Upon program exit, the constructor upon myStruct should be called.

**Previous theory:**

Structs like primitive types, are declared using the ``type name;`` syntax. However for initialization there is special usage. Specifically in the format of ``type(arguments)``. Where the arguments must match one of the constructors or if none are defined the order for the defined variable types.
Structs encapsulate functions called methods. There first argument is the instance of the struct. Which is referred to as *this*. The instance variable *this* is implicit when you call. There is no requirement to pass it explicitly as if it was a free-function. Free-functions are another name for functions that do not belong to a struct/union/class.