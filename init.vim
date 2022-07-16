"------------------------------------------------------- 
"           Settings for omnisharp.vim
"------------------------------------------------------- 

let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_use_net6 = 1
let g:OmniSharp_selector_ui = 'fzf'
let g:OmniSharp_selector_findusages = 'fzf'

"------------------------------------------------------- 
"           Settings for ale.vim
"------------------------------------------------------- 

let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}

"------------------------------------------------------- 
"           Settings for fzf.vim
"------------------------------------------------------- 

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"------------------------------------------------------- 
"           Settings for catppuccin.vim
"------------------------------------------------------- 

let g:catppuccin_flavour = 'macchiato' "latte, frappe, macchiato or mocha

"------------------------------------------------------- 
"           Plugin management with vim-plug
"------------------------------------------------------- 

call plug#begin()
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'OmniSharp/omnisharp-vim'
call plug#end()

"------------------------------------------------------- 
"           Settings for vim enviroment
"------------------------------------------------------- 

if (!$TERM_PROGRAM =~ 'Apple_Terminal') || (exists('g:neovide'))
	silent! colorscheme catppuccin
else
	colorscheme default
endif

"------------------------------------------------------- 
"           Settings for neovide
"------------------------------------------------------- 

set guifont=Consolas:h12

