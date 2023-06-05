# Base16 Macintosh
# Scheme author: Rebecca Bettencourt (http://www.kreativekorp.com)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#000000'
set -l color01 '#404040'
set -l color02 '#404040'
set -l color03 '#808080'
set -l color04 '#808080'
set -l color05 '#c0c0c0'
set -l color06 '#c0c0c0'
set -l color07 '#ffffff'
set -l color08 '#dd0907'
set -l color09 '#ff6403'
set -l color0A '#fbf305'
set -l color0B '#1fb714'
set -l color0C '#02abea'
set -l color0D '#0000d3'
set -l color0E '#4700a5'
set -l color0F '#90713a'

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
