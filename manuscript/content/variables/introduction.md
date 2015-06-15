# Variables
**Summary:**

The mechanism to which data is stored and further manipulated within a program. There are many different types of data. The most common of which are string's.
The simpler in built types to the D language are separated out into primitives and arrays.

**Exercises:**

Given the format of: `` type name;`` to define a variables. Lets see a basic usage of a variable.

```D
import std.stdio;

void main() {
	string text = "Hello World!";
	writeln(text);
}
```
This is a very basic usage of a variable. In the above one, it will almost completely be optimized out by the compiler as it is never changed.

1. Try running it.
2. Change the text within the quotes.

    It works just like the first hello world example right?

3. Now how about moving the setting of the variable from on the same line to another.

    ```D
    import std.stdio;

    void main() {
        string text;
        text = "Hello World!";
        writeln(text);
    }
    ```

    By now you probably have realized that all statements end with a semicolon. But definitions of "symbols" such as functions do not.

4. So again change the text. What happens when you try setting the variable twice? Which text gets outputted?
5. Instead of ``string``, how about changing it to int. What kind of numbers can be used? Does ``5.7`` work?
6. Does ``5.7`` work when ``float`` is used as the type?
7. For the ``string`` type, if you declare it with a value then instead of setting it, use ``text ~= " from main";``. What does it output?

**Theory:**

There are many different types. Some are in built to the language and some are user defined. In this section, the built in types are being used to introduce variables in general. The built in variable types are separated out into two categories. Primitives and arrays.

Primitives are very simple, they simply wrap a little bit of memory with some set behaviour. On the other hand arrays are rather complex. But they follow a set structure within memory.

The built in primitive types documentation are available at[^DSupportTypes].

Further, variables can be manipulated by using operators. This can be done by using them in expressions or in assignment statements.
D supports quite a few operators already, which can be seen on the type documentation as well as the operator overloads page[^DOperatorOverloads]. While you may not be ready to use operator overloads them selves. They do go over what are available.

**Previous theory:**

Previously we looked at functions. It was said that they had arguments, but not say how they are defined. They are variables but instead of them being defined on a separate line they are in the function declaration:

```D
import std.stdio;

void somefunction(string text) {
    writeln(text);
}
```
In the above example, somefunction would get called like we did in hello world for writeln. Passing in the value exactly the same. What isn't shown is that you can have multiple arguments defined per function. They are separated by a comma. Unlike variable definitions normally which must end in a semicolon.

An example of multiple arguments declared is ``
void somefunction(string texta, string textb) {
``.

For the unaware reader, the usage of text with ``string`` data type is completely the authors choice.

[^DSupportTypes]: http://dlang.org/type.html
[^DOperatorOverloads]: http://dlang.org/operatoroverloading.html
