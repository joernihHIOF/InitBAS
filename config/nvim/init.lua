-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lazy").setup({
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  branch = "main",
  build = ":TSUpdate",
})

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

-- vim.g.maplocalleader = "," -- change ',' to your desired key
--
-- vim.api.nvim_buf_set_keymap(
--   0,
--   "n",
--   "<LocalLeader>L",
--   "<Cmd>lua require('r.send').cmd('devtools::load_all()')<CR>",
--   { desc = "R: devtools::load_all()", noremap = true, silent = true }
-- )
