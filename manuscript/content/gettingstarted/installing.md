## Installing
Along side dmd, it is highly recommended to also install dub[^dubDownload]. Dub is a build manager for the D programming language. You are most likely not going to need it while starting out.

### Windows
Dependencies:

- *Optional:* Visual Studio Community Edition

Getting dmd to work out of the box for Windows is a little more difficult if you want 64bit support. By default it can generate 32bit binaries fine. Which is good enough for this book. Your CPU may support 64bit but 32bit binaries will work just as well.

If you want to be able to generate 64bit binaries install the latest version Visual Studio Community Edition[^VisualStudioDownloads]. At the time of this writing that was 2013.

TODO: images

### OSX
Dependencies:

-XCode

TODO: images

### Linux
Dependencies:

- Curl (Remember to get the dev package as well!)
- build-essential (for e.g. the ld linker)

For debian based distros, you may want d-apt [^DaptRepo]. D-apt is an apt repository that contains D related programs and libraries. For this method of installation you will commonly will want dmd-bin and dub installed at the minimum.

TODO: images


[^DaptRepo]: http://d-apt.sourceforge.net
[^dubDownload]: http://code.dlang.org/download
[^VisualStudioDownloads]: https://www.visualstudio.com