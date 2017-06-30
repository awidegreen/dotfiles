" vim:fdm=marker

" This must be first, because it changes other options as a side effect.
if &compatible
  " `:set nocp` has many side effects. Therefore this should be done
  " only when 'compatible' is set.
  set nocompatible
endif

" Enviroment pref {{{
" Encoding
scriptencoding utf-8
set encoding=utf-8

" Backup setup
set backup
set backupdir=~/.vim/backup/
set directory=~/.vim/tmp

set term=xterm

"  exclude something
set wildignore+=*.so,*.swp,*.zip,*.cc.o,*.cc.opts,*.cc.d
"  wildignore, E/// extensions
set wildignore+=obj.x86_64-*,BuildInfo
"}}}

"  minpac configuration {{{
"if exists('*minpac#init')
  "" minpac is loaded.
  "call minpac#init()
  "call minpac#add('k-takata/minpac', {'type': 'opt'})

  "" Additional plugins from plugins.vim
  "source ~/.vim/plugins.vim
"endif

"" Define user commands for updating/cleaning the plugins.
"" Each of them loads minpac, reloads .vimrc to register the
"" information of plugins, then performs the task.
"command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update()
"command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
" }}}


" Editing behaviour {{{
set showmode                   " always show what mode we're currently editing in
set nowrap                     " don't wrap lines
set tabstop=2                  " a tab is n spaces
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
set scrolloff=3                " keep 3 lines off the edges of the screen when scrolling
set virtualedit=all            " allow the cursor to go in to "invalid" places
set hlsearch                   " highlight search terms
set incsearch                  " show search matches as you type
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

set relativenumber             " set relative line numbering

" Remove tailoring whitespaces {{{
" This applies only to specific filetypes and is applied when the the buffer
" is been writing.
" use ':set filetype?' to get the filetype of the current buffer
"
" more info: http://vim.wikia.com/wiki/Remove_unwanted_spaces
autocmd! FileType c,cpp,java,php,rust,python,ruby,sh,make,vim,cmake,markdown autocmd BufWritePre <buffer> :%s/\s\+$//e
" }}}

" }}}

" Look and Feel {{{
" Colors and Scheme {{{
"colorscheme zenburn
colorscheme molokai
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
" set the guifont to something reasonable
set guifont=Hack\ 8

" show # buffers, f-type, fileformat and fileencoding in statusline
set statusline=[%n]\ [%f]\ %w%y%r%m[%{&fileformat}][%{&fileencoding}]\ %=\ %l/%L,%-5c\ %P\

" Disable error bell, beep
set noeb vb t_vb=

" highlight the current line under cursor
set cursorline
" }}}


" Keyboard shortcuts {{{
" define my leader key
let mapleader = "-"

" obsolete arrow key disabling {{{
" Get the arrow working in tmux
"nnoremap <Esc>[B <Down>
" disallow using the arrow keys completely!
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
"}}}

" Get rid of search highlights
nnoremap <leader><space> :noh<cr>

" toggle NERDtree with F3
nnoremap <F3> :NERDTreeToggle<CR>

" Opens the .vimrc in a vertical splitt
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" 'source my vimrc'
nnoremap <leader>sv :source $MYVIMRC<cr>

" spell checking
nnoremap <silent> <leader>s :set spell!<cr>

" easytag UpdateTags: ut (update tags)
nnoremap <silent> <leader>ut :UpdateTags<cr>

" exit insert mode with jk
inoremap jk <esc>

" force to use jk to exit insert mode
"inoremap <c-c> <nop>

" }}}


" Special code highlight handling {{{

" We reset the vimrc augroup. Autocommands are added to this group throughout
" the file
augroup vimrc
  autocmd!
augroup END

" Highlight Class and Function names
function! s:HighlightFunctionsAndClasses()
  syn match cCustomFunc      "\w\+\s*\((\)\@="
  syn match cCustomClass     "\w\+\s*\(::\)\@="

  hi def link cCustomFunc      Function
  hi def link cCustomClass     Function
endfunction
au vimrc Syntax * call s:HighlightFunctionsAndClasses()
"}}}

" Include other local configs {{{
if filereadable(glob("~/.vimrc.local"))
  source ~/.vimrc.local
endif
" }}}

set laststatus=2
filetype plugin indent on

