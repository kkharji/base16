# Base16 Primer Dark Dimmed
# Scheme author: Jimmy Lin
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#1c2128'
set -l color01 '#373e47'
set -l color02 '#444c56'
set -l color03 '#545d68'
set -l color04 '#768390'
set -l color05 '#909dab'
set -l color06 '#adbac7'
set -l color07 '#cdd9e5'
set -l color08 '#f47067'
set -l color09 '#e0823d'
set -l color0A '#c69026'
set -l color0B '#57ab5a'
set -l color0C '#96d0ff'
set -l color0D '#539bf5'
set -l color0E '#e275ad'
set -l color0F '#ae5622'

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
