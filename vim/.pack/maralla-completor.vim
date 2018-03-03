" general
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

" C/C++
" To pass extra clang arguments, you can create a file named .clang_complete
" under the project root directory or any parent directories. Every argument
" should be in a single line in the file. This is an example file:
"
" -std=c++11
" -I/Users/maralla/Workspace/src/dji-sdk/Onboard-SDK/lib/inc
" -I/Users/maralla/Workspace/src/dji-sdk/Onboard-SDK/sample/Linux/inc
let g:completor_clang_binary = '/usr/bin/clang'

" Rust
let g:completor_racer_binary = $HOME."/.cargo/bin/racer"

