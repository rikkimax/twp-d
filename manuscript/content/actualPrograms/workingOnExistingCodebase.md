{pagebreak}

## Working on existing codebase
**Summary:**

Learning a new code base for the purpose of maintenace or improvement is a challenge. This section discusses on how to start out in such a task.

**Theory:**

Interacting with other developers to produce a new code base is quite difficult. But if you have not started out with them in producing it, it can even be more of a challenge. Weather you a new hire or just new to a project from the wild it can be a challenge.
But the challenge can be either quite steep or a nice steps to be taken is simply determined by how you go about it.

There are two kinds of existing code bases that you may take on. You will either have developers and working as part of their team or you will be taking on a project from the wild where there is no longer any other developers working on it.

If you are working with existing developers, you need to understand two main things. The first is ego's. You are new. Even if you have 20 years experiance in related systems, understand that they have ego's tied to that system. It's just human nature. Be careful and honest to them.
The second thing you must understand is that a team of developers will have a style of programming. As you are working on their code base you must adhere to them. Even if this includes how to space out your comments. Try to fit to their style. Style can be changed later. Give it a go.

All of the above is basically dedicated to a few things to be aware of socically within a project. On to how to actually start working on the code base.

You may not be given a computer already ready to go. If not, read the code base e.g. build management system and documentation related to it and ask as soon as you run into issues. There is no shame in not knowing how to get it running.

Next work out how to run it. Running and debugging meachnism will make working on the code base a lot easier. This will include things such as IDE/debugger. Perhaps even a webserver and Virtual Machine (VM) environment.

With the general environment working, you should investigate the code base itself. There is two things that you should learn about straight up. Where the entry point(s) to the program is and the general layout of the program. Every program that is well structured will have common design elements throughout it. This includes design patterns and how algorithms work in general.

The next task before starting any sort of work is finding the issue tracking mechanism being used. From there you should be able to find things that need to be implemented/fixed.

If you get stuck, a very good way of getting to know the code base is to find a file and just document what it does and why. So finding calling functions of a given function is a good starting point. This will improve the code readability in the long run and give you a small task to get started.