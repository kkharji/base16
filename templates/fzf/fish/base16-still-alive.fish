# Base16 Still Alive
# Scheme author: Derrick McKee (derrick.mckee@gmail.com)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#f0f0f0'
set -l color01 '#f0d848'
set -l color02 '#fff018'
set -l color03 '#f01818'
set -l color04 '#f00000'
set -l color05 '#d80000'
set -l color06 '#489000'
set -l color07 '#30a860'
set -l color08 '#487830'
set -l color09 '#183048'
set -l color0A '#426395'
set -l color0B '#5c5c6a'
set -l color0C '#2c3c57'
set -l color0D '#001878'
set -l color0E '#900000'
set -l color0F '#140c0d'

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
