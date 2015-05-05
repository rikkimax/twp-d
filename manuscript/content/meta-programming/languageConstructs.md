{pagebreak}

## Language Constructs
**Summary:**

Templated code is a great starting point. But to actually use it, other language features are required to allow manipulation.

**Theory:**

As part of the language, exists a few very useful features for working with meta-programming and with it Compile Time Function Execution (CTFE). Namely template blocks, static if and stringof.

The most simple of which is stringof. It is a "field" for a type and it returns a string version of it. This should not be relied upon as the compiler can change this at a whim. However it so rarely does.

Templated code can exist on function/method classes/unions/structs but it can also exist in one other form, ``template``s.
A template is a little like a struct only it is a group of code and cannot be initiated.

```D
template MyTemplateBlock(T) {
	T MyTemplateBlock;
}

MyTemplateBlock!int aValue;

void main() {
	import std.stdio : writeln;
	aValue = 7;
	writeln(aValue);
}
```
In this example MyTemplateBlock is both the name of the template but also the name of the variable within it. When this happens what ever symbol is called the template name becomes the end symbol for the template.

{pagebreak}
The last of the features that should be mentioned here is static if. A static if statement is a conditional statement at works at compile time but unlike a regular if statement it cna exist out of a function body.

```D
// configuration file for library ext.
enum HaveMainFunction = true;

// library code
static if (HaveMainFunction) {
	void main() {
		import std.stdio : writeln;
		writeln("Running the main!");
	}
} else {
	// do something else?
}
```
Of course in the given example it shows the usage of static if to conditionally include the main function, you would probably be using this with traits instead of an enum to enable/disable features. Normally for this the usage of ``version`` blocks instead.

Version blocks are essentially static if's except they are if x is defined. Versions can be specified at the module level or by compiler flags (-version).

```D
version = MyFeatureX;

version(MyFeatureY) {
	enum DEFV = 72;
} else version(MyFeatureX) {
	enum DEFV = 82;
} else {
	static assert(0, "WHAT ARE YOU DOING?");
}
```
Depending upon weather ``MyFeatureY`` is specified to the compiler will determine if ``DEFV`` is *72* or *82*. If for some reason ``MyFeatureX`` is also not specified, then it will error and stop compilation.