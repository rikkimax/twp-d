# Variables
**Summary:**

The mechanism to which data is stored and further manipulated within a program. There are many different types of data. The most common of which are string's.

**Exercises:**

Given the format of: `` type name;`` to define a variables. Lets see a basic usage of a variable.

```D
import std.stdio;

void main() {
	string text = "Hello World!";
	writeln(text);
}
```
This is a very basic usage of a variable. In the above one, it will almost completely be optimized out by the compiller as it is never changed.

1. Try running it.
2. Change the text within the quotes.

    > It works just like the first hello world example right?

3. Now how about moving the setting of the variable from on the same line to another.

    ```D
    import std.stdio;

    void main() {
        string text;
        text = "Hello World!";
        writeln(text);
    }
    ```
    > By now you probably have realised that all statements end with a semicolon. But definitions of "symbols" such as functions do not.

4. So again change the text. What happens when you try setting the variable twice? Which text gets outputted?
5. Instead of ``string``, how about changing it to int. What kind of numbers can be used? Does ``5.7`` work?
6. Does ``5.7`` work when ``float`` is used as the type?
7. For the ``string`` type, if you declare it with a value then instead of setting it, use: ``text ~= " from main";`` after it. What does it output?

{pagebreak}
**Theory:**

sdf

**Previous theory:**
Previously we looked at functions. It was said that they had arguments, but not say how they are defined. They are variables but instead of them being defined on a seperate line they are in the function declaration:

```D
import std.stdio;

void somefunction(string text) {
    writeln(text);
}
```
In the above example, somefunction would get called like we did in hello world for writeln. Passing in the value exactly the same. What isn't shown is that you can have multiple arguments defined per function. They are seperated by a comma. Unlike variable definitions normally which must end in a semicolon.

An example of multiple arguments declared is ``void somefunction(string texta, string textb) {``. For the unaware reader, the usage of text with ``string`` data type is completely the authors choice.

{pagebreak}
**Quizzes:**

sdf

**Stuff to think about:**

sdf
