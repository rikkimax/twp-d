{pagebreak}

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
3. Try changing the plus to other operators like multiplication and divide. Take a look at the table in theory for all the different kinds of operators!
4. All the above showed off what expressions are. Now lets move on to variables themselves. Using the below code to getting started:

     ```D
     import std.stdio;

     void main() {
         int x = 7 * 2;
         written(x);
     }
     ```
5. Again try running it!
6. Try changing the multiplication operator to another now.
7. That was all pretty easy stuff, so lets move into harder. Change the ``7`` to ``8.1``, will it compile?
8. What happens if ``int`` is changed to ``float``?

**Theory:**

Types are the representation of information within memory.
Primitive types can be categorized under:

* Whole numbers
    E.g. 5, 7, 10, 2000
    * Signed

        Can contain negative values
    * Unsigned

        Cannot contain negative values, but has a larger maximum
* Decimal numbers
    E.g. 5.2, 11.9, 8, 802, -7111

For signed values the difference at the byte level is as follows:
Where LSB is Less Significant Bit and MSB is Most Significant Bit. Don't worry about this, it is to do with the endianness of the CPU.

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

If the type works over many bytes, the labelled (MSB which is 7) will be the last bit in all of the bytes.

A bit is a single Boolean value (true or false). A byte contains eight of these. For a positive byte it would be represented as `` 0b00000000`` and for a negative one ``0b10000000``. You will notice that the MSB is next to the 0b. This is the D byte using bit literal syntax.

Common type sizes are:

**Whole numbers:**

* byte : 1
* short : 2
* int : 4
* long : 8

**Decimal numbers:**

* float : 4
* double : 8

In D at least, the whole numbers have unsigned equivalent, just prepend a u on the front to get the type name. For example ``ubyte``, ``ushort`` and ``uint``.

Not all programming languages support both signed and unsigned versions of whole numbers. Java as an example only supports signed versions.

There is one notable form that ``ubyte`` can take and that is a Boolean. Boolean values are a single byte and are either 1 or 0. Where 1 is true and 0 is false. There is an alias for ``ubyte`` called ``char``. But it is specifically meant to represent a single character.

All primitive types (in D at least) will support the following functions:

* max
* min
* sizeof
* init

Max and min should be pretty straight forward with what they do. Sizeof is an interesting little feature. Remember those numbers beside the type listed above? Well it returns them. It is the size that type takes within memory. Init on the other hand is not so simple. It returns the default initialized version of those values. In D at least for whole numbers this will be 0. But for decimal it will be NaN (Not any Number).

There are many operators that are commonly used to manipulate these types. They can be divided into, expressions and statements. Statements assign to the variable and expressions manipulate temporarily for usage immediately.

**Statements (assignment):**

There are other types of statements available, but for now assignment is most important for variables/types. To understand the basics of this statement, lets look at what you should already know, Algebra.

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
| /             | Division               |
| %           | Modulus                |
|               |                              |
| &            | Bit wise and         |
| \|             | Bit wise or           |
| <<         | Bit wise left shift   |
| >>         | Bit wise right shift |
| !             | Not                        |
| &&          | Logical and           |
| \|\|          | Logical or              |

The not operator is special in that it is only for usage on bool. It changes it from, true to false and vice verse. You will never use it for assignment statements. And only on the variable in question.

{pagebreak}
Logical and, and or. Are special again to Boolean expressions only. In that they combine two Booleans together.

```D
bool a = true && true; // true
bool b = true && false; // false
bool c = true || true; // true
bool d = true || false; // true
```

Don't worry too much about the bit wise operators, they are a more advanced and low level operator. But for reference purposes they act as:

```
0b0110 & 0b0101 = 0b0100
0b0110 | 0b0101 = 0b0111
0b0010 = 1 << 1
0b0001 = 0b1000 >> 3
```

You can use the operators with assignment statements. Like so ``end result &= 0b0100``. Where the LHS (Left Hand Side) will be the LHS of the expression and RHS (Right Hand Side) is the RHS of the expression.