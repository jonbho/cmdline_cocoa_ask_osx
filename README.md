cmdline_cocoa_ask_osx -- Ask a question from a command line app using a Cocoa dialog in OS X
============================================================================================

BUILDING
--------
* `git clone https://github.com/jonbho/cmdline_cocoa_ask_osx.git`
* `cd cmdline_cocoa_ask_osx`
* `make`

It just invokes `gcc` to build, including the `Cocoa` OS X framework to access the required APIs.

USAGE
-----
* Invoke as `cmdline_cocoa_ask_osx question explanation`, where `question` is the main text and `explanation` is the secondary text.
* This will bring up a Cocoa dialog with a Yes button and a No button, and wait for the user to click on either.
* Exit status is 0 if the user clicked Yes, or -1 if the user clicked No or any other issue happened.


LEGAL
-----
(c) October 2016 Jon Beltran de Heredia ([jonbho](http://jonbho.net)). Licensed under the MIT license.
