set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'kien/ctrlp.vim'

Plugin 'bling/vim-airline'

" remember to install flake8 first (yum install python-flake8)
Plugin 'klen/python-mode'

Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" auto add bash header when open a new bash file
autocmd bufnewfile *.sh so ~/.vim/bash_template

" auto add python header when open a new python file
autocmd bufnewfile *.py so ~/.vim/python_template
" autocmd bufnewfile *.py exe "1," . 9 . "g/File Name/s//" .expand("%")


" open a NERDTree automatically when vim starts up
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" set ctrl L to display/hidden NERDTree window
map <C-T> :NERDTreeToggle<CR>

" Set NERDTree window to left
let NERDTreeWinPos="left"

let g:pymode_warnings = 0
let g:pymode_trim_whitespaces = 1
let g:pymode_folding = 0
let g:pymode_lint_unmodified = 1
let g:pymode_lint_ignore = "E128,E501,W"
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
