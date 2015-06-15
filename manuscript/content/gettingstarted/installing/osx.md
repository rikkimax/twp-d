{pagebreak}

### OSX
Dependencies:

- XCode

XCode provides the basis infrastructure for dmd on OSX. It is available from the app store for free and can be installed like any other.
Currently the dmd installation media for OSX is not signed meaning you will be requried to enable non signed installation media. You will be instructed about this when you try to install it.


#### General installation

{width=75%}
![Get on to D's website!](images/gettingStarted/osx/1.png)

{width=75%}
![Download the dmg file to install from](images/gettingStarted/osx/2.png)

{width=75%}
![Open up the DMG file](images/gettingStarted/osx/3.png)

If you have default settings with signing of programs for installation you will get this:

{width=75%}
![Unsigned DMG error while opening](images/gettingStarted/osx/4.png)

Follow the steps listed under *Unsigned image running*.

{width=75%}
![Start of dmd installer](images/gettingStarted/osx/5.png)

Most of the steps in between these two stages is license acceptance and location to install with. Defaults are fine.

{width=75%}
![Don't forget to authenticate during installation](images/gettingStarted/osx/5-1.png)

{pagebreak}
#### Unsigned image running

{width=75%}
![Through settings run last program](images/gettingStarted/osx/4-1.png)

{width=75%}
!["Run anyway"](images/gettingStarted/osx/4-2.png)

#### Installing dub

You'll probably also want dub (the build manager) for D. At the point of the writing of this book dub is not distributed with dmd. It is planned to be. So you may not need to do this.

First you need to install homebrew[^HomeBrewSite].

{width=65%}
![Getting homebrew installed](images/gettingStarted/osx/6.png)

{width=65%}
![Now install dub](images/gettingStarted/osx/6-1.png)

[^HomeBrewSite]: http://brew.sh/