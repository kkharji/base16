# Base16 Porple
# Scheme author: Niek den Breeje (https://github.com/AuditeMarlow)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#292c36'
set -l color01 '#333344'
set -l color02 '#474160'
set -l color03 '#65568a'
set -l color04 '#b8b8b8'
set -l color05 '#d8d8d8'
set -l color06 '#e8e8e8'
set -l color07 '#f8f8f8'
set -l color08 '#f84547'
set -l color09 '#d28e5d'
set -l color0A '#efa16b'
set -l color0B '#95c76f'
set -l color0C '#64878f'
set -l color0D '#8485ce'
set -l color0E '#b74989'
set -l color0F '#986841'

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
