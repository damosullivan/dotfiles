set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" -----BEGIN PLUGINS-----
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Bundle 'flazz/vim-colorschemes'
" Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'

" ------END PLUGINS-----
call vundle#end()            " required
filetype plugin indent on    " required

" Set options for ctrlp.vim
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:30,results:30'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'

set showmatch                          " show matches
set incsearch                          " Incremental search
set hlsearch                           " Highlight search
set ignorecase smartcase               " ignore casing when searching
set scrolloff=3                        " Scroll 3 lines passing search, don't leave on top

" syntax on

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround                         " user multiple of shiftwidth when identing

set ruler
set hidden                             " Don't close buffers when changing, just hide
" set nowrap                             " Don't wrap large lines
set history=1000                       " Remember 100 history commands
set undolevels=1000                    " Bigger undo memory

set visualbell
set noerrorbells

set autoread

" -----MAPPINGS-----
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>

" -----FUNCTIONS-----

" remove whistespace at end of line before write
func! StripTrailingWhitespace()
  normal mZ
  %s/\s\+$//e
  normal `Z
endfunc
au BufWrite * if ! &bin | call StripTrailingWhitespace() | endif

" -----COLOUR-----
set t_Co=256

syntax enable
set background=dark
