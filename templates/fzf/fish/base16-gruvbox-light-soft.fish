# Base16 Gruvbox light, soft
# Scheme author: Dawid Kurek (dawikur@gmail.com), morhetz (https://github.com/morhetz/gruvbox)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#f2e5bc'
set -l color01 '#ebdbb2'
set -l color02 '#d5c4a1'
set -l color03 '#bdae93'
set -l color04 '#665c54'
set -l color05 '#504945'
set -l color06 '#3c3836'
set -l color07 '#282828'
set -l color08 '#9d0006'
set -l color09 '#af3a03'
set -l color0A '#b57614'
set -l color0B '#79740e'
set -l color0C '#427b58'
set -l color0D '#076678'
set -l color0E '#8f3f71'
set -l color0F '#d65d0e'

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
