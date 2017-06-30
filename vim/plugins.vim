" check https://github.com/k-takata/minpac for details

" General
call minpac#add('bling/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('tmhedberg/matchit')

" Execution
call minpac#add('tpope/vim-dispatch')

" Programming
call minpac#add('scrooloose/nerdcommenter')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-surround')
call minpac#add('Raimondi/delimitMate')

" Debugging
call minpac#add('joonty/vdebug')
call minpac#add('vim-scripts/Conque-GDB')

" Cpp
call minpac#add('drmikehenry/vim-headerguard')

" snippets
call minpac#add('SirVer/ultisnips')
call minpac#add('honza/vim-snippets')

" Git integration
call minpac#add('tpope/vim-fugitive')
call minpac#add('junegunn/gv.vim')
call minpac#add('airblade/vim-gitgutter')

" Gist
call minpac#add('mattn/webapi-vim')
call minpac#add('mattn/gist-vim')

" Navigation
call minpac#add('kien/ctrlp.vim')
call minpac#add('scrooloose/nerdtree')
call minpac#add('tacahiroy/ctrlp-funky')

" Syntax
call minpac#add('tpope/vim-markdown')
call minpac#add('suan/vim-instant-markdown')
call minpac#add('slim-template/vim-slim')
call minpac#add('honza/dockerfile.vim')
call minpac#add('vim-scripts/headerguard')
"call minpac#add('fatih/vim-go')
call minpac#add('rust-lang/rust.vim')
call minpac#add('cespare/vim-toml')
call minpac#add('scrooloose/syntastic')
"call minpac#add('kergoth/vim-bitbake')
"call minpac#add('hallison/vim-rdoc')
"call minpac#add('othree/xml.vim')
"call minpac#add('aklt/plantuml-syntax')
"call minpac#add('asciidoc/vim-asciidoc')
call minpac#add('ihacklog/HiCursorWords')

" latex
call minpac#add('vim-latex/vim-latex')

" Tags and completion
call minpac#add('majutsushi/tagbar')
call minpac#add('Valloric/YouCompleteMe', {'do': {-> system('python3 install.py --clang-completer --gocode-completer  --system-boost --racer-completer --system-libclang')}})

" alignment
call minpac#add('godlygeek/tabular')

" Search
call minpac#add('mileszs/ack.vim')
call minpac#add('rking/ag.vim')

" Color schemes
call minpac#add('vim-scripts/tango.vim')
call minpac#add('tomasr/molokai')
call minpac#add('jnurmine/Zenburn')
call minpac#add('altercation/vim-colors-solarized')
