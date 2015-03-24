{pagebreak}

## Arrays and pointers
**Exercises:**

Given the following code:

```D
import std.stdio;

void main() {
    int[] data = [5, 7, 9, 2];
    writeln(data);
}
```

1. Run the code!
2. Did you notice how it is similar to the primitives  exercise code? Ok now try instead of storing it directly in a variable to pass it to writeln instead.
3. How about if writeln looked like this?

   {line-numbers=off}
   ```D
    writeln(data[0]);
   ```

4. What can of values can you put in side of the brackets beside data? E.g. Decimal, boolean (true/false), string, large numbers?
5. New set of code: What is its output?

   ```D
    import std.stdio;

    void main() {
        int[] data = [5, 11] ~ [200, 8];
        writeln(data);
    }
   ```

6. So this tilde (~) expression, can it also work with assignment statements?

    Think ``to ~= expr;``.

**Theory:**

Arrays are rather simple but still complex types. They are not represented only by a few bytes within memory. Instead they take up as many as the OS can provide if requested.

The first thing that must be understood is what the WORD size means. The WORD size of a CPU is the number of bytes it can use for e.g. pointers. Pointers are locations within memory (RAM). For a 32bit CPU it has a WORD size of 4. But on a 64bit computer the WORD size is 8. This is the reason why 32bit computers can only use 4gb of RAM. It is simply they cannot access beyond it. The WORD size in code is commonly referred to as ``size_t``.

It is highly recommand that you do not do what is known as pointer arithmatic. This is where a pointer itself gets added or subtracted from as it can cause the program to *seg fault*. In other words a crash.

Now on to arrays itself. Arrays as simply many values of the same type.  That type determines how many bytes are between each value. Each array has a length as well as a pointer to its values. The length will be the WORD size of the cpu.

{title="How an array looks while it is being passed around"}
| Offset | Value | Name   | Length |
|-----------|---------|------------|------------|
| 0         | 3       | Length | WORD  |
| 1         | PTR   | Pointer | WORD  |

Where PTR is a pointer and WORD means CPU word size. Remember the offset is based upon the previous items sum of lengths.

{title="How an array pointer looks in memory"}
| Offset | Value |
|-----------|---------|
| 0         | 1       |
| 1         | 2       |
| 2         | 3       |

Notice how we do not care about the length of an element? This is because each element will always be the same number of bytes. In this case one byte.

If we concactenate 8 on:

{title="While being passed around"}
| Offset | Value | Name   | Length |
|-----------|---------|------------|------------|
| 0         | 4       | Length | WORD  |
| 1         | PTR   | Pointer | WORD  |

{title="How an array pointer looks in memory"}
| Offset | Value |
|-----------|---------|
| 0         | 1       |
| 1         | 2       |
| 2         | 3       |
| 3         | 8       |

There is a new operator for arrays, tilde(~). It's job is to concatenate two arrays together (join). It works within expressions as well for assignment.  Squere brackets are also reused, to index an item within an array.

Notable information about arrays is that they have a length. In D atleast this can be assigned to. For the purpose of preallocating memory or to release a block of it at once if need be. By this it also extend it.

{pagebreak}
So the following code:

{line-numbers=off}
```D
name ~= value;
```

Is actually implemented as:

```D
size_t t = name.length;
name.length++;
name[t] = value;
```

Along with:

{line-numbers=off}
```D
var3 = var1 ~ var2;
```

The var's 1 and 2 could be expressions which end up being either arrays or the type of the end array.

What it really looks like:

{line-numbers=off}
```D
var3 = var1.dup() ~ var2;
```

Where in this example var1 is an array and var2 is a value of type var1. Dup here duplicates the array. Keep in mind duplication means memory allocation.

It can be further broken down one more:

```D
var4 = var1.dup()
var4 ~= var2;
var3 = var4;
```

Where var4 is a temporary variable with the same type as var3. Although in this case var3 would most likely be used instead of a temporary variable.

**Previous theory:**

In the previous section on all about primitive types, there was one type (related to arrays) not covered. Pointers. Pointers are simply locations in memory. They have a size of what is known as the word size of the CPU. For 32bit this is 4 bytes and 64bit, 8 bytes. Remember 8 bits to a byte!

An array can be thought of as simply, a location in memory plus a length. The length is the number of elements but not necessarily the number of bytes allocated and pointed to by the pointer.
This joining of two values, makes it a complex data type.

Do note that string's atleast in D are just char arrays. Specifically:

{line-numbers=off}
```D
alias string = immutable(char)[]
```

Don't worry about what immutable means here.