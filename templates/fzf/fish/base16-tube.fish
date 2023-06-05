# Base16 London Tube
# Scheme author: Jan T. Sott
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#231f20'
set -l color01 '#1c3f95'
set -l color02 '#5a5758'
set -l color03 '#737171'
set -l color04 '#959ca1'
set -l color05 '#d9d8d8'
set -l color06 '#e7e7e8'
set -l color07 '#ffffff'
set -l color08 '#ee2e24'
set -l color09 '#f386a1'
set -l color0A '#ffd204'
set -l color0B '#00853e'
set -l color0C '#85cebc'
set -l color0D '#009ddc'
set -l color0E '#98005d'
set -l color0F '#b06110'

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
