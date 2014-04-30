# Penn State EON website build system

This project underlies the [Penn State EON website](http://www.engr.psu.edu/eon/2014/). It consists of the design based from [Foundation](http://foundation.zurb.com/) and a Makefile-based build system driven by a Python compile script.  It uses [Jinja2](http://jinja.pocoo.org/) and eventually Markdown.

## Requirements

You'll need to have the following items installed before continuing.

  * [Node.js](http://nodejs.org): Use the installer provided on the NodeJS website.
  * [Grunt](http://gruntjs.com/): Run `[sudo] npm install -g grunt-cli`
  * [Bower](http://bower.io): Run `[sudo] npm install -g bower`
  * [Python (3)](http://www.python.org/): The compile script was conceived and ran on Python 3, should work on Python 2 if explicitly invoked as such (i.e. not via `./compile.py`) but is not guaranteed
  ** [Jinja2](http://jinja.pocoo.org/): Can be installed via `pip`
  ** [python-markdown](http://pypi.python.org/pypi/Markdown)
  * [(preferably GNU) make](http://www.gnu.org/software/make/)

## Quickstart

```bash
git clone https://github.com/vishwin/PSU-EON-2014-website.git
npm install && bower install
```

While you're working on your project, run:

`make`

And you're set!

## Distribution
When you are ready to package the site for uploading, complete with pages, media and whatnot, run:

`make dist`

And a tarball should appear.

## Directory Strucutre

  * `scss/_settings.scss`: Foundation configuration settings go in here
  * `scss/app.scss`: Application styles go here
  * `templates/`: Jinja2 templates that the compiler will reference from
  * `srctxt/`: All raw content pages in Markdown format
  * `img/`: All non-textual media
