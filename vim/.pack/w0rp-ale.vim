" In order for this to work rls and rustfmt need to be installed.
" By default ale uses nightly channel, hence a simple
"
"   rustup component add rls-preview rustfmt-preview rust-analysis rust-src --toolchain nightly
"
" should do.

let g:ale_linters = {'rust': ['rls'] }
let g:ale_fixers = {'rust': ['rustfmt'] }
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_fix_on_save = 1

