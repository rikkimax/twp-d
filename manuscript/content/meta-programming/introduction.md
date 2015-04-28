# Meta-programming
**Summary:**

Arguments to functions are not the only types of arguments in programming. In D there is another form via the use of meta-programming. Essentially its arugments only at compile time. Primarily types.

**Exercises:**

TODO: do this!

**Theory:**

Meta-programming or in D commonly referred to as templated code is a way to customize a symbol (class, union, struct, template and mixin template) at compile time by using types and data.

In this book, the theory for this subject is limited as it can become very complex and advance fast. Well beyond the understanding of most developers.

The theory that is covered is basically a little more advanced form of generics. Generics is a way to customize a class/interface in a language such as Java or c# with types.

The definition for usage in a struct is ``struct Name(Type1, [... TypeX]) {``. The name given does matter. It will be an alias for the actual type given. For initiating a type a second set of brackets used that is prefixed with an exclamation mark.

Some basic example code is as follows:

```D
import std.stdio : writeln;

struct MyStruct(T) {
	T value;
}

void main() {
	T!int myValue = T!int(82);
	writeln(myValue.value);
}
```
You can use other types instead of int here.

A very useful language feature that must be mentioned is alias.

```D
import std.stdio : writeln;

struct MyStruct(T) {
	T value;
}

alias Value = MyStruct!float;

void main() {
	Value mine = Value(3.8);
	writeln(mine.value);
}
```
In this case ``Value`` is used instead of ``MyStruct!float`` but it essentially means the same thing as if the alias was not used.

While the example code uses structs, classes and interfaces would also use them in the exact same way.

TODO: what about templates?
TODO: how about static if?