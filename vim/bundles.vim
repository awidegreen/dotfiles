set nocompatible               " be iMproved
filetype off                   " required!

" Init vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" vundle
Bundle 'gmarik/vundle'

" General 
Bundle 'bling/vim-airline'

" Programming
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-surround'
Bundle 'Raimondi/delimitMate'

" snippets 
Bundle 'SirVer/ultisnips'

" Git integration
Bundle 'tpope/vim-fugitive'

" Navigation
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'

" Syntax
Bundle 'tpope/vim-markdown'
Bundle 'slim-template/vim-slim'
Bundle 'honza/dockerfile.vim'
Bundle 'vim-scripts/headerguard'

" latex
Bundle 'vim-latex/vim-latex'

" Tags and completion
Bundle 'majutsushi/tagbar'
Bundle 'Valloric/YouCompleteMe'

" alignment 
Bundle 'godlygeek/tabular'

" Search 
Bundle 'mileszs/ack.vim'
Bundle 'rking/ag.vim'

" Color schemes
Bundle 'vim-scripts/tango.vim'
Bundle 'tomasr/molokai'
Bundle 'jnurmine/Zenburn'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on     " required!
