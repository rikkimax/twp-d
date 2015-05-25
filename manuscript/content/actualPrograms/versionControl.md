{pagebreak}

## Version control
**Summary:**

Versioning the release of a project is only half the story. Versioning the changes done to a codebase can be a complex and messy task. But it can also allow large numbers of developers to work together while keeping the code made up to date.

**Theory:**

Version Control (VC) is a very powerful system to manage changes done to a directory and its children.
It's commonly used for software development, to manage the changes to source code. However it can be used for other file formats and even binaries. So it is not limited to just flat text files or software development.

There are two kinds of VC systems available to date. Distributed and central. Distributed systems are the most common in the market today. Such systems include Git and Mercurial.
Alternatively there is centrally hosted VC systems such as SVN and CVS. Git currently is becomming the most used one in open source projects thanks to Github.
Github has two very useful websites. The first is a tutorial on how to use Git[^GitTutorial], which will teach you interactively to use Git online. The second is more a reference to how Git works and how to use it with Github[^GithubHelp].

The common process to how VC systems work is:

1. Checkout the code (get a copy locally to work on)
    Alternatively update a current local copy (pull) if already exists.
2. Modify the files as wanted
3. Send the changes back to the server
4. Repeat (start at 1)

There is of course much more advanced features supported such as rollback. But that is out of scope of this article.
It is highly recommend to learn to use Github and interact with open source projects using it.

An important feature of centrally hosted VC systems is file locking. File locking means that only one person can modify a file at a time. Distributed VC systems are not plagued by this issue as somebody can just create a copy of that repository and modify until ready to for inclusion.

[^GitTutorial]: https://try.github.io/levels/1/challenges/1
[^GithubHelp]: https://help.github.com/