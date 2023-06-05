# Base16 Zenbones
# Scheme author: mcchrish
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#191919'
set -l color01 '#de6e7c'
set -l color02 '#819b69'
set -l color03 '#b77e64'
set -l color04 '#6099c0'
set -l color05 '#b279a7'
set -l color06 '#66a5ad'
set -l color07 '#bbbbbb'
set -l color08 '#3d3839'
set -l color09 '#e8838f'
set -l color0A '#8bae68'
set -l color0B '#d68c67'
set -l color0C '#61abda'
set -l color0D '#cf86c1'
set -l color0E '#65b8c1'
set -l color0F '#8e8e8e'

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
