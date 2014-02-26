set nocompatible               " be iMproved
filetype off                   " required!

" Init vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
"Bundle 'SudoEdit.vim'

" General 
Bundle 'bling/vim-airline'

" Programming
"Bundle 'ruby'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-surround'
Bundle 'Raimondi/delimitMate'

" snippets 
Bundle 'SirVer/ultisnips'

" Git integration
Bundle 'git.zip'
Bundle 'fugitive.vim'

" Navigation
Bundle 'kien/ctrlp.vim'
Bundle 'The-NERD-tree'

" Syntax
Bundle 'tpope/vim-markdown'
Bundle 'slim-template/vim-slim'
Bundle 'OmniCppComplete'
Bundle 'honza/dockerfile.vim'
Bundle 'scrooloose/syntastic'

" latex
Bundle 'vim-latex/vim-latex'

" Tags and completion
Bundle 'majutsushi/tagbar'
Bundle 'Valloric/YouCompleteMe'

" Search 
Bundle 'mileszs/ack.vim'

" Color schemes
Bundle 'Solarized'
Bundle 'Wombat'
Bundle 'wombat256.vim'
Bundle 'Zenburn'
Bundle 'vim-scripts/tango.vim'

filetype plugin indent on     " required!
