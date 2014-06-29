syn on
color desert
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set laststatus=4
set tabstop=4

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

Plugin 'scrooloose/syntastic'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:syntastic_python_checkers = ['flake8', 'mccabe']
let g:syntastic_python_flake8_args='--builtin=_'
let g:syntastic_check_on_open = 1                  " run syntastic check on file open
let g:syntastic_aggregate_errors = 1               " run all checkers and aggregate results
let g:syntastic_always_populate_loc_list = 1       " put errors into the location list
let g:syntastic_auto_loc_list = 0                  " don't open or close the loc list
let g:syntastic_stl_format = '[err: %e][warn: %w]' " yep
let g:syntastic_enable_highlighting = 1            " highlight the errors is off
let g:syntastic_enable_signs = 1                   " disable the white bar on the left showing errors
