# Base16 Tokyo Night Storm
# Scheme author: Michaël Ball
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#24283b'
set -l color01 '#16161e'
set -l color02 '#343a52'
set -l color03 '#444b6a'
set -l color04 '#787c99'
set -l color05 '#a9b1d6'
set -l color06 '#cbccd1'
set -l color07 '#d5d6db'
set -l color08 '#c0caf5'
set -l color09 '#a9b1d6'
set -l color0A '#0db9d7'
set -l color0B '#9ece6a'
set -l color0C '#b4f9f8'
set -l color0D '#2ac3de'
set -l color0E '#bb9af7'
set -l color0F '#f7768e'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg+:$color01,bg:$color00,spinner:$color0C,hl:$color0D"\
" --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C"\
" --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D"
