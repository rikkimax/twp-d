# The environment
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
The return value is known as the error code to the application. Generally, when 0 is returned it is viewed as having ran succesfully.
In the D version atleast, the arguments and the return value of int instead of void are optional. However they must be either these values or void.