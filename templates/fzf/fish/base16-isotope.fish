# Base16 Isotope
# Scheme author: Jan T. Sott
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#000000'
set -l color01 '#404040'
set -l color02 '#606060'
set -l color03 '#808080'
set -l color04 '#c0c0c0'
set -l color05 '#d0d0d0'
set -l color06 '#e0e0e0'
set -l color07 '#ffffff'
set -l color08 '#ff0000'
set -l color09 '#ff9900'
set -l color0A '#ff0099'
set -l color0B '#33ff00'
set -l color0C '#00ffff'
set -l color0D '#0066ff'
set -l color0E '#cc00ff'
set -l color0F '#3300ff'

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
