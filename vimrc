if !empty(glob("~/.vim/bundle/Vundle.vim"))

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
    Plugin 'stephpy/vim-yaml'
    Plugin 'scrooloose/syntastic'
    Plugin 'tpope/vim-fugitive'
    Plugin 'ervandew/supertab'
    Plugin 'benmills/vimux'

    call vundle#end()            " required
    filetype plugin indent on    " required

endif

" """"""""
" Plugin Settings
" """"""""

" Set options for ctrlp.vim
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:30,results:30'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_switch_buffer = '<C-t>'
let g:ctrlp_mruf_case_sensitive = 0
let g:ctrlp_custom_ignore = '\.(pyc)$'

" Set options for ack.vim
let g:ack_default_options = " --smart-case -s -H --nocolor --nogroup"
let g:ackprg = "~/bin/ack"

" Set options for vim-airline
let g:airline_powerline_fonts = 1
set laststatus=2

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

map <F7> :Errors<cr>

" vimux
let g:VimuxHeight = "15"



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
set splitbelow
set splitright

set background=dark
set scrolloff=3
set history=1000
set undolevels=1000
set encoding=utf-8
set wildmode=longest,list
set switchbuf=useopen
set cmdheight=1
set showtabline=2
set backspace=indent,start

let mapleader = ","
let g:solarized_termcolors = 256

if !empty(glob("~/.vim/bundle/vim-colorschemes"))
    colorscheme jellybeans
endif

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

" map <leader>t :CtrlP<cr>
" map <leader>b :CtrlPBuffer<cr>

map <leader>f :Ack!<Space>

map <leader>vl :VimuxRunLastCommand<cr>
map <leader>vq :VimuxCloseRunner<cr>
map <leader>bb :VimuxRunCommand "brazil-build"<cr>
map <leader>bbt :VimuxRunCommand "brazil-build test"<cr>

map <leader>p :set paste!<cr>
map <leader>n :set number!<cr>
map <leader>w :set wrap!<cr>
map <leader>s :SyntasticToggleMode<cr>

vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

nnoremap <silent> <Leader>+ :exe "vertical resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "vertical resize " . (winheight(0) * 2/3)<CR>

map <leader>t :CtrlPTag<CR>
map <leader>rt :silent :! ctags -R --exclude=.git --exclude=log --exclude=coverage --exclude=cover --exclude=build *<CR>:redraw!<CR>

augroup reload_vimrc
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

augroup close_vimux_buffer
    autocmd!
    autocmd VimLeave * :VimuxCloseRunner
augroup END

" augroup ctrl_p_on_empty_vim
"     autocmd!
"     autocmd StdinReadPre * let s:std_in=1
"     autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | execute ":CtrlP" | endif
" augroup END

" """"""""
" Local vimrc
" """"""""

if filereadable(glob("~/.vimrc.local"))
    source ~/.vimrc.local
endif

set runtimepath^=~/.vim/bundle/ctrlp.vim
