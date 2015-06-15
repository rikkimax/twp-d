{pagebreak}

## Streams
**Summary:**

Streams are a much older technique at getting and sending data to other api's then ranges. However unlike ranges they do not have native D support directly in it.

**Theory:**

Streams are an old idiom. Used heavily in the communication API's. They are used for a technology known as sockets. Sockets are the transport mechanism for computers.

At the very core level they work as:

```D
void read(ubyte[] to);
void write(ubyte[] from);
```
This can be used as a method or a free function. However if used as a free function it will include some form of context. Which is most likely a struct.

There is also a very good chance depending on its usage for it to include other arguments such as an IP address and port to send the data to. But generally speaking this would be included as part of the context struct.

There might be other versions of both read and write. For example taking in a string instead of an array of ubyte's. However they would on call to the two given functions. If however it does include these other functions, it will be used to format it and 'lower' it so it is easier to use.