{pagebreak}

## Networking
**Summary:**

Networking libraries are some of the most used today. They enable communicating with other programs potentially on other computers.

**Theory:**

The act of communicating with other computers is provided by networking libraries commonly. Normally communication over TCP or UDP is provided directly by the OS kernel. Which is then wrapped into more easily used interfaces by a library. Of course not all networking library is created equal. They may have completely different purposes in respect to what they do.

Quite often networking libraries are combined with threading libraries. Threading libraries provide multithreading support into an application. Of course the language has to support such a thing. Because of this it is usually provided primarily within the standard library.

Of note is some libraries provide a very high level interface. Supporting OOP based serialization communication between programs over sockets.

* Msg-pack[^MsgPackSite]
* Kryonet[^KryoNetGithub], uses Kryo to deserialize/serialize objects[^KryoGithub]

There are many other kinds out there. But this does summarise the core ones.

[^MsgPackSite]: http://msgpack.org/
[^KryoNetGithub]: https://github.com/EsotericSoftware/kryonet
[^KryoGithub]: https://github.com/EsotericSoftware/kryo