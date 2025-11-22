-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("nvim-python-repl").setup({
  spawn_command = {
    python = "python", -- use "python" or "python3" instead of "ipython"
  },
})
