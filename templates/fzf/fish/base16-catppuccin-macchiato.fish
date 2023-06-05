# Base16 Catppuccin Macchiato
# Scheme author: https://github.com/catppuccin/catppuccin
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#24273a'
set -l color01 '#1e2030'
set -l color02 '#363a4f'
set -l color03 '#494d64'
set -l color04 '#5b6078'
set -l color05 '#cad3f5'
set -l color06 '#f4dbd6'
set -l color07 '#b7bdf8'
set -l color08 '#ed8796'
set -l color09 '#f5a97f'
set -l color0A '#eed49f'
set -l color0B '#a6da95'
set -l color0C '#8bd5ca'
set -l color0D '#8aadf4'
set -l color0E '#c6a0f6'
set -l color0F '#f0c6c6'

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
