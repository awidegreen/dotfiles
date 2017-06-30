" ignore vcs directories
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
      \ 'dir': '\v[\/](\.(git|hg|svn)|target|build.*)$',
      \ }

"  how to manage the working dir
let g:ctrlp_working_path_mode = 0 " don't manage the working dir at all

" open ctrlp tags: 'search tag'
nnoremap <leader>st :CtrlPTag<cr>

" ctrl-p funky
let g:ctrlp_extensions = ['funky']
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_funky_matchtype = 'path'
