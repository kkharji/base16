# base16-joe

This contains the [base16](https://github.com/chriskempson/base16) templates
to generate color schemes for [Joe's Own Editor](https://joe-editor.sourceforge.io).

## Installation

```
mkdir -p ~/.joe/colors
cp colors/*.jcf ~/.joe/colors
```

Or, you can use a [builder such as this one](https://github.com/belak/base16-builder-go)
to generate the templates manually.

## 256-color terminals

base16 does not support generating colors for 256-color terminals.  Before
committing, I run the output `.jcf` files through a process in the
[joe-colors repository](https://github.com/jjjordan/joe-colors) to use
the closest colors in the xterm 256 palette for each color scheme.  The
command would be:

```sh
% . ../joe-colors/venv/bin/activate # Activate the virtualenv
% python ../joe-colors/create256.py colors/*.jcf
```

Some schemes do not map well into this palette but to date I've not found a
good way to automatically detect when they don't (if you have an idea, let
me know).  You'll see some debugging output related to this currently.
