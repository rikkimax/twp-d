{pagebreak}

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

Unions like structs, support methods including special ones. Of these include constructors, destructors and of course operator overloads.

**Previous theory:**

The major difference between Structs and Unions is that Unions have a capped size, but have many variables declared.