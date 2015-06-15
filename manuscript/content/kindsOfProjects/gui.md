{pagebreak}

## Graphical User Interface (GUI)
**Summary:**

GUI's are commonly associated with what a program is today. A GUI toolkit provides such functionality.

**Theory:**

There is a few main ways to interact with the user today. With GUI's being synonymous with a program today. The other two being command line and web.
Which is quite unfortunate today as GUI's are very expensive.

GUI tool kits can be broken down into:

* Window creation
	Creates a window to be interacted with. Most likely depends on e.g. image library to support an icon.
	There will commonly also be platform specific support.
	Optionally there may be display support. For the purposes of e.g. what the monitor supports.
* Image read/manipulation
	Quite often a separate library (usually in standard library) to enable loading into memory and manipulating images.
* Drawing
	Core drawing support, will be slightly higher level to support the controls drawing. But will depend upon context creation.
* Context creation
	There are two kinds of contexts. A raw buffer draw and a 3d context. Such as OpenGL.
* Controls
	These provide the abstractions as well as drawing mechanisms for everything from a button to a web browser.
	Can be called a widget.

Remember command line interfaces are next to free. GUI's and web are very expensive operations. While it may seem cool to work with them, they are not free and are **VERY** hard to get right. 

If you must use one, choose either wxWidgets, GTK and IUP. If you must start out with any for your first year, choose IUP[^IUPSite] even if your language isn't already setup for it.

[^IUPSite]: http://www.tecgraf.puc-rio.br/iup