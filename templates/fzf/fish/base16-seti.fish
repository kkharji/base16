# Base16 Seti UI
# Scheme author: 
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#151718'
set -l color01 '#282a2b'
set -l color02 '#3b758c'
set -l color03 '#41535b'
set -l color04 '#43a5d5'
set -l color05 '#d6d6d6'
set -l color06 '#eeeeee'
set -l color07 '#ffffff'
set -l color08 '#cd3f45'
set -l color09 '#db7b55'
set -l color0A '#e6cd69'
set -l color0B '#9fca56'
set -l color0C '#55dbbe'
set -l color0D '#55b5db'
set -l color0E '#a074c4'
set -l color0F '#8a553f'

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
