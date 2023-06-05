# Base16 Green Screen
# Scheme author: Chris Kempson (http://chriskempson.com)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#001100'
set -l color01 '#003300'
set -l color02 '#005500'
set -l color03 '#007700'
set -l color04 '#009900'
set -l color05 '#00bb00'
set -l color06 '#00dd00'
set -l color07 '#00ff00'
set -l color08 '#007700'
set -l color09 '#009900'
set -l color0A '#007700'
set -l color0B '#00bb00'
set -l color0C '#005500'
set -l color0D '#009900'
set -l color0E '#00bb00'
set -l color0F '#005500'

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
