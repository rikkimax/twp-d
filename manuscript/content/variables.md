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

Variables are how information is represented in memory. A variable takes a set amount of memory to store its value. No matter what it is. Understanding this will greatly emphasize how memory actually works.
Variables have a type. This type can be user defined or language defined.

Some types that are commonly supported by programming languages are:

* int, otherwise known as an integer, supports whole numbers
* float, supports decimal places
* char, character, a single letter
* string, a piece of text, this is commonly implemented as an array of characters
* array, a list of another type
There are others especially user defined like classes, but they won't be talked about here.

Arrays are special in that they contain another type. The definition for a string for example is ``alias string = immutable(char)[]``. Don't worry about the general syntax or what immutable means right now. But the general syntax for an array is ``type[]``.

Types atleast for numbers have a few functions that can be called upon it.

* max
* min
* sizeof
* init
For arrays:

* sizeof
* length

There is another type of array which has a set length. This is specified between the squere brackets. Do not worry about these. There is also associative arrays. Again don't worry about them right now.

There are many others that D supports[^DSupportTypes].

The types I have talked about (excluding arrays) are generally known as primitive types.

There are more advanced types available such as pointers. They have a star after a type. For example ``int*``.
A pointer is a location within memory that contains a rather "large" set of data. Arrays are an example of this. Arrays are actually a pointer to a location in memory that stores the length of the array and then the array contents itself. The size of an array is given using the size_t type. This is the size of a memory address. For 64bit it is 8 bytes. For 32bit it is 4 bytes.

There is one last thing that needs to be understand about variables and that is how to modify them. You use an operator to do so. For example assignment uses =. You can multiply and assign in the same statement. But if you want to use an operator in an *expression* you only include the operator. Like so ``5 * 7``. 

To understand what operators are available take a look at operator overloads that D supports[^DOperatorOverloads].

The operators that is important for arrays and hence strings are the tilde(~). This means to add on or to concactenate.

Within memory arrays look like:
> [length] 3
> [0] 1
> [1] 2
> [2] 3

If we concactenate on 8:
> [length] 4
> [0] 1
> [1] 2
> [2] 3
> [3] 8

It it possible to get a value from an array by using the squere brackets with the index inside on the variable. Like so ``name[0] ``. Remember this also applies to strings.

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

[^DSupportTypes]: http://dlang.org/type.html
[^DOperatorOverloads]: http://dlang.org/operatoroverloading.html
