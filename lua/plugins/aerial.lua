return {
  'stevearc/aerial.nvim',
  -- Optional dependencies
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  event = {
    "BufReadPost",
    "BufNewFile",
    "BufWritePre",
  },
  init = function()
    require("telescope").load_extension("aerial")
  end,
  opts = {
    attach_mode = "global",
    backends = { "lsp", "treesitter", "markdown", "man" },
    show_guides = true,
  },
}
