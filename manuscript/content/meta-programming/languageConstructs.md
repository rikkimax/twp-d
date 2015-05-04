## Language Constructs
**Summary:**
In essence the language supports features which aid in working with meta-programming.

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
Of course in the given example it shows the usage of static if to conditionally include the main function, you would probably be using this with traits instead of an enum to enable/disable features. Normally for this the usage of ``version`` blocks instead. But they are not covered.

TODO: cover version blocks?