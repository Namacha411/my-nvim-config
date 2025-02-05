return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = {
      "BufReadPost",
      "BufNewFile",
      "BufWritePre",
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
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = {
      "BufReadPost",
      "BufNewFile",
      "BufWritePre",
    },
    opts = {
      max_lines = 1,
      multiline_threshold = 1,
      mode = "topline",
    },
  }
}
