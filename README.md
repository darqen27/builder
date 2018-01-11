# Erisia server-builder <a href="https://travis-ci.org/Erisia/builder"><img align="right" src="https://travis-ci.org/Erisia/builder.svg?branch=master"></a>
Build scripts for the server

Make a server directory, then run update-and-start.sh using its relative path. Example:
```
$ mkdir erisia
$ cd erisia
$ git clone https://github.com/Erisia/builder.git git
$ git/update-and-start.sh
```

# License

Everything in this Git repository is MIT-licensed, with the exception
of the third_party directory and mods/configuration data in the base-*
directories; see third_party/README.md for details.

It isn't currently in shape for reuse, but if you wish to do so, make
sure to expunge base-* and third_party.
