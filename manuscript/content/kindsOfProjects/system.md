{pagebreak}

## System (OS)
**Summary:**

System libraries provide core functionality that is common to all programs such as memory allocation. There job is to abstract away the hardware enough so that for the same OS but different machine should work identically.

**Theory:**

System libraries are not commonly directly used by a first year programmer. Generally speaking if a person is working with it, they know what they are doing.

Of course a general idea of what exists can be handy.

* Memory allocation
* File system interaction (read/write/delete) + directory creation/deletion
* Sockets
* Threading
* Process management
* Logging
* Window management
* User management
* Central time management
* Other hardware management e.g. sound card using drivers

If you directly need to be accessing these libraries you are doing something wrong. In lower level languages such as D you will be using these almost directly from day one. Which is fine.