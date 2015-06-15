{pagebreak}

## Utility
**Summary:**

Utility libraries by themselves do almost thing to a program and are freely changeable. They mostly provide wrappers and interfaces to certain concepts such as date and time.

**Theory:**

Depending upon what the standard library of a language provides will depend if there is need to extend it in certain aspects. Such as handling of date/time.

Some libraries that exist:

* Regex
* Date/Time handling
* String handling
* Other format type handling (e.g. json/xml/yaml)
* File system handling (e.g. Virtual File System (VFS) wrapper)

Often if a external library or program depends upon a library and it is a utility one. It should instead be though of as 'common'. Common code shared among a project or a group of project by an author. Generally speaking it will have no singular purpose in this case.