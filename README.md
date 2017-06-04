![](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)

<div align="center"> <a href="http://github.com/oh-my-fish/oh-my-fish"> <img width=90px  src="https://cloud.githubusercontent.com/assets/8317250/8510172/f006f0a4-230f-11e5-98b6-5c2e3c87088f.png"> </a></div><br>

sublime
=======

Creates `subl` command line shortcut to launch Sublime Text editor for [Oh My Fish](https://www.github.com/oh-my-fish/oh-my-fish).

Install
-------

> *Note*: You need to have `Sublime Text` installed.

```fish
$ omf install sublime
```

Usage
-----

```fish
$ subl [options] [file ...]        edit the given files
$ subl [options] [directory ...]   open the given directories
$ subl [options] -                 edit stdin
$ subl --help                      get help :)
```

If your Sublime Text app is in a non-standard location, you can add specify the path to `subl` in your `config.fish`:

```fish
set -g SUBL_PATH "/Applications/Desarrollo/Sublime Text.app/Contents/SharedSupport/bin/subl"
```

License
=======

[MIT](http://opensource.org/licenses/MIT) © [bpinto](http://github.com/bpinto) et [al](https://github.com/bpinto/plugin-sublime/graphs/contributors)
