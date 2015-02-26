set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'
Plugin 'mileszs/ack.vim'
Plugin 'bogado/file-line'

call vundle#end()            " required
filetype plugin indent on    " required



" """"""""
" Plugin Settings
" """"""""

" Set options for ctrlp.vim
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:30,results:30'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_switch_buffer = '<C-t>'
let g:ctrlp_mruf_case_sensitive = 0

" Set options for ack.vim
let g:ack_default_options = " -s -H --nocolor --nogroup"
let g:ackprg = "~/bin/ack"

" Set options for vim-airline
let g:airline_powerline_fonts = 1
set laststatus=2



" """"""""
" General Settings
" """"""""

syntax on
syntax enable

set showmatch
set incsearch
set hlsearch
set ignorecase smartcase
set showcmd
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set ruler
set hidden
set visualbell
set noerrorbells
set ttyfast
set autoread
set noswapfile
set cursorline
set showcmd
set wildmenu
set autoindent
set number
set background=dark

set scrolloff=3
set history=1000
set undolevels=1000
set encoding=utf-8
set wildmode=longest,list
set switchbuf=useopen
set cmdheight=1
set showtabline=2
let mapleader = ","

let g:solarized_termcolors = 256

colorscheme jellybeans


" """"""""
" Mappings
" """""""""

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>

noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

noremap H :bp<cr>
noremap L :bn<cr>

noremap <C-d> :sh<cr>

map :Q :q
nnoremap K i<CR><Esc>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

map <leader>t :CtrlP<cr>
map <C-B> :CtrlPBuffer<cr>

map <leader>f :Ack 

vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>



" """"""""
" Local vimrc
" """"""""

if filereadable(glob("~/.vimrc.local"))
    source ~/.vimrc.local
endif

set runtimepath^=~/.vim/bundle/ctrlp.vim
