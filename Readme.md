# Cheat_fu

## Description:

[Cheat_fu](http://cheat-fu.heroku.com/) is a quick cheats sheets (sh-based) command line tool (based on git) meant to provide a nice shell terminal layout to your cheat sheets.

One of its main features is that it uses [rtomayko's Ronn](https://github.com/rtomayko/ronn) tool to convert
[markdown(7)](http://daringfireball.net/projects/markdown/syntax) files to [man pages UNIX format](http://man.cx/man).

Which by the way also produces [awesome html man pages!.](http://rtomayko.github.com/ronn/ronn.1.html)

This might me a drawback or a really cool feature depending on how you look at it, since you will have to learn Ronn in order to covert your cheats sheets. (pretty much just markdown)

Cheat_fu was inspired by `cheat` [cheat.errtheblog.com](cheat.errtheblog.com) by Chris Wanstrath and `ch` [cheats](https://github.com/visionmedia/ch) by [visionmedia](https://github.com/visionmedia).

## Screenshot

![Screenshot at flick](http://farm6.static.flickr.com/5016/5517136146_624976a477_z.jpg)

[Screenshot at flick](http://www.flickr.com/photos/30142618@N02/5517136146/)

## Man Pages Background ( [by rtomayko](https://github.com/rtomayko/ronn) )

Some think UNIX manual pages are a poor and outdated form of documentation. I
disagree:

- Manpages follow a well defined structure that's immediately familiar. This
  gives developers a starting point when documenting new tools, libraries, and
  formats.

- Manpages get to the point. Because they're written in an inverted style, with
  a SYNOPSIS section followed by additional detail, prose and references to
  other sources of information, manpages provide the best of both cheat sheet
  and reference style documentation.

- Historically, manpages use an extremely -- unbelievably -- limited set of
  text formatting capabilities. You get a couple of headings, lists, bold,
  underline and no more. This is a feature.

- Although two levels of section hierarchy are technically supported, most
  manpages use only a single level. Unwieldy document hierarchies complicate
  otherwise good documentation. Remember that Feynman covered all of physics
  -- heavenly bodies through QED -- with only two levels of document hierarchy
  (_The Feynman Lectures on Physics_, 1970).

- The classical terminal manpage display is typographically well thought out.
  Big bold section headings, justified monospace text, nicely indented
  paragraphs, intelligently aligned definition lists, and an informational
  header and footer.

- Manpages have a simple referencing syntax; e.g., sh(1), fork(2), markdown(7).
  HTML versions can use this to generate links between pages.

Unfortunately, figuring out how to create a manpage is a fairly tedious process.
The roff/mandoc/mdoc macro languages are highly extensible, fractured between
multiple dialects, and include a bunch of device specific stuff irrelevant to
modern publishing tools.

## Features
  * Concise set of notes used for quick reference.
  * Git powered cheat sheet repository.
  * Custom sheets repo.
  * Fast!
  * Few dependencies (common now, you should have them (sed, git, etc))
  * Self updating via `cheat_fu -uself`
  * Instant cheat sheet updates via `cheat_fu -u`

## Installing/Uninstalling

    $ sudo make install
    $ sudo make uninstall

Cheat_fu is just a bash shell script, therefore, you can just put it on one of your `bin` directories in your `$PATH` and you're ready to start cheating!

## cheat_fu help

`$ cheat_fu -h`

Will Output the help information.

    Options:
    -h, ,ch --help	Display this help message and exit.
    -s              Outputs a list of sheets matching [sheet] or all sheets
    -l              Outputs the path(s) to [sheet] or all sheets
    -u              Updates the cheat sheet repo to grab the latest changes.
    -u [self]       Updates cheat_fu.
    -v              Outputs current version.

    $ cheat_fu -r ronn

    Reads the exact <sheet> given. No globbing allowed here!

    $ cheat_fu -l ronn

    Output paths to sheets matching 'ronn'

    $ cheat_fu -s

    Output list of all sheets

    $ cheat_fu -u

    Update cheat sheet repository

    $ cheat_fu -u self

    Update the 'cheat_fu' executable

    Viewing sheet specifics
    cheat_fu ronn | grep :empty

## Making Roff Files:

`$ ronn --roff my_cheat.1.ronn`

This will output your Roff file.

`roff: ./my_cheat.1`

## Tips

   * Grep!, you would not have problems with things such as `$ cheat_fu ronn | grep :empty`
   * Aliases: `alias ct='cheat_fu'`

## TODO:

* An emacs cheat_fu-mode

## Directory Structure:
    .
    ├── bin
    │   └── cheat_fu
    ├── History.md
    ├── Makefile
    └── Readme.md

## Note on Patches/Pull Requests:

Fork the project.
Make your feature addition or bug fix.
Send me a pull request. Bonus points for topic branches.

## Copyright:

(The MIT License)

Copyright 2011 Jose Pablo Barrantes. MIT Licence, so go for it.

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, an d/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
