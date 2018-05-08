" Plugins directory
call plug#begin('$HOME/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" Initialize plugin system
call plug#end()

" Loads NERDTree automatically 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Automatically load NERDTree on new tabs
autocmd BufWinEnter * NERDTreeMirror

" Show dotfiles
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp$']

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Show line number by default
set number

" Change to current file's directory
set autochdir

filetype plugin on
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone
