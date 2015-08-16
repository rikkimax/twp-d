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
	writeln("Please input some integer numbers!");
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

There are two kinds of ranges available, input ranges and output ranges. Input ranges give you data. Output ranges take in data and do something with it. From this there is two ways of defining a range. You can either implement it directly on a struct or class or using a inheritance with a class. Both are valid options and work well. Only the inheritance based approach can remove the usage of meta-programming to select the implementation being used.

{pagebreak}
Input ranges at the very least contain:

```D
interface MinimalInputRange(E) {
	@property {
		E front();
		bool empty();
	}

	void popFront();
}
```
In the above example is shown as using meta-programming to make it valid code while also generic. So the actual type being used is easier to understand where it gets swapped out for.

The InputRange interface in ``std.range.interfaces``[^stdRangeInterfaces] includes a few other methods. Which includes two versions of opApply and moveFront. The moveFront method returns the value of front before popFront and calls popFront afterwards. On the other hand opApply is used to overload the foreach statement. However overloading foreach is not necessary. The D programming language support using input ranges in this form, as if it was an array.

Similarly to InputRange, OutputRange interface in ``std.range.interfaces`` only defines one method. That method is put.

An exciting feature of ranges, is the ability to compose them together. For example using an output range to output an input range values to. Then repeating this a few time to get single unique information out of each. Of course this is highly wasteful. But can allow for concactenating on unique and separate algorithms.

[^stdRangeInterfaces]: http://dlang.org/phobos/std_range_interfaces.html