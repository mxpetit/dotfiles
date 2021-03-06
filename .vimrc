if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins directory
call plug#begin('$HOME/.vim/plugged')

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Show line number by default
set number

filetype plugin on
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone

" Automatically reread changed files without asking
set autoread

set noswapfile
set nobackup
set nowritebackup
set encoding=utf-8

" Search case insensitive...
set ignorecase
" ... but not when search pattern contains upper case characters
set smartcase
" Highlight search results
set hlsearch

" Never do this again --> :set paste <ctrl-v> :set no paste
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

let g:airline_powerline_fonts=1
set t_Co=256
let g:airline_theme='term'

" Smart move between windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

" Always use j / k, even on long lines
nnoremap j gj
nnoremap k gk
