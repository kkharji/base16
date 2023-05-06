# base16-luakit

This repository is meant to work with [base16](https://github.com/chriskempson/base16).

It provides a simple template that can be used with the base16 color schemes to generate a functional config file for [LuaKit](https://luakit.github.io), a keyboard-focused browser with a minimal GUI.

The themes have been built using [base16-builder-python](https://github.com/InspectorMustache/base16-builder-python).

## Usage

### Manual

- download the [zip](https://github.com/twnaing/base16-luakit/archive/master.zip) file
- extract the zip
- copy the desired theme under themes folder to luakit config dir
- rename the theme to `theme.lua`

### Using git 

- clone this repo
- build using one of the following methods

#### Make

- run `make`
- copy the desired theme under themes folder to luakit config dit (OR) symbolic link

#### pybase16

##### build

- read the [pybase16 manual](https://github.com/InspectorMustache/base16-builder-python#build)
- copy the desired theme under themes folder to luakit config dit (OR) symbolic link
- (OR) copy the desired theme under colors folder to luakit config and use the color in your theme file

##### inject

- read the [pybase16 manual](https://github.com/InspectorMustache/base16-builder-python#inject)

### Examples

#### Symbolic link

    ln -s themes/base16-gruvbox-dark-medium.lua ~/.config/luakit/theme.lua

#### Using color in your theme

```
$ ln -s colors/base16-gruvbox-dark-medium.lua ~/.config/luakit/color.lua

-- theme.lua
local c = require('color')

local theme = {}

theme.fg = c.base00
```

### Credits

- [base16-quteborowser](https://github.com/theova/base16-qutebrowser)
