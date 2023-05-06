# base16-darcula-scheme

Inspired by default darcula theme in JetBeans IDE

To get a closer theme add these lines to `init.vim`

```init.vim
function! s:base16_customize() abort
  call Base16hi("Function", g:base16_gui06, "", "", g:base16_cterm06, "", "")
  call Base16hi("Include", g:base16_gui05, "", "", g:base16_cterm05, "", "")
  call Base16hi("Type", g:base16_gui0E, "", "", g:base16_cterm0E, "", "")
endfunction

augroup on_change_colorschema
  autocmd!
  autocmd ColorScheme * call s:base16_customize()
augroup END

colorscheme base16-darcula
```

