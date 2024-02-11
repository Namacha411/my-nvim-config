return {
  {
    "williamboman/mason.nvim",
    optional = true,
    event = "VeryLazy",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "ruff-lsp", "pyright" })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "ninja", "python", "rst", "toml" })
    end,
  }
}
