{pagebreak}

## Ranges
**Summary:**

Ranges are a way to decrease memory usage and increase data handling capability of a code base external to the usage.

**Exercises:**

Ranges can be quite a interesting beast, code wise.

{title="InputRangeExample.d"}
```D
import std.stdio : readfln, write, writeln;
import std.range.interfaces : InputRange;

class MyInputRange : InputRange!int {
	private {
		int lastValue;
		string prompt;
		bool atEnd;
	}

	this(string prompt) {
		this.prompt = prompt ~ ": ";
		popFront();
	}

	@property {
		int front() {
			return lastValue;
		}

		bool empty() {
			return atEnd;
		}
	}

	int moveFront() {
		int ret = front;
		popFront;
		return ret;
	}

	void popFront() {
		write(prompt);

		try {
			readf("%d", lastValue);
		} catch (Exception e) {
			atEnd = true;
		}
	}

	int opApply(int delegate(E)) {
        	int result = 0;

        	while(!empty) {
            		result = dg(array[i]);
            		if (result)
                		break;
        	}
     		return result;
	}

	int opApply(int delegate(size_t, E)) {
        	int result = 0;

		size_t i;
        	while(!empty) {
            		result = dg(i, array[i]);
            		if (result)
                		break;
			i++;
        	}
     		return result;
	}
}

void main() {
	writeln("Please input some interger numbers!");
	writeln("Type an invalid number aka anything not a whole number to stop the program");
	writeln();

	MyInputRange iRange = new MyInputRange("An integer");
	foreach(value; iRange) {
		writeln("Hey you said: ", value, " aien't that cool!");
	}
}
```

{pagebreak}

{title="OutputRangeExample.d"}
```D
import std.range.interfaces : OutputRange;
import std.stdio : writeln;

class MyOutputRange : OutputRange!int {
	void put(int x) {
		writeln("Got a value (", x, ")!");
	}
}

void main() {
	MyOutputRange oRange = new MyOutputRange();

	foreach(value; 0 .. 20) {
		oRange.put(value);
	}
}
```

1. Compile and run the given programs
2. Remove the inheritance from the ranges. Does it still work fine?
3. Can you remove the methods opApply and moveFront from MyInputRange and it still work?
4. What about front, empty and popFront?
5. Change the ranges from working on int to float. Hint change ``"%d"`` to ``"%f"``.
6. Change the classes to structs. Is it equal to the class version?

**Theory:**

Ranges are a composable way to get and assign data to something. They are great when seeking is not required (but it is do able). When used properly that can make code dealing with raw data highly readable and memory efficient as they do not keep multiple values in memory at any time. Instead relying on processing a value around as soon as it is gained.