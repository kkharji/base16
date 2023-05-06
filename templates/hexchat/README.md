# Base16 for HexChat (and XChat)

See the [Base16 repository](https://github.com/base16-project/base16) for more information, and was built with [base16-builder-python](https://github.com/InspectorMustache/base16-builder-python).

This template maps Base16 colors in a way to preserve the original intent of mIRC and HexChat colors, whose color palettes contain colors not identically representable with Base16.

## Usage

### Manual

Copy your chosen theme from the [colors](colors) directory, and replace the `colors.conf` in your HexChat configuration directory:

*    Windows: `%APPDATA%\HexChat`
*    Microsoft Store: `%LOCALAPPDATA%\Packages\39215TingPing.HexChat_fqe8h3fzrj50c\LocalCache\Roaming\HexChat`
*    Unix: `~/.config/hexchat`
*    Flatpak: `~/.var/app/io.github.Hexchat/config/hexchat`
*    Snap: `~/snap/hexchat/current/.config/hexchat`

### Script (unix systems only)

Switch themes using the theme switcher script. It accepts a single argument which is the kebab-case name of the theme. For example:

```shell
./bin/base16-hexchat-theme gruvbox-dark-medium
```

#### Run from anywhere

Add the following to your shell `*rc` file and make sure the path to where you cloned base16-hexchat is correct:

```shell
export PATH=/your/path/to/base16-hexchat/bin:$PATH
```

Open a new terminal window or source your shell file and now you can switch the theme easily from anywhere.

```shell
base16-hex-theme gruvbox-dark-medium
```

## Documentation of `colors.conf` format

(Borrowed from [jtmohr](https://github.com/jtmohr/xchat-colors-solarized), thank you)

Index   | Description
---     | ---
01 - 15 | mIRC colors
16      | MOTD indicator
17      | User level indicators ( ~, &, @, %, +)
18      | Primary nick color (when not using "colored nick names"), channel action or message
19      | Nick color #1, join message
20      | Nick color #2
21      | Channel message, action highlight
22      | Nick color #3, server messages
23      | Quit and part messages
24      | Nick color #4, notify and ignore header
25      | Nick color #5, user angle bracket color
26      | Nick color #6, DCC and channel messages
27      | Nick color #7, some whois, nick angle bracket color
28      | Nick color #8, some whois, NickServ dashes
29      | Nick color #9, channel topic color
30      | User message, some whois, some DCC
31      | User nick color
256     | Selected foreground
257     | Selected background
258     | Default foreground
259     | Default background
260     | Marker line
261     | New data
262     | Highlight
263     | New message
264     | Away user
265     | Spell checker