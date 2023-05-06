# base16-sway

This repository is meant to work with
[chriskempson/base16](https://github.com/chriskempson/base16).
It provides a simple template that can be used with the base16 color schemes to
generate a functional config file for
[swaywm/sway](https://github.com/swaywm/sway),
a tiling and dynamic window manager.

## Usage

I imply, that since you are reading this you have already a working sway
config. If not, [please create
one](https://wiki.archlinux.org/index.php/Sway#Configuration).
Sway does not import settings from xresources yet like i3, but it can source a
file via `include` command. We are going to use this feature here:
1. Paste `include colorscheme` in your config. `colorscheme` is a reference to
	 file, which will contain your chosen theme.
2. Paste in your config:
```
# Basic color configuration using the Base16 variables for windows and borders.
# Property Name         Border  BG      Text    Indicator Child Border
client.focused          $base05 $base0D $base00 $base0D $base0D
client.focused_inactive $base01 $base01 $base05 $base03 $base01
client.unfocused        $base01 $base00 $base05 $base01 $base01
client.urgent           $base08 $base08 $base00 $base08 $base08
client.placeholder      $base00 $base00 $base05 $base00 $base00
client.background       $base07
```
3. If you use a statusbar, paste following block in the bar section in your
	 config:
```
colors {
    background $base00
    separator  $base01
    statusline $base04

    # State             Border  BG      Text
    focused_workspace   $base05 $base0D $base00
    active_workspace    $base05 $base03 $base00
    inactive_workspace  $base03 $base01 $base05
    urgent_workspace    $base08 $base08 $base00
    binding_mode        $base00 $base0A $base00
}
```

`include colorscheme` should be pasted *above* the configs from points 2 and 3.
An absolutely minimal example is shown in [config file](config).

Now let's create a `colorscheme` file containing a theme. Since the file is
referred to by name it should be placed in the same directory as your sway
config. Let's pick default dark theme as example and install it via curl in `~/.config/sway/`:

```
$ curl https://raw.githubusercontent.com/rkubosz/base16-sway/master/themes/base16-default-dark.config > ~/.config/sway/colorscheme
```
and reload config with **shift+mod+c**.

