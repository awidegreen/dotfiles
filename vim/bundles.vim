set nocompatible               " be iMproved
filetype off                   " required!

" Init vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" vundle
Bundle 'gmarik/vundle'

" General 
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tmhedberg/matchit'

" Execution
Plugin 'tpope/vim-dispatch'

" Programming
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-surround'
Bundle 'Raimondi/delimitMate'

" Debugging
Plugin 'joonty/vdebug'
Plugin 'vim-scripts/Conque-GDB'

" Cpp 
Plugin 'drmikehenry/vim-headerguard'

" snippets 
Bundle 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Git integration
Bundle 'tpope/vim-fugitive'
Plugin 'junegunn/gv.vim'

" Gist
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'

" Navigation
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Plugin 'tacahiroy/ctrlp-funky'

" Syntax
Bundle 'tpope/vim-markdown'
Plugin 'suan/vim-instant-markdown'
Bundle 'slim-template/vim-slim'
Bundle 'honza/dockerfile.vim'
Bundle 'vim-scripts/headerguard'
Plugin 'fatih/vim-go'
Plugin 'rust-lang/rust.vim'
Plugin 'cespare/vim-toml'
Plugin 'scrooloose/syntastic'
"Plugin 'kergoth/vim-bitbake'
"Plugin 'hallison/vim-rdoc'
"Plugin 'othree/xml.vim'
"Plugin 'aklt/plantuml-syntax'
"Plugin 'asciidoc/vim-asciidoc'

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
