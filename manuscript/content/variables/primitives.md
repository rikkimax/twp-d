## Primitive data types

**Exercises:**

sdf

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

> 0: (LSB) value

> 1: value

> 2: value

> 3: value

> 4: value

> 5: value

> 6: value

> 7: (MSB) sign

If the type works over many bytes, the labled (MSB which is 7) will be the last bit in all of the bytes.

A bit is a single boolean value (true or false). A byte contains eight of these.

Common type sizes are:

**Whole numbers**

* byte : 1
* short : 2
* int : 4
* long : 8

**Decimal numbers**

* float : 4
* double : 8

There is quite often be other primitive types at the same size as a byte. There will commonly be char (character) and bool (boolean) which is true/false.

Not all programming languages support both signed and unsigned versions of whole numbers. Java as an example only supports signed versions.

All primitive types (in D atleast) will support the following functions:

* max
* min
* sizeof
* init

Max and min should be pretty straight forward what they do. Sizeof is an interesting little feature. Remember those numbers beside the type listed above? Well it return them. It is the size that type takes within memory. Init on the other hand is not so simple. It returns the default initialized version of those values. In D atleast for whole numbers this will be 0. But for decimal it will be NaN (Not any Number).



**Previous theory:**

sdf