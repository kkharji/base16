# Base16 Rebecca
# Scheme author: Victor Borja (http://github.com/vic) based on Rebecca Theme (http://github.com/vic/rebecca-theme)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#292a44'
set -l color01 '#663399'
set -l color02 '#383a62'
set -l color03 '#666699'
set -l color04 '#a0a0c5'
set -l color05 '#f1eff8'
set -l color06 '#ccccff'
set -l color07 '#53495d'
set -l color08 '#a0a0c5'
set -l color09 '#efe4a1'
set -l color0A '#ae81ff'
set -l color0B '#6dfedf'
set -l color0C '#8eaee0'
set -l color0D '#2de0a7'
set -l color0E '#7aa5ff'
set -l color0F '#ff79c6'

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
