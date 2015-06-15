# The environment
**Summary:**

When programs execute they have a context. It is commonly known as the execution environment. For most use cases this includes the command line parameters and the standard input/output.

To start off with, some theory that is required in understanding how programs are ran. All programs contain an entry point function. More commonly known as the main function. 

```c
int main(int argc, char** argv) {
	return 0;
}
```
The above snippet is written in the C programming language. This is what the major operating systems such as Windows, Linux and OSX require all programs to have as the entry function.

For the D programming language this gets wrapped into a much nicer version.

```D
int main(string[] args) {
	return 0;
}
```
The return value is known as the error code to the application. Generally, when 0 is returned it is viewed as having ran successfully.
In the D version at least, the arguments and the return value of int instead of void are optional. However they must be either these values or void.

**Variables:**

There is one other topic associated with the execution environment. Within the execution environment there are variables that programs can access and modify for 'child' processes. The most notable environment variable is *PATH*. You have used this during installation for DMD. In this case, it allows you to execute programs that are not in your current directory. There is no need to understand how to get or set environment variables, nor how to execute processes as children at this stage. But if you should want to, take a look at *std.process*[^StdProcessDocs].

[^StdProcessDocs]: http://dlang.org/phobos/std_process.html