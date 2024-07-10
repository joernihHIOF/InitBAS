" Base
filetype off                  " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noswapfile
set number
set clipboard+=unnamedplus
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set tags=./.non_existent_tags
set autochdir
set nocompatible              " required
let g:gxext#opencmd = 'xdg-open'
let g:netrw_browsex_viewer = 'brave %s'
let g:mapleader=','
let g:nvimr_localleader = ","
let g:R_enable_nvim_term = 1
let g:neoterm_repl_python = 'python3'
let g:neoterm_autoscroll = 1
let maplocalleader = ','
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
	Plug 'jalvesaq/Nvim-R'
	Plug 'gaalcaras/ncm-R'
call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" R configurations
map rk :RKill<cr>
map rs :RSTOP<cr>
let R_debug = 0
let R_assign = 0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $HOME/InitBAS/config/nvim/keymapping.vim
