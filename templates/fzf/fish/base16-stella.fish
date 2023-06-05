# Base16 Stella
# Scheme author: Shrimpram
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#2b213c'
set -l color01 '#362b48'
set -l color02 '#4d4160'
set -l color03 '#655978'
set -l color04 '#7f7192'
set -l color05 '#998bad'
set -l color06 '#b4a5c8'
set -l color07 '#ebdcff'
set -l color08 '#c79987'
set -l color09 '#8865c6'
set -l color0A '#c7c691'
set -l color0B '#acc79b'
set -l color0C '#9bc7bf'
set -l color0D '#a5aad4'
set -l color0E '#c594ff'
set -l color0F '#c7ab87'

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
