# Structs and Unions
Structs and Unions are complex types that contain many other values.

## Structs
**Summary:**


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

**Previous theory:**


## Unions
**Summary:**

Unions like Structs contain a multitude of values but instead of all of them being valid, only one of them can be used at any one time.

**Theory:**

A union has a set size, with the size capped at the largest item specified.

```D
union MyUnion {
	int x;
	ubyte y;
}
```
In the above case, MyUnion will be 4 bytes within memory.

| Offset | Value |
|----------|----------|
| 0        | 0        |
| 1        | 0        |
| 2        | 0        |
| 3        | 0        |

If y was 255, then the first byte would be 255.

| Offset | Value |
|----------|----------|
| 0        | 255    |
| 1        | 0        |
| 2        | 0        |
| 3        | 0        |

However if x is set to 512 then offset 0 would be 0 and offset 1 would be 2.

| Offset | Value |
|----------|----------|
| 0        | 0        |
| 1        | 2        |
| 2        | 0        |
| 3        | 0        |

**Previous theory:**


## Type information
**Summary:**


**Theory:**


**Previous theory:**


