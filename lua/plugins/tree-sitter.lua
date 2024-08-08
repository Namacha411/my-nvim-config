return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = {
      "BufReadPost",
      "BufNewFile",
      "BufWritePre",
      "VeryLazy",
    },
    dependencies = {
      { "nvim-treesitter/nvim-treesitter-textobjects" },
    },
    opts_extend = { "ensure_installed", },
    opts = {
      highlight = { enable = true, },
      indent = { enable = true, },
      ensure_installed = {
        -- markview.nvim
        "html",
        "markdown",
        "markdown_inline",
      }
    }
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = {
      "BufReadPost",
      "BufNewFile",
      "BufWritePre",
    }
  }
}
