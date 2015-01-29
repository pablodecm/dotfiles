" Autosource .vimrc
autocmd! bufwritepost .vimrc source %

filetype off                  " required

set background=dark           " dark bkg is used
colorscheme desert            " nicer colorscheme

set encoding=utf8

set nocompatible              " be iMproved
set wildmenu                  " enhanced completion
set laststatus=2              " always show status line
set ruler                     " show cursor position
set number                    " add line numbers
set cursorline                " highlight cursor line

filetype plugin indent on

" Allow mouse scrolling
set mouse=a
" Rebind <Leader> key
let mapleader = ","

"  Spaces instead of tabs
set tabstop=2
set shiftwidth=2
set expandtab

"" Syntax highlighting
syntax on
