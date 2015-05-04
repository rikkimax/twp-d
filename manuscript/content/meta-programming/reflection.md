{pagebreak}

## Reflection
**Summary:**



**Exercises:**



**Theory:**

Reflection is a very broad topic but in essence it is to enable finding information about a symbol. For this book it only covers capabilities of a language such as Java or C# for usage with meta-programming.

First off differences between Java/C# and D.

Java/C#:

* Available at runtime
* Freely accesible and manipulatable but may loose some information during compilation

D:

* Only available during compilation of the code unit
* Not able to find all symbols for usage with it
* Requires *registering* a symbol so its information can be stored for runtime usage

To find out information about symbols/modules traits are used. Traits come in two flavours. The in built to compiler intrinsics and a module in the standard library. It is simple to identify the two. The built in ones use the form ``__traits(<name>, <arg0>, ... <argN>)`` and the standard library module uses template type and free-functions.

For most return values of traits heavily use tuples as the return type. Tuples are a value type that consists essentially of a mix typed static array of values. In other language such as Python this can be created dynamically during runtime. However in D this is not possible.

```D
struct MyTuple(ARGS theArgs) {
	ARGS args = theArgs;
}
```
This is the very essence of how a tuple is defined in D. However there are lots of niceities implemented in the standard library [^TypeTupleStd]. Such as opApply for allowing it to work with the foreach statement. Of note is the function ``tuple``. For which allows for initiating a tuple at both compile time and runtime given a set argument values.

At the end of the book there is a small list of traits supported by D along with further description about them. For more information see D's website/specification as well as the authors other book reguarding Compile Time Function Execution(CTFE) [^CTFEBook].

[^CTFEBook]: http://leanpub.com/ctfe
[^TypeTupleStd]: http://dlang.org/phobos/std_typecons.html#.Tuple