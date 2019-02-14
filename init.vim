call plug#begin('$HOME/vim/plug')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
" --- 
Plug 'vimoutliner/vimoutliner'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors' 
Plug 'bilalq/lite-dfm' 
Plug 'Yggdroot/indentLine'
Plug 'ap/vim-buftabline'
Plug 'itchyny/lightline.vim'
Plug 'dkarter/bullets.vim'
" --- themes --- 
Plug 'sjl/badwolf'
Plug 'lifepillar/vim-gruvbox8'
call plug#end()

" using the windows clipboard.
set clipboard=unnamed,unnamedplus
set autochdir
set autoindent
set ignorecase
set hlsearch
set nuw=4
set nu

" can't imagine where these would be bad settings for tab
set tabstop=4
set shiftwidth=4
set expandtab
set wrap linebreak nolist breakindent
set lazyredraw

let mapleader = ";"

" be able to open this file quickly and easily
cnoremap <Leader>vimrc vsplit! $HOME/vim/vimconf/init.vim <CR>
cnoremap <Leader>notes $HOME/vim/notes/

" convenience
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <silent> <Space> :nohl<CR>
nnoremap <C-BS> db
inoremap <C-BS> <ESC>caw
nnoremap v <C-V>
nnoremap <C-V> v

" window splitting options
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" easy escape.
inoremap jk <C-[>:w<CR>
nnoremap <Leader><Leader> :
vnoremap <Leader><Leader> <C-[>
cnoremap <Leader><Leader> <C-[>
tnoremap <Leader><Leader> <C-\><C-n>
" nnoremap <Leader><Leader> <C-[>

"easy buffer mgmt
nnoremap <silent> <Leader>d :bd!<CR>
nnoremap <silent> <Leader>c :close!<CR>
nnoremap <silent> <Leader>w :w!<CR>
nnoremap <silent> <Leader>x :x!<CR>
nnoremap <silent> <Leader>m :bn!<CR>

" LP file shortcuts
cnoremap  <Leader>lpcon [a-zA-Z().#0-9_ ]\+
cnoremap  <Leader>gd0 g/^[ ]\+ + 0 [a-zA-Z().,#0-9_& ]\+$/d
cnoremap  <Leader>qminfo v/MInfo/d <CR>
cnoremap  <Leader>qdesc %s/.*<starttime>\(.*\)<\/starttime>.*<description>\(.*\)<\/description>.*/\1 \2/g
cnoremap  <Leader>qapos %s/&apos;/"/g

" vimgrep stuff
nnoremap <silent> <S-F3> :cclose<CR>
nnoremap <silent> <F4> :cnext<CR>
nnoremap <silent> <S-F4> :cprev<CR>

" plugins   ============
filetype plugin indent on
syntax on

"
" Python related stuff
autocmd FileType python nnoremap <buffer> == :exec '!python' shellescape(@%, 1)<cr>
autocmd FileType vim noremap <buffer> == :so %<cr>
autocmd FileType lp noremap <buffer> == :exec '!cplex -i' <cr>

"LiteDFM
nnoremap <silent> <F11> :LiteDFMToggle<CR>
nnoremap <silent> <F12> :source $XDG_CONFIG_HOME/nvim/ginit.vim <CR>

"====[This is so that I don't have to wrestle with swps]=================
set backupdir=$HOME/vim/backup//
set directory=$HOME/vim/swap//
set undodir=$HOME/vim/undo//


"=== for text decorations, underlines, etc ====
" source $XDG_CONFIG_HOME/nvim/texteffects.vim

let g:bullets_enabled_file_types = ['markdown', 'text', 'gitcommit', 'votl']

nnoremap <silent> -- :ToggleCheckbox<CR>
nnoremap <Tab> >>
inoremap <C-Tab> <Esc>>> A
nnoremap <S-Tab> <<

" ---- for comemu ---------
if !empty($CONEMUBUILD)
    set term=pcansi
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
endif 
