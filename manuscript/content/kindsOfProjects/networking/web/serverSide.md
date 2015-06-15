{pagebreak}

### Server side
**Summary:**

To aid developing a web service, certain libraries can make the code fairly easy to read and write. To do complex tasks.

**Theory:**

Along with client side development in web development is server side. Server side is where you run a program on a server. A server is essentially just another computer dedicated to serving content to a 'client'. A client can really be almost any computer. Possibly even a micro controller!

For server side, there are four common set of libraries that you see. Quite often they get grouped into a framework of some kind.

* Router
	Routes a request to a function.
* ORM
	Maps a class to a database table. Making it easy to manipulate the database using language constructs.
* Templating
	Make HTML document more powerful. Not only can they replace parts with others specified in code, but also duplicate and conditionally add them.
* Caching
	Create/get some content only once, then serve it up, lots of times.

A great example for a router is Klein. Klein is a standalone library that can be used for PHP[^KleinRouter].

A rather popular ORM is Hibernate[^Hibernate].

Less well known templating library is JADE[^Jade].

An independent server that handles caching is Memcached[^Memcached]. Commonly it is paired with a serialization library to handle objects.

[^KleinRouter]: https://github.com/chriso/klein.php
[^Hibernate]: http://hibernate.org/orm/
[^Jade]: http://jade-lang.com/
[^Memcached]: http://memcached.org/