{pagebreak}

## Cli calculator
**Summary:**

The first application that you will be applying your new knowledge to is a simple calculator. It will read in a few values via the command line arguments and output to standard output for the result.

**Dependencies:**

- CLI arguments

**Activities:**

1. Start with a nice main function, along with importing ``std.stdio``.
2. You will now need a new special function from ``std.conv`` called *to*. It is quite an advance one. So don't worry too much about how it is used.
3. We will start by being it a little dumb and make some assumptions. It will take exactly two arguments.

   ```D
    import std.stdio : writeln;
    import std.conv : to;

    void main(string[] args) {
        writeln(args);
        writeln(to!float(args[1]));
        writeln(to!float(args[2]));
    }
   ```
   Using the code ``to!float(<string>)`` to turn a string into a float value. Lets get the two arguments as float values. Perhaps assign them to there own variables?
4. Add the two float values in an expression. Following this output the resulting value to standard output using ``writeln``.
5. The if statement, check if args has arguments in it (remember ignore first element!).

    ```D
     if (<boolean expression>) {
         <on true statements>
     }
    ```
6. The foreach statement, allow for multiple (unknown values).

    ```D
     foreach(type name; array) {
         <per element of array statements>
     }
   ```
   Don't forget that you will need to slice the array to ignore the first element. ``args[1 .. $]``


**Acceptance criteria:**

1. Given two values e.g.

    {line-numbers=off}
    ```sh
    ./myCalculator 1 2
    ```
    It should output:

        3
2. Give no values or one, output error.
    
    {line-numbers=off}
    ```sh
    ./myCalculator 1
    ```
    or

    {line-numbers=off}
    ```sh
    ./myCalculator
    ```

    It should output:

        myCalculator <number1> <number2> [numberX...]