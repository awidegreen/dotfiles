" vim:fdm=marker

" This must be first, because it changes other options as a side effect.
set nocompatible

" Enviroment pref {{{
" Encoding
scriptencoding utf-8
set encoding=utf-8

" Backup setup
set backup
set backupdir=~/.vim/backup/
set directory=~/.vim/tmp

set term=xterm
"}}}


" Include other local configs {{{
" Vundle and bundles configuration
source ~/.vim/bundles.vim
" Include local functions 
if filereadable(glob("~/.vimrc.local")) 
  source ~/.vimrc.local
endif
" }}}


" Editing behaviour {{{
set showmode                   " always show what mode we're currently editing in
set nowrap                     " don't wrap lines
set tabstop=3                  " a tab is four spaces
set softtabstop=3              " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                  " expand tabs by default (overloadable per file type later)
set shiftwidth=3               " number of spaces to use for autoindenting
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
set scrolloff=3                " keep 3 lines off the edges of the screen when scrolling
set virtualedit=all            " allow the cursor to go in to "invalid" places
set hlsearch                   " highlight search terms
set incsearch                  " show search matches as you type
set gdefault                   " search/replace "globally" (on a line) by default
set pastetoggle=<F2>           " when in insert mode, press <F2> to go to
                               " paste mode, where you can paste mass data
                               " that won't be autoindented
set mouse=a                    " enable using the mouse if terminal emulator
                               " supports it (xterm does)
set ttyfast                    " We have a fast tty                               
set fileformats="unix,dos,mac"
set formatoptions+=1           " When wrapping paragraphs, don't end lines
                               " with 1-letter words (looks stupid)
                               
" Tab completion options
" (only complete to the longest unambiguous match, and show a menu)
set completeopt=longest,menu
set wildmode=list:longest,list:full
set complete=.,t
" }}}


" Look and Feel {{{
" Colors and Scheme {{{
"colorscheme tango
"let g:bg_tango=1
colorscheme zenburn
"colorscheme molokai
"colorscheme mustang
"colorscheme cloudsmidnight 
"let g:molokai_original = 0
let g:rehash256 = 1
"set background=dark  " should be used for console?
" }}}

" Make invisible chars visible, for end-of-line and tab
set list                       
set listchars=tab:▸\ ,eol:¬    

" for supporting 256 colors
set t_Co=256

" disable background color erase (BCE) - press C-l to refresh term display
set t_ut=

" enable syntax highlighting
syntax on

" Colorcolumn
set colorcolumn=81
highlight ColorColumn ctermbg=8

" if gui is started, remove menu and toolbar
if has("gui_running")
  set guioptions-=m  " Remove menubar
  set guioptions-=T  " Remove toolbar
endif

" show # buffers, f-type, fileformat and fileencoding in statusline
set statusline=[%n]\ [%f]\ %w%y%r%m[%{&fileformat}][%{&fileencoding}]\ %=\ %l/%L,%-5c\ %P\

" Disable error bell, beep
set noeb vb t_vb=
" }}}


" Keyboard shortcuts {{{
" define my leader key
let mapleader = "-"

" Get the arrow working in tmux
nnoremap <Esc>[B <Down>

" disallow using the arrow keys completely!
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Get rid of search highlights
nnoremap <leader><space> :noh<cr>

" toggle NERDtree with F3
nnoremap <F3> :NERDTreeToggle<CR>

" Opens the .vimrc in a vertical splitt
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" 'source my vimrc'
nnoremap <leader>sv :source $MYVIMRC<cr>

" toggle tagbar
nnoremap <leader>t :TagbarToggle<cr>

" open ctrlp tags: 'search tag'
nnoremap <leader>st :CtrlPTag<cr>

" spell checking
nnoremap <silent> <leader>s :set spell!<cr>

" easytag UpdateTags: ut (update tags)
nnoremap <silent> <leader>ut :UpdateTags<cr>

" exit insert mode with jk 
inoremap jk <esc>

" force to use jk to exit insert mode
inoremap <c-c> <nop>
" }}}


" Plugins {{{

" NERDTree {{{

let NERDTreeWinPos = "right"        " show on the right side
let NERDTreeWinSize = 51
let NERDTreeChDirMode = 0           " don't change CWD at all
"}}}

" Ctrl-P config {{{
"  exclude something
set wildignore+=*.so,*.swp,*.zip,*.cc.o,*.cc.opts,*.cc.d
"  wildignore, E/// extensions
set wildignore+=obj.x86_64-*,BuildInfo
"  how to manage the working dir
let g:ctrlp_working_path_mode = 0 " don't manage the working dir at all
" }}}

" OmniCppComplete conig {{{
" override built-in C omnicomplete with C++ OmniCppComplete plugin
set omnifunc=syntaxcomplete#Complete 
let OmniCpp_GlobalScopeSearch   = 1
let OmniCpp_DisplayMode         = 1
let OmniCpp_ShowScopeInAbbr     = 0 "do not show namespace in pop-up
let OmniCpp_ShowPrototypeInAbbr = 1 "show prototype in pop-up
let OmniCpp_ShowAccess          = 1 "show access in pop-up
let OmniCpp_SelectFirstItem     = 1 "select first item in pop-up
set completeopt=menuone,menu,longest
" }}}

" supertab adjustments {{{
"let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
"highlight   clear
"highlight   Pmenu         ctermfg=0 ctermbg=2
"highlight   PmenuSel      ctermfg=0 ctermbg=7
"highlight   PmenuSbar     ctermfg=7 ctermbg=0
"highlight   PmenuThumb    ctermfg=0 ctermbg=7
" }}}

" powerline {{{
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
" }}}

"}}}

set laststatus=2
filetype plugin indent on
