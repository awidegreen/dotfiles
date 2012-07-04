" Use vim settings, rather then vi settings (much better!)
" This must be first, because it changes other options as a side effect.
set nocompatible

" Vundle and bundles configuration
source ~/.vim/bundles.vim

" to get the arrow working in tmux
map <Esc>[B <Down>
" enable syntax highlighting
syntax on

" Change the mapleader from \ to ,
let mapleader=","
                     
" Editing behaviour {{{
set showmode                   " always show what mode we're currently editing in
set nowrap                     " don't wrap lines
set tabstop=2                  " a tab is four spaces
set softtabstop=2              " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                  " expand tabs by default (overloadable per file type later)
set shiftwidth=2               " number of spaces to use for autoindenting
set shiftround                 " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent                 " always set autoindenting on
set copyindent                 " copy the previous indentation on autoindenting
set number                     " always show line numbers
set showmatch                  " set show matching parenthesis
set ignorecase                 " ignore case when searching
set smartcase                  " ignore case if search pattern is all lowercase,
                               " case-sensitive otherwise
set smarttab                   " insert tabs on the start of a line according to
                               " shiftwidt h, not tabstop
set scrolloff=4                " keep 4 lines off the edges of the screen when scrolling
set virtualedit=all            " allow the cursor to go in to "invalid" places
set hlsearch                   " highlight search terms
set incsearch                  " show search matches as you type
set gdefault                   " search/replace "globally" (on a line) by default
set nolist                     " don't show invisible characters by default,
                               " but it is enabled for some file types (see later)
set pastetoggle=<F2>           " when in insert mode, press <F2> to go to
                               " paste mode, where you can paste mass data
                               " that won't be autoindented
set mouse=a                    " enable using the mouse if terminal emulator
                               " supports it (xterm does)
set ttyfast                    " We have a fast tty                               
set fileformats="unix,dos,mac"
set formatoptions+=1           " When wrapping paragraphs, don't end lines
                               " with 1-letter words (looks stupid)
"set wrapscan                   " wrap searches
"
" for supporting 256 colors
"set t_Co=256
"set t_AB=^[[48;5;%dm
"set t_AF=^[[38;5;%dm

" set backup dir
set backup
set backupdir=~/.vim/backup/
set directory=~/.vim/tmp

" Tab completion options
" (only complete to the longest unambiguous match, and show a menu)
set completeopt=longest,menu
set wildmode=list:longest,list:full
set complete=.,t

" Remove highlight after search
nmap <silent> ,/ :nohlsearch<CR>

" set colorscheme
"colorscheme zenburn 
"colorscheme Wombat
set background=dark
colorscheme default

" if gui is running, set colorscheme to wombat
if has("gui_running")
  colorscheme wombat256mod 
endif

"colorscheme solarized
"colorscheme wombat256mod

" show # buffers, f-type, fileformat and fileencoding in statusline
set statusline=[%n]\ [%f]\ %w%y%r%m[%{&fileformat}][%{&fileencoding}]\ %=\ %l/%L,%-5c\ %P\

" if present, include local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
