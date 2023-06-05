# Base16 Atelier Dune Light
# Scheme author: Bram de Haan (http://atelierbramdehaan.nl)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#fefbec'
set -l color01 '#e8e4cf'
set -l color02 '#a6a28c'
set -l color03 '#999580'
set -l color04 '#7d7a68'
set -l color05 '#6e6b5e'
set -l color06 '#292824'
set -l color07 '#20201d'
set -l color08 '#d73737'
set -l color09 '#b65611'
set -l color0A '#ae9513'
set -l color0B '#60ac39'
set -l color0C '#1fad83'
set -l color0D '#6684e1'
set -l color0E '#b854d4'
set -l color0F '#d43552'

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
