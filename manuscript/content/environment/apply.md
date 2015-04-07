{pagebreak}

## Apply your knowledge
**Summary:**

The first application that you will be applying your new knowledge to is a simple calculator. It will read in a few values via the command line arguments and output to standard output for the result.

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

**Exercises:**

1. The if statement, check if args has arguments in it (remember ignore first element!).

    ```D
     if (<boolean expression>) {
         <on true statements>
     }
    ```
2. The foreach statement, allow for multiple (unknown values).

    ```D
     foreach(type name; array) {
         <per element of array statements>
     }
   ```
   Don't forget that you will need to slice the array to ignore the first element. ``args[1 .. $]``

{pagebreak}

### CLI args and standard input
**Summary:**

Lets put some of the information together to create a little application that will test your knowledge of the difference between command line arguments and the standard input stream.

{title="applyCliStdIn.d"}
```D
import std.stdio : write, writeln, readln;
import std.string : join, toLower;

void main(string[] args) {
	string pretense = args[1 .. $].join(" ");
	
	writeln("To stop program, type 'stop'");

	string line;
	while(line.toLower() != "stop") {
		write(pretense);
		line = readln();
	}
}
```
The above application, may look a bit daunting but that is its purpose. It is meant to make you want to remove features, instead of adding them.
It uses language features so far not covered, specifically while loops. The join function may seem scary also but really it just takes an array of strings and turns it into a single string with a seperator in between the elements.

Using the program *applyCliStdIn.d", lets look at what it does. First by running it as:

{line-numbers=off}
```sh
./applyCliStdIn.d ENTRY:
```

Then by removing the text ``ENTRY:`` from it.
Lets break things down.

1. Combine the text given at the command line, into a single string
2. Output some text to the standard output
3. Until the word *stop* is written to standard input, the program keeps going
4. Write out the text that was combined (step 1) to standard output
5. Read until a new line character(*\n*) is read from standard input and assign it into a variable which will be used in step 3

{pagebreak}
**Exercises:**

1. Output the line that was retrieved back to the user via standard output in the while loop. So that the usage might look like:
    
   ```sh
    ./applyCliStdIn.d ENTRY:
    To stop program, type 'stop'
    ENTRY:some text
    some text
    ENTRY:stop
   ```
2. Remove the join, so that the first argument will be the only one.
3. Use a second argument, to prepend the output(*some text*).
4. Make 'stop' be case sensitive. What about changing the word used to stop?

{pagebreak}

### Guess a number
**Summary:**

Guess a number application is pretty simple. So lets look at its interface:

```sh
./guessANumber
Pick a number between 1 and 100

Is your number greater than 50: <yes/no>
Is your number greater than 75: <yes/no>
Is your number less than 75: <yes/no>
```

So lets look at some pseudo code:

```psuedo
set max to 100
set min to 1

while max not equals to min do
	set value to ((max minice min) devide by two) plus min
	output "Is your number greater than " value
	input to answer
	
	if answer is "yes" then
		min = value
	otherwise
		max = value

if max equals min then
	output "Is your number " value "?"
	input to answer

	if answer is "yes" then
		output "Game got your number!"
	otherwise
		output "You cheated!"
```

{pagebreak}
**Exercises:**

1. Turn the pseudo code into D code
2. Add the ability to say that the guessed number is your number within the while loop

T> #### Tips for making the guess a number program
T>
T> 1. Use ``std.conv : to`` to convert a string to a number
T>     
T>     ```D
T>      import std.conv : to;
T>      import std.stdio : writeln;
T>      void main() {
T>          writeln(to!int("5"));
T>      }
T>     ```
T> 2. Don't forget the standard output  function ``write``! as it does not add a new line character at the end.
T> 3. The ``write`` and ``writeln`` functions take many arguments all appended on. It will take any arguments no matter what the type is and convert it to strings for you.