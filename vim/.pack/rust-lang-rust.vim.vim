" rust.vim {{{
" Set the compiler to cargo when loading a rust file
autocmd! BufRead,BufNewFile Cargo.toml,Cargo.lock,*.rs compiler cargo
"let g:rustfmt_autosave = 1
" }}}
