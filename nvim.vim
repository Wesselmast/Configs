call plug#begin("~/.vim/plugged")
  " Plugin Section
  Plug 'xolox/vim-misc', {'as':'misc'}
  Plug 'xolox/vim-easytags', {'as':'easytags'}
  Plug 'dracula/vim', {'as':'dracula'}
  Plug 'neoclide/coc.nvim', {'branch':'release'}

call plug#end()

"Config Section
if has('termguicolors')
  set termguicolors
endif

color dracula
"syntax enable

let g:easytags_async = 1
let g:easytags_always_enabled = 1
let g:easytags_on_cursorhold = 0
let g:easytags_suppress_report = 1

set shiftwidth=2
