" Autosource .vimrc
autocmd! bufwritepost .vimrc source %

set nocompatible              " be iMproved, required
filetype off                  " required

filetype plugin indent on

" Rebind <Leader> key
let mapleader = ","

"  Spaces instead of tabs
set tabstop=2
set shiftwidth=2
set expandtab

"" Syntax highlighting
syntax on
