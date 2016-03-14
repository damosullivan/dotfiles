if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'bogado/file-line'
Plug 'stephpy/vim-yaml', { 'for': 'yaml' }
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'bronson/vim-trailing-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/syntastic', { 'for': ['python'] }

call plug#end()

filetype plugin indent on    " required


" """"""""
" Plugin Settings
" """"""""

" SET OPTIONS FOR ctrlp.vim
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:30,results:30'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_switch_buffer = '<C-t>'
let g:ctrlp_mruf_case_sensitive = 0
let g:ctrlp_custom_ignore = '\.(pyc)$'
let g:ctrlp_working_path_mode=0

" SET OPTIONS FOR ack.vim
let g:ack_default_options = " --smart-case -s -H --nocolor --nogroup"
let g:ackprg = "~/bin/ack"

" SET OPTIONS FOR AIRLINE
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


" VIM-TMUX-INTEGRATION
let g:tmux_navigator_no_mappings = 1

noremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

let g:tmux_navigator_save_on_switch = 1

" NERD TREE
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" """"""""
" General Settings
" """"""""

syntax on
syntax enable

set nocompatible
set t_Co=256
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
set laststatus=2
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

" """"""""
" Mappings
" """""""""

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" noremap <C-l> <C-w>l
" noremap <C-h> <C-w>h
" noremap <C-j> <C-w>j
" noremap <C-k> <C-w>k

noremap <leader>< :tabp<cr>
noremap <leader>> :tabn<cr>

noremap H :bp<cr>
noremap L :bn<cr>

nnoremap <C-t> :tabnew<cr>

map :Q :q
nnoremap K i<CR><Esc>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

map <leader>f :Ack!<Space>

map <leader>p :set paste!<cr>
map <leader>n :set number!<cr>
map <leader>w :set wrap!<cr>
map <leader>h :nohl<cr>
map <leader>w :FixWhitespace<cr>

nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

nnoremap <silent> <Leader>+ :exe "vertical resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "vertical resize " . (winheight(0) * 2/3)<CR>

map <leader>t :CtrlPTag<CR>
map <leader>rt :silent :! ctags -R --exclude=.git --exclude=log --exclude=coverage --exclude=cover --exclude=build *<CR>:redraw!<CR>

if exists(':tnoremap')
    tnoremap <Esc> <C-\><C-n>
endif

augroup reload_vimrc
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
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
