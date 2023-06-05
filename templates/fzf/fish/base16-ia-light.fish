# Base16 iA Light
# Scheme author: iA Inc. (modified by aramisgithub)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#f6f6f6'
set -l color01 '#dedede'
set -l color02 '#bde5f2'
set -l color03 '#898989'
set -l color04 '#767676'
set -l color05 '#181818'
set -l color06 '#e8e8e8'
set -l color07 '#f8f8f8'
set -l color08 '#9c5a02'
set -l color09 '#c43e18'
set -l color0A '#c48218'
set -l color0B '#38781c'
set -l color0C '#2d6bb1'
set -l color0D '#48bac2'
set -l color0E '#a94598'
set -l color0F '#8b6c37'

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
