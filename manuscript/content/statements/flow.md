{pagebreak}

## Flow statements
**Summary:**

Control flow statements come in many forms. Lets take a look at the most basic.

**Theory:**

Lets start off with the most basic one. The if statement. The if statements allows for conditionally executing statements.

```D
if (<expression>) {
    <statements>
}
```
If the condition in the if statement evaluates to true, then the statements will execute.

There are more advanced forms, for example:

```D
if (<expression>) {
    <statements>
} else if (<expression>) {
    <statements>
} else {
    <statements>
}
```
In this case, it will evaluate as:

```D
if (<expression>) {
    <statements>
} else {
    if (<expression>) {
        <statements>    
    } else {
        <statements>
    }
}
```
Note that when the expression is false, the else branch will execute instead of the first set of statements.

{pagebreak}
There can be as many else if's but only one if and else per set of if statements.

```D
if (<expression>) {
    <statements>
} else if (<expression>) {
    <statements>
} else if (<expression>) {
    <statements>
} else {
    <statements>
}
```
Keep in mind that the first if or else if that evaluates to true will be the only one of the branches to execute. It is a hierachy.

For if statements, when there is only one statement in the body. It doesn't need the curly braces around it. However if you want no statements, then you will need them.

```D
if (<expression>)
    <statement>
else {
    <statements>
}
```

Following this, the first loop is introduced. The while loop. 
The while loop allows for executing a set of statements continuesly until the expression evaluates to false.

```D
while(<expression>) {
   <statements>
}
```
It is read as, while expression(that is boolean) is true do this.
In other words, it executes the statements within the body until the expression evaluates to false.

So the flow is:

```D
int i = 5;

while (i < 10) {
    i++;
}
```

|Iteration | Start | End | Did it run? |
|-------------|---------|-------|-----------------|
| 1 | 5  | 6 | Yes |
| 2 | 6  | 7 | Yes |
| 3 | 7  | 8 | Yes |
| 4 | 8  | 9 | Yes |
| 5 | 9  | 10 | Yes |
| 6 | 10 | 10 | No |

Note that iteration means, how many times the statements in the while loop has been executed.
If you wish to run this code, don't forget to wrap it into a main function.

Further while loops can be broken down using labels and goto's. This is a simple concept. Basically a goto statement will "jump" the execution to another part of the code that is "labeled".

```D
void main() {
    int i = 5;
    
    WHILE:
    if (i < 10) {
    
        i++;
        goto WHILE;
    }
}
```

It operates the exact same way as a while loop. Only difference is that this is how the compiler implements it.

Now lets move on to for loops. These are pretty similar to while loops except that do a bit of work for you.

```D
for(int i = 0; i < int.max; i++) {
    <statements>
}
```

To make this for loop make a little more sense, lets rewrite it into a while loop.

```D
int i = 0;

while(i < int.max) {
    <statements>
    i++;
}
```

The type int isn't the only type a for loop can work with. They work with any primitive type. The starting value (0 in this case) and the maximum number (int.max) are completely up to the end developer and may be variables/expressions. The number to increase per is also arbituary. It could just as easily be ``i += 2``.

There is one other loop based upon the for loop. It is called foreach. A foreach statement is quite a lot more advanced than a for loop. In that it has built in behaviour for arrays and can use external functions to change it.

First a simple example:

```D
foreach(value; [1, 2, 3]) {
	writeln(value);
}
```

It will output to standard output, three lines. With the values "1", "2" and "3".
Notice how there is no type specified for value? This is because based upon the array. You can of course manually specify it like so:

```D
foreach(int value; [1, 2, 3]) {
	writeln(value);
}
```

This can be broken down into a while loop:

```D
int[] values = [1, 2, 3];
size_t i = 0;

while(i < values.length) {
	writeln(values[i]);
	i++;
}
```

If you choose to use the custom external behaviour method using functions, take a look into operator overload *opApply*[^OpApplyDocs] and ranges. Ranges are described under the idioms section of this book.

[^OpApplyDocs]: http://dlang.org/statement.html#ForeachStatement