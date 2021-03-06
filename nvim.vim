call plug#begin("~/.vim/plugged")
  " Plugin Section
  Plug 'octol/vim-cpp-enhanced-highlight', {'as':'highlight'}
  Plug 'dracula/vim', {'as':'dracula'}
  Plug 'neoclide/coc.nvim', {'branch':'release'}

call plug#end()

"Config Section
if has('termguicolors')
  set termguicolors
endif

set number
set nohlsearch

color dracula
syntax enable

let g:easytags_async = 1
let g:easytags_always_enabled = 0
let g:easytags_on_cursorhold = 1
let g:easytags_suppress_report = 1

set shiftwidth=2
