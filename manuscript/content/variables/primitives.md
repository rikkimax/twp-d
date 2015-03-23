## Primitive data types

**Exercises:**
Lets start off with some code:

```D
import std.stdio;

void main() {
    writeln(5 + 5);
}
```

1. So first run it!
2. Change the values in writeln
3. Try changing the plus to other operators like multiplication and devide. Take a look at the table in theory for all the different kinds of operators!
4. All the above showed off what expressions are. Now lets move on to variables themselves. Using the below code to getting started:

     ```D
     import std.stdio;

     void main() {
         int x = 7 * 2;
         writeln(x);
     }
     ```
5. Again try running it!
6. Try changing the multiplication operator to another now.
7. That was all pretty easy stuff, so lets move into harder. Change the ``7`` to ``8.1``, will it compile?
8. What happens if ``int`` is changed to ``float`?

**Theory:**

Types are the representation of information within memory.
Primitive types can be categoriesed under:

* Whole numbers
    E.g. 5, 7, 10, 2000
    * Signed

        Can contain negative values
    * Unsigned

        Cannot contain negative values, but has a larger maximum
* Decimal numbers
    E.g. 5.2, 11.9, 8, 802, -7111

For signed values the difference at the byte level is as follows:
Where LSB is Less Significant Bit and MSB is Most Significant Bit. Don't worry about this, it is to do with the endianness of the cpu.

| Offset | Alias name | Alternative uses           |
|----------|------------------|-----------------------------------|
| 0        | LSB             |                                     |
| 1        |                    |                                     |
| 2        |                    |                                     |
| 3        |                    |                                     |
| 4        |                    |                                     |
| 5        |                    |                                     |
| 6        |                    |                                     |
| 7        | MSB            | Sign, + is zero, - is one |

If the type works over many bytes, the labled (MSB which is 7) will be the last bit in all of the bytes.

A bit is a single boolean value (true or false). A byte contains eight of these. For a positive byte it would be represented as `` 0b00000000`` and for a negative one ``0b10000000``. You will notice that the MSB is next to the 0b. This is the D byte using bit literal syntax.

{pagebreak}
Common type sizes are:

**Whole numbers:**

* byte : 1
* short : 2
* int : 4
* long : 8

**Decimal numbers:**

* float : 4
* double : 8

There is quite often be other primitive types at the same size as a byte. There will commonly be char (character) and bool (boolean) which is true/false.

In D atleast, the whole numbers have unsigned equilivant, just prepend a u on the front to get the type name. For example ``ubyte``, ``ushort`` and ``uint``.

Not all programming languages support both signed and unsigned versions of whole numbers. Java as an example only supports signed versions.

All primitive types (in D atleast) will support the following functions:

* max
* min
* sizeof
* init

Max and min should be pretty straight forward with what they do. Sizeof is an interesting little feature. Remember those numbers beside the type listed above? Well it returns them. It is the size that type takes within memory. Init on the other hand is not so simple. It returns the default initialized version of those values. In D atleast for whole numbers this will be 0. But for decimal it will be NaN (Not any Number).

There are many operators that are commonly used to manipulate these types. They can be devided into, expressions and statements. Statements assign to the variable and expressions manipulate temporarily for usage immediately.

**Statements (assignment):**

There are other types of statements available, but for now assignment is most important for variables/types. To understand the basics of this statement, lets look at what you should already know, Algerbra.

{line-numbers=off}
```
7 = 4 + 3
```
At the base level it reads as:

{line-numbers=off}
```
end result = expression
```
Add on a semi colon on the end, and you have the basis for c style assignment!

Note that the *end result* must be a variable name.

**Expressions:**

Unlike statements, expressions do not assign to a variable.

They come in the format of ``4 + 3`` or `` 100 * variable ``.

You may have noticed that in statements, they use an expression to get the result.

Expressions can be as simple as a single variable or a value. They can also be pretty complex, but lets not go into that. The main ones you will be using are:

{title="Operators for primitive types"}
| Symbol | Function                |
|-------------|---------------------------|
| +           | Addition               |
| -            | Subtraction          |
| *            | Multiplication       |
| /             | Devision               |
| %           | Modulas                |
|               |                              |
| &            | Bit wise and         |
| \|             | Bit wise or           |
| <<         | Bit wise left shift   |
| >>         | Bit wise right shift |

Don't worry too much about the bitwise operators, they are a more advanced and low level operator. But for reference purposes they act as:

```
0b0110 & 0b0101 = 0b0100
0b0110 | 0b0101 = 0b0111
0b0010 = 1 << 1
0b0001 = 0b1000 >> 3
```

You can use the operators with assignment statements. Like so ``end result &= 0b0100``. Where the LHS (Left Hand Side) will be the LHS of the expression and RHS (Right Hand Side) is the RHS of the expression.


**Previous theory:**

sdf