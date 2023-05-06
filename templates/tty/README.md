# Base16 Template for (\*nix) TTY consoles

[Base16](http://chriskempson.com/projects/base16/) template to generate [ANSI escape sequences](https://en.wikipedia.org/wiki/ANSI_escape_code#Colors) for terminal colors.

This was initially inspired by [Pywal](https://github.com/dylanaraps/pywal).

# Usage

Use a [Base16 Builder](https://github.com/chriskempson/base16#builder-repositories) to generate the theme file.

Add this to your shells config file (.zshrc, .bashrc, etc.) to set the terminal colors on startup:

``` sh
(cat /path/to/theme/file &)
```

The theme file can also be written to /dev/ttys00[0-9] or /dev/pts/[0-9] to change the colors of all open terminals.

``` sh
for tty in /dev/pts/[0-9]; do
    cat /path/to/theme/file > $tty
done
```

# License

licensed under MIT License Copyright (c) 2021 Marcel Arpogaus. See [LICENSE](LICENSE) for further details.
