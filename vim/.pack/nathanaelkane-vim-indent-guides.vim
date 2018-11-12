let g:indent_guides_enable_on_vim_startup = 1

let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'tagbar']

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=236
