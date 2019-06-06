syntax on
au BufRead,BufNewFile *.twig set filetype=jinja

set directory=$HOME/.vim/swapfiles//
set backupdir=$HOME/.vim/backups//
set nocompatible
set smartindent
set shiftwidth=4
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set encoding=utf-8 
set expandtab
set tabstop=4
set mouse=a
set autoread
" Show trailing whitespaces
set showbreak=>\ \ \
set pastetoggle=<F2>

" Automatically remove trailing whitespace from php. js, html, twig, python,
" css, json, yml files
autocmd FileType c,cpp,php,html,twig,js,json,yml,python,kt autocmd BufWritePre * %s/\s\+$//e

filetype off 
filetype plugin indent on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

"-------------- PLUGINS STARTS -----------------
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'Raimondi/delimitMate'
Plugin 'flazz/vim-colorschemes'
Bundle "lepture/vim-jinja"
Plugin 'sheerun/vim-polyglot'
Plugin 'udalov/kotlin-vim'

call vundle#end()  
"-------------- PLUGINS END --------------------


"-------------- SET FILETYPES --------------------
autocmd BufNewFile,BufRead *.kt setfiletype kotlin
autocmd BufNewFile,BufRead *.kts setfiletype kotlin

filetype plugin indent on

"----- GENERAL SETTINGS-------
set laststatus=2

"---------NERD-TREE SETTINGS----------
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 1

"-------- TAGS SETTINGS --------------------------------
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1
let g:tagbar_autoclose=2

nmap <silent> <leader>b :TagbarToggle<CR>
"autocmd BufEnter * nested :call tagbar#autoopen(0)

"---------GIT SETTINGS--------------
hi clear SignColumn
let g:airline#extensions#hunks#non_zero_only = 1

"----------DELIMITEMATE SETTINGS-----------------
let delimitMate_expand_cr = 1
augroup mydelimitMate
    au!
    au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
    au FileType tex let b:delimitMate_quotes = ""
    au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
    au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

