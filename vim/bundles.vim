set nocompatible               " be iMproved
filetype off                   " required!

" Init vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
"Bundle 'SudoEdit.vim'

" Programming
"Bundle 'jQuery'
"Bundle 'snipMate'
"Bundle 'ruby'
"Bundle 'gregsexton/MatchTag'
"Bundle 'tpope/vim-cucumber'
"Bundle 'matchit.zip'

" Git integration
Bundle 'git.zip'
Bundle 'fugitive.vim'

" Navigation
"Bundle 'git://git.wincent.com/command-t.git'
Bundle 'git://github.com/kien/ctrlp.vim.git'
Bundle 'The-NERD-tree'

" Indentation
"Bundle 'IndentAnything'
"Bundle 'Javascript-Indentation'
"Bundle 'trailing-whitespace'
Bundle 'git://github.com/ervandew/supertab.git'

" Syntax
Bundle 'Markdown-syntax'

" Color schemes
Bundle 'Solarized'
Bundle 'Wombat'
Bundle 'wombat256.vim'

filetype plugin indent on     " required!
