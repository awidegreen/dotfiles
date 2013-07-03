set nocompatible               " be iMproved
filetype off                   " required!

" Init vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
"Bundle 'SudoEdit.vim'

" Programming
"Bundle 'snipMate'
"Bundle 'ruby'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-unimpaired'

" Git integration
Bundle 'git.zip'
Bundle 'fugitive.vim'

" Navigation
Bundle 'kien/ctrlp.vim'
Bundle 'The-NERD-tree'

" Syntax
Bundle 'Markdown-syntax'
Bundle 'slim-template/vim-slim'
Bundle 'OmniCppComplete'

" Tags and completion
Bundle 'ervandew/supertab'
Bundle 'majutsushi/tagbar'
Bundle 'xolox/vim-easytags'

" Search 
Bundle 'mileszs/ack.vim'

" Color schemes
Bundle 'Solarized'
Bundle 'Wombat'
Bundle 'wombat256.vim'
Bundle 'Zenburn'
Bundle 'vim-scripts/tango.vim'

filetype plugin indent on     " required!
