{pagebreak}

### Client side
**Summary:**

When developing web services, it comes a time when the Javascript standard library is not enough. Libraries listed hence forth make it considerably easier.

**Theory:**

There is only one main library that must be known about for client side development. That is Ajax wrapping and $ function provider. The library being used as example of this is Prototype[^PrototypeSite].
A more popular (but larger) library is jQuery[^jQuerySite]. Chrome as part of its developer tools provides it for use to developers automatically. It is a highly used library to date. However for learning Prototype should be your first call to look at.

Ajax is the communication mechanism for a website to communicate with a web server. To do so between the different browsers is a complicated mess. So wrappers are created to make the interface easy to use.

An example of this for Prototype is a simple HTTP 'GET' request to a relative URL and output the text once it has been gained or output the error.

{title="http://prototypejs.org/learn/introduction-to-ajax.html"}
```javascript
new Ajax.Request('/some_url', {
  method:'get',
  onSuccess: function(transport) {
    var response = transport.responseText || "no response text";
    alert("Success! \n\n" + response);
  },
  onFailure: function() { alert('Something went wrong...'); }
});
```

The other feature that you must be aware of is the $[^DollarFuncDocs] function. The $ function is a special one within development. In essence it finds a DOM element by the an id.

The major difference between jQuery[^jQueryDollarDollarFuncDocs] and Prototype is that Prototype has a seperate function that supports CSS selectors. That is $$[^DollarDollarFuncDocs].

Even though client side is listed as its own category it doesn't necessarily is. Javascript which is the client side language commonly used can have e.g. utility libraries. With these include client side templating as well as date/time handling.

[^PrototypeSite]: http://prototypejs.org/
[^jQuerySite]: https://jquery.com/
[^DollarFuncDocs]: http://api.prototypejs.org/dom/dollar/
[^jQueryDollarDollarFuncDocs]: http://api.jquery.com/jquery/
[^DollarDollarFuncDocs]: http://api.prototypejs.org/dom/dollar-dollar/