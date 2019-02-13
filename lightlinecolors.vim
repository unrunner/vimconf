augroup LightlineColorscheme
    autocmd!
    autocmd ColorScheme * call s:lightline_update()
augroup END
function! s:lightline_update()
   if !exists('g:loaded_lightline')
       return
   endif
   try
       if g:colors_name =~# 'wombat\|solarized\|landscape\|jellybeans\|seoul256\|Tomorrow'
           let g:lightline.colorscheme =
                       \ substitute(substitute(g:colors_name, '-', '_', 'g'), '256.*', '', '')
           call lightline#init()
           call lightline#colorscheme()
           call lightline#update()
       endif
   catch
   endtry
endfunction
