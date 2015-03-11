filetype off  
set nocompatible 

" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Bundles:
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/vimshell'

NeoBundle 'Valloric/YouCompleteMe', {
\ 'build' : {
\     'mac' : './install.sh --clang-completer',
\     'unix' : './install.sh --clang-completer'
\    }
\ }

NeoBundle 'bling/vim-airline'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'mattn/gist-vim'

NeoBundle 'tomasr/molokai'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

set background=dark
colorscheme molokai

set encoding=utf8

set wildmenu                  " enhanced completion
set laststatus=2              " always show status line
set ruler                     " show cursor position
set number                    " add line numbers
set cursorline                " highlight cursor line
set wrap

filetype plugin indent on

" Allow mouse scrolling
set mouse=a
" Rebind <Leader> key
let mapleader=","

"  Spaces instead of tabs
set tabstop=2
set shiftwidth=2
set expandtab

" Syntax highlighting
syntax on

set pastetoggle=<F2>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>f :Unite file<CR>
set timeoutlen=1000
