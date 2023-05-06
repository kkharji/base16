# Base16 MATE Terminal

[Base16](https://github.com/chriskempson/base16) template for MATE Terminal.

Scripts in `color-scripts` are automatically generated using
[InspectorMustache/base16-builder-python](https://github.com/InspectorMustache/base16-builder-python) every day.

## Installation

Scripts require `dconf`:

```shell
$ sudo apt install dconf-cli
```

Clone the repository and execute the script of your choice:

```shell
$ git clone https://github.com/fmunch/base16-mate-terminal.git
$ base16-mate-terminal/color-scripts/base16-solarized-dark.sh
```

A new profile based on your default one will be created with your new scheme. Right click on the terminal to switch to
the new profile.

## Environment Variables

Variable     | Default value       | Description
-------------|---------------------|----------------------------
PROFILE_NAME | Base 16 Scheme Name | Display name of the profile
PROFILE_SLUG | base-16-scheme-slug | Identifier of the profile
DCONFTOOL    | `dconf`             | Path to the dconf binary
BASE_KEY     | /org/mate/terminal  | dconf base key

## 256 variations

Every scheme comes in a standard script and a 256 variation. In case some colors look weird in the standard script you
can try to use the 256 variation instead. It comes with bright colors having the same hex value as the dark ones.
