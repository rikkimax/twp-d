{pagebreak}

## CLI args vs standard IO
**Summary:**

Lets put some of the information together to create a little application that will test your knowledge of the difference between command line arguments and the standard input stream.

**Dependencies:**

- CLI arguments
- Standard input + output

**Starting code:**

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
It uses language features so far not covered, specifically while loops. The join function may seem scary also but really it just takes an array of strings and turns it into a single string with a separator in between the elements.

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
5. Read until a new line character(``\\n`` only one dash as it is an escape sequence) is read from standard input and assign it into a variable which will be used in step 3

**Activities:**

1. Output the line that was retrieved back to the user via standard output in the while loop.
2. Remove the join, so that the first argument will be the only one.
3. Use a second argument, to prepend the output(*some text*).
4. Make 'stop' be case sensitive. What about changing the word used from stop?

{pagebreak}

**Acceptance criteria:**

An example session must be in the following form:
    
```sh
./myApp.d ENTRY:
To stop program, type 'goodbye'
ENTRY:some text
some text
ENTRY:GOODBYE
ENTRY:goodbye
```
The word goodbye could be anything else.