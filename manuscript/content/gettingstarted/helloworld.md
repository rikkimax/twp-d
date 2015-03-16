{pagebreak}

## Hello world example
Everything in this chapter uses the command line interface. For Windows this is the command prompt (cmd). On Nix* this is a command line shell.

Before we can write a simple "Hello World" program, we first have to check that the compiler is available to use. To do so we try running it. If it is not found, then it is not on the ``PATH`` variable. When an executable is on your ``PATH`` variable, it can be executed without directly specifying the exact location. You can check that it is by running:

```sh
dmd
```

If it is not found, you will need to debug your ``PATH`` variable and ensure you have installed dmd correctly.

T> **Debugging the PATH variable**
T>
T> 1. Restart or relogin to the shell you are using. For Windows this shell would be the cmd prompt. But you would need to log out of Windows completely to relogin to it.
T> 2. For Windows use:
T>    
T>    ```sh
T>    echo %PATH%
T>    ```
T>    To see your PATH variable's contents. Each entry will be seperated with a semicolon (;).
T>    For Nix* (Linux/OSX) use:
T>    
T>    ```sh
T>    echo $PATH
T>    ```
T>    Each entry will be seperated by a colon (:).
T> 3. To add a directory specifically dmd/bin to the ``PATH`` variable is dependent upon your OS. So it won't be gone into here.

Once your command line shell can use dmd, create a directory that you can access resonably easily. Using a text editor under this directory create the given code:

{title="helloworld.d",lang=D}
```
#!/usr/bin/env rdmd
import std.stdio;

void main() {
	writeln("Hello World!");
}
```

For Nix* users you may want to consider a text editor such as nano or vim. To ease going between console and editing the files. Nano is by far the easiest to use.

{pagebreak}
There are two ways to compile and run it. The harder way:

```sh
dmd helloworld.d
./helloworld
```
On Windows remove the *./* in front of helloworld. This is required on Nix* based OS's. This book will assume you are on an Nix* based OS.

And now the easier way, that should work. Depending upon your installation method and ``PATH`` variable.

```sh
rdmd helloworld.d
```
Most code in this book will probably be only in one file. As such rdmd is the best method to use for these programs. However dmd is the way you should be compiling your code as you get full control over the method used.

If this has worked as expected you should have received on the standard output (more on this later, take it as just being your shell) the text ``Hello World!``.

T> You may have noticed ``#!/usr/bin/env rdmd`` in the source file. 
T> This is for Nix* based operation systems. When the file has executable permissions, it allows it to execute. Without directly calling rdmd/dmd.
T> For Windows change it to ``#!rdmd`` in fact this should also work for Nix* based systems as well. So from now on this will be used.
T>
T> **Example usage:**
T> 
T> ```sh
T> ./helloworld.d
T> ```
