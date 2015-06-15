{pagebreak}

## Standard Input/Output
**Summary:**

Command line is one of the primary interfaces to a computer. The standard IO (Input/Output) interface provides access to it. This interfaces utilizes a stream based idiom.

**Exercises:**

Lets start off with the standard output stream.

```D
import std.stdio;

void main() {
	stdout.writeln("From stdout");
}
```

1. As usual run the program.
2. Is there any difference if you take away the ``stdout.``?
3. What about if ``stdout`` is changed to ``stderr``.
4. How about to ``stdin``?
5. OK writing lines are all good. Now lets move on to doing custom end of lines. Don't forget to run it!

   ```D
    import std.stdio;

    void main() {
        write("hi");
        write("<your name>");
        writeln();
    }
   ```
6. So with the above code we can see that it outputs to the one line, yet three function calls occur. And one of them which we know can take many arguments has none. What happens if writeln is removed?
7. In the first write function call, lets add the text ``\n`` at the end (but inside of the quotes).
8. So far stdout and stderr have been shown. Now to move on to stdin. So lets use a new snippet of code.
   
   ```D
    import std.stdio;
    
    void main() {
        write("Say something> ");
        string line = readln();

        write("You gave me: ");
        writeln(line);
    }
   ```
9. So you can read some text up to when you press enter and assign it to a string variable. Previously it was mentioned that ``\n`` made the command line put text on the next line. Is there a way to test for that? Perhaps manipulating the string as an array.

**Theory:**

Standard IO provides a method to interface to a user or to other programs via a stream interface. Streams are quite literally a flow of data from a source program to a target program.

There are three streams provided to all programs.

* Input (in)
* Output (out)
* Error (err)

Output and Error are fairly similar in that the source program is the one not interacting with the user. The one that is, is the target.
Input on the other hand has the source program being the program interacting with the user. Other wise known as the shell.

Output streams have a set number of activities on them. The only real main one that as a user you need to be concerned about is the ability to write text to it.
Generally you can only assume that the write functionality to a standard output stream may only support a single character. In reality it usually is a string.
Past the ability to write text is the need to format in certain ways. Such as pushing the following text onto a new line. The most commonly way to do this is a new line character (``\n`` or in decimal 10). This is an ASCII character. There are other such characters which can be outputted. They are collectively known as escape characters. Denoted by the *\* in front of the *n*. The other main one is ``\t`` other wise known as the tab escape character.

Input streams on the other hand have a set of activities on them as well. In this case only ``input`` is the main one. A new line character denotes that the enter key has been pressed. It is possible for a ``\r`` character to precede it. This is the carriage return. However not many operating systems use it these days, in favour of ``\n``.

There are many more escape characters available. Even support color, formatting and much more. But these are a very advanced topic and are highly temperamental.

**Previous theory:**

In previous code examples, *writeln* was used to output some text to the command line. It outputs it to a stream called stdout or otherwise known as standard output. This stream allows writing with some escapes, one of these is ``\n`` other wise known as new line character. In decimal it is the number 10.
There are other standard streams. Error (Err) and Input (in) are the other two. There purpose is fairly straight forward. Input takes input from command line into the application, Output gives it back to the command line and Error outputs back, but for errors. Input and Output can be combined to give the user information regarding input before requesting said input.