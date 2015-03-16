# Variables
**Summary:**

The mechanism to which data is stored and further manipulated within a program. There are many different types of data. The most common of which are string's.

**Exercises:**

Given the format of: `` type name;`` lets define see a basic usage of a variable.

```D
import std.stdio;

void main() {
	string text = "Hello World!";
	writeln(text);
}
```
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




{pagebreak}
**Theory:**

sdf

**Previous theory:**

sdf

{pagebreak}
**Quizzes:**

sdf

**Stuff to think about:**

sdf
