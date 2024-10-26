map c1 :split<cr>
map c2 :vsplit<cr>
map so :only<cr>
map yo :nohl<cr>
" Buffer
map ba :b#<CR>
map bn :buffer 
map bl :buffers <CR>
map b1 :buffer 1 <CR> 
map b2 :buffer 2 <CR> 
map b3 :buffer 3 <CR> 
map b4 :buffer 4 <CR> 
map b5 :buffer 5 <CR> 
map b6 :buffer 6 <CR> 
map b7 :buffer 7 <CR> 
map b8 :buffer 8 <CR> 
map b9 :buffer 9 <CR> 
" Easy
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l

map ta :belowright split term://zsh<cr><S-A>
map te :vsplit term://zsh<cr><S-A>
map tA :belowright split term://bash<cr><S-A>
map tA :vsplit term://bash<cr><S-A>
map ww :w<cr>
map wq :w<CR>:q<CR> 
map wa :wqall!<CR>
map qill :qall!<CR>

map cs :source ~/InitBAS/config/nvim/init.vim<cr>
map cp :let @+ = expand('%:p')<CR>
map cp1 :let @+ = expand('%')<CR>

map ser1 :e ~/InitBAS/config/r/Rprofile<CR>                         
map ser2 :e ~/InitBAS/config/r/Renviron<CR>
map sea  :e ~/InitBAS/alias.sh<CR>
map sef  :e ~/InitBAS/functions.sh<CR>
map sev  :e ~/InitBAS/config/nvim/init.vim<CR>
map seb  :e ~/InitBAS/config/bash/bashrc<CR>
map sez  :e ~/InitBAS/config/zsh/zshrc<CR>
map seq  :e ~/InitBAS/config/qtile/config.py<CR> 
map sek  :e ~/InitBAS/kitty/kitty.conf<CR>
map sew  :e ~/InitBAS/config/hyprland/hyprland.conf<CR>
map sec  :e ~/InitBAS/README.md<CR>
map kmp  :e ~/InitBAS/config/nvim/keymapping.vim<CR>


