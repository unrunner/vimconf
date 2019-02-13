" don't know why this doesn't work in one shot.
set guioptions-=m
set guioptions-=r
set guioptions-=L
set guioptions-=T

colorscheme gruvbox8_hard
set background=dark

set vb t_vb=
set stal=0

if has ('nvim')
    if has ('gui_win32')
        Guifont! Consolas:h11
    else
        Guifont! Monaco:h15
    endif
else
    if has ('gui_macvim')
        " set guifont=Monaco:h15
        " TODO: Use this font: https://github.com/belluzj/fantasque-sans/releases/tag/v1.7.2
        " FantasqueSansMono-Regular:h18 / Fantasque_Sans_Mono:h11
        " Inconsolata is a close second
        " Roboto mono is a third
        " Consolas:h10
        set guifont=FantasqueSansMono-Regular:h18
    else
        set guifont=Fantasque_Sans_Mono_Regular:h11
    endif
endif

" if has('gui_win32')
" if has('nvim')
" :put =&guifont
