{pagebreak}

## Ranges
**Summary:**

Ranges are an amazing idiom. In This exercise they will be used to get some information and calculate some values based upon it.

**Dependency:**

- Standard stream IO
- Ranges idiom

**Starting code:**

{title="ExStartOutput.d"}
```D
import std.range.interfaces : OutputStream;
import std.stdio : writefln;

alias FOS = OutputStream!float;

class StdOFloatWriter : FOS {
	private {
		string msg;
	}

	this(string msg) {
		import std.algorithm : canFind;
		this.msg = msg;

		if (msg.canFind("%f")) {
			this.msg ~= " (%f)";
		}
	}

	void put(float v) {
		writefln(msg, v);
	}
}

void main() {
	StdOFloatWriter output = new StdOFloatWriter("Got a value");
	output.put(7.2);
	output.put(6.5);
}
```

{title="ExStartInput.d"}
```D
import std.range.interfaces : InputStream;
import std.stdio : writeln, readln;

alias FIS = InputStream!float;

class StdOFloatReader : FIS {
	private {
		string msg;
		float last;
	}

	this(string msg) {
		this.msg = msg;
		popFront;
	}

	@property {
		bool empty() {
			return false;
		}

		float front() {
			return last;
		}
	}

	void popFront() {
		import std.conv : to;

		writeln(msg);
		string line = readln();
		last = to!float(line);
	}
}

void main() {
	StdOFloatReader input = new StdOFloatReader("A number please: ");
	float lastValue;

	foreach(value; input) {
		writeln("Now value = ", lastValue + value);
		lastValue = value;
	}
}
```

**Activities:**

1. Combine both of ``ExStartOutput.d`` and ``ExStartInput.d`` so for each value gotten from StdOFloatReader, is sent to StdOFloatWriter to output
2. Add the ability to stop the program
3. Create a new input range + output range pair so that it can also calculate the sum of all values given
4. Create another input range + output range pair, so that it can give the product of all values given (multiplication of every value)
5. On stop of program output the sum and product of all values entered

**Acceptance criteria:**

The given interaction with the end program will go as follows:

```sh
./ExRanges
Welcome to the program, please enter decimal numbers.
Type stop, to stop the program.
Doing so will print the sum and product of all values entered.

ENTRY: 8.11
ENTRY: 6.22
ENTRY: 99.8
ENTRY: quit
Invalid entry, did you mean stop? To stop the program.

ENTRY: 3.2
ENTRY: stop

Sum:      117.33
Product: 16109.859712
```
The number of decimal places for the end result does not need to match the given example.