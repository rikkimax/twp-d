{pagebreak}

## Guess a number
**Summary:**

Guess a number application is pretty simple. Assuming a set number range, the program tries to guess your number. By having the new ranges it works out.

**Dependencies:**

- Standard input + output

**Activities:**

The pseudo code for this program is:

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
//FIXME: algorithm isn't right

1. Turn the pseudo code into D code
2. Add the ability to say that the guessed number is your number within the while loop
3. Support changing the range of values using command line arguments
4. **Hard:** Non whole number support

{pagebreak}

**Acceptance criteria:**

This session should be possible where your number is 75.

```sh
./guessANumber
Pick a number between 1 and 100

Is your number greater than 50: yes
Is your number greater than 75: no
Is your number less than 75: no
Is your number 75: Yes
Game got your number!
```

T> **Tips!**
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