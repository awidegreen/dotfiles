" YouCompleteMe {{{
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_complete_in_comments = 1
let g:ycm_show_diagnostics_ui = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_warning_symbol="!!"
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_collect_identifiers_from_tags_files = 1

" rust configuration
let g:ycm_rust_src_path = $RUST_SRC_PATH

" map YcmComplete command
"nnoremap <leader>t :YcmCompleter GoTo<CR>
"nnoremap <leader>i :YcmCompleter GoToInclude<CR>
"nnoremap <leader>df :YcmCompleter GoToDefinition<CR>
"nnoremap <leader>dc :YcmCompleter GoToDeclaration<CR>
"nnoremap <leader>y :YcmCompleter GetType<CR>
"nnoremap <leader>p :YcmCompleter GetParent<CR>
"nnoremap <leader>do :YcmCompleter GetDoc<CR>
"nnoremap <leader>f :YcmCompleter FixIt<CR>
""}}}
