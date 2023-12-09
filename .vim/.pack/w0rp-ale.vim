" In order for this to work rls and rustfmt need to be installed.
" By default ale uses nightly channel, hence a simple
"
"   rustup component add rls-preview rustfmt-preview rust-analysis rust-src --toolchain nightly
"
" should do.

let g:ale_linters = {
\   'rust': ['analyzer'],
\   'nix': ['nix'],
\   'cpp': ["clangd"]
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'rust': ['rustfmt'],
\   'nix': ['nixpkgs-fmt'],
\   'cpp': ['clang-format', 'clangtidy']
\ }
let g:ale_rust_analyzer_executable = $HOME."/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/bin/rust-analyzer"
let g:ale_rust_rls_toolchain = 'nighty'
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1

let g:ale_rust_cargo_use_clippy = 1

" ALE mapping
nnoremap <leader>c :ALEComplete<CR>
nnoremap <leader>h :ALEHover<CR>
nnoremap <leader>d :ALEGoToDefinition<CR>
nnoremap <leader>t :ALEGoToTypeDefinition<CR>

nnoremap <leader>af :call AleFixOnSaveToggle()<CR>

function! AleFixOnSaveToggle()
    if g:ale_fix_on_save
        let g:ale_fix_on_save = 0
    else
        let g:ale_fix_on_save = 1
    endif
endfunction

au FileType diff let g:ale_fix_on_save=0
