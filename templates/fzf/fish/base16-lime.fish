# Base16 lime
# Scheme author: limelier
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#1a1a2f'
set -l color01 '#202030'
set -l color02 '#2a2a3f'
set -l color03 '#313140'
set -l color04 '#515155'
set -l color05 '#818175'
set -l color06 '#fff2d1'
set -l color07 '#fff8e1'
set -l color08 '#ff662a'
set -l color09 '#ff773a'
set -l color0A '#ffd15e'
set -l color0B '#8cd97c'
set -l color0C '#4cad83'
set -l color0D '#2b926f'
set -l color0E '#1b825f'
set -l color0F '#b4d97c'

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
