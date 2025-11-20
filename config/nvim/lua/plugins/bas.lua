return {
  {
    "geg2102/nvim-python-repl",
    ft = { "python", "lua", "scala" },
    config = function()
      require("nvim-python-repl").setup({
        execute_on_send = false,
        vsplit = false,
      })
    end,
  },
  {
    "R-nvim/R.nvim",
    -- Only required if you also set defaults.lazy = true
    lazy = false,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      local langs = { "markdown", "markdown_inline", "r", "rnoweb", "yaml", "latex", "csv" }
      require("nvim-treesitter").install(langs)

      vim.api.nvim_create_autocmd("FileType", {
        pattern = langs,
        callback = function()
          vim.treesitter.start()
        end,
      })
    end,
  },
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim", -- optional
      "nvim-telescope/telescope.nvim",
    },
  },
}
