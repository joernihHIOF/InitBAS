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

vim.keymap.set(
	"n",
	"<leader>t",
	":terminal ++cwd=%:p:h<CR>",
	{ desc = "Open terminal in current file's project folder" }
)
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
