# angular-www [![Dependency Status](https://david-dm.org/buildbot/buildbot-website.svg)](https://david-dm.org/buildbot/buildbot-website) [![devDependency Status](https://david-dm.org/buildbot/buildbot-website/dev-status.svg)](https://david-dm.org/buildbot/buildbot-website#info=devDependencies)
[Buildbot marketing website](https://buildbot.net) built with CoffeeScript and AngularJS.

## Building

This site uses `grunt` for building.
You can install that locally with

    npm install

which installs grunt in `./node_modules/.bin`.
You can either add that to your PATH, or just use an explicit path, to run grunt.

To build quickly for local use during development (without minifying and concatenating):

    grunt

To watch for file changes and automatically recompile on changes:

    grunt dev

To build a fully minimized, concatenated version:

    grunt prod

In any case, you'll find the resulting site in the `built/` directory, starting with `index.html`.
It's safe to point a web server directly at this directory.

## History

This site is based on AngularFun.
Compared to AngularFun, we:

* drop the original nodejs server code
* change build directory to "built" instead of "dist" which is already used by python setuptools.
* use jade as a template's syntax sugar

