# Base16 Tmux

See [Base16 repository][1] for more information.

Base16 tmux provides all the base16 theme variants for tmux. Easily swap
between over 200 themes.

## Installation (Manual)

Once you've cloned this repo locally somewhere, you can source the theme
you want to use from within your `.tmux.conf` file. Add the following
line to your `.tmux.conf`.

```tmux
source-file $HOME/.tmux/plugins/base16-tmux/colors/base16-default-dark.conf
```

In most cases, you have to force tmux to assume the terminal supports
256 colours. For this, start tmux as `tmux -2`.

This color scheme is tested with tmux `>= 1.5`. tmux `1.1` is reported as
not working.

### Installation with [Tmux Plugin Manager][2]

Add plugin to the list of TPM plugins in `.tmux.conf`:

```tmux
set -g @plugin 'tinted-theming/base16-tmux'
```

Make sure to source your newly updated `.tmux.conf`. Hit `prefix + I` to
fetch the plugin and source it. The plugin should now be working.

All the base16 themes are provided so you can pick and choose via
`.tmux.conf` option:

- `set -g @colors-base16 'default-dark'` (the default)

## Usage with [Base16-Shell][3]

Your base16-tmux theme can be automatically switched alongside your
[base16-vim][4] and [base16-fzf][6] theme if you use [base16-shell][3].

Follow the TPM (Tmux Plugin Manager) installation instructions above and
your tmux theme will automatically switch when you change
[base16-shell][3] themes.

## Contributing

See [`CONTRIBUTING.md`][7], which contains building and contributing
instructions.

Based on the work of [tmux-colors-solarized][5].

[1]: https://github.com/tinted-theming/home
[2]: https://github.com/tmux-plugins/tpm
[3]: https://github.com/tinted-theming/base16-shell
[4]: https://github.com/tinted-theming/base16-vim
[5]: https://github.com/seebi/tmux-colors-solarized
[6]: https://github.com/tinted-theming/base16-fzf
[7]: CONTRIBUTING.md
