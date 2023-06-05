# Base16 Primer Dark
# Scheme author: Jimmy Lin
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#010409'
set -l color01 '#21262d'
set -l color02 '#30363d'
set -l color03 '#484f58'
set -l color04 '#8b949e'
set -l color05 '#b1bac4'
set -l color06 '#c9d1d9'
set -l color07 '#f0f6fc'
set -l color08 '#ff7b72'
set -l color09 '#f0883e'
set -l color0A '#d29922'
set -l color0B '#3fb950'
set -l color0C '#a5d6ff'
set -l color0D '#58a6ff'
set -l color0E '#f778ba'
set -l color0F '#bd561d'

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
