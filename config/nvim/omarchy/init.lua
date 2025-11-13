-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- abc
vim.opt.swapfile = false
vim.keymap.set("n", "c1", ":split<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "c2", ":vsplit<CR>", { noremap = true, silent = true })

-- Terminal splits
vim.keymap.set("n", "ta", ":belowright split term://bash<CR><S-A>")
vim.keymap.set("n", "te", ":split term://bash<CR><S-A>")
--

-- Save and quit shortcuts
vim.keymap.set("n", "ww", ":w<CR>")
vim.keymap.set("n", "wq", ":w<CR>:q<CR>")
vim.keymap.set("n", "wa", ":wqall!<CR>")
vim.keymap.set("n", "qill", ":qall!<CR>")

-- vim.keymap.set("n", "<leader>sv", ":luafile $MYVIMRC<CR>")

vim.keymap.set("n", "so", ":only<CR>")
vim.keymap.set("n", "gco", ":e .git/config<CR>")

-- Shortcuts
vim.keymap.set("n", "cr", ":r !")
vim.keymap.set("n", "cb", ":!")
vim.keymap.set("n", "ce", ":e ")
vim.keymap.set("n", "co", ":")
vim.keymap.set("n", "fin", "/")

vim.keymap.set("n", "cp", ":let @+ = expand('%:p')<CR>")
vim.keymap.set("n", "cp1", ":let @+ = expand('%')<CR>")

-- -- Buffer
-- vim.keymap.set("n", "bn", ":buffer ", opts_r)
-- vim.keymap.set("n", "ba", ":b#<CR>", opts_r)
-- vim.keymap.set("n", "bl", ":buffers<CR>", opts_r)
-- vim.keymap.set("n", "b1", ":buffer 1<CR>", opts_r)
-- vim.keymap.set("n", "b2", ":buffer 2<CR>", opts_r)
-- vim.keymap.set("n", "b3", ":buffer 3<CR>", opts_r)
-- vim.keymap.set("n", "b4", ":buffer 4<CR>", opts_r)
-- vim.keymap.set("n", "b5", ":buffer 5<CR>", opts_r)
-- vim.keymap.set("n", "b6", ":buffer 6<CR>", opts_r)
-- vim.keymap.set("n", "b7", ":buffer 7<CR>", opts_r)
-- vim.keymap.set("n", "b8", ":buffer 8<CR>", opts_r)
-- vim.keymap.set("n", "b9", ":buffer 9<CR>", opts_r)
--
-- -- Easy window navigation (non-recursive)
-- vim.keymap.set("n", "<A-h>", "<C-w>h", noremap)
-- vim.keymap.set("n", "<A-j>", "<C-w>j", noremap)
-- vim.keymap.set("n", "<A-k>", "<C-w>k", noremap)
-- vim.keymap.set("n", "<A-l>", "<C-w>l", noremap)
-- vim.keymap.set("t", "<A-h>", "<C-\\><C-n><C-w>h", noremap)
-- vim.keymap.set("t", "<A-j>", "<C-\\><C-n><C-w>j", noremap)
-- vim.keymap.set("t", "<A-k>", "<C-\\><C-n><C-w>k", noremap)
-- vim.keymap.set("t", "<A-l>", "<C-\\><C-n><C-w>l", noremap)
--
-- -- Source and copy path
-- vim.keymap.set("n", "cs", ":source ~/InitBAS/config/nvim/init.vim<CR>", opts_r)
-- vim.keymap.set("n", "cp", ":let @+ = expand('%:p')<CR>", opts_r)
-- vim.keymap.set("n", "cp1", ":let @+ = expand('%')<CR>", opts_r)
--
-- -- Edit configuration files
-- vim.keymap.set("n", "ser1", ":e ~/InitBAS/config/r/Rprofile<CR>", opts_r)
-- vim.keymap.set("n", "ser2", ":e ~/InitBAS/config/r/Renviron<CR>", opts_r)
-- vim.keymap.set("n", "sea",  ":e ~/InitBAS/alias.sh<CR>", opts_r)
-- vim.keymap.set("n", "sef",  ":e ~/InitBAS/functions.sh<CR>", opts_r)
-- vim.keymap.set("n", "sev",  ":e ~/InitBAS/config/nvim/init.vim<CR>", opts_r)
-- vim.keymap.set("n", "seb",  ":e ~/InitBAS/config/bash/bashrc<CR>", opts_r)
-- vim.keymap.set("n", "sez",  ":e ~/InitBAS/config/zsh/zshrc<CR>", opts_r)
-- vim.keymap.set("n", "seq",  ":e ~/InitBAS/config/qtile/config.py<CR>", opts_r)
-- vim.keymap.set("n", "sek",  ":e ~/InitBAS/kitty/kitty.conf<CR>", opts_r)
-- vim.keymap.set("n", "seh",  ":e ~/InitBAS/config/hyprland/hyprland.conf<CR>", opts_r)
-- vim.keymap.set("n", "sec",  ":e ~/InitBAS/README.md<CR>", opts_r)
-- vim.keymap.set("n", "kmp",  ":e ~/InitBAS/config/nvim/keymapping.vim<CR>", opts_r)
