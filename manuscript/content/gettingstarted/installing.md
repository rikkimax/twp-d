## Installing
Along side dmd, it is highly recommended to also install dub[^dubDownload]. Dub is a build manager for the D programming language. You are most likely not going to need it while starting out.

### Windows
Dependencies:

- *Optional:* Visual Studio Community Edition 2013

Getting dmd to work out of the box for Windows is a little more difficult, if you want 64bit support. By default it can generate 32bit binaries fine. Which is good enough for this book. Your CPU may support 64bit but 32bit binaries will work just as well.

If you want to be able to generate 64bit binaries install the latest version Visual Studio Community Edition[^VisualStudioDownloads]. At the time of this writing that was 2013.

{pagebreak}

#### Installing dmd
This installs dmd with only 32bit support on Windows.

{width=75%}
![](images/gettingStarted/windows/1.png)

{width=75%}
![](images/gettingStarted/windows/2.png)

{width=75%}
![](images/gettingStarted/windows/3.png)

{width=75%}
![](images/gettingStarted/windows/4.png)

{width=75%}
![](images/gettingStarted/windows/5.png)

{width=75%}
![](images/gettingStarted/windows/6.png)

{width=75%}
![](images/gettingStarted/windows/7.png)

{width=75%}
![](images/gettingStarted/windows/8.png)

{width=75%}
![](images/gettingStarted/windows/9.png)

{width=75%}
![](images/gettingStarted/windows/10.png)

{pagebreak}

#### Installing dub
This installs dub.

{width=75%}
![](images/gettingStarted/windows/dub-1.png)

{width=75%}
![](images/gettingStarted/windows/dub-2.png)

{width=75%}
![](images/gettingStarted/windows/dub-3.png)

{width=75%}
![](images/gettingStarted/windows/dub-4.png)

{width=75%}
![](images/gettingStarted/windows/dub-5.png)

{width=75%}
![](images/gettingStarted/windows/dub-6.png)

{width=75%}
![](images/gettingStarted/windows/dub-7.png)

{pagebreak}

#### Installing visual studio
Installs Visual Studio 2013 Community Eddition. With a seperate step of reinstalling dmd so it auto configures to use it.

{width=75%}
![](images/gettingStarted/windows/vs-1.png)

{width=75%}
![](images/gettingStarted/windows/vs-2.png)

{width=75%}
![](images/gettingStarted/windows/vs-3.png)

{width=75%}
![](images/gettingStarted/windows/vs-4.png)

{width=75%}
![](images/gettingStarted/windows/vs-5.png)

{width=75%}
![](images/gettingStarted/windows/vs-6.png)

{width=75%}
![](images/gettingStarted/windows/vs-7.png)

{width=75%}
![](images/gettingStarted/windows/vd-1.png)

{width=75%}
![](images/gettingStarted/windows/vd-2.png)

{width=75%}
![](images/gettingStarted/windows/vd-3.png)

{width=75%}
![](images/gettingStarted/windows/vd-4.png)

{width=75%}
![](images/gettingStarted/windows/vd-5.png)

{width=75%}
![](images/gettingStarted/windows/vd-6.png)

{pagebreak}

### OSX
Dependencies:

-XCode

XCode provides the basis infrastructure for dmd on OSX. It is available from the app store for free and can be installed like any other.
Currently the dmd installation media for OSX is not signed meaning you will be requried to enable non signed installation media. You will be instructed about this when you try to install it.

{pagebreak}

### Linux
Dependencies:

- Curl (Remember to get the dev package as well!)
- build-essential (for e.g. the ld linker)

For debian based distros, you may want d-apt [^DaptRepo]. D-apt is an apt repository that contains D related programs and libraries. For this method of installation you will commonly will want dmd-bin and dub installed at the minimum.

{width=75%}
![](images/gettingStarted/ubuntu/1.png)

{width=75%}
![](images/gettingStarted/ubuntu/2.png)


[^DaptRepo]: http://d-apt.sourceforge.net
[^dubDownload]: http://code.dlang.org/download
[^VisualStudioDownloads]: https://www.visualstudio.com